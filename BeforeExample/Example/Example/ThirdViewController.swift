//
//  ThirdViewController.swift
//  Example
//
//  Created by Mamta on 05/07/22.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Third"
        let closeButton = UIBarButtonItem(barButtonSystemItem: .close, target: self, action: #selector(closeAction(_:)))
        navigationItem.leftBarButtonItem = closeButton
    }
    
    @IBAction func closeAction(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }

}
