//
//  HistoryStoreDevData.swift
//  FirstApp
//
//  Created by Khai Nguyen Minh on 2/18/22.
//

import Foundation

extension HistoryStore {
 mutating func createDevData() {
 // Development data
 exerciseDays = [
 ExerciseDay(
 date: Date().addingTimeInterval(-86400),
 exercises: [
 Exercise.exercises[0].exerciseName,
 Exercise.exercises[1].exerciseName,
 Exercise.exercises[2].exerciseName
 ]),
 ExerciseDay(
 date: Date().addingTimeInterval(-86400 * 2),
 exercises: [
 Exercise.exercises[1].exerciseName,
 Exercise.exercises[0].exerciseName
 ])
 ]
 }
}
