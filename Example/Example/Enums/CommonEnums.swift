//
//  CommonEnums.swift
//  Example
//
//  Created by Mamta on 01/07/22.
//

import UIKit

enum CustomAlertType {
    
    case first
    case second
    case more
    
    public var title: String {
        var value: String
        switch self {
        case .first: value = "First"
        case .second: value = "Second"
        case .more: value = "More"
        }
        return value
    }
    
    public var message: String {
        var value: String
        switch self {
        case .first: value = "First Description"
        case .second: value = "Second Description"
        case .more: value = "More Description"
        }
        return value
    }
    
}

enum AlertActionTitle {
    
    case delete
    case cancel
    case ok
    case yes
    case no
    
    public var title: String {
        var value: String
        switch self {
        case .delete: value = "Delete"
        case .cancel: value = "Cancel"
        case .no: value = "No"
        case .yes: value = "Yes"
        case .ok: value = "Ok"
        }
        return value
    }
    
}
