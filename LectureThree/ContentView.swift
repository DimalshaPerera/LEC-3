//
//  ContentView.swift
//  LectureThree
//
//  Created by Mac on 2026-10-07.
//

import SwiftUI

struct ContentView: View {
//    @State private var viewModel = TasksViewModel()

    var body: some View {
        TabView{
            TaskView()
                .tabItem {
                    Label("Tasks", systemImage: "checklist")
                }
            
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

#Preview {
    ContentView().environment(TasksViewModel())
}
