//
//  monsNstarViewController.swift
//  test
//
//  Created by 노근(hnoh) on 2021/04/14.
//

import UIKit

class monsNstarViewController: UIViewController {

    let logoImage: UIImageView = {
        let logoImage = UIImageView()
        logoImage.image = UIImage(named: "monSNStar_B")
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        return logoImage
    }()
    
    let okButton: UIButton = {
        let okButton = UIButton()
        okButton.backgroundColor = UIColor.gray
        okButton.layer.cornerRadius = 12
        okButton.setTitle("좋습니다!", for: .normal)
        okButton.titleLabel!.font = UIFont.boldSystemFont(ofSize: 20)
        okButton.translatesAutoresizingMaskIntoConstraints = false
        return okButton
    }()
    
    let setName: UITextField = {
        let setName = UITextField()
        setName.borderStyle = .roundedRect
        setName.backgroundColor = UIColor.systemGray
        setName.placeholder = "이름을 입력하세요"
        setName.layer.cornerRadius = 12
        setName.translatesAutoresizingMaskIntoConstraints = false
        return setName
    }()
    
    let welcomeMessage: UILabel = {
        let welcomeMessage = UILabel()
        welcomeMessage.textAlignment = .center
        welcomeMessage.text = "반갑습니다!"
        welcomeMessage.font = UIFont.boldSystemFont(ofSize: 60)
        welcomeMessage.translatesAutoresizingMaskIntoConstraints = false
        return welcomeMessage
    }()
    
    let backButton: UIButton = {
        let backButton = UIButton()
        let image = UIImage(named: "back_B")
        backButton.addTarget(self, action: #selector(back(sender:)), for: .touchUpInside)
        backButton.setImage(image, for: .normal)
        backButton.translatesAutoresizingMaskIntoConstraints = false
        return backButton
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.lightGray
        addViews()
        autoLayout()
    }

    func addViews() {
        view.addSubview(logoImage)
        view.addSubview(okButton)
        view.addSubview(welcomeMessage)
        view.addSubview(setName)
        view.addSubview(backButton)
    }
    
    func autoLayout() {
        logoImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        logoImage.heightAnchor.constraint(equalToConstant: 250).isActive = true
        logoImage.widthAnchor.constraint(equalToConstant: 250).isActive = true
        
        okButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -70).isActive = true
        okButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        okButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        okButton.widthAnchor.constraint(equalToConstant: 180).isActive = true
        okButton.imageView?.heightAnchor.constraint(equalToConstant: 60).isActive = true
        okButton.imageView?.widthAnchor.constraint(equalToConstant: 60).isActive = true
        
        welcomeMessage.bottomAnchor.constraint(equalTo: logoImage.topAnchor, constant: 0).isActive = true
        welcomeMessage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        welcomeMessage.heightAnchor.constraint(equalToConstant: 100).isActive = true
        welcomeMessage.widthAnchor.constraint(equalToConstant: 300).isActive = true
        
        setName.bottomAnchor.constraint(equalTo: okButton.topAnchor, constant: -70).isActive = true
        setName.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        setName.heightAnchor.constraint(equalToConstant: 80).isActive = true
        setName.widthAnchor.constraint(equalToConstant: view.frame.width - 40).isActive = true
        
        backButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        backButton.heightAnchor.constraint(equalToConstant: 36).isActive = true
        backButton.widthAnchor.constraint(equalToConstant: 36).isActive = true
    }
    
    @objc func back(sender: UIButton!) {
        self.dismiss(animated: true, completion: nil)
    }
}
