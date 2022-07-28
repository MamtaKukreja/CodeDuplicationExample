//
//  ViewController.swift
//  Example
//
//  Created by Mamta on 13/06/22.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var secondPage: UIButton!
    @IBOutlet weak var showAlert: UIButton!
    
    var addButton = UIBarButtonItem()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "First"
        setAddButtonUI()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func openSecondPage(_ sender: UIButton) {
        guard let secondVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else {
            return
        }
        present(UINavigationController(rootViewController: secondVC), animated: true)
    }
    
    @IBAction func showAlertAction(_ sender: UIButton) {
        let alertController = UIAlertController(title: "First", message: "First Description", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alertController, animated: true)
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
