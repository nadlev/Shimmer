//
//  ShimmerEffectHelper.swift
//  ShimmerAnimation
//
//  Created by Надежда Левицкая on 5/2/23.
//

import SwiftUI

struct ShimmerEffectHelper: ViewModifier {
    var configure: ShimmerConfigure
    @State private var moveTo: CGFloat = -0.7
    func body(content: Content) -> some View {
        content
            .hidden()
            .overlay {
                Rectangle()
                    .fill(configure.tint)
                    .mask {
                        content
                    }
                    .overlay {
                        GeometryReader {
                            let size = $0.size
                            let extraOffset = (size.height / 3) + configure.blur
                            
                            Rectangle()
                                .fill(configure.highlight)
                                .mask {
                                    Rectangle()
                                        .fill(
                                            .linearGradient(colors: [.white.opacity(0), configure.highlight.opacity(configure.highlightOpacity), .white.opacity(1)], startPoint: .top, endPoint: .bottom)
                                        )
                                        .blur(radius: configure.blur)
                                        .rotationEffect(.init(degrees: -70))
                                        .offset(x: moveTo > 0 ? extraOffset : -extraOffset)
                                        .offset(x: size.width * moveTo)
                                }
                                .blendMode(configure.blendMode)
                        }
                        .mask {
                            content
                        }
                    }
                    .onAppear {
                        DispatchQueue.main.async {
                            moveTo = 0.7
                        }
                    }
                    .animation(.linear(duration: configure.speed).repeatForever(autoreverses: false), value: moveTo)
            }
    }
}
