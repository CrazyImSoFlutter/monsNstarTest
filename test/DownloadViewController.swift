//
//  DownloadViewController.swift
//  test
//
//  Created by 노근(hnoh) on 2021/04/13.
//

import UIKit

class DownloadViewController: UIViewController {
    
    let appImage: UIImageView = {
        let appImage = UIImageView()
        appImage.image = UIImage(named: "monSNStar")
        appImage.layer.cornerRadius = 12
        appImage.translatesAutoresizingMaskIntoConstraints = false
        return appImage
    }()
    
    let downloadButton: UIButton = {
        let downloadButton = UIButton()
        downloadButton.translatesAutoresizingMaskIntoConstraints = false
        return downloadButton
    }()
    
    let backButton: UIButton = {
        let backButton = UIButton()
        backButton.translatesAutoresizingMaskIntoConstraints = false
        return backButton
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.gray
        addView()
        autoLayout()
    }
    
    func addView() {
        view.addSubview(appImage)
        view.addSubview(downloadButton)
        view.addSubview(backButton)
    }
    
    func autoLayout() {
        appImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        appImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        appImage.widthAnchor.constraint(equalToConstant: 100).isActive = true
        appImage.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        
    }
}
