//
//  ListsModule.swift
//  SwiftUIBootcamp
//
//  Created by mohamedbamoh on 19.08.25.
//

import SwiftUI

struct ListsModule: View {
    let os = ["MacOS", "Linux", "Windows"]
    let pl = ["Swift", "GoLang", "C", "JavaScript", "C#"]
    @State var nums = (1..<11).map { n in
        String(n)
    }
    @State var expended = false
    var body: some View {
        List {
            Section("Operating Systems", isExpanded: $expended) {
                ForEach(os, id: \.self) { o in
                    Text(o)
                        .fontWidth(.compressed)
                        .font(.title2)
                }
            }
            Section("Programming Languages") {
                ForEach(pl, id: \.self) { l in
                    Text(l)
                        .fontWidth(.condensed)
                        .font(.title2)
                }
            }
            Section("Numbers") {
                ForEach(nums, id: \.self) { n in
                    Text("\(n)")
                        .fontWidth(.expanded)
                        .bold()
                }.onDelete { indices in
                    nums.remove(atOffsets: indices)
                }
            }

        }
        .listStyle(SidebarListStyle())
    }
}

#Preview {
    ListsModule()
}
