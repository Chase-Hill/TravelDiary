//
//  DateHelper.swift
//  TravelDiary
//
//  Created by Karl Pfister on 10/25/21.
//

import Foundation
extension Date {
    
    /**
    Extends the Date class giving us the ability to convert a Date to a String.
     **/
    func stringValue() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .none
        return formatter.string(from: self)
    }
}
