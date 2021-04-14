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
    }
    
    func addContentView() {
        contentView.addSubview(appImage)
        contentView.addSubview(appLabel)
        contentView.addSubview(appText)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
