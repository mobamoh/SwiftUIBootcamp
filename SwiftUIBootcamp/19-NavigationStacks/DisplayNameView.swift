//
//  DsiplayNameView.swift
//  SwiftUIBootcamp
//
//  Created by mohamedbamoh on 23.08.25.
//

import SwiftUI

struct DisplayNameView: View {
    let name: String
    var body: some View {

        VStack {
            Text("Hi my name is \(name) 👋")
                .font(.title)
                .foregroundColor(.yellow)
                .padding()
                .background(.brown.mix(with: .white, by: 0.20))
                .cornerRadius(10)
        }
        NavigationLink {
            Text("Dancing with \(name) 💃🪩🕺")
                .font(.headline)
                .foregroundColor(.orange)
                .padding()
                .background(.cyan)
                .cornerRadius(10)
                .navigationTitle("\(name) dancing")
        } label: {
            Text("Let's dance!")
                .font(.title2)
                .foregroundColor(.blue)
                .padding()
                .background(.green)
                .cornerRadius(10)
        }
        .navigationTitle(name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    DisplayNameView(name: "Mo")
}
