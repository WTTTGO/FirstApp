//
//  FirstAppApp.swift
//  FirstApp
//
//  Created by Khai Nguyen Minh on 2/13/22.
//

import SwiftUI

@main
struct FirstAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    print(FileManager.default.urls(
                        for: .documentDirectory,
                        in: .userDomainMask))
                }
        }
    }
}
