//
//  ViewController.swift
//  MVVM-Example
//
//  Created by SHIN YOON AH on 2021/08/19.
//

import UIKit

import SnapKit
import Then

class ViewController: UIViewController {
    // MARK: - Properties
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
        setupAutoLayout()
    }
    
    // MARK: - Custom Method
    func configUI() {
        view.backgroundColor = .green
    }
    
    func setupAutoLayout() {
        
    }
}

