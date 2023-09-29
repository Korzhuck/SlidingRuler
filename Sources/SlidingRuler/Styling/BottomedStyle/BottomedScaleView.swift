//
//  File.swift
//  
//
//  Created by Siarhei Serdziukou on 29/09/2023.
//

import SwiftUI

struct BottomedScaleView: ScaleView {
    struct ScaleShape: Shape {
        fileprivate var unitMarkSize: CGSize { .init(width: 1.0, height: 20.0)}
        fileprivate var halfMarkSize: CGSize { .init(width: 1.0, height: 11.0) }
        fileprivate var fractionMarkSize: CGSize { .init(width: 1.0, height: 11.0)}

        func path(in rect: CGRect) -> Path {
            let centerX = rect.center.x
            let centerY = rect.height - unitMarkSize.height / 2
            var p = Path()

            p.addRoundedRect(in: unitRect(x: centerX, y: centerY), cornerSize: .init(square: unitMarkSize.width/2))
            p.addRoundedRect(in: halfRect(x: 0, y: rect.height - halfMarkSize.height/2), cornerSize: .init(square: halfMarkSize.width/2))
            p.addRoundedRect(in: halfRect(x: rect.maxX, y: rect.height - halfMarkSize.height/2), cornerSize: .init(square: halfMarkSize.width/2))

            let tenth = rect.width / 10
            for i in 1...4 {
                p.addRoundedRect(in: tenthRect(x: centerX + CGFloat(i) * tenth, y: rect.height - fractionMarkSize.height/2), cornerSize: .init(square: fractionMarkSize.width/2))
                p.addRoundedRect(in: tenthRect(x: centerX - CGFloat(i) * tenth, y: rect.height - fractionMarkSize.height/2), cornerSize: .init(square: fractionMarkSize.width/2))
            }

            return p
        }

        private func unitRect(x: CGFloat, y: CGFloat) -> CGRect { .init(center: .init(x: x, y: y), size: unitMarkSize) }
        private func halfRect(x: CGFloat, y: CGFloat) -> CGRect { .init(center: .init(x: x, y: y), size: halfMarkSize) }
        private func tenthRect(x: CGFloat, y: CGFloat) -> CGRect { .init(center: .init(x: x, y: y), size: fractionMarkSize) }
    }

    let width: CGFloat
    let height: CGFloat
    var shape: ScaleShape { .init() }

    var unitMarkWidth: CGFloat { shape.unitMarkSize.width }
    var halfMarkWidth: CGFloat { shape.halfMarkSize.width }
    var fractionMarkWidth: CGFloat { shape.fractionMarkSize.width }

    init(width: CGFloat, height: CGFloat = 20) {
        self.width = width
        self.height = height
    }
}

struct BottomedScaleView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BottomedScaleView(width: 120)
        }
        .previewLayout(.sizeThatFits)
    }
}
