//
//  UITextField+Extensions.swift
//  ReactivePractice
//
//  Created by Donggeun Lee on 2021/09/29.
//

import UIKit

extension UITextField {
    func addDoneButton() {
        let screenWidth = UIScreen.main.bounds.width
        let toolbar = UIToolbar(frame: .init(x: 0, y: 0, width: screenWidth, height: 50))
        toolbar.barStyle = .default
        
        let flexBarButtonItem = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let doneBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(dismissKeyboard))
        
        let items = [flexBarButtonItem, doneBarButtonItem]
        toolbar.items = items
        toolbar.sizeToFit()
        inputAccessoryView = toolbar
    }
    
    @objc private func dismissKeyboard() {
        resignFirstResponder()
    }
}
