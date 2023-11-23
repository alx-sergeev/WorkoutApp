//
//  OverviewController.swift
//  WorkoutApp
//
//  Created by Сергеев Александр on 21.11.2023.
//

import UIKit

class OverviewController: BaseController {
    private let navBar = OverviewNavBar()
    private let allWorkoutsButton = SecondaryButton()
}


extension OverviewController {
    override func addViews() {
        super.addViews()
        
        view.addViews(navBar)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            navBar.topAnchor.constraint(equalTo: view.topAnchor),
            navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }
    
    override func configure() {
        super.configure()
        
        navigationController?.navigationBar.isHidden = true
    }
}
