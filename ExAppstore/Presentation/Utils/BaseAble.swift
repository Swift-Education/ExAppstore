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
        let label: UILabel = .init(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = String(describing: Self.self)
        label.font = .systemFont(ofSize: 30)
        self.view.addSubview(label)
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
        ])
    }
}
