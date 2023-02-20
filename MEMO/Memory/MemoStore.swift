//
//  MemoStore.swift
//  MEMO
//
//  Created by 권소진 on 2023/02/18.
//

import Foundation
import SwiftUI

class MemoStore: ObservableObject {
    @Published var list: [Memo]
    
    init() {
        list = [
            Memo(content: "준선이",insertDate: Date() ),
            Memo(content: "생일은",insertDate: Date(timeIntervalSinceNow: 3600 * -24)),
            Memo(content: "12월 5일",insertDate: Date(timeIntervalSinceNow: 2600 * -48))
        ]
    }
    
    func inset(memo: String){
        list.insert(Memo(content: memo), at: 0)
    }
    
    func delete(memo: Memo){
        list.removeAll{$0.id == memo.id}
    }
    
    func delete(set: IndexSet){
        for index in set {
            list.remove(at: index)
        }
    }
    
    func update(memo: Memo?, content: String) {
        guard let memo = memo
        else {
            return }
        memo.content = content
    }
}

