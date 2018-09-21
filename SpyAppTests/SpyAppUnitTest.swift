//
//  SpyAppUnitTest.swift
//  SpyAppTests
//
//  Created by Simon on 9/20/18.
//  Copyright © 2018 Axel Ancona Esselmann. All rights reserved.
//

import XCTest
@testable import SpyApp

class SpyAppUnitTest: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    func test_CeaserCipherSecret0MapToSelf()
    {
        let cipher = CeaserCipher()
        let plaintext = "Z"
        
        
        let result = cipher.encode(plaintext, secret:"0")
        
        XCTAssertEqual(plaintext, result)
    }
    
    func test_AlphaNumericEdgeCaseZto0()
    {
        let cipher = AlphaNumericCeasarCipher()
        let plaintext = "Z"
        
        let result = cipher.encode(plaintext, secret: "0")
        
        let answer = "0"
        
        XCTAssertEqual(answer, result)
    }
    
    func test_AlphaNumericEdgeCase9toA()
    {
        let cipher = AlphaNumericCeasarCipher()
        let plaintext = "9"
        
        let result = cipher.encode(plaintext, secret: "0")
        
        let answer = "A"
        
        XCTAssertEqual(answer, result)
    }
    
    func test_Rot13EdgeCaseAtoN()
    {
        let cipher = Rot13()
        let plaintext = "A"
        
        let result = cipher.encode(plaintext, secret: "0")
        
        let answer = "N"
        
        XCTAssertEqual(answer, result)
    }
    
    func test_Rot13EdgeCaseNtoA()
    {
        let cipher = Rot13()
        let plaintext = "N"
        
        let result = cipher.encode(plaintext, secret: "0")
        
        let answer = "A"
        
        XCTAssertEqual(answer, result)
    }
    
    func test_Rot13EdgeCaseMtoZ()
    {
        let cipher = Rot13()
        let plaintext = "M"
        
        let result = cipher.encode(plaintext, secret: "0")
        
        let answer = "Z"
        
        XCTAssertEqual(answer, result)
    }
    
    func test_Rot13EdgeCaseZtoM()
    {
        let cipher = Rot13()
        let plaintext = "Z"
        
        let result = cipher.encode(plaintext, secret: "0")
        
        let answer = "M"
        
        XCTAssertEqual(answer, result)
    }
}
