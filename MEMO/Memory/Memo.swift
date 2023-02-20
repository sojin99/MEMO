//
//  Memo.swift
//  MEMO
//
//  Created by 권소진 on 2023/02/18.
//

import Foundation
import SwiftUI

class Memo: Identifiable ,ObservableObject {
    var id: UUID
    @Published var content: String
    let insertDate: Date
    
    init(content: String, insertDate: Date = Date()){
        id = UUID()
        self.content = content
        self.insertDate = insertDate
    }
}
