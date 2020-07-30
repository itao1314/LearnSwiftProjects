//
//  ViewController.swift
//  Project10
//
//  Created by Tao.T on 2020/7/30.
//  Copyright © 2020 TaoTao. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Person", for: indexPath) as? PersonCell else { fatalError("Unable to dequeue PersonCell.") }
        return cell
    }


}

