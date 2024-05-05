//
//  BookExtension.swift
//  TheArchives
//
//  Created by Kody Schram on 5/5/24.
//

import Foundation
import CoreData

extension Book {
    
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Book> {
        return NSFetchRequest<Book>(entityName: "Book")
    }
    
    @NSManaged public var title: String
    @NSManaged public var author: String?
    @NSManaged public var pages: NSNumber?
    @NSManaged public var dateStarted: Date?
    @NSManaged public var dateFinished: Date?
    
    @NSManaged public var id: UUID
    
    @NSManaged public var chapters: NSSet
    
}
