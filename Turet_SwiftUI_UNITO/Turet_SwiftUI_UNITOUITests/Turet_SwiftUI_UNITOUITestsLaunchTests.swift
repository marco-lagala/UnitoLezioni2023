//
//  Turet_SwiftUI_UNITOUITestsLaunchTests.swift
//  Turet_SwiftUI_UNITOUITests
//
//  Created by Marco La Gala on 01/05/23.
//

import XCTest

final class Turet_SwiftUI_UNITOUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
