//
//  TasksViewModel.swift
//  LectureThree
//
//  Created by Mac on 2026-10-07.
//

import Foundation
@Observable
class TasksViewModel{
    
    private(set) var tasks:[TaskItem]=[
        TaskItem(title:
                    "Review Lec notes", priority: .high, isComplete: false),
        TaskItem(
            title: "Test search field",
            priority: .medium,
            isComplete: false
        ),
        TaskItem(
            title: "Read SwiftUi Documentation",
            priority: .low,
            isComplete: true
        )
        
        
        
    ]
    
    
    func addNewTask(){
        let newItem = TaskItem(title: "Complete Focus", priority: .high, isComplete: false)
        tasks.append(newItem)
        
    }
    
    
    func toggleComplete(_ task : TaskItem){
        guard let index = tasks.firstIndex(where: {$0.id == task.id}) else {return}
        tasks[index].isComplete.toggle()
    }
    
    func completedItemsCountFunction()->Int{
        return tasks.count{$0.isComplete}
    }
    
    var completedItemsCount:Int{
        return tasks.count{
            $0.isComplete
        }
    }
}
