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
    
    let searchBarView = UISearchBar().then{
        $0.placeholder = "Search"
    }
    
//    let searchBar = SearchBar()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setSearchBar()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        
//        view.addSubview(collectionView)
        
//        collectionViewLayout()
        
        collectionView.register(DemoCell.self, forCellWithReuseIdentifier: cellID)
        
        func setSearchBar(){
                
                //서치바 만들기
                let searchBar = UISearchBar()
                searchBar.placeholder = "Search"
                //왼쪽 서치아이콘 이미지 세팅하기
                searchBar.setImage(UIImage(named: "icSearchNonW"), for: UISearchBar.Icon.search, state: .normal)
                //오른쪽 x버튼 이미지 세팅하기
                searchBar.setImage(UIImage(named: "icCancel"), for: .clear, state: .normal)
                //네비게이션에 서치바 넣기
                self.navigationController?.navigationBar.topItem?.titleView = searchBar
                
                if let textfield = searchBar.value(forKey: "searchField") as? UITextField {
                    //서치바 백그라운드 컬러
                    textfield.backgroundColor = UIColor.black
                    //플레이스홀더 글씨 색 정하기
                    textfield.attributedPlaceholder = NSAttributedString(string: textfield.placeholder ?? "", attributes: [NSAttributedString.Key.foregroundColor : UIColor.lightGray])
                    //서치바 텍스트입력시 색 정하기
                    textfield.textColor = UIColor.white
                    //왼쪽 아이콘 이미지넣기
                    if let leftView = textfield.leftView as? UIImageView {
                        leftView.image = leftView.image?.withRenderingMode(.alwaysTemplate)
                        //이미지 틴트컬러 정하기
                        leftView.tintColor = UIColor.white
                    }
                    //오른쪽 x버튼 이미지넣기
                    if let rightView = textfield.rightView as? UIImageView {
                        rightView.image = rightView.image?.withRenderingMode(.alwaysTemplate)
                        //이미지 틴트 정하기
                        rightView.tintColor = UIColor.white
                    }
         
                }
            }

        
        func collectionViewLayout() {
            collectionView.translatesAutoresizingMaskIntoConstraints = false
            collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor
            ).isActive = true
            collectionView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
            collectionView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        }
                
    }
}

extension MainVC: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as! DemoCell
        
        cell.backgroundColor = .red
        
        return cell
    }
    
}

extension MainVC: UICollectionViewDelegateFlowLayout {
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: (view.frame.width - 30 - 10) / 2 , height: (view.frame.width - 30 - 10))
//    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
    }
    
    
    
}

