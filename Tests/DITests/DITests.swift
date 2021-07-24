import XCTest
import DI

final class DITests: XCTestCase {
    func testRegisterAndResolve() {
        let sampleComponent = "This is a test component"
        
        let returnedValue = DI.shared.register(type: String.self, component: sampleComponent)
        XCTAssertEqual(sampleComponent, returnedValue)
        
        let resolvedValue = DI.shared.resolve(type: String.self)
        XCTAssertEqual(sampleComponent, resolvedValue)
    }

    static var allTests = [
        ("Test register and resolve of a component", testRegisterAndResolve),
    ]
}
