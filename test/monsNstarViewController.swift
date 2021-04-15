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
        okButton.addTarget(self, action: #selector(move(sender:)), for: .touchUpInside)
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
    @objc func move(sender: UIButton!) {
        let mmvc = monsNstarTabViewController()
        mmvc.modalPresentationStyle = .fullScreen
        present(mmvc, animated: true, completion: nil)
    }
}

extension monsNstarViewController : UITextFieldDelegate {
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        // return NO to disallow editing.
        print("TextField should begin editing method called")
        return true
    }

    func textFieldDidBeginEditing(_ textField: UITextField) {
        // became first responder
        print("TextField did begin editing method called")
    }

    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        // return YES to allow editing to stop and to resign first responder status. NO to disallow the editing session to end
        print("TextField should snd editing method called")
        return true
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        // may be called if forced even if shouldEndEditing returns NO (e.g. view removed from window) or endEditing:YES called
        print("TextField did end editing method called")
    }

    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        // if implemented, called in place of textFieldDidEndEditing:
        print("TextField did end editing with reason method called")
    }

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        // return NO to not change text
        print("While entering the characters this method gets called")
        return true
    }

    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        // called when clear button pressed. return NO to ignore (no notifications)
        print("TextField should clear method called")
        return true
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // called when 'return' key pressed. return NO to ignore.
        print("TextField should return method called")
        // may be useful: textField.resignFirstResponder()
        return true
    }

}

