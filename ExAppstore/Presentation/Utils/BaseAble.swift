//
//  BaseAble.swift
//  ExAppstore
//
//  Created by 강동영 on 7/31/24.
//

import UIKit

protocol BaseAble {
    func defaultSetup()
}

extension UIViewController: BaseAble {}
extension BaseAble where Self: UIViewController {
    func defaultSetup() {
        self.view.backgroundColor = .systemBackground
    }
}
