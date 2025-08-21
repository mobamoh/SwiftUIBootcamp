//
//  SheetsModule.swift
//  SwiftUIBootcamp
//
//  Created by mohamedbamoh on 21.08.25.
//

import SwiftUI

struct SheetsModule: View {
    @State var show = false
    @State var mascot: CuteMascot?
    var body: some View {
        VStack {
            if let m = mascot {
                CuteMascotComponent(cuteMascot: m)
            }
            Button("Show Me!") {
                show.toggle()

            }
        }
        //        .sheet(isPresented: $show) {
        //            UberEatChallengeModule()
        //                .presentationDetents([.height(250), .medium, .large])
        //                .presentationBackgroundInteraction(.enabled(upThrough: .height(250)))
        //        }

        //        .fullScreenCover(isPresented: $show) {
        //            Text("Hello There!")
        //            Button {
        //                show.toggle()
        //            } label: {
        //                Text("Close Me!")
        //            }
        //
        //        }

        //        .sheet(item: $mascot) { m in
        //            CuteMascotComponent(cuteMascot: m)
        //        }

        .sheet(isPresented: $show) {
            mascot = CuteMascot(name: "Cute Beer", image: .cuteBeer)
        } content: {
            Text("On Dismiss")
        }

    }
}

#Preview {
    SheetsModule()
}
