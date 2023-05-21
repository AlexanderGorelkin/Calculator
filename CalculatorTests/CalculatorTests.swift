//
//  CalculatorTests.swift
//  CalculatorTests
//
//  Created by Александр Горелкин on 15.05.2023.
//

import XCTest
@testable import Calculator
final class CalculatorTests: XCTestCase {
    ///Создаем экземпляр класа
    var calculator: Calculator!
    override func setUpWithError() throws {
        /// в данном методе, который запускается перед началом тестов, инициируем объект в виде класа, что позволит нам обращаться к его свойствам и методам
        calculator = Calculator()
    }
    override func tearDownWithError() throws {
        /// убираем объект из памяти после окончания теста, освобождая память для запуска следующих тестов
        calculator = nil
        try super.tearDownWithError()
    }
    func testExample() throws {
        //MARK: - Addition tests
        XCTAssert(calculator.addition(first: 15, second: 15) == 30)
        XCTAssert(calculator.addition(first: 2, second: 3) == 5)
        XCTAssert(calculator.addition(first: 1, second: 1) == 2)
        XCTAssert(calculator.addition(first: 10, second: 1) == 11)
        XCTAssert(calculator.addition(first: 150, second: 150) == 300)
        //MARK: - Subtraction tests
        XCTAssert(calculator.subtraction(first: 15, second: 15) == 0)
        XCTAssert(calculator.subtraction(first: 30, second: 15) == 15)
        XCTAssert(calculator.subtraction(first: 1, second: 2) == -1)
        XCTAssert(calculator.subtraction(first: 2, second: 1) == 1)
        XCTAssert(calculator.subtraction(first: 250, second: 100) == 150)
        //MARK: - Multiplication tests
        XCTAssert(calculator.multiplication(first: 2, second: 2) == 4)
        XCTAssert(calculator.multiplication(first: 3, second: 3) == 9)
        XCTAssert(calculator.multiplication(first: 4, second: 4) == 16)
        XCTAssert(calculator.multiplication(first: 5, second: 5) == 25)
        XCTAssert(calculator.multiplication(first: 6, second: 6) == 36)
        //MARK: - Division tests
        XCTAssert(calculator.division(first: 2, second: 2) == 1)
        XCTAssert(calculator.division(first: 3, second: 3) == 1)
        XCTAssert(calculator.division(first: 4, second: 4) == 1)
        XCTAssert(calculator.division(first: 5, second: 5) == 1)
        XCTAssert(calculator.division(first: 6, second: 6) == 1)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
