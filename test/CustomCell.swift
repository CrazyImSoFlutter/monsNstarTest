//
//  CustomCell.swift
//  test
//
//  Created by 노근(hnoh) on 2021/04/08.
//

import UIKit

class CustomCell: UICollectionViewCell {
    let cameraButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: ""), for: .normal)
        button.layer.cornerRadius = 12
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(ViewController.buttonAction), for: .touchUpInside)
        return button
    }()
    
    let buttonLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = UIColor.white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layer.cornerRadius = 12
        addViews()
    }
    
    func addViews() {
        contentView.addSubview(cameraButton)
        contentView.addSubview(buttonLabel)
        
        cameraButton.heightAnchor.constraint(equalToConstant: 80).isActive = true
        cameraButton.widthAnchor.constraint(equalToConstant: 80).isActive = true
        
        buttonLabel.topAnchor.constraint(equalTo: cameraButton.bottomAnchor, constant: 0 ).isActive = true
        buttonLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
