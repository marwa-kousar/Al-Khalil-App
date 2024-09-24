//
//  Item.swift
//  Al-Khalil
//
//  Created by marwa kousar on 2024-09-15.
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
