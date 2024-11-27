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
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFrameWork = framework
                            }
                    }
                }
            }
            .navigationTitle("Apple Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FrameworkDetailView(framework: viewModel.selectedFrameWork ?? MockData.frameworks.first!, isShowingDetailView: $viewModel.isShowingDetailView)
            }
        }
    }
}

#Preview {
    FrameworkGridView()
}


