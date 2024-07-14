//
//  ContentView.swift
//  ApiCallSwiftUI
//
//  Created by Ubit on 02/07/24.
//

import SwiftUI

@available(iOS 14.0, *)
struct CommentsView: View {
    @ObservedObject private var viewModel = CommentViewModel()
    @State private var searchText: String = ""
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(viewModel.comments) { comment in
                        NavigationLink {
                            DetailCommentView(commentModel: comment)
                        } label: {
                            CommentRow(commentModel: comment)
                        }
                        
                    }
                }
            }.onAppear {
                viewModel.fetchComments() //fetch comments call here.
            }
            .navigationTitle("Comment List")
        }
    }
}

@available(iOS 14.0, *)
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CommentsView()
    }
}
