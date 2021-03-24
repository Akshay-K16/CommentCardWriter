//
//  SavedComments.swift
//  CommentCardWriter
//
//  Created by Khemaney, Akshay (SPH) on 22/03/2021.
//

import SwiftUI

struct SavedComments: View {
    @State var comments: [String]
    
    var body: some View {
        Text(comments[1])
    }
}

struct SavedComments_Previews: PreviewProvider {
    static var previews: some View {
        SavedComments(comments: FileHandler.load())
    }
}
