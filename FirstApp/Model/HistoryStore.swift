//
//  HistoryStore.swift
//  FirstApp
//
//  Created by Khai Nguyen Minh on 2/18/22.
//

import Foundation

struct ExerciseDay: Identifiable {
 let id = UUID()
 let date: Date
 var exercises: [String] = []
}
struct HistoryStore {
 var exerciseDays: [ExerciseDay] = []
    
    init() {
     #if DEBUG
     createDevData()
     #endif
    }
}
