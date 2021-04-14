//
//  DownloadViewController.swift
//  test
//
//  Created by 노근(hnoh) on 2021/04/13.
//

import UIKit

class DownloadViewController: UIViewController {
    
    let appData = ["monSNStar", "news"]
    
    let appImage: UIImageView = {
        let appImage = UIImageView()
        appImage.layer.cornerRadius = 12
        appImage.translatesAutoresizingMaskIntoConstraints = false
        return appImage
    }()
    
    let appBackground: UIImageView = {
        let appBackground = UIImageView()
        appBackground.layer.cornerRadius = 12
        appBackground.translatesAutoresizingMaskIntoConstraints = false
        return appBackground
    }()
    
    let appLabel: UILabel = {
        let appLabel = UILabel()
        appLabel.translatesAutoresizingMaskIntoConstraints = false
        return appLabel
    }()
    
    let downloadButton: UIButton = {
        let downloadButton = UIButton()
        downloadButton.translatesAutoresizingMaskIntoConstraints = false
        return downloadButton
    }()
    
    let backButton: UIButton = {
        let backButton = UIButton()
        let image = UIImage(named: "back")
        backButton.setImage(image, for: .normal)
        backButton.addTarget(self, action: #selector(back(sender:)), for: .touchUpInside)
        backButton.translatesAutoresizingMaskIntoConstraints = false
        return backButton
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.lightGray
        addView()
        autoLayout()
    }
    
    func addView() {
        view.addSubview(appImage)
        view.addSubview(appBackground)
        view.addSubview(appLabel)
        view.addSubview(downloadButton)
        view.addSubview(backButton)
    }
    
    func autoLayout() {
        backButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        backButton.heightAnchor.constraint(equalToConstant: 36).isActive = true
        backButton.widthAnchor.constraint(equalToConstant: 36).isActive = true
        
        appImage.topAnchor.constraint(equalTo: backButton.bottomAnchor, constant: 50).isActive = true
        appImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        appImage.widthAnchor.constraint(equalToConstant: 90).isActive = true
        appImage.heightAnchor.constraint(equalToConstant: 90).isActive = true
        
        appLabel.topAnchor.constraint(equalTo: backButton.bottomAnchor, constant: 50).isActive = true
        appLabel.leadingAnchor.constraint(equalTo: appImage.trailingAnchor, constant: 20).isActive = true
        
    }
    
    @objc func back(sender: UIButton!) {
        self.dismiss(animated: true, completion: nil)
    }
}
