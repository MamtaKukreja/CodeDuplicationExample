//
//  ViewController.swift
//  Example
//
//  Created by Mamta on 13/06/22.
//

import UIKit

class FirstViewController: ParentViewController {

    @IBOutlet weak var secondPage: UIButton!
    @IBOutlet weak var showAlert: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "First"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func openSecondPage(_ sender: UIButton) {
        guard let secondVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else {
            return
        }
        present(UINavigationController(rootViewController: secondVC), animated: true)
    }
    
    @IBAction func showAlertAction(_ sender: UIButton) {
        Common().showAlertPopup(.first)
    }

}
