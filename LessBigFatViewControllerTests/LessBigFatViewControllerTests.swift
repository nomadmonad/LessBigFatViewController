import XCTest
@testable import LessBigFatViewController

class LessBigFatViewControllerTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testExample() {
        let ds = SomeDataSource(items: ["Some", "Data", "Source"],
                                identifier: "Cells")
        XCTAssertEqual(3, ds.items.count)
    }
    
}
