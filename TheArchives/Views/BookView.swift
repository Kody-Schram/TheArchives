//
//  BookView.swift
//  TheArchives
//
//  Created by Kody Schram on 5/5/24.
//

import SwiftUI

struct BookView: View {
    
    private var book: Book
    
    var body: some View {
        VStack {
            Text(book.title)
                .font(.headline)
            if let author = book.author {
                Text(author)
                    .font(.caption)
            }
        }
        
    }
}

