//
//  MainVC.swift
//  Play_03
//
//  Created by 곽희상 on 2022/06/14.
//

import Foundation
import UIKit

let cellID = "Cell"

class MainVC: UIViewController, UISearchBarDelegate{
    
    let collectionView: UICollectionView = {
        let flowlayout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: flowlayout)
        
        return cv
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(collectionView)
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        collectionView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        collectionView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true

        collectionView.backgroundColor = .yellow
        
        collectionView.register(DemoCell.self, forCellWithReuseIdentifier: "Cell")
    }
}

extension MainVC: UICollectionViewDataSource {
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
    }
    
}

extension MainVC: UICollectionViewDelegate{
    
}
