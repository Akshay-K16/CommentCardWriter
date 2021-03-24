//
//  ContentView.swift
//  CommentCardWriter
//
//  Created by Khemaney, Akshay (SPH) on 12/03/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Form {
                NavigationLink(
                    destination: InputGatherer(subjects: ["Maths", "Computer Science", "Economics"]),
                    label: {
                        Text("Generate a New Comment")
                })
                NavigationLink(
                    destination: SavedComments(comments: FileHandler.load()),
                    label: {
                        Text("Saved Comments")
                })
            }.navigationBarTitle("Comment Generator")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
