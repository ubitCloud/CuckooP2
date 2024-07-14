//
//  CommentViewModelTests.swift
//  CuckooP2Tests
//
//  Created by Ubit Cloud on 12/07/2024.
//


import XCTest
import Cuckoo
@testable import CuckooP2

class CommentViewModelTests: XCTestCase {

    func testComments() {
        let sut = CommentViewModel(commentViewService: MockCommentViewService())
        sut.fetchComments()
        XCTAssertEqual(sut.comments.count, 3, "Expected 3 comments to be fetched.")
    }
    
    
    func testCompareObjects() {
        let sut = CommentViewModel(commentViewService: MockCommentViewService())
        
//        let expectation = self.expectation(description: "Fetch comments")

        sut.fetchComments()
        
//        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            do {
                if let fileUrl = Bundle.main.url(forResource: "Comments", withExtension: "json") {
                    let data = try Data(contentsOf: fileUrl)
                    let json = try JSONDecoder().decode([CommentModel].self, from: data)
                    
                    XCTAssertEqual(sut.comments, json, "Comments fetched do not match JSON data.")
                } else {
                    XCTFail("File 'Comments.json' not found in the main bundle.")
                }
            } catch {
                XCTFail("Failed to load JSON data from file: \(error.localizedDescription)")
            }
//            expectation.fulfill()
//        }
        
//        waitForExpectations(timeout: 10, handler: nil)
    }
    
    
//    func test_FetchCommentsFromAPI() {
//         let expectation = XCTestExpectation(description: "Fetch comments from API")
//
//         let commentViewService: CommentViewServiceDelegate
//
//         let sut = CommentViewModel(commentViewService: RealCommentViewService())
//
//        commentViewService.getComments(completion: {
//            switch $0 {
//            case .success(let comments):
//                // Assuming your API returns an array of CommentModel
//                XCTAssertFalse(comments.isEmpty, "Returned comments should not be empty")
//
//                expectation.fulfill()
//
//            case .failure(let error):
//                XCTFail("Failed to fetch comments from API: \(error.localizedDescription)")
//            }
//        })
//
//         wait(for: [expectation], timeout: 10.0)
//     }
    
    
    
}
