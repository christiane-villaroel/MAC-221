//
//  Date+Extension.swift
//  LifeScribble
//
//  Created by Christiane Villaroel on 12/10/24.
//

import Foundation

extension Date {
    func diff(numDays: Int) -> Date {
        Calendar.current.date(byAdding: .day, value: numDays, to: self)!
    }
    var startOfDay: Date {
        Calendar.current.startOfDay(for: self)
    }
}
