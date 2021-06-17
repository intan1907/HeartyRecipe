//
//  Image+Ext.swift
//  HeartyRecipe
//
//  Created by Intan Nurjanah on 04/06/21.
//

import SwiftUI

extension Image {
    public func centerCropped() -> some View {
        GeometryReader { geo in
            self
                .resizable()
                .scaledToFill()
                .frame(width: geo.size.width, height: geo.size.height)
                .clipped()
        }
    }
}
