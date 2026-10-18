//
//  TaskView.swift
//  LectureThree
//
//  Created by Mac on 2026-10-07.
//

import SwiftUI

enum Priority:String{
    case low
    case medium
    case high
    
    
    
}






struct TaskView : View {
//    @Bindable  var viewModel : TasksViewModel
    @Environment(TasksViewModel.self) private var viewModel
    var body: some View {
    
        List{
            ForEach(viewModel.tasks){tasks in
                HStack{
                    Button(
                    ){
                        viewModel.toggleComplete(tasks)
                    }label: {
                        
                        Image(
                            systemName: tasks.isComplete ?  "checkmark.circle.fill":"circle"
                        )
                        
                        
                        
                    }
                    Text(tasks.title)
                        .strikethrough(tasks.isComplete)
                    Spacer()
                    Text(tasks.priority.rawValue.capitalized)
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
                
            }
            
            Button{
                viewModel.addNewTask()
                
            }label: {
                Text("Add New")
            }
        }
        
        
        
        
        
        
    }
    
    
    //
    
    
    //        let optionalIndex :Int? = nil
    //
    //        //force unwrap
    //        tasks[optionalIndex!] = newItem
    //
    //                // IF LET
    //                if let unwrappedIndex = optionalIndex{
    //                    tasks[unwrappedIndex]=newItem
    //                }else{
    //                    print("no value")
    //                }
    //
    //
    //
    //                //GUARD LET
    //                guard let  unwrappedIndex=optionalIndex else{return}
    //                tasks[unwrappedIndex]=newItem
    //                }
    
}




#Preview {
    TaskView().environment(TasksViewModel())
}
