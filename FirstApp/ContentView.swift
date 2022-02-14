//
//  ContentView.swift
//  FirstApp
//
//  Created by Khai Nguyen Minh on 2/13/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
             Text("Welcome")
             Text("Exercise 1")
             Text("Exercise 2")
        }.tabViewStyle(PageTabViewStyle())
            .indexViewStyle(
             PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
