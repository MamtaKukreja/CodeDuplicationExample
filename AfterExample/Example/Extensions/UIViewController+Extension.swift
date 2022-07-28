//
//  NavigationItem+Extension.swift
//  Example
//
//  Created by Keval Vadoliya on 05/07/22.
//

import UIKit

extension UIViewController {
    
    func setCloseButton() {
        let closeButton = UIBarButtonItem(barButtonSystemItem: .close, target: self, action: #selector(closeAction(_:)))
        navigationItem.leftBarButtonItem = closeButton
    }
    
    @IBAction func closeAction(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
}
