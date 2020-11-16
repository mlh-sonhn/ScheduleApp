//
//  DefaultCategory.swift
//  Schedule
//
//  Created by SonHoang on 11/16/20.
//

import Foundation

struct DefaultCategory {
    var iconName: String
    var title: String
}

let defaultCategories: [DefaultCategory] = [DefaultCategory(iconName: CategoryImage.wedding.rawValue, title: "wedding".localized),
                                            DefaultCategory(iconName: CategoryImage.meeting.rawValue, title: "meeting".localized),
                                            DefaultCategory(iconName: CategoryImage.seminar.rawValue, title: "seminar".localized),
                                            DefaultCategory(iconName: CategoryImage.travel.rawValue, title: "travel".localized),
                                            DefaultCategory(iconName: CategoryImage.shopping.rawValue, title: "shopping".localized),
                                            DefaultCategory(iconName: CategoryImage.dance.rawValue, title: "dance".localized),
                                            DefaultCategory(iconName: CategoryImage.breakfast.rawValue, title: "breakfast".localized),
                                            DefaultCategory(iconName: CategoryImage.dinner.rawValue, title: "dinner".localized),
                                            DefaultCategory(iconName: CategoryImage.datting.rawValue, title: "datting".localized),
                                            DefaultCategory(iconName: CategoryImage.birthday.rawValue, title: "birthday".localized),
                                            DefaultCategory(iconName: CategoryImage.meeting_family.rawValue, title: "meeting_family".localized),
                                            DefaultCategory(iconName: CategoryImage.karaoke.rawValue, title: "karaoke".localized),
                                            DefaultCategory(iconName: CategoryImage.festival.rawValue, title: "festival".localized)]
