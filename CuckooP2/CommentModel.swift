//
//  CommentModel.swift
//  CuckooP2
//
//  Created by Ubit Cloud on 12/07/2024.
//

import Foundation

struct CommentModel: Codable, Identifiable, Equatable {
    let postID, id: Int
    let name, email, body: String

    enum CodingKeys: String, CodingKey {
        case postID = "postId"
        case id, name, email, body
    }
}
