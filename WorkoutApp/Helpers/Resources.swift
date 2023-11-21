//
//  Resources.swift
//  WorkoutApp
//
//  Created by Сергеев Александр on 21.11.2023.
//

import UIKit

enum Resources {
    enum Colors {
        static let active = UIColor(hexString: "#447BFE")
        static let inactive = UIColor(hexString: "#929DA5")
        static let separator = UIColor(hexString: "#E8ECEF")
    }
    
    enum Strings {
        enum TabBar {
            static let overview = "Overview"
            static let session = "Session"
            static let progress = "Progress"
            static let settings = "Settings"
        }
    }
    
    enum Images {
        enum TabBar {
            static let overview = UIImage(named: "overview_tab")
            static let session = UIImage(named: "session_tab")
            static let progress = UIImage(named: "progress_tab")
            static let settings = UIImage(named: "settings_tab")
        }
    }
}
