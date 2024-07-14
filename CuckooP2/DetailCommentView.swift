//
//  DetailCommentView.swift
//  CuckooP2
//
//  Created by Ubit Cloud on 12/07/2024.
//

import Foundation
import SwiftUI

@available(iOS 14.0, *)
struct DetailCommentView: View {
    var commentModel: CommentModel
    var body: some View {
        VStack {
            Text(commentModel.name ?? "NA")
                .font(.title3)
            Text(commentModel.email ?? "NA")
                .font(.title2)
            Text(commentModel.body ?? "NA")
                .font(.body)
        }
    }
}

@available(iOS 14.0, *)
struct DetailCommentView_Previews: PreviewProvider {
    static var previews: some View {
        DetailCommentView(commentModel: CommentModel(postID: 1, id: 1, name: "Ubit", email: "iOStpointblog@gmail.com", body: "Lets learn iOS and Android"))
    }
}

