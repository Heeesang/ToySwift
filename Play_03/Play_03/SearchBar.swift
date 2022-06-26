import UIKit
import SnapKit

class SearchBar: UIView, UISearchBarDelegate {
    let searchBar = UISearchBar()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setLayout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func setLayout() {
        backgroundColor = .white
        searchBar.delegate = self
        searchBar.clipsToBounds = true
        searchBar.layer.cornerRadius = 4
        searchBar.layer.borderColor = UIColor(red: 0.902, green: 0.902, blue: 0.902, alpha: 1).cgColor
        searchBar.layer.borderWidth = 1
        
    }
}

