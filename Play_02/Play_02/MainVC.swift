//
//  MainVC.swift
//  Play_02
//
//  Created by 곽희상 on 2022/06/10.
//

import Foundation
import UIKit

class MainVC: UIViewController{

    private var customCollectionView: CustomCollectionView!
    private let data = Data()
     
     override func viewDidLoad() {
         super.viewDidLoad()
         
         customCollectionView = CustomCollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewFlowLayout.init())
         customCollectionView.translatesAutoresizingMaskIntoConstraints = false
         customCollectionView.backgroundColor = .white
         self.view.addSubview(customCollectionView)
         customCollectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 120).isActive = true
         customCollectionView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
         customCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
         customCollectionView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
         
         self.customCollectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: "CollectionViewCell")
         
         self.customCollectionView.delegate = self
         self.customCollectionView.dataSource = self
         
     }
    
}

extension MainVC: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.memberName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
            
            cell.backgroundColor = .lightGray
            cell.nameLabel.text = data.memberName[indexPath.row]
            cell.nameLabel.backgroundColor = .yellow
            
            return cell
    }
}

extension MainVC: UICollectionViewDelegateFlowLayout {

    // 위 아래 간격
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }

    // 옆 간격
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }

    // cell 사이즈( 옆 라인을 고려하여 설정 )
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        let width = collectionView.frame.width / 3 - 1 ///  3등분하여 배치, 옆 간격이 1이므로 1을 빼줌
        print("collectionView width=\(collectionView.frame.width)")
        print("cell하나당 width=\(width)")
        print("root view width = \(self.view.frame.width)")

        let size = CGSize(width: width, height: width)
        return size
    }
}
