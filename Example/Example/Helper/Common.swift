//
//  Common.swift
//  Example
//
//  Created by Mamta on 01/07/22.
//

import UIKit

class Common {
      
    func showAlertPopup(_ alertType: CustomAlertType, title: AlertActionTitle = .ok, handler: ((UIAlertAction) -> Void)? = nil) {
        let alertController = UIAlertController(title: alertType.title, message: alertType.message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: title.title, style: .default, handler: handler))
        topViewController()?.present(alertController, animated: true)
    }
    
    func topViewController() -> UIViewController? {
        let rootViewController = UIApplication.shared.windows.first(where: { $0.isKeyWindow })?.rootViewController
        if let presentedViewController = rootViewController?.presentedViewController {
            return presentedViewController
        }
        return rootViewController
    }
    
}
