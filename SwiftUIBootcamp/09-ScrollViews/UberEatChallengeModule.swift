//
//  UberEatChallengeModule.swift
//  SwiftUIBootcamp
//
//  Created by mohamedbamoh on 18.08.25.
//

import SwiftUI

struct FoodMenu {
    var id: Int
    var name: String
    var image: ImageResource
    var price: Double
    var deliveryFee: String
    var deliveryTime: String
}

struct UberEatChallengeModule: View {
    let foodMenu = [
        FoodMenu(
            id: 1,
            name: "Streak House",
            image: .steakHouse,
            price: 12.5,
            deliveryFee: "Free",
            deliveryTime: "15-30 min"
        ),
        FoodMenu(
            id: 2,
            name: "American Cheeseburger",
            image: .americanCheeseburger,
            price: 15.99,
            deliveryFee: "Free",
            deliveryTime: "10-15 min"
        ),
        FoodMenu(
            id: 3,
            name: "American Cheesesteak",
            image: .americanCheesesteak,
            price: 15.99,
            deliveryFee: "Free",
            deliveryTime: "20-30 min"
        ),
        FoodMenu(
            id: 4,
            name: "Italian Pizza",
            image: .italianPizza,
            price: 15.99,
            deliveryFee: "Free",
            deliveryTime: "5-10 min"
        ),
        FoodMenu(
            id: 5,
            name: "Italian Pasta",
            image: .italianPasta,
            price: 15.99,
            deliveryFee: "Free",
            deliveryTime: "10-15 min"
        ),
        FoodMenu(
            id: 6,
            name: "Japan Tapas",
            image: .japanTapas,
            price: 16.99,
            deliveryFee: "Free",
            deliveryTime: "20-30 min"
        ),
        FoodMenu(
            id: 7,
            name: "Japanese Ramen",
            image: .japaneseRamen,
            price: 19.99,
            deliveryFee: "Free",
            deliveryTime: "10-20 min"
        ),
        FoodMenu(
            id: 8,
            name: "Japanese Poke Bowl",
            image: .japanesePokeBowl,
            price: 17.99,
            deliveryFee: "Free",
            deliveryTime: "15-30 min"
        ),
    ]

    var body: some View {
        VStack(alignment: .leading) {
            Text("Featured On Uber Eats")
                .font(.title)
                .bold()
            ScrollView(showsIndicators: false) {
                VStack(spacing: 24) {
                    ForEach(foodMenu, id: \.self.id) { food in
                        VStack(alignment: .leading) {
                            Image(food.image)
                                .resizable()
                                .frame(width: 360, height: 150)
                                //                            .clipShape(Rectangle())
                                //                            .scaledToFit()
                                .cornerRadius(10)

                            Text("\(food.name)")
                                .font(.headline)
                            HStack {
                                Text("\(food.price.formatted())")
                                Text("\(food.deliveryFee)")
                                Text("| \(food.deliveryTime)")
                            }
                            .foregroundColor(.gray)
                            .font(.subheadline)
                            .bold()
                        }
                        //                    .padding(.all,10)

                    }
                }
            }
        }
        //        .padding()
    }
}

#Preview {
    UberEatChallengeModule()
}
