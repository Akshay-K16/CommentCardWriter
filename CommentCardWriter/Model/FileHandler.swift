//
//  FileHandler.swift
//  CommentCardWriter
//
//  Created by Khemaney, Akshay (SPH) on 23/03/2021.
//

import Foundation

class FileHandler {
    static func save(_ comment: String) {
        var loaded = load()
        loaded.append(comment)
        FileManager.default.save("comments.json", toSave: loaded)
    }
    
    static func load() -> [String] {
        var comments: [String] = ["No Saved Comments"]
        if let loaded: [String] = FileManager.default.load("comments.json") {
            comments = loaded
        }
        return comments
    }
}
