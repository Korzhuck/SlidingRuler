//
//  File.swift
//  
//
//  Created by Siarhei Serdziukou on 29/09/2023.
//

import SwiftUI

struct BlankBottomedCellBody: NativeRulerCellView {
    var mark: CGFloat
    var bounds: ClosedRange<CGFloat>
    var step: CGFloat
    var cellWidth: CGFloat

    var scale: some ScaleView { BottomedScaleView(width: cellWidth) }
}

struct BottomedCellBody: TopMarkedRulerCellView {
    var mark: CGFloat
    var bounds: ClosedRange<CGFloat>
    var step: CGFloat
    var cellWidth: CGFloat
    var numberFormatter: NumberFormatter?

    var cell: some RulerCellView { BlankBottomedCellBody(mark: mark, bounds: bounds, step: step, cellWidth: cellWidth) }
}
