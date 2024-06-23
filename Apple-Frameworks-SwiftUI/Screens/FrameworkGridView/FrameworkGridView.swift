//
//  ContentView.swift
//  Apple-Frameworks-SwiftUI
//
//  Created by Mahan Kheirollahi on 6/23/24.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    var body: some View {
        NavigationView{
            List {
                ForEach(MockData.frameworks){ framework in
                    NavigationLink(destination: FrameworkDetailView(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView)){
                        FrameworkTitleView(framework: framework)
                    }
                }.navigationTitle("🍎 Frameworks")
            }
        }.accentColor(Color(.label))
    }
}

#Preview {
    FrameworkGridView()
}




