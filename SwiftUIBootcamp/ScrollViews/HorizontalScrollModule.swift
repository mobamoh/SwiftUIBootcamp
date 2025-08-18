//
//  HorizontalScrollModule.swift
//  SwiftUIBootcamp
//
//  Created by mohamedbamoh on 18.08.25.
//

import SwiftUI

struct HorizontalScrollModule: View {

    let shapes: [AnyShape] = [
        .init(Rectangle()),
        .init(Circle()),
    ]

    let colors: [Color] = [
        .red, .blue, .green, .pink, .orange, .purple, .cyan, .brown,
    ]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(shapes.indices, id: \.self) { i in
                    ForEach(colors, id: \.self) { c in
                        shapes[i]
                            .foregroundColor(c)
                            .frame(width: 100, height: 100)
                    }

                }
            }
        }
    }

}

#Preview {
    HorizontalScrollModule()
}
