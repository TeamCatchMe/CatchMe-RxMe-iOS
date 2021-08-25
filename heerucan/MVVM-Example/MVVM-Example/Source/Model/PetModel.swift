//
//  PetModel.swift
//  MVVM-Example
//
//  Created by Thisisme Hi on 2021/08/25.
//

import Foundation
import UIKit

// MARK: - PetModel
public class PetModel {
    public let name: String
    public let birthday: Date
    public let rarity: Rarity
    public let image: String
    
    public enum Rarity {
        case common
        case uncommon
        case rare
        case veryRare
    }
    
    public init(name: String = "뽀미",
                birthday: Date = Date(timeIntervalSinceNow: (-2 * 86400 * 366)),
                rarity: Rarity = .common,
                image: String = "image.png") {
        self.name = name
        self.birthday = birthday
        self.rarity = rarity
        self.image = image
    }
}
