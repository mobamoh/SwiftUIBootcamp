//
//  NavigationStacksModule.swift
//  SwiftUIBootcamp
//
//  Created by mohamedbamoh on 23.08.25.
//

import SwiftUI

struct NavigationStacksModule: View {
    let names = ["Driss", "Itto", "Hana", "Mo", "Oum"]

    let foodMascots: [CuteMascot] = [
        .init(name: "Bretzel", image: .cutePretzel),
        .init(name: "Bratwurst", image: .cuteBratwurst),
    ]

    let musicMascots: [CuteMascot] = [
        .init(name: "Accordion", image: .cuteAccordion),
        .init(name: "Tuba", image: .cuteTuba),
    ]

    var body: some View {
        NavigationStack {  // Navigation Modifiers have to be attached to child views!
            List {
                //                ForEach(names, id: \.self) { name in
                //                    NavigationLink {
                ////                        Text("Hi my name is \(name) 👋")
                ////                            .font(.title)
                ////                            .foregroundColor(.brown)
                ////                            .padding()
                ////                            .background(.cyan)
                //                        DisplayNameView(name: name)
                //                    } label: {
                //                        Text(name)
                //                    }
                //                }
                Section("Cute Food Mascots") {
                    ForEach(foodMascots) { mascot in
                        NavigationLink(value: mascot) {
                            Text(mascot.name)
                        }
                    }
                }
                Section("Cute Music Mascots") {
                    ForEach(musicMascots) { mascot in
                        NavigationLink(value: mascot) {
                            Text(mascot.name)
                        }
                    }
                }
                Section("Fam") {
                    ForEach(names, id: \.self) { n in
                        NavigationLink(value: n) {
                            Text(n)
                        }
                    }
                }

            }
            .navigationDestination(
                for: CuteMascot.self,
                destination: { mascot in
                    CuteMascotComponent(cuteMascot: mascot)
                }
            )
            .navigationDestination(
                for: String.self,
                destination: { n in
                    DisplayNameView(name: n)
                }
            )
            .navigationTitle("Navigation Module")
            //            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    NavigationStacksModule()
}
