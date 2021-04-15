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
        appBackground.backgroundColor = UIColor.darkGray
        appBackground.translatesAutoresizingMaskIntoConstraints = false
        return appBackground
    }()
    
    let appLabel: UILabel = {
        let appLabel = UILabel()
        appLabel.font = UIFont.boldSystemFont(ofSize: 30)
        appLabel.translatesAutoresizingMaskIntoConstraints = false
        return appLabel
    }()
    
    let downloadButton: UIButton = {
        let downloadButton = UIButton()
        downloadButton.backgroundColor = UIColor.darkGray
        downloadButton.layer.cornerRadius = 3
        downloadButton.setTitle("다운로드", for: .normal)
        downloadButton.addTarget(self, action: #selector(download(sender:)), for: .touchUpInside)
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
    
    let stars: UIImageView = {
        let stars = UIImageView()
        stars.image = UIImage(named: "stars")
        stars.translatesAutoresizingMaskIntoConstraints = false
        return stars
    }()
    
    let pointLabel: UILabel = {
        let pointLabel = UILabel()
        pointLabel.text = "5.0"
        pointLabel.font = UIFont.boldSystemFont(ofSize: 60)
        pointLabel.translatesAutoresizingMaskIntoConstraints = false
        return pointLabel
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
        view.addSubview(stars)
        view.addSubview(pointLabel)
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
        
        appBackground.centerXAnchor.constraint(equalTo: appImage.centerXAnchor).isActive = true
        appBackground.centerYAnchor.constraint(equalTo: appImage.centerYAnchor).isActive = true
        appBackground.widthAnchor.constraint(equalToConstant: 100).isActive = true
        appBackground.heightAnchor.constraint(equalToConstant: 100).isActive = true
        appBackground.insertSubview(appImage, belowSubview: appBackground)
        
        appLabel.topAnchor.constraint(equalTo: backButton.bottomAnchor, constant: 50).isActive = true
        appLabel.leadingAnchor.constraint(equalTo: appImage.trailingAnchor, constant: 20).isActive = true
        
        downloadButton.topAnchor.constraint(equalTo: appLabel.bottomAnchor, constant: 15).isActive = true
        downloadButton.leadingAnchor.constraint(equalTo: appImage.trailingAnchor, constant: 20).isActive = true
        downloadButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        downloadButton.widthAnchor.constraint(equalToConstant: 70).isActive = true
        
        stars.topAnchor.constraint(equalTo: appBackground.bottomAnchor, constant: 0).isActive = true
        stars.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        stars.heightAnchor.constraint(equalToConstant: 120).isActive = true
        stars.widthAnchor.constraint(equalToConstant: 250).isActive = true
        
        pointLabel.centerYAnchor.constraint(equalTo: stars.centerYAnchor).isActive = true
        pointLabel.leadingAnchor.constraint(equalTo: stars.trailingAnchor, constant: 20).isActive = true
        pointLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 20).isActive = true
    }
    
    @objc func back(sender: UIButton!) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc func download(sender: UIButton!) {
        
    }
}
