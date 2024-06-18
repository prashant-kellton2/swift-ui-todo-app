//
//  TLButton.swift
//  ToDo
//
//  Created by Prashant Maharana on 18/06/24.
//

import SwiftUI

struct TLButton: View {
    @State var label: String
    @State var backgroundColor: Color
    @State var action: ()-> Void
    var body: some View {
        Button {
            action()
        } label:{
            ZStack(content: {
                RoundedRectangle(cornerRadius: 10).foregroundColor(backgroundColor)
                Text(label).foregroundColor(Color.white).bold()
            })
        }
    }
}

struct TLButton_Previews: PreviewProvider {
    static var previews: some View {
        TLButton(label: "Sample", backgroundColor: .red){
            
        }
    }
}
