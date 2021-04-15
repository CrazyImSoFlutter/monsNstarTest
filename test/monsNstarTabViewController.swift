//
//  monsNstarMainViewController.swift
//  test
//
//  Created by 노근(hnoh) on 2021/04/15.
//

import UIKit

class monsNstarTabViewController: UITabBarController {
    
    let backButton: UIButton = {
        let backButton = UIButton()
        let image = UIImage(named: "back_B")
        backButton.setImage(image, for: .normal)
        backButton.addTarget(self, action: #selector(back(sender:)), for: .touchUpInside)
        backButton.translatesAutoresizingMaskIntoConstraints = false
        return backButton
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().barTintColor = .darkGray
        tabBar.tintColor = .label
        setVCs()
        
        view.addSubview(backButton)
        backButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        backButton.heightAnchor.constraint(equalToConstant: 36).isActive = true
        backButton.widthAnchor.constraint(equalToConstant: 36).isActive = true
    }
    
    func createNavController(for rootViewController: UIViewController,
                             title: String,
                             image: UIImage) -> UIViewController {
        let navController = UINavigationController(rootViewController: rootViewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image
        navController.navigationBar.prefersLargeTitles = true
        rootViewController.navigationItem.title = title
        return navController
    }
    
    func setVCs() {
        viewControllers = [
            createNavController(for: monsNstarchatViewController(), title: NSLocalizedString("Chat", comment: ""), image: UIImage(systemName: "message")!),
            createNavController(for: monsNstarchatViewController(), title: NSLocalizedString("Main", comment: ""), image: UIImage(systemName: "house")!),
            createNavController(for: monsNstarchatViewController(), title: NSLocalizedString("Profile", comment: ""), image: UIImage(systemName: "person")!)
        ]
    }
    @objc func back(sender: UIButton!) {
        self.dismiss(animated: true, completion: nil)
    }
}
