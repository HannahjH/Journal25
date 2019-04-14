//
//  Entry.swift
//  Journal25
//
//  Created by Hannah Hoff on 4/13/19.
//  Copyright © 2019 Hannah Hoff. All rights reserved.
//

import Foundation
import CloudKit

class Entry {
    
    var title: String
    var bodyText: String
    var timestamp: Date
    
    var recordID: CKRecord.ID
    
    init(title: String, timestamp: Date = Date(), bodyText: String, recordID: CKRecord.ID = CKRecord.ID(recordName: UUID().uuidString)) {
        self.title = title
        self.bodyText = bodyText
        self.timestamp = timestamp
        self.recordID = recordID
    }
}
extension CKRecord {
    convenience init(entry: Entry) {
        self.init(recordType: Constants.recordType, recordID: entry.recordID)
        self.setValue(entry.title, forKey: Constants.titleKey)
        self.setValue(entry.bodyText, forKey: Constants.bodyTextKey)
        self.setValue(entry.timestamp, forKey: Constants.timstampKey)
    }
}

struct Constants {
    static let recordType = "Entry"
    static let titleKey = "title"
    static let bodyTextKey =  "bodyText"
    static let timstampKey =  "timestamp"
    
}
