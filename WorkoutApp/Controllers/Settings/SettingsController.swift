//
//  SettingsController.swift
//  WorkoutApp
//
//  Created by Сергеев Александр on 22.11.2023.
//

import UIKit

class SettingsController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Settings"
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.settings
    }
    
}
