//
//  File.swift
//  
//
//  Created by Siarhei Serdziukou on 29/09/2023.
//

import SwiftUI

public struct TriangleCursorBody: View {
    struct Triangle: Shape {
        func path(in rect: CGRect) -> Path {
            Path { path in
                path.move(to: CGPoint(x: rect.midX, y: rect.minY))
                path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
                path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
                path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
            }
        }
    }

    public var body: some View {
        Triangle()
            .frame(size: .init(width: width, height: height))
            .foregroundColor(Color(red: 0.99, green: 0.42, blue: 0.13))
            .fixedSize()
    }
    
    let width: CGFloat
    let height: CGFloat

    init(width: CGFloat = 12, height: CGFloat = 8) {
        self.width = width
        self.height = height
    }

}

struct TriangleCursorBody_Previews: PreviewProvider {
    static var previews: some View {
        TriangleCursorBody(width: 12, height: 8)
    }
}
