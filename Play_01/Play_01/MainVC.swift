//
//  MainVC.swift
//  Play_01
//
//  Created by 곽희상 on 2022/06/04.
//

import UIKit
import MapKit

class MainVC: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
    let myMap = MapView()
    
    override func loadView() {
        view = myMap
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myMap.map.delegate = self
        myMap.map.setRegion(MKCoordinateRegion(center: 0, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)), animated: true)
    }
    
}
