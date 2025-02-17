//
//  CollectionViewCell.swift
//  CollectionViewExample2
//
//  Created by tlswo on 2/17/25.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    var title = UILabel()
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .red
                
        title.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(title)
        
        NSLayoutConstraint.activate([
            title.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            title.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureTitle(title: String) {
        self.title.text = title
    }
}
