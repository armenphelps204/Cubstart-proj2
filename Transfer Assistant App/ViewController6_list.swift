//
//  ViewController6_list.swift
//  Transfer Assistant App
//
//  Created by Armen Phelps on 10/18/20.
//

import UIKit

class ViewController6_list: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let courseName = ["CS61A", "CS61B", "CS61C", "EECS16A", "EE16B"]
    let courseDescription = ["intro 1", "intro 2", "intro 3", "intro 4", "intro 5"]
 
    @IBOutlet weak var tableViewCourse: UITableView!
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return courseName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "course", for: indexPath)
        
        cell.textLabel?.text = courseName[indexPath.row]
        return cell
    }
    

    
    override func prepare( for segue: UIStoryboardSegue, sender: Any?){
        
        if segue.identifier == "description"{
            
            if let indexPath = tableViewCourse.indexPathForSelectedRow{
                let selectedRow = indexPath.row
                    let vc : CourseDescriptionViewController = segue.destination as! CourseDescriptionViewController
                  
                    vc.name = courseDescription[selectedRow]
            }
        }
    
    }

 
}
