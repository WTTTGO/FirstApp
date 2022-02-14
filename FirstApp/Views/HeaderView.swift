//
//  HeaderView.swift
//  FirstApp
//
//  Created by Khai Nguyen Minh on 2/13/22.
//

import SwiftUI

struct HeaderView: View {
    let titleText: String
    var body: some View {
        VStack {
            Text(titleText)
                .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
            HStack {
                Image(systemName: "hand.wave")
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
                Image(systemName: "4.circle")
            }.font(.title2)
        }
        .previewLayout(/*@START_MENU_TOKEN@*/.sizeThatFits/*@END_MENU_TOKEN@*/)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HeaderView(titleText: "Squat")
            HeaderView(titleText: "Squat")
                .preferredColorScheme(.dark)
                .environment(\.sizeCategory, .accessibilityLarge)
        }
    }
}
