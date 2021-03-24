//
//  CommentView.swift
//  CommentCardWriter
//
//  Created by Khemaney, Akshay (SPH) on 15/03/2021.
//

import SwiftUI

struct CommentView: View {
    @ObservedObject var commentGenerator: Comment
    
    var body: some View {
        VStack {
            Text(commentGenerator.comment)
                .padding(50)
            Button("Copy To Clipboard") {
                let pasteboard = UIPasteboard.general
                pasteboard.string = commentGenerator.comment
            }
            .foregroundColor(.white)
            .padding()
            .background(Color.accentColor)
            .cornerRadius(8)
            NavigationLink(
                destination: EditComment(commentGenerator: commentGenerator),
                label: {
                    Text("Edit Comment")
            })
                .foregroundColor(.white)
                .padding()
                .background(Color.accentColor)
                .cornerRadius(8)
            Button("Save") {
                FileHandler.save(commentGenerator.comment)
            }
            .foregroundColor(.white)
            .padding()
            .background(Color.accentColor)
            .cornerRadius(8)
        }.navigationBarTitle("Generated Comment:")
    }
}

struct CommentView_Previews: PreviewProvider {
    static var previews: some View {
        CommentView(commentGenerator: Comment(subject: "Maths", enjoyment: true, pace: "About Right", progress:true))
    }
}
