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
    let petView = PetView()
    let viewModel = PetViewModel()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
        setupAutoLayout()
        viewModel.configure(petView)
    }
    
    // MARK: - Custom Methods
    func configUI() {
        view.backgroundColor = .white
    }
    
    func setupAutoLayout() {
        view.addSubview(petView)
        
        petView.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview().inset(50)
            make.leading.trailing.equalToSuperview().inset(20)
        }
    }
}

