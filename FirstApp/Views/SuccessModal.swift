//
//  SuccessModal.swift
//  FirstApp
//
//  Created by Khai Nguyen Minh on 2/14/22.
//

import SwiftUI

struct SuccessModal: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        Button("Done") {
            dismiss()
        }
        .font(.title)
        .padding()
        .background(
         RoundedRectangle(cornerRadius: 20)
         .stroke(Color.gray, lineWidth: 2))
    }
}

struct SuccessModal_Previews: PreviewProvider {
    static var previews: some View {
        SuccessModal()
            .previewLayout(.sizeThatFits)
    }
}
