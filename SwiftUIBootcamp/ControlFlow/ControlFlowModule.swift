//
//  ControlFlowModule.swift
//  SwiftUIBootcamp
//
//  Created by mohamedbamoh on 19.08.25.
//

import SwiftUI

struct ControlFlowModule: View {
    @State var liked = false
    @State var likes = 500
    var body: some View {
        VStack {
            Button {
                liked.toggle()
                if liked {
                    likes += 1
                } else {
                    likes -= 1
                }
            } label: {
                Image(systemName: liked ? "heart.circle" : "heart.circle.fill")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .foregroundColor(!liked ? .gray : .red)
            }

            Text("\(likes) Likes")
                .fontWidth(.compressed)
                .font(.title)
                .padding()
        }

    }
}

#Preview {
    ControlFlowModule()
}
