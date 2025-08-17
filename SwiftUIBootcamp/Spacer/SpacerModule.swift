//
//  SpacerModule.swift
//  SwiftUIBootcamp
//
//  Created by mohamedbamoh on 17.08.25.
//

import SwiftUI

struct SpacerModule: View {
    var body: some View {
        VStack {
            VStack {
                Text("Vertical Spacing")
                Spacer()
                    .frame(width: 20)
                    .background(.yellow)
                Text("Vertical Spacing")
            }
            HStack {
                Text("Horizontal Spacing")
                Spacer()
                    .frame(height: 20)
                    .background(.blue)
                Text("Horizontal Spacing")
            }
        }
    }
}

#Preview {
    SpacerModule()
}
