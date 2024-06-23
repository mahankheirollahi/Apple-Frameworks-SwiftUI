//
//  XDismissButton.swift
//  Apple-Frameworks-SwiftUI
//
//  Created by Mahan Kheirollahi on 6/23/24.
//

import SwiftUI

struct XDismissButton: View {
    
    @Binding var isShowingDetailView:Bool
    
    var body: some View {
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
    }
}

#Preview {
    XDismissButton(isShowingDetailView: .constant(false))
}
