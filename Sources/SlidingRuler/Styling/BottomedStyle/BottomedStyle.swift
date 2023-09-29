//
//  File.swift
//  
//
//  Created by Siarhei Serdziukou on 29/09/2023.
//

import SwiftUI

public struct BottomedSlindingRulerStyle: SlidingRulerStyle {
    public var cursorAlignment: VerticalAlignment = .top

    public func makeCellBody(configuration: SlidingRulerStyleConfiguation) -> some FractionableView {
        BottomedCellBody(mark: configuration.mark,
                         bounds: configuration.bounds,
                         step: configuration.step,
                         cellWidth: cellWidth,
                         numberFormatter: configuration.formatter)
    }

    public func makeCursorBody() -> some View {
        NativeCursorBody()
    }
}
