//
//  ImageExtension.swift
//  FirstApp
//
//  Created by Khai Nguyen Minh on 2/14/22.
//

import Foundation
import SwiftUI

extension Image {
    func resizedToFill(width: CGFloat, height: CGFloat)
    -> some View {
     return self
     .resizable()
     .aspectRatio(contentMode: .fill)
     .frame(width: width, height: height)
    }
}
