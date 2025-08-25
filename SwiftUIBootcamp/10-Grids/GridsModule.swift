//
//  GridsModule.swift
//  SwiftUIBootcamp
//
//  Created by mohamedbamoh on 18.08.25.
//

import SwiftUI

struct GridsModule: View {
    var body: some View {
        let food: [ImageResource] = [
            .americanCheeseburger, .americanCheesesteak, .italianPasta,
            .italianPizza, .japanTapas, .japanesePokeBowl, .japaneseRamen,
            .steakHouse, .cutePretzel,
        ]
        let columns: [GridItem] = [
            .init(.flexible(), spacing: 1),
            .init(.flexible(), spacing: 1),
            .init(.flexible()),
        ]

        let dimension = (UIScreen.main.bounds.width / 3) - 2
        LazyVGrid(columns: columns, spacing: 1) {
            //            ForEach(1..<10, id: \.self) { i in
            //                Rectangle()
            //                    .frame(width: dimension, height: dimension)
            //                    .foregroundColor(.brown)
            //            }

            ForEach(food, id: \.self) { f in
                Image(f)
                    .resizable()
                    .scaledToFill()
                    .frame(width: dimension, height: dimension)
                    .clipShape(Rectangle())
                //                    .cornerRadius(10)
            }.padding(.horizontal, 1)
        }

    }
}

#Preview {
    GridsModule()
}
