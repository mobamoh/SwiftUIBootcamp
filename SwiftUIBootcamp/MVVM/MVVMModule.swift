//
//  MVVMModule.swift
//  SwiftUIBootcamp
//
//  Created by mohamedbamoh on 25.08.25.
//

import SwiftUI

class CuteMascotViewModel: ObservableObject {
    @Published var cuties = [CuteMascot]()
    @Published var isLoading = false

    init() {
        fetchCuties()
    }

    func fetchCuties() {
        self.isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.isLoading = false
            self.cuties = [
                .init(name: "Cute Pretzel", image: .cutePretzel),
                .init(name: "Cute Beer", image: .cuteBeer),
                .init(name: "Cute Bratwurst", image: .cuteBratwurst),
            ]
        }
    }

    func addCutie(name: String, image: ImageResource) {
        self.cuties.append(CuteMascot(name: name, image: image))
    }

    func removeCutie(index: Int) {
        self.cuties.remove(at: index)
    }
}

struct MVVMModule: View {
    @StateObject var cutieViewModel = CuteMascotViewModel()

    var body: some View {
        List {
                ForEach(cutieViewModel.cuties) { c in
                    HStack{
                        Spacer()
                        CuteMascotComponent(cuteMascot: c)
                        Spacer()
                    }
                }
        }
        .overlay {
            if cutieViewModel.isLoading{
                ProgressView()
            }
        }
        HStack {
            Button("Add Cutie") {
                cutieViewModel.addCutie(name: "Bober", image: .cuteBeaver)
            }
            Spacer()
            Button("Remove Cutie") {
                cutieViewModel.removeCutie(index: 0)
            }
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    MVVMModule()
}
