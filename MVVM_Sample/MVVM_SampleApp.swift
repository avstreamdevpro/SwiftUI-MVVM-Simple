//
//  MVVM_SampleApp.swift
//  MVVM_Sample
//
//  Created by DRAGON on 2021/3/4.
//

import SwiftUI

@main
struct MVVM_SampleApp: App {
    
    @StateObject var todoManager = TodoListManager()
    var body: some Scene {
        WindowGroup {
            TodoListView(todoManager: todoManager)
        }
    }
}
