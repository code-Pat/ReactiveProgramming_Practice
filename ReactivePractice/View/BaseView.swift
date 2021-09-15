//
//  BaseView.swift
//  ReactivePractice
//
//  Created by Donggeun Lee on 2021/09/15.
//

import UIKit

class BaseView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func configureUI() {
        backgroundColor = .systemBackground
    }
}
