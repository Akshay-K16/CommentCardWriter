//
//  CommentView.swift
//  CommentCardWriter
//
//  Created by Khemaney, Akshay (SPH) on 15/03/2021.
//

import SwiftUI

struct CommentView: View {
    var commentGenerator: Comment
    //@State private var comment = commentGenerator.generateComment()
    
    var body: some View {
        VStack {
            Text(commentGenerator.generateComment())
                .padding(50)
            //TextField("Comment", text: $comment)
            Button("Copy To Clipboard") {
                let pasteboard = UIPasteboard.general
                pasteboard.string = commentGenerator.generateComment()
            }
        }.navigationBarTitle("Generated Comment:")
    }
}

struct CommentView_Previews: PreviewProvider {
    static var previews: some View {
        CommentView(commentGenerator: Comment(subject: "Maths", enjoyment: true, pace: "About Right", progress:true))
    }
}
