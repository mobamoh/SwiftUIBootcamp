//
//  DataModelingModule.swift
//  SwiftUIBootcamp
//
//  Created by mohamedbamoh on 20.08.25.
//

import SwiftUI

struct DataModelingModule: View {

    let cuties: [CuteMascot] = [
        .init(name: "Cute Pretzel", image: .cutePretzel),
        .init(name: "Cute Beer", image: .cuteBeer),
        .init(name: "Cute Bratwurst", image: .cuteBratwurst),
        .init(name: "Cute Accordion", image: .cuteAccordion),
        .init(name: "Cute Berlin TV Tower", image: .cuteBerlinTvTowerV1),
    ]
    var body: some View {

        ScrollView(showsIndicators: false) {
            VStack(spacing: 30) {
                ForEach(cuties) { cm in
                    CuteMascotComponent(cuteMascot: cm)
                }
            }
        }
    }
}

#Preview {
    DataModelingModule()
}
