//
//  File.swift
//  
//
//  Created by Siarhei Serdziukou on 29/09/2023.
//

import SwiftUI

struct SlidingRulerPreview: View {
    @State private var value: Double = 0
    var body: some View {
        SlidingRuler(value: $value, in: 0...24, step: 1)
            .slidingRulerStyle(BottomedSlindingRulerStyle())
    }

}
struct SlidingRuler_Previews: PreviewProvider {
    static var previews: some View {
        SlidingRulerPreview()
    }
}
