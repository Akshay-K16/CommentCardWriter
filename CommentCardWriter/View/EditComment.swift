//
//  EditComment.swift
//  CommentCardWriter
//
//  Created by Khemaney, Akshay (SPH) on 16/03/2021.
//

import SwiftUI

struct EditComment: View {
    @ObservedObject var commentGenerator: Comment
    
    var body: some View {
        TextEditor(text: $commentGenerator.comment)
            .padding(100)
    }
}

struct EditComment_Previews: PreviewProvider {
    static var previews: some View {
        EditComment(commentGenerator: Comment(subject: "Maths", enjoyment: true, pace: "About Right", progress:true))
    }
}
