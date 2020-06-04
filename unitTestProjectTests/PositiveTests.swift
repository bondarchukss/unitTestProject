//
//  unitTestProjectTests.swift
//  unitTestProjectTests
//
//  Created by Сергей Бондарчук on 01.06.2020.
//  Copyright © 2020 Сергей Бондарчук. All rights reserved.
//

import XCTest
@testable import unitTestProject

class PositiveTests: XCTestCase {
    
    var sut:EventFormatter!
    var event:Event!
    
    func setUp( eventType: Event,  returnValue: String) {
        let sut = EventFormatter(dateFormatter: TestDateFormatter(returnValue: returnValue))
        self.sut = sut
        let  event = Event(type: eventType.type, date: eventType.date)
        self.event = event
    }
    
    func testTelemedEvent() {
        // given
        setUp(eventType: Event(type: .telemed, date: Date()) , returnValue: "Сегодня")
        // then
        XCTAssertTrue(sut.format(event) == "Сегодня Телемедицина")
    }
    
    func testDoctorEvent() {
         // given
        setUp(eventType: Event(type: .doctor, date: Date()) , returnValue: "Сегодня")
        // then
        XCTAssertTrue(sut.format(event) == "Сегодня Прием доктора")
    }
    
    func testPillsEvent() {
         // given
        setUp(eventType: Event(type: .pills, date: Date()) , returnValue: "Сегодня")
        // then
        XCTAssertTrue(sut.format(event) == "Сегодня Прием таблеточки")
    }
    
    override func tearDown() {
        sut = nil
        event = nil
        super.tearDown()
    }
    
}

