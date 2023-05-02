//
//  View + Ext.swift
//  ShimmerAnimation
//
//  Created by Надежда Левицкая on 5/2/23.
//

import SwiftUI

extension View {
    @ViewBuilder
    func shimmer(_ config: ShimmerConfigure) -> some View {
        self.modifier(ShimmerEffectHelper(configure: config))
    }
}

