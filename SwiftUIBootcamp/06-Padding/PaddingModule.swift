//
//  PaddingModule.swift
//  SwiftUIBootcamp
//
//  Created by mohamedbamoh on 17.08.25.
//

import SwiftUI

struct PaddingModule: View {
    var body: some View {
        VStack {

            Text("Padding on All edges")
                .background(.pink)
                .padding()
                .background(.blue)

            Text("Padding on Left")
                .padding(.leading, 50)
                .background(.green)

            Text("Padding on Right")
                .padding(.trailing, 50)
                .background(.red)

            Text("Padding on Top")
                .padding(.top, 50)
                .background(.yellow)

            Text("Padding on Bottom")
                .padding(.bottom, 50)
                .background(.purple)

        }
    }
}

#Preview {
    PaddingModule()
}
