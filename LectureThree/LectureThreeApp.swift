//
//  LectureThreeApp.swift
//  LectureThree
//
//  Created by Mac on 2026-10-07.
//

import SwiftUI

@main
struct LectureThreeApp: App {
    @State private var viewmodel = TasksViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(viewmodel)
        }
    }
}

