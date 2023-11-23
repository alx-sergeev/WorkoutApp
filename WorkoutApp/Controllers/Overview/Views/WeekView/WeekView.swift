//
//  WeakView.swift
//  WorkoutApp
//
//  Created by Сергеев Александр on 23.11.2023.
//

import UIKit

final class WeekView: BaseView {
    private let calendar: Calendar = {
        var current = Calendar.current
        current.locale = Locale(identifier: "en_EN")
        
        return current
    }()
    private let stackView = UIStackView()
}

extension WeekView {
    override func setupViews() {
        super.setupViews()
        
        addViews(stackView)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        stackView.spacing = 7
        stackView.distribution = .fillEqually
        
        var weekDays = calendar.shortStandaloneWeekdaySymbols
        
        if let firstDay = weekDays.first, firstDay == "Sun" {
            let sunday = weekDays.remove(at: 0)
            weekDays.append(sunday)
        }
        
        weekDays.enumerated().forEach { (index, name) in
            let view = WeakdayView()
            view.configure(with: index, and: name)
            stackView.addArrangedSubview(view)
        }
    }
}
