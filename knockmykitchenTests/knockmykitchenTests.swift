import XCTest
@testable import knockmykitchen

class knockmykitchenTests: XCTestCase {


    func testExample() {
        let expectation = self.expectation(description: "waiting for Recipes")
        let recipeClient = RecipeClient()
        
        recipeClient.downloadRecipes { (json) in
            print(json)
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 5.0)
    }


}
