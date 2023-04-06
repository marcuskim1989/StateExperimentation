//
//  ContentView.swift
//  StateExperimentation
//
//  Created by Marcus Y. Kim on 4/5/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var tasks = [Task]()
    
    private func addTask() {
        self.tasks.append(Task(name: "Wash the Car"))
    }
    
    @State var name: String = "John"
    
    var body: some View {
        
        List {
            
            Button(action: addTask) {
                Text("Add Task")
            }
            
            ForEach(tasks) { task in
                Text(task.name)
            }
        }
        
    }
    

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
