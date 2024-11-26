//
//  SafariView.swift
//  Apple-Frameworks
//
//  Created by Muhammad Shayan on 26/11/2024.
//

import SwiftUI
import SafariServices

// Using UIKit (UIViewController) in SwiftUI
struct SafariView: UIViewControllerRepresentable {
    
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        
        return SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
        
    }
}
