//
//  SuccessView.swift
//  FirstApp
//
//  Created by Khai Nguyen Minh on 2/14/22.
//

import SwiftUI

struct SuccessView: View {
    let message = """
      Good job completing all four exercises!
        Remeber tomorrow's another day.
            So eat well and get some rest.
    """
    @State var isModalShowing = false
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                Button("Continue") {
                    isModalShowing = true
                }
                 .padding(.bottom)
                 .sheet(isPresented: $isModalShowing) {
                     SuccessModal()
                 }
            }
            VStack {
                Image(systemName: "hand.raised.fill")
                    .resizedToFill(width: 75, height:75)
                    .foregroundColor(Color.purple)
                Text("High Five!")
                    .font(.largeTitle)
                    .bold()
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text(message)
                    .foregroundColor(Color.gray)
            }
        }
    }
}

struct SuccessView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessView()
    }
}
