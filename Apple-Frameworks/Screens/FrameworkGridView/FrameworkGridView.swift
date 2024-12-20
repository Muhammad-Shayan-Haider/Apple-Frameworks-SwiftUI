//
//  ContentView.swift
//  Apple-Frameworks
//
//  Created by Muhammad Shayan on 02/11/2024.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel() // It is just like @State.
    // if you're initialising the object,
    // use @StateObject.
    // Use @ObservedObject when you want to
    // inject viewModel from outside.
    
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(value: framework) {
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            .navigationTitle("Apple Frameworks")
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: framework,
                                                                        isShowingDetailView: $viewModel.isShowingDetailView))
            }
        }
        .accentColor(Color(.label))
    }
}

#Preview {
    FrameworkGridView()
}


