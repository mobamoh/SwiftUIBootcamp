//
//  StacksModule.swift
//  SwiftUIBootcamp
//
//  Created by mohamedbamoh on 15.08.25.
//

import SwiftUI

struct StacksModule: View {
    var body: some View {
        VStack(alignment:.trailing, spacing: 20){
            Rectangle()
                .frame(width: 50,height: 50)
                .foregroundColor(.brown)
            
            Circle()
                .frame(width: 60)
                .foregroundColor(.cyan)
        }
        
        HStack(alignment:.bottom,spacing:20){
            ZStack {
                Capsule()
                    .frame(width: 120,height: 90)
                    .foregroundColor(.indigo)
                Text("Hello")
                    .font(.headline)
                    .foregroundColor(.white)
            }
            
            ZStack {
                Capsule()
                    .frame(width: 120,height: 60)
                    .foregroundColor(.mint)
                Text("World!")
                    .font(.subheadline)
                    .foregroundColor(.blue)
            }
        }
    }
}

#Preview {
    StacksModule()
}
