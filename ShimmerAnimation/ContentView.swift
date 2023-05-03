//
//  ContentView.swift
//  ShimmerAnimation
//
//  Created by Надежда Левицкая on 5/2/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
                .shimmer(.init(tint: .white.opacity(0.4), highlight: .white, blur: 5))
                .padding()
                .background {
                    RoundedRectangle(cornerRadius: 15, style: .circular)
                        .fill(.blue.gradient)
                }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
