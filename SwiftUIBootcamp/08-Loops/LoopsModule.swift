//
//  LoopsModule.swift
//  SwiftUIBootcamp
//
//  Created by mohamedbamoh on 18.08.25.
//

import SwiftUI

struct LoopsModule: View {
    let colors:[Color] = [.blue,.yellow,.green,.orange]
    var body: some View {
        ForEach(colors, id: \.self) { c in
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(c)
        }
    }
}

#Preview {
    LoopsModule()
}
