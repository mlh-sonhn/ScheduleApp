//
//  TabBarChildViewController.swift
//  Schedule
//
//  Created by SonHoang on 11/11/20.
//

import UIKit

class TabBarChildViewController: UIViewController {
    
    @objc func setup(leftTitle: String, rightTitle: String) {
        navigationItem.leftBarButtonItem = getBarButton(withTitle: leftTitle, font: UIFont.boldSystemFont(ofSize: 25))
        navigationItem.rightBarButtonItem = getBarButton(withTitle: rightTitle, font: UIFont.systemFont(ofSize: 15))
    }
    
    private func getBarButton(withTitle title: String, font: UIFont) -> UIBarButtonItem {
        let rightBarButtonItem = UIBarButtonItem()
        let label = UILabel()
        label.font = font
        label.text = title
        label.textColor = .black
        rightBarButtonItem.customView = label
        return rightBarButtonItem
    }

}
