//
//  CuteMascotComponent.swift
//  SwiftUIBootcamp
//
//  Created by mohamedbamoh on 20.08.25.
//

import SwiftUI

struct CuteMascotComponent: View {
    let cuteMascot: CuteMascot
    var body: some View {
        VStack {
            Image(cuteMascot.image)
                .resizable()
                .frame(width: 150, height: 150)
                .clipShape(Circle())
            Text(cuteMascot.name)
                .fontWidth(.compressed)
                .font(.title)
                .foregroundColor(.brown.mix(with: .yellow, by: 0.40))
        }
    }
}

#Preview {
    CuteMascotComponent(
        cuteMascot: CuteMascot(name: "Cute", image: .cuteBerlinTvTowerV1)
    )
}
