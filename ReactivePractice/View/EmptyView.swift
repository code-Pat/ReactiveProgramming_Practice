//
//  EmptyView.swift
//  ReactivePractice
//
//  Created by Donggeun Lee on 2021/09/16.
//

import UIKit

class EmptyView: UIView {
    let descriptionLabel = NormalLabel()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        descriptionLabel.text = "This is no any contents"
        addSubview(descriptionLabel)
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        
        descriptionLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        descriptionLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
