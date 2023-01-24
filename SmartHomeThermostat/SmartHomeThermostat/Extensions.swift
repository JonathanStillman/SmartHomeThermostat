//
//  Extensions.swift
//  SmartHomeThermostat
//
//  Created by Jonathan Stillman on 1/23/23.
//

import SwiftUI

extension LinearGradient {
    init(_ colors: [Color], startPoint: UnitPoint = .topLeading, endPoint: UnitPoint = .bottomTrailing) {
        self.init(gradient: Gradient(colors: colors), startPoint: startPoint, endPoint: endPoint)
    }
}
