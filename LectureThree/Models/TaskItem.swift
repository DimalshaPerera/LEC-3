//
//  TaskItem.swift
//  LectureThree
//
//  Created by Mac on 2026-10-07.
//

import Foundation
struct TaskItem:Identifiable{
    
    var id=UUID()
    var title: String
    var priority:Priority
    var isComplete:Bool
    
    
    
}
