//
//  TextModule.swift
//  SwiftUIBootcamp
//
//  Created by mohamedbamoh on 14.08.25.
//

import SwiftUI

struct TextModule: View {
    var body: some View {
        Text("Hello SwiftUI! This is the starting journey to master SwiftUI and iOS development!")
            .foregroundColor(.cyan) // this is a modifier
            .fontWeight(.medium)
            .multilineTextAlignment(.center)
            .italic()
            .fontWidth(.compressed)
            .underline(color: .indigo)
    }
}

#Preview {
    TextModule()
}
