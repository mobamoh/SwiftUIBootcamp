//
//  ViewExtractionModule.swift
//  SwiftUIBootcamp
//
//  Created by mohamedbamoh on 20.08.25.
//

import SwiftUI

struct ViewExtractionModule: View {
    var body: some View {
        VStack {
            ColordShapeComponent(
                s:.init(Rectangle()),
                w: 100,
                h: 100,
                c: .blue,
                t: "Cute Blue Rectangle",
                tc: .blue
            )
            ColordShapeComponent(
                s: .init(Circle()),
                w: 100,
                h: 100,
                c: .yellow,
                t: "Cute Blue Rectangle",
                tc: .yellow
            )
        }
    }
}

struct ColordShapeComponent: View {
    let s: AnyShape
    let w: CGFloat
    let h: CGFloat
    let c: Color
    let t: String
    let tc: Color

    var body: some View {
        VStack {
            s
                .frame(width: w, height: h)
                .foregroundColor(c.opacity(0.20))
            Text(t)
                .font(.headline)
                .fontWidth(.compressed)
                .foregroundColor(tc)
        }
    }
}

#Preview {
    ViewExtractionModule()
}
