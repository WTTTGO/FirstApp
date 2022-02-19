//
//  WelcomeView.swift
//  FirstApp
//
//  Created by Khai Nguyen Minh on 2/13/22.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            VStack {
                HeaderView(titleText: NSLocalizedString("Welcome", comment: "greeting"))
                Spacer()
                Button(NSLocalizedString("History", comment: "view user activity")) { }
                 .padding(.bottom)
            }
            VStack {
                HStack(alignment: .bottom) {
                 VStack(alignment: .leading) {
                     Text(NSLocalizedString("Get Fit", comment: "invitation to exercise"))
                         .font(.largeTitle)
                     Text("with high intensity interval training")
                         .font(.headline)
                 }
                 Image("step-up")
                     .resizedToFill(width: 240, height: 240)
                     .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                }
                Button(action: { }) {
                    Label(NSLocalizedString("Get Started", comment: "invitation"), systemImage: "arrow.right.circle")
                }
                .font(.title2)
                .padding()
                .background(
                 RoundedRectangle(cornerRadius: 20)
                 .stroke(Color.gray, lineWidth: 2))
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
