//
//  ViewController6_list.swift
//  Transfer Assistant App
//
//  Created by Armen Phelps on 10/18/20.
//

import UIKit

class ViewController6_list: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let courseName = ["CS61A", "CS61B", "CS61C", "CS70", "CS168", "CS164", "CS162", "CS161", "CS169", "CS160"]
    let courseDescription = ["The purpose of CS61A is to teach you the core concepts of computer science. CS61A is not about learning a particular programming language, though the course does introduce the Python programming language and uses it, along with a little Scheme and SQL, to teach programming concepts. This course concentrates on the idea of abstraction and using this idea to solve problems. The course considers a series of techniques for controlling program complexity, such as functional programming, data abstraction, and object-oriented programming.",
        "The purpose of CS61B is to teach you basic algorithms, data structures, and fundamentals of software engineering. Additionally, some of the class is focused on learning Java (object oriented design, inheritance, etc).", "The course focuses on concepts that drive computing architecture. Students will explore the software-hardware connection starting with high-level software with C and low-level assembly language with RISC-V (developed at Berkeley), as well as explore circuit and processor design. Students will then look at modern developments, such as different levels of parallelisms in computer processors, distributed computing, and warehouse scale computers (WSCs). Lastly, students will be introduced to basic operating system concepts. (Note: In some versions of the course OS concepts are covered before distributed computing and WSCs.)", "The purpose of CS70 is to provide the foundation for algorithms, concepts, and techniques to be expanded upon in further EECS classes. This foundation includes writing proofs (with various proof techniques), Boolean logic, modular arithmetic, basic graph theory, and discrete and continuous probability.", "This course is an introduction to the Internet architecture. We will focus on the concepts and fundamental design principles that have contributed to the Internet's scalability and robustness and survey the various protocols and algorithms used within this architecture. Topics include layering, addressing, intradomain routing, interdomain routing, reliable delivery, congestion control, and the core protocols (e.g., TCP, UDP, IP, DNS, and HTTP) and network technologies (e.g., Ethernet, wireless)."]
 
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
