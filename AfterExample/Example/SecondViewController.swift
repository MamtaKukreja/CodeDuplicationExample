//
//  SecondViewController.swift
//  Example
//
//  Created by Mamta on 29/06/22.
//

import UIKit

class SecondViewController: ParentViewController {

    @IBOutlet weak var showAlert: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Second"
        setCloseButton()
        // Do any additional setup after loading the view.
    }

    @IBAction func showAlertAction(_ sender: UIButton) {
        Common().showAlertPopup(.second, title: .yes) { _ in
            print("Yes clicked")
        }
    }
    
}
