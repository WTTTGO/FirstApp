//
//  ExerciseView.swift
//  FirstApp
//
//  Created by Khai Nguyen Minh on 2/13/22.
//

import SwiftUI
import AVKit

struct ExerciseView: View {
    let videoNames = ["banana", "banana", "banana", "banana"]
    let exerciseNames = ["Squat", "Step Up", "Burpee", "Sun Salute"]
    let index: Int
    let interval: TimeInterval = 30
    @State var showingAlert = false
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HeaderView(exerciseName: exerciseNames[index])
                    .padding(.bottom)
                if let url = Bundle.main.url(
                    forResource: videoNames[index],
                    withExtension: "mp4") {
                    VideoPlayer(player: AVPlayer(url: url)).frame(height: geometry.size.height * 0.45)
                } else {
                    Text("Couldn’t find \(videoNames[index]).mp4")
                        .foregroundColor(.red)
                }
                Text(Date().addingTimeInterval(interval), style: .timer)
                    .font(.system(size: 90))
                    .foregroundColor(Color.white)
                    .background(Color.black)
                    .cornerRadius(15.0)
                Button("Start/Done") { }
                    .font(.title3)
                    .padding()
                RatingView()
                    .padding()
                Spacer()
                Button("History") {
                    showingAlert = true
                }
                    .padding(.bottom)
                    .alert("There is no history to show.", isPresented: $showingAlert) { Button("OK", role: .cancel) { }
                    }
            }
        }
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView(index: 0)
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}
