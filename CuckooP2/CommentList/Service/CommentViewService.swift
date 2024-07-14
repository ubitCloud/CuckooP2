//
//  CommentViewService.swift
//  ApiCallSwiftUI
//
//  Created by Ubit on 02/07/24.
//

import Foundation

protocol CommentViewServiceDelegate {
    func getComments(completion: @escaping(Result<[CommentModel], NetworkError>) -> Void)
}

class CommentViewService: CommentViewServiceDelegate  {
    
    func getComments(completion: @escaping(Result<[CommentModel], NetworkError>) -> Void) {
        RestAPIClient.getComments(completion: completion) // should be change this to mocking when doing unit test
    }
    
    
}
