//
//  Exercise.swift
//  FirstApp
//
//  Created by Khai Nguyen Minh on 2/18/22.
//

import Foundation

struct Exercise {
 let exerciseName: String
 let videoName: String

    enum ExerciseEnum: CustomStringConvertible {
     case squat
     case stepUp
     case burpee
     case sunSalute

     var description: String {
     switch self {
     case .squat:
     return NSLocalizedString("Squat", comment: "exercise")
     case .stepUp:
     return NSLocalizedString("Step Up", comment: "exercise")
     case .burpee:
     return NSLocalizedString("Burpee", comment: "exercise")
     case .sunSalute:
     return NSLocalizedString(
     "Sun Salute", comment: "yoga stretch")
     }
     }
    }
}

extension Exercise {
 static let exercises = [
 Exercise(
 exerciseName: String(describing: ExerciseEnum.squat),
 videoName: "banana"),
 Exercise(
 exerciseName: String(describing: ExerciseEnum.stepUp),
 videoName: "banana"),
 Exercise(
 exerciseName: String(describing: ExerciseEnum.burpee),
 videoName: "banana"),
 Exercise(
 exerciseName: String(describing: ExerciseEnum.sunSalute),
 videoName: "banana")
 ]
}
