//
//  TaskManager.swift
//  ToDoList
//
//  Created by Александр Челмакин on 26.01.17.
//  Copyright © 2017 Александр Челмакин. All rights reserved.
//

import UIKit

var taskMrg: TaskManager = TaskManager()

struct task {
    var name = "Un-Named"
    var desc = "Un-Described"
}

class TaskManager: NSObject {

    var tasks = [task]()
    
    func addTask(name: String, desc: String){
        tasks.append(task(name: name, desc: desc))
    }

}
