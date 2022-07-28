//
//  ParentViewController.swift
//  Example
//
//  Created by Mamta on 30/06/22.
//

import UIKit

class ParentViewController: UIViewController {

    var addButton = UIBarButtonItem()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setAddButtonUI()
    }
    
    func setAddButtonUI() {
        addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addButtonAction(_:)))
        navigationItem.rightBarButtonItem = addButton
    }
    
    @IBAction func addButtonAction(_ sender: UIBarButtonItem) {
        guard let thirdVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ThirdViewController") as? ThirdViewController else {
            return
        }
        present(UINavigationController(rootViewController: thirdVC), animated: true)
    }

}
