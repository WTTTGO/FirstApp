//
//  DateExtension.swift
//  FirstApp
//
//  Created by Khai Nguyen Minh on 2/14/22.
//

import Foundation

extension Date {
    func formatted(as format: String) -> String {
     let dateFormatter = DateFormatter()
     dateFormatter.dateFormat = format
     return dateFormatter.string(from: self)
    }
}
