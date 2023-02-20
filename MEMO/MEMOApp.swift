//
//  MEMOApp.swift
//  MEMO
//
//  Created by 권소진 on 2023/02/18.
//

import SwiftUI

@main
struct MEMOApp: App {
    @StateObject var store = MemoStore()
    
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(store)
        }
    }
}
