//
//  ExerciseView.swift
//  FirstApp
//
//  Created by Khai Nguyen Minh on 2/13/22.
//

import SwiftUI
import AVKit

struct ExerciseView: View {
    @Binding var selectedTab: Int
    @State private var showHistory = false
    @State private var showSuccess = false
    @State private var rating = 0
    let index: Int
    let interval: TimeInterval = 30
    @State var showingAlert = false
    var lastExercise: Bool {
     index + 1 == Exercise.exercises.count
    }
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HeaderView(
                 selectedTab: $selectedTab,
                 titleText: Exercise.exercises[index].exerciseName)
                    .padding(.bottom)
                if let url = Bundle.main.url(
                    forResource: Exercise.exercises[index].videoName,
                    withExtension: "mp4") {
                    VideoPlayer(player: AVPlayer(url: url)).frame(height: geometry.size.height * 0.45)
                } else {
                    Text("Couldn’t find \(Exercise.exercises[index].videoName).mp4")
                        .foregroundColor(.red)
                }
                Text(Date().addingTimeInterval(interval), style: .timer)
                    .font(.system(size: 90))
                    .foregroundColor(Color.white)
                    .background(Color.black)
                    .cornerRadius(15.0)
                HStack(spacing: 150) {
                 Button("Start Exercise") { }
                    Button("Done") {
                     if lastExercise {
                     showSuccess.toggle()
                     } else {
                     selectedTab += 1
                     }
                    }.sheet(isPresented: $showSuccess) {
                        SuccessView(selectedTab: $selectedTab)
                       }
                }
                RatingView(rating: $rating)
                    .padding()
                Spacer()
                Button("History") {
                 showHistory.toggle()
                }
                .sheet(isPresented: $showHistory) {
                 HistoryView(showHistory: $showHistory)
                }
            }
        }
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView(selectedTab: .constant(3), index: 3)
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}
