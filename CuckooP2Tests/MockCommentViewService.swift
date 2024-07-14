//
//  MockCommentViewService.swift
//  CuckooP2Tests
//
//  Created by Ubit Cloud on 12/07/2024.
//

import Foundation
@testable import CuckooP2

class MockCommentViewService: CommentViewServiceDelegate {
    func getComments(completion: @escaping (Result<[CommentModel], NetworkError>) -> Void) {
        
        guard let jsonData = readLocalJsonFile() else {
            completion(.failure(.NoData))
            return
        }
        do {
            let obj = try  JSONDecoder().decode([CommentModel].self, from: jsonData)
            completion(.success(obj))
        } catch let error {
            print(error)
            completion(.failure(.DecodingError))
        }
    }
    
    private func readLocalJsonFile() -> Data? {
        do {
            guard let fileUrl = Bundle(for: type(of: self)).url(forResource: "Comments", withExtension: "json") else {
                return nil
            }
            let data = try Data(contentsOf: fileUrl)
            return data
        } catch let error {
            print(error.localizedDescription)
            return nil
        }
    }
}
