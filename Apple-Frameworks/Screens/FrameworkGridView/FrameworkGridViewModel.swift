//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Muhammad Shayan on 02/11/2024.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject { // This will make it a publishing object. To notify the objects who are  in
                                                       // listening to the properties change this class.
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    var selectedFrameWork: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView: Bool = false // Whenever a @Published property is changed, the subsribers get notified.
}
