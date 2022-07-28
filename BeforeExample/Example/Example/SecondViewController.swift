//
//  SecondViewController.swift
//  Example
//
//  Created by Mamta on 29/06/22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var showAlert: UIButton!
    
    var addButton = UIBarButtonItem()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Second"
        setAddButtonUI()
        let closeButton = UIBarButtonItem(barButtonSystemItem: .close, target: self, action: #selector(closeAction(_:)))
        navigationItem.leftBarButtonItem = closeButton
        // Do any additional setup after loading the view.
    }

    @IBAction func showAlertAction(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Second", message: "Second Description", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Yes", style: .default, handler: { _ in
            print("Yes clicked")
        }))
        present(alertController, animated: true)
    }
    
    @IBAction func closeAction(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
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
