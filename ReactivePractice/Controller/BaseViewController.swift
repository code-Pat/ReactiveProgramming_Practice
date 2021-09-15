//
//  BaseViewController.swift
//  ReactivePractice
//
//  Created by Donggeun Lee on 2021/09/15.
//

import UIKit
import RxSwift

class BaseViewController: UIViewController {
    
    let disposeBag = DisposeBag()
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    
    override func viewDidLoad() {
        configureUI()
    }
    
    func configureUI() {
        view.backgroundColor = .systemBackground
    }
}
