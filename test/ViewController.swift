//
//  ViewController.swift
//  test
//
//  Created by 노근(hnoh) on 2021/04/08.
//

import UIKit

class ViewController: UIViewController {
    var myCollectionView: UICollectionView?
    let cellData = ["camera", "store", "settings", "monSNStar", "news"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let view = UIView()
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        
        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
        layout.itemSize = CGSize(width: 90, height: 90)
        
        myCollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        myCollectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "MyCell")
        myCollectionView?.backgroundColor = UIColor.gray
        
        self.view = view
        
        myCollectionView?.delegate = self
        myCollectionView?.dataSource = self
        myCollectionView?.register(CustomCell.self, forCellWithReuseIdentifier: "MyCell")
        view.addSubview(myCollectionView ?? UICollectionView())
    }
    
    
    @objc func buttonAction(sender: UIButton!) {
        let vc = StoreViewController()
        vc.modalPresentationStyle = .fullScreen
        if sender.titleLabel?.text == "store" {
            self.present(vc, animated: true, completion: nil)
        }
        
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cellData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath) as! CustomCell
        myCell.cameraButton.setImage(UIImage(named: cellData[indexPath.row]), for: .normal)
        myCell.cameraButton.titleLabel?.text = cellData[indexPath.row]
        myCell.buttonLabel.text = cellData[indexPath.row]
        return myCell
    }
}

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    }
}


