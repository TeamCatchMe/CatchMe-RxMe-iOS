//
//  UIView + Extension.swift
//  MVVM-Example
//
//  Created by Thisisme Hi on 2021/08/22.
//

import UIKit

extension UIView {
    func addSubviews(_ views: [UIView]) {
        views.forEach { self.addSubview($0) }
    }
}
