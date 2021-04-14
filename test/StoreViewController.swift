//
//  StoreViewController.swift
//  test
//
//  Created by 노근(hnoh) on 2021/04/10.
//

import UIKit

class StoreViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let cellData = ["camera", "store", "settings", "monSNStar"]
    var storeView: UITableView = UITableView(frame: CGRect.zero, style: .insetGrouped)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let view = UIView()
        
        self.storeView.dataSource = self
        self.storeView.delegate = self
        self.storeView.frame(forAlignmentRect: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height))
        self.storeView.register(CustomTable.self, forCellReuseIdentifier: "app")
        self.view = view
        self.storeView.rowHeight = 100
        self.view.addSubview(self.storeView)
        
        view.backgroundColor = UIColor.gray
        self.storeView.backgroundColor = UIColor.gray

        self.storeView.translatesAutoresizingMaskIntoConstraints = false
        self.storeView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0).isActive = true
        self.storeView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
        self.storeView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        self.storeView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else {
            return cellData.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "app", for: indexPath) as! CustomTable
        if indexPath.section == 0 {
            
        } else {
            cell.appImage.image = UIImage(named: cellData[indexPath.row])
            cell.appLabel.text = cellData[indexPath.row]
            cell.appText.text = cellData[indexPath.row]
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let dvc : DownloadViewController = DownloadViewController()
        dvc.modalPresentationStyle = .fullScreen
        present(dvc, animated: true, completion: nil)
    }
}
