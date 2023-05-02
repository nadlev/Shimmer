//
//  ShimmerConfigure.swift
//  ShimmerAnimation
//
//  Created by Надежда Левицкая on 5/2/23.
//

import SwiftUI

struct ShimmerConfigure {
    var tint: Color
    var highlight: Color
    var blur: CGFloat = 0
    var highlightOpacity: CGFloat = 1
    var speed: CGFloat = 2
    var blendMode: BlendMode = .darken
}
