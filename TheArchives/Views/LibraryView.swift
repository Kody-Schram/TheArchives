//
//  LibraryView.swift
//  TheArchives
//
//  Created by Kody Schram on 5/5/24.
//

import SwiftUI

struct LibraryView: View {
    
    @StateObject private var viewModel = LibraryViewModel()
    
    var body: some View {
        VStack {
            List(viewModel.books) { book in
                Text("Book")
            }
        }
        .onAppear {
            viewModel.loadLibrary()
        }
    }
}
