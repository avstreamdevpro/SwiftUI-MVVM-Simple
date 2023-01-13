//
//  TodoListManager.swift
//  MVVM_Sample
//
//  Created by DRAGON on 2021/3/4.
//

import Foundation

class TodoListManager: ObservableObject {
    @Published var items: [Item] = []
    
    init(isForTest: Bool = false) {
        // get my data and set to my items array
        if (!isForTest) {
//            items = [Item(id: UUID(), name: "first"),
//                     Item(id: UUID(), name: "second"),
//                     Item(id: UUID(), name: "third")]
        }
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        items.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func delete(at indexSet: IndexSet) {
        for index in indexSet {
            items.remove(at: index)
        }
    }
    
    func addItem() {
        items.append(Item(id: UUID(), name: "newly added"))
    }
    
    static func emptyState() -> TodoListManager {
        let manager = TodoListManager(isForTest: true)
        manager.items = []
        return manager
    }
    
    static func fullState() -> TodoListManager {
        let manager = TodoListManager(isForTest: true)
        manager.items = [Item(id: UUID(), name: "first"),
                         Item(id: UUID(), name: "second"),
                         Item(id: UUID(), name: "third")]
        return manager
    }
}
