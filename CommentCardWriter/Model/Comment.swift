//
//  Comment.swift
//  CommentCardWriter
//
//  Created by Khemaney, Akshay (SPH) on 12/03/2021.
//

import Foundation

class Comment {
    var subject: String
    var enjoyment: Bool
    var pace: String
    var progress: Bool
    
    init(subject: String, enjoyment: Bool, pace: String, progress: Bool) {
        self.subject = subject
        self.enjoyment = enjoyment
        self.pace = pace
        self.progress = progress
    }
    
    func generateComment() -> String {
        var comment: String
        if enjoyment {
            comment = "I have enjoyed \(subject) so far this half "
            if pace != "About Right" {
                comment += "however, "
            }
        } else {
            comment = "I have not enjoyed \(subject) so far this half and "
        }
        if pace != "About Right" {
            comment += "I think the pace of the lessons is \(pace.lowercased())."
        } else {
            comment += "and I think the pace is \(pace.lowercased())."
        }
        if progress {
            comment += "I am satisfied with my progress this half."
        } else {
            comment += "I am not satisfied with my progress this half."
        }
        
        return comment
    }
}
