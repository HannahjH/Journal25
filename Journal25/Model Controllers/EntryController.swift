//
//  EntryController.swift
//  Journal25
//
//  Created by Hannah Hoff on 4/13/19.
//  Copyright © 2019 Hannah Hoff. All rights reserved.
//

import Foundation
import CloudKit

class EntryController {
    
    // Shared Instance
    static let shared = EntryController()
    private init() {}
    
    var entry: [Entry] = []
    
    // CRUD Functions
    func createEntry(entry: Entry,completion: @escaping (Bool) -> ()) {
            
    }
    
    func update(entry: Entry, title: String, bodyText: String, completion: @escaping (Entry) -> Void) {
        
    }
    
    func fetchEntry(completion: @escaping (Bool) -> Void) {
        
    }
    
}
