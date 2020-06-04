//
//  EventFormatter.swift
//  unitTestProject
//
//  Created by Сергей Бондарчук on 01.06.2020.
//  Copyright © 2020 Сергей Бондарчук. All rights reserved.
//

import Foundation

class EventFormatter {
  
    let dateFormatter: DateFormatterType
    
    required init(dateFormatter: DateFormatterType) {
        self.dateFormatter = dateFormatter
      }
      


    func format(_ event: Event) -> String {
        let eventString: String
        switch event.type {
        case .telemed: eventString = "Телемедицина"
        case .doctor: eventString = "Прием доктора"
        case .pills: eventString = "Прием таблеточки"
        }
        return dateFormatter.format(Date()) + " " + eventString
       }
}
