//
//  ScheduleViewController.swift
//  Schedule
//
//  Created by SonHoang on 11/8/20.
//

import UIKit

class ScheduleViewController: UIViewController {
    
    var coordinator: ScheduleCoordinator!

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let button = UIButton(frame: CGRect(origin: view.center, size: CGSize(width: 50, height: 30)))
        button.setTitle("Go to detail", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.addTarget(self, action: #selector(gotoDetail), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc private func gotoDetail() {
        let scheduleEvent = ScheduleEvent()
        coordinator.startEventDetail(with: scheduleEvent)
    }

}
