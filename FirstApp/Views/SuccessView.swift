//
//  SuccessView.swift
//  FirstApp
//
//  Created by Khai Nguyen Minh on 2/14/22.
//

import SwiftUI

struct SuccessView: View {
    @Binding var selectedTab: Int
    let message = """
      Good job completing all four exercises!
        Remeber tomorrow's another day.
            So eat well and get some rest.
    """
    @Environment(\.presentationMode) var presentationMode
    @State var isModalShowing = false
    var body: some View {
        ZStack {
            VStack {
                Image(systemName: "hand.raised.fill")
                    .resizedToFill(width: 75, height:75)
                    .foregroundColor(Color.purple)
                Text("High Five!")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                Text(message)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.gray)
            }
            
            VStack {
                Spacer()
                Button("Continue") {
                    selectedTab = 9
                    presentationMode.wrappedValue.dismiss()
                }
                .padding()
            }
        }
    }
}

struct SuccessView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessView(selectedTab: .constant(3))
    }
}
