//
//  PetViewModel.swift
//  MVVM-Example
//
//  Created by Thisisme Hi on 2021/08/25.
//

import Foundation
import UIKit

// MARK: - PetViewModel
public class PetViewModel {
  
  // 1
  private let pet: PetModel
  private let calendar: Calendar
  
  public init() {
    self.pet = PetModel()
    self.calendar = Calendar(identifier: .gregorian)
  }
  
  // 2
  public var name: String {
    return pet.name
  }
  
  public var image: String {
    return pet.image
  }
  
  // 3
  public var ageText: String {
    let today = calendar.startOfDay(for: Date())
    let birthday = calendar.startOfDay(for: pet.birthday)
    let components = calendar.dateComponents([.year],
                                             from: birthday,
                                             to: today)
    let age = components.year!
    return "\(age) years old"
  }
  
  // 4
  public var adoptionFeeText: String {
    switch pet.rarity {
    case .common:
      return "$50.00"
    case .uncommon:
      return "$75.00"
    case .rare:
      return "$150.00"
    case .veryRare:
      return "$500.00"
    }
  }
}

extension PetViewModel {
    func configure(_ view: PetView) {
        view.nameLabel.text = name
        view.ageLabel.text = ageText
        view.adoptionFeeLabel.text = adoptionFeeText
        view.imageView.image = UIImage(named: image)
    }
}
