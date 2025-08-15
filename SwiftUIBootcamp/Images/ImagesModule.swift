//
//  ImagesModule.swift
//  SwiftUIBootcamp
//
//  Created by mohamedbamoh on 15.08.25.
//

import SwiftUI

struct ImagesModule: View {
    var body: some View {
        
        Image(systemName: "heart.circle.fill")
            .resizable()
            .foregroundColor(.brown)
            .frame(width: 100,height: 100)
            .scaledToFit()
        
        Image(.cuteSolarSystemLight)
            .resizable()
            .frame(width: 300,height: 300)
            .scaledToFit()
            .cornerRadius(50)

    }
}

#Preview {
    ImagesModule()
}
