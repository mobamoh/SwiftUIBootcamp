//
//  ButtonsModule.swift
//  SwiftUIBootcamp
//
//  Created by mohamedbamoh on 19.08.25.
//

import SwiftUI

struct ButtonsModule: View {
    @State var text = "Click a Button!"
    @State var color = Color.gray
    var body: some View {
        Circle()
            .frame(width: 100)
            .foregroundColor(color)
        Divider()
        Text(text)
            .foregroundColor(color)
        Divider()
        Button("Basic Button") {
            text = "Clicked by Basic Button."
            color = .blue
        }
        Divider()
        Button {
            text = "Clicked by Custom Button"
            color = .yellow.mix(with: .pink, by: 0.50)
        } label: {
            Text("Custom Button")
                .fontWeight(.heavy)
                .frame(width: 300, height: 50)
                .foregroundColor(.pink)
                .background(.yellow)
                .cornerRadius(10)
        }
        Divider()
        Button {
            text = "Clicked by Cute Pretzel"
            color = .brown.mix(with: .red, by: 0.20)
        } label: {
            Image(.cutePretzel)
                .resizable()
                .frame(width: 100, height: 100)
                .scaledToFill()
                .clipShape(Circle())
        }

    }
}

#Preview {
    ButtonsModule()
}
