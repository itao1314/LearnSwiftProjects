//
//  ViewController.swift
//  Day32Challenge
//
//  Created by Tao.T on 2020/7/22.
//  Copyright © 2020 TaoTao. All rights reserved.
//

import UIKit



class ViewController: UITableViewController {
    
    let cellIdentifier = "shop"
    
    var shopList = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addShopItem))
        
    }
    
    @objc func addShopItem() {
        let ac = UIAlertController(title: "新增购物清单", message: nil, preferredStyle: .alert)
        ac.addTextField()
        
        ac.addAction(UIAlertAction(title: "确定", style: .default, handler: { [weak self, weak ac] _ in
            guard let text = ac?.textFields?.first?.text else { return }
            self?.submitNewItem(item: text)
        }))
        ac.addAction(UIAlertAction(title: "取消", style: .cancel))
        
        present(ac, animated: true)
    }
    
    func submitNewItem(item: String) {
        shopList.insert(item, at: 0)
        let indexPath = IndexPath(row: 0, section: 0)
        tableView.insertRows(at: [indexPath], with: .automatic)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        shopList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView .dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        cell.textLabel?.text = shopList[indexPath.row]
        return cell
    }

}

