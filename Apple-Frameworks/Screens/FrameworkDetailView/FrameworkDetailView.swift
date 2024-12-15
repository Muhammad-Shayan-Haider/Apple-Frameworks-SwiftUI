//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Muhammad Shayan on 02/11/2024.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    @ObservedObject var viewModel: FrameworkDetailViewModel
    
    var body: some View {
        VStack {
            Spacer()
            FrameworkTitleView(framework: viewModel.framework)
            Text(viewModel.framework.description)
                .font(.body)
                .padding()
            Spacer()
            Link(destination: URL(string: viewModel.framework.urlString) ?? URL(string: "www.apple.com")!) {
                AFButton(titleString: "Learn More")
            }
//            Button {
//                viewModel.isShowingSafariView = true
//            } label: {
//                // AFButton(titleString: "Learn More")
//                Label("Learn More", systemImage: "book.fill")
//            }
//            .buttonStyle(.bordered)
//            .controlSize(.large)
//            .buttonBorderShape(.roundedRectangle)
//            .tint(.red)
        }
//        .fullScreenCover(isPresented: $viewModel.isShowingSafariView) {
//            SafariView(url: URL(string: viewModel.framework.urlString) ?? URL(string: "www.apple.com")!)
//        }
    }
}

#Preview {
    FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: MockData.sampleFramework, isShowingDetailView: .constant(false)))
}
