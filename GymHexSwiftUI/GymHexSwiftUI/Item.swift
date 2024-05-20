//
//  Item.swift
//  GymHexSwiftUI
//
//  Created by Tom Knight on 20/05/2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
