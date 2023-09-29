//
//  File.swift
//  
//
//  Created by Siarhei Serdziukou on 29/09/2023.
//

import SwiftUI

protocol TopMarkedRulerCellView: MarkedRulerCellView { }
extension TopMarkedRulerCellView {
    var markColor: Color {
        bounds.contains(mark) ? .init(.label) : .init(.tertiaryLabel)
    }
    var displayMark: String { numberFormatter?.string(for: mark) ?? "\(mark.approximated())" }

    var body: some View {
        VStack {
            Text(verbatim: displayMark)
                .font(Font.footnote.monospacedDigit())
                .foregroundColor(markColor)
                .lineLimit(1)
            Spacer()
            cell.equatable()
        }
        .fixedSize()
    }
}
