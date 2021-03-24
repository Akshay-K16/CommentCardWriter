//
//  FileManager.swift
//  CommentCardWriter
//
//  Created by Khemaney, Akshay (SPH) on 22/03/2021.
//

import Foundation

extension FileManager {
    private func getPathToFile(_ fileName: String) -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let userPath = paths[0]
        return userPath.appendingPathComponent(fileName)
    }
    
    func save<T: Codable>(_ fileName: String, toSave: T) {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(toSave) {
            // Covert encoded JSON objects and convert into strings
            if let json = String(data: encoded, encoding: .utf8) {
                let url = getPathToFile(fileName)
                do {
                    // Write to File
                    try json.write(to: url, atomically: true, encoding: .utf8)
                } catch {
                    print(error.localizedDescription)
                }
            } else {
                print("Unable to Form JSON String")
            }
        }
    }
    
    func load<T: Codable>(_ fileName: String) -> T? {
        let url = getPathToFile(fileName)
        if let data = try? Data(contentsOf: url) {
            let decoder = JSONDecoder()
            if let loaded = try? decoder.decode(T.self, from: data) {
                return loaded
            }
        }
        print("Failed to Load File")
        return nil
    }
}
