//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks-SwiftUI
//
//  Created by Mahan Kheirollahi on 6/23/24.
//

import Foundation
import SwiftUI

final class FrameworkGridViewModel: ObservableObject{
    var selectedFramework: Framework?{
        didSet{isShowingDetailView = true}
    }
    
    @Published var isShowingDetailView = false
    
    let columns: [GridItem] = [GridItem(.flexible()),
                            GridItem(.flexible()),
                            GridItem(.flexible())]
}
