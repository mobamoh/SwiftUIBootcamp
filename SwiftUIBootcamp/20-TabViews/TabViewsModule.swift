//
//  TabViewsModule.swift
//  SwiftUIBootcamp
//
//  Created by mohamedbamoh on 23.08.25.
//

import SwiftUI

struct TabViewsModule: View {
    let cuties: [CuteMascot] = [
        .init(name: "Cute Pretzel", image: .cutePretzel),
        .init(name: "Cute Beer", image: .cuteBeer),
        .init(name: "Cute Bratwurst", image: .cuteBratwurst),
        .init(name: "Cute Accordion", image: .cuteAccordion),
        .init(name: "Cute Berlin TV Tower", image: .cuteBerlinTvTowerV1),
    ]
    var body: some View {
        //        TabView {
        //            Text("Received")
        //                .badge(2)
        //                .tabItem {
        //                    Label("Received", systemImage: "tray.and.arrow.down")
        //                }
        //
        //            Text("Sent")
        //                .tabItem {
        //                    Label("Sent", systemImage: "tray.and.arrow.up")
        //                }
        //
        //            Text("Contact")
        //                .badge("!")
        //                .tabItem {
        //                    Label("Account", systemImage: "person.circle.fill")
        //                }
        //        }

        TabView {
            ForEach(cuties) { cutie in
                //                CuteMascotComponent(cuteMascot: cutie)
                Image(cutie.image)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Rectangle())
                
            }
        }
        .frame(height: 400)
        .tabViewStyle(.page)
//        .tabViewStyle(.page(indexDisplayMode: .never))
    }
}

#Preview {
    TabViewsModule()
}
