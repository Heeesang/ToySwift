//
//  CollectionViewCell.swift
//  Play_02
//
//  Created by 곽희상 on 2022/06/10.
//

import Foundation
import UIKit
import SnapKit
import Then

class CollectionViewCell: UICollectionViewCell{
    
    var nameLabel = UILabel().then {
        $0.font = UIFont.systemFont(ofSize: 32)
        $0.textAlignment = .center
    }
    
    required init?(coder: NSCoder) {
          super.init(coder: coder)
          setUpCell()
      }
      
      override init(frame: CGRect) {
          super.init(frame: .zero)
          setUpCell()
      }
          
      func setUpCell() {
          contentView.addSubview(nameLabel)
          nameLabel.translatesAutoresizingMaskIntoConstraints = false
          nameLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
          nameLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor).isActive = true
          nameLabel.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor).isActive = true
          nameLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor).isActive = true
          }
    
}
