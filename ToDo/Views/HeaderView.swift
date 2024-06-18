//
//  HeaderView.swift
//  ToDo
//
//  Created by Prashant Maharana on 18/06/24.
//

import SwiftUI

struct HeaderView: View {
    var title: String
    var subTitle: String
    var angle: Double
    var backgroundColor:Color
    var body: some View {
        ZStack(content: {
            RoundedRectangle(cornerRadius: 0).foregroundColor(backgroundColor).rotationEffect(Angle(degrees: angle))
            VStack(content: {
                Text(title)
                    .font(.system(size: 45)).foregroundColor(Color.white).bold()
                Text(subTitle)
                    .font(.system(size: 25)).foregroundColor(Color.white)

            }).padding(.top,30)
        })
        .frame(width: UIScreen.main.bounds.width * 3,height: 300).offset(y:-100)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Sample Title", subTitle: "Sample subtitle", angle: 15, backgroundColor: .blue)
    }
}
