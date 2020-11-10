//
//  UIButton+Combine.swift
//  Schedule
//
//  Created by SonHoang on 11/9/20.
//

import UIKit

extension UIButton {
    var tapPublisher: EventPublisher {
        publisher(for: .touchUpInside)
    }
}
