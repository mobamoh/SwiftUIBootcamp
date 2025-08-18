//
//  VerticalScrollModule.swift
//  SwiftUIBootcamp
//
//  Created by mohamedbamoh on 18.08.25.
//

import SwiftUI

struct VerticalScrollModule: View {
    let shapes: [AnyShape] = [.init(Rectangle()), .init(Circle())]
    let colors: [Color] = [
        .red, .blue, .green, .teal, .orange, .purple, .cyan, .brown, .gray,
        .black, .indigo, .mint,
    ]
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                ForEach(colors.indices, id: \.self) { i in
                    let idx =
                        if i % 2 == 0 {
                            0
                        } else {
                            1
                        }
                    ZStack {
                        shapes[idx]
                            .frame(width: 100, height: 100)
                            .foregroundColor(colors[i])
                        Text("Shape #\(i+1)")
                            .font(.headline)
                            .fontWidth(.condensed)
                            .foregroundColor(.white)
                    }
                }
            }
        }
    }
}

#Preview {
    VerticalScrollModule()
}
