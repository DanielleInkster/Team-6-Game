//
//  Challenge5ViewControllerTests.swift
//  JackTheRipperTests
//
//  Created by Student on 02/12/2019.
//  Copyright © 2019 Team6. All rights reserved.
//

import XCTest
@testable import JackTheRipper

class Challenge5ViewControllerTests: XCTestCase {


        var viewController : Challenge5ViewController!

        override func setUp() {
            super.setUp()

            let storyboard = UIStoryboard(name: "Challenge5", bundle: Bundle.main)
            viewController = (storyboard.instantiateViewController(withIdentifier: "ViewController5") as! Challenge5ViewController)
            UIApplication.shared.keyWindow!.rootViewController = viewController

            let _ = viewController.view
        }

        override func tearDown() {
            super.tearDown()
        }
    
    func test() {
        XCTAssertTrue(true)
    }
    
    func testHasAGuessWhoo() {
        XCTAssertNotNil(viewController.guessWho)
    }
    
    func testMove1IncrementsScore() {
        let result = viewController.question(input: "Does he have a beard?")
        let response = viewController.response
//        XCTAssertTrue(result == "The suspect did not have a beard.")
        XCTAssertEqual(response, "The suspect did not have a beard.")
    }
}
