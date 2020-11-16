//
//  CategoryImage.swift
//  Schedule
//
//  Created by SonHoang on 11/16/20.
//

import UIKit

enum CategoryImage: String {
    case workshop
    case wedding
    case trade_show
    case festival
    case theatre
    case target
    case sponsorship
    case karaoke
    case karaoke2
    case karaoke3
    case seminar
    case launch_roduct
    case opening_ceremony
    case makeup
    case meeting
    case meeting2
    case meeting3
    case travel
    case travel2
    case meeting_family
    case shiping
    case shopping
    case emcee
    case dance
    case breakfast
    case dinner
    case datting
    case birthday
    case award_ceremony
}

extension CategoryImage {
    var image: UIImage? {
        return UIImage(named: "ic_\(self.rawValue)")
    }
}
