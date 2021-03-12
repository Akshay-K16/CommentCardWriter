//
//  InputGatherer.swift
//  CommentCardWriter
//
//  Created by Khemaney, Akshay (SPH) on 12/03/2021.
//

import SwiftUI

struct InputGatherer: View {
    var subjects: [String]
    var choices1 = ["No", "Yes"]
    var choices2 = ["Too Slow", "About Right", "Too Fast"]
    @State private var selectedSubject = "Computer Science"
    @State private var enjoyment = "No"
    @State private var pace = "About Right"
    @State private var progress = "No"
    
    var body: some View {
        Form{
            Text("Comment Generator")
                .bold()
                .font(.title)
            Text("1. Select Subject")
            Picker("", selection: $selectedSubject ){
                ForEach(subjects, id: \.self) {
                    Text($0)
                }
            }.pickerStyle(WheelPickerStyle())
            Text("2. Have you enjoyed \(selectedSubject) so far this half?")
            Picker("", selection: $enjoyment){
                ForEach(choices1, id: \.self) {
                    Text($0)
                }
            }.pickerStyle(SegmentedPickerStyle())
            Text("3. Do you think the pace of the lessons is...")
            Picker("", selection: $pace){
                ForEach(choices2, id: \.self) {
                    Text($0)
                }
            }.pickerStyle(SegmentedPickerStyle())
            Text("4. Are you satisfied with your progress this half?")
            Picker("", selection: $progress){
                ForEach(choices1, id: \.self) {
                    Text($0)
                }
            }.pickerStyle(SegmentedPickerStyle())
            Button("Generate Comment") {
                print("TODO")
            }
        }

    }
}

struct InputGatherer_Previews: PreviewProvider {
    static var previews: some View {
        InputGatherer(subjects: ["Maths", "Computer Science", "Economics"])
    }
}
