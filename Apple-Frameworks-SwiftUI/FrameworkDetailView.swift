//
//  FrameworkDetailView.swift
//  Apple-Frameworks-SwiftUI
//
//  Created by Mahan Kheirollahi on 6/23/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button{
                    isShowingDetailView.toggle()
                }label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44,height: 44)
                }
            }.padding()
            Spacer()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button{
                isShowingSafariView = true
            }label: {
                AFButton(title: "Learn More")
                
            }.sheet(isPresented: $isShowingSafariView){
                SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
            }
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework,isShowingDetailView: .constant(false))
}
