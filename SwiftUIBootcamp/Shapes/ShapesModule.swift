//
//  ShapesModule.swift
//  SwiftUIBootcamp
//
//  Created by mohamedbamoh on 15.08.25.
//

import SwiftUI

struct ShapesModule: View {
    var body: some View {
        Rectangle()
            .fill(.brown)
            .frame(width: 100,height: 100)
            .cornerRadius(10)
        Rectangle()
            .stroke(lineWidth: 1)
            .frame(width: 100,height: 100)
            .foregroundColor(.cyan)
        
        Circle()
            .fill(.blue)
            .frame(width: 100)
        
        Circle()
            .stroke(lineWidth: 1)
            .foregroundColor(.orange)
            .frame(width: 100)
        
        Capsule()
            .fill(.green)
            .frame(width: 100,height: 50)
        
        Capsule()
            .stroke(lineWidth: 1)
            .foregroundColor(.indigo)
            .frame(width: 50,height: 100)
            
    }
}

#Preview {
    ShapesModule()
}
