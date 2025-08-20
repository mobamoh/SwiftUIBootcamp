//
//  CuteMascot.swift
//  SwiftUIBootcamp
//
//  Created by mohamedbamoh on 20.08.25.
//

import Foundation
import SwiftUI

struct CuteMascot: Identifiable {
    var id = NSUUID().uuidString
    let name: String
    let image: ImageResource
}
