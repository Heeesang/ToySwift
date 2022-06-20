//
//  DemoCellCollectionViewCell.swift
//  Play_03
//
//  Created by 곽희상 on 2022/06/16.
//

import UIKit
import SnapKit
import Then
import Kingfisher

class DemoCell: UICollectionViewCell {
    
    private let movieImageView = UIImageView()
    private let movieTitleLabel = UILabel()
    
    
    func layout() {
        self.addSubview(movieImageView)
        self.addSubview(movieTitleLabel)
        
        movieImageView.snp.makeConstraints {
            $0.width.equalTo(100)
            $0.height.equalTo(130)
        }
        
        movieTitleLabel.snp.makeConstraints {
            $0.top.equalTo(movieImageView.snp.bottom).offset(10)
        }
        
    }
    
}
