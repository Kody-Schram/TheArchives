//
//  LibraryViewModel.swift
//  TheArchives
//
//  Created by Kody Schram on 5/5/24.
//

import Foundation
import CoreData

class LibraryViewModel: ObservableObject {
    
    private let context = PersistenceController.instance.context
    
    @Published var books: [Book] = []
    
    func loadLibrary() {
        
        let request: NSFetchRequest<Book> = Book.fetchRequest()
        
        do {
            books = try context.fetch(request)
        } catch {
            print(error)
        }
        
    }
    
}
