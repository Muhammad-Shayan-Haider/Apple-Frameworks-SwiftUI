//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Muhammad Shayan on 02/11/2024.
//

import SwiftUI

struct AFButton: View {
    let titleString: String
    
    var body: some View {
        Text(titleString)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

#Preview {
    AFButton(titleString: "Test")
}
