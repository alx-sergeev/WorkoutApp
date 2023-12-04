//
//  NavBarController.swift
//  WorkoutApp
//
//  Created by Сергеев Александр on 22.11.2023.
//

import UIKit

final class NavBarController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureAppearance()
    }
    
    private func configureAppearance() {
        view.backgroundColor = .white
        navigationBar.isTranslucent = false
        navigationBar.standardAppearance.titleTextAttributes = [
            .foregroundColor: R.Colors.titleGray,
            .font: R.Fonts.helveticaRegular(with: 17)
        ]
        navigationBar.addBorderBottom(with: R.Colors.separator, height: 1)
    }
}
