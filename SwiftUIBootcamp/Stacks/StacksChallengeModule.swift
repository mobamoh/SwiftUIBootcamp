//
//  StacksChallengeModule.swift
//  SwiftUIBootcamp
//
//  Created by mohamedbamoh on 17.08.25.
//

import SwiftUI

struct StacksChallengeModule: View {
    var body: some View {
        VStack(alignment: .leading) {

            HStack {
                Image(.cutePretzel)
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                VStack(alignment: .leading) {
                    Text("cute_pretzel")
                        .font(.headline)
                        .fontWeight(.bold)
                    Text("Cute Pretzel")
                        .font(.subheadline)
                        .fontWidth(.condensed)
                }
                Spacer()
                ZStack {
                    Rectangle()
                        .stroke(lineWidth: 2)
                        .foregroundColor(.gray)
                        .frame(width: 150, height: 45)
                        .cornerRadius(10)
                    Text("Follow")
                        .fontWeight(.bold)
                }

            }
            Divider()
            HStack {
                Image(.cutePretzel)
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                VStack(alignment: .leading) {
                    Text("cute_pretzel")
                        .font(.headline)
                        .fontWeight(.bold)
                    Text("Cute Pretzel")
                        .font(.subheadline)
                        .fontWidth(.condensed)
                }
                Spacer()
                ZStack {
                    Capsule()
                        .stroke(lineWidth: 1)
                        .foregroundColor(.gray)
                        .frame(width: 150, height: 45)
                    //                        .cornerRadius(10)
                    Text("Follow")
                        .fontWeight(.bold)
                }

            }
            Divider()
            Spacer()
        }.padding()
    }
}

#Preview {
    StacksChallengeModule()
}
