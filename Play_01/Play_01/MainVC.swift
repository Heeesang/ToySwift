//
//  MainVC.swift
//  Play_01
//
//  Created by 곽희상 on 2022/06/04.
//

import UIKit
import MapKit
import Then

class MainVC: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
    private let myMap = MKMapView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setMapConstraints()
        
    }
    
    private func setMapConstraints() {
        view.addSubview(myMap)
        myMap.translatesAutoresizingMaskIntoConstraints = false
        myMap.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        myMap.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        myMap.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        myMap.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
    }
    
}
