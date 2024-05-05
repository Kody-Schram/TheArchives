//
//  ChapterExtension.swift
//  TheArchives
//
//  Created by Kody Schram on 5/5/24.
//

import Foundation
import CoreData

extension Chapter {
    
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Chapter> {
        return NSFetchRequest<Chapter>(entityName: "Chapter")
    }
    
    @NSManaged public var title: String
    @NSManaged public var notes: String
    @NSManaged public var startPage: NSNumber?
    @NSManaged public var endPage: NSNumber?
    
}
