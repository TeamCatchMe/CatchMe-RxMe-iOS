//
//  PetView.swift
//  MVVM-Example
//
//  Created by Thisisme Hi on 2021/08/25.
//

import UIKit

import SnapKit
import Then

// MARK: - PetView
class PetView: UIView {
    // MARK: - Properties
    let imageView = UIImageView()
    
    let nameLabel = UILabel().then {
        $0.textAlignment = .left
        $0.textColor = .white
        $0.font = .systemFont(ofSize: 20, weight: .medium)
    }
    
    let ageLabel = UILabel().then {
        $0.textAlignment = .left
        $0.textColor = .white
        $0.font = .systemFont(ofSize: 20, weight: .medium)
    }

    let adoptionFeeLabel = UILabel().then {
        $0.textAlignment = .left
        $0.textColor = .white
        $0.font = .systemFont(ofSize: 20, weight: .medium)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configUI()
        setupAutoLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init?(coder:) is not supported")
    }
    
    // MARK: - Custom Methods
    func configUI() {
        backgroundColor = .black
    }
    
    func setupAutoLayout() {
        addSubviews([imageView, nameLabel, ageLabel, adoptionFeeLabel])
        
        imageView.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(50)
            make.centerX.equalToSuperview()
        }
        
        nameLabel.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(50)
            make.centerX.equalToSuperview()
        }
        
        ageLabel.snp.makeConstraints { make in
            make.top.equalTo(nameLabel.snp.bottom).offset(50)
            make.centerX.equalToSuperview()
        }
        
        adoptionFeeLabel.snp.makeConstraints { make in
            make.top.equalTo(ageLabel.snp.bottom).offset(50)
            make.centerX.equalToSuperview()
        }
    }
}
