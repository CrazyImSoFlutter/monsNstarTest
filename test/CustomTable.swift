//
//  CustomTable.swift
//  test
//
//  Created by 노근(hnoh) on 2021/04/13.
//

import UIKit

class CustomTable: UITableViewCell {
    
    let appImage: UIImageView = {
        let appImage = UIImageView()
        appImage.translatesAutoresizingMaskIntoConstraints = false
        return appImage
    }()
    
    let appLabel: UILabel = {
        let appLabel = UILabel()
        appLabel.font = UIFont.boldSystemFont(ofSize: 14)
        appLabel.translatesAutoresizingMaskIntoConstraints = false
        return appLabel
    }()
    
    let appText: UILabel = {
        let appText = UILabel()
        appText.font = UIFont.boldSystemFont(ofSize: 12)
        appText.translatesAutoresizingMaskIntoConstraints = false
        return appText
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addContentView()
        autoLayout()
    }
    
    func addContentView() {
        contentView.addSubview(appImage)
        contentView.addSubview(appLabel)
        contentView.addSubview(appText)
    }
    
    func autoLayout() {
        appImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        appImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        appImage.widthAnchor.constraint(equalToConstant: 100).isActive = true
        appImage.heightAnchor.constraint(equalToConstant: 100).isActive = true
        appImage.layer.cornerRadius = 12
        
        appLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        appLabel.leadingAnchor.constraint(equalTo: appImage.trailingAnchor, constant: 10).isActive = true
        appLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        
        appText.topAnchor.constraint(equalTo: appLabel.bottomAnchor).isActive = true
        appText.leadingAnchor.constraint(equalTo: appLabel.trailingAnchor, constant: 10).isActive = true
        appText.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        appText.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        appText.heightAnchor.constraint(equalTo: appLabel.heightAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
