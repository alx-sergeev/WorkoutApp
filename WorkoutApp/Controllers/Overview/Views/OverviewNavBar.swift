//
//  OverviewNavBar.swift
//  WorkoutApp
//
//  Created by Сергеев Александр on 23.11.2023.
//

import UIKit

final class OverviewNavBar: BaseView {
    private let titleLabel = UILabel()
    private let allWorkoutsButton = SecondaryButton()
    private let addButton = UIButton()
    private let weekView: UIView = WeekView()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        addBorderBottom(with: R.Colors.separator, height: 1)
    }
    
    func addAllWorkoutsAction(_ action: Selector, target: Any?) {
        allWorkoutsButton.addTarget(target, action: action, for: .touchUpInside)
    }
    
    func addAdditingAction(_ action: Selector, target: Any?) {
        addButton.addTarget(target, action: action, for: .touchUpInside)
    }
}

extension OverviewNavBar {
    override func setupViews() {
        super.setupViews()
        
        addViews(titleLabel, allWorkoutsButton, addButton, weekView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            addButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8),
            addButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            addButton.widthAnchor.constraint(equalToConstant: 28),
            addButton.heightAnchor.constraint(equalToConstant: 28),
            
            allWorkoutsButton.topAnchor.constraint(equalTo: addButton.topAnchor),
            allWorkoutsButton.trailingAnchor.constraint(equalTo: addButton.leadingAnchor, constant: -15),
            allWorkoutsButton.widthAnchor.constraint(equalToConstant: 130),
            allWorkoutsButton.heightAnchor.constraint(equalToConstant: 28),
            
            titleLabel.centerYAnchor.constraint(equalTo: allWorkoutsButton.centerYAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: allWorkoutsButton.leadingAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            
            weekView.topAnchor.constraint(equalTo: addButton.bottomAnchor, constant: 15),
            weekView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            weekView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            weekView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15),
            weekView.heightAnchor.constraint(equalToConstant: 47)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        backgroundColor = .white
        
        titleLabel.text = R.Strings.TabBar.title(for: .overview)
        titleLabel.textColor = R.Colors.titleGray
        titleLabel.font = R.Fonts.helveticaRegular(with: 22)
        
        allWorkoutsButton.setTitle(R.Strings.Overview.allWorkoutsButton)
        
        addButton.setImage(R.Images.Common.add, for: .normal)
    }
}
