//
//  CommentRow.swift
//  ApiCallSwiftUI
//
//  Created by Ubit on 02/07/24.
//

import SwiftUI

@available(iOS 14.0, *)
struct CommentRow: View {
    var commentModel: CommentModel
    var body: some View {
        VStack {
            Text(commentModel.name ?? "NA")
                .font(.title3)
            Text(commentModel.email ?? "NA")
                .font(.title2)
        }
    }
}

@available(iOS 14.0, *)
struct CommentRow_Previews: PreviewProvider {
    static var previews: some View {
        CommentRow(commentModel: CommentModel(postID: 1, id: 1, name: "Ubit", email: "iOStpointblog@gmail.com", body: "Lets learn iOS and Android"))
    }
}
