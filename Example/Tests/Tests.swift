import XCTest
import BinderSQL

class Tests: XCTestCase {
    
    @propertyWrapper
    struct StringLimit {
        private var value: String = ""
        private let maxLength: Int

        init(maxLength: Int) {
            self.maxLength = maxLength
        }

        var wrappedValue: String {
            get { value }
            set {
                if newValue.count > maxLength {
                    value = String(newValue.prefix(maxLength))
                } else {
                    value = newValue
                }
            }
        }
    }

    struct Person {
        @StringLimit(maxLength: 10) var name: String
    }
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        var person = Person()
        person.name = "Hello, World!"
        print(person.name)  // Output: "Hello, Wor"
        print(person.name.propertyList())
        XCTAssert(true, "Pass")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
