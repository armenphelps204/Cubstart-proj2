//
//  ViewController3_profile.swift
//  Transfer Assistant App
//
//  Created by Armen Phelps on 10/18/20.
//

import UIKit

class ViewController3_profile: UIViewController {
    
    
    let noneSchedule = [
        ["Math 1A", "CS 61A", "Reading & Comp A", "Breadth"],
        ["Math 1B", "CS 61B", "Reading & Comp B", "Breadth"],
        ["EECS 16A", "CS 70", "Elective", "Breadth"],
        ["EECS 16B", "CS 61C", "Elective", "Breadth"],
        ["CS 170", "CS 169A", "Elective", "Breadth"],
        ["CS 188", "CS 169L", "Elective", "Breadth"],
        ["CS 161", "CS 186", "Elective", "Breadth"],
        ["CS 162", "CS 160", "Elective", "Elective"]
    ]
    let hardwareSchedule = [
        ["Math 1A", "CS 61A", "Reading & Comp A", "Breadth"],
        ["Math 1B", "CS 61B", "Reading & Comp B", "Breadth"],
        ["EECS 16A", "CS 70", "Elective", "Breadth"],
        ["EECS 16B", "CS 61C", "Elective", "Breadth"],
        ["CS 170", "CS 161", "Elective", "Breadth"],
        ["CS 152", "CS 164", "Elective", "Breadth"],
        ["EECS 120", "EECS 126", "Elective", "Breadth"],
        ["CS 162", "Elective", "Elective", "Elective"]
    ]
    let softwareSchedule = [
        ["Math 1A", "CS 61A", "Reading & Comp A", "Breadth"],
        ["Math 1B", "CS 61B", "Reading & Comp B", "Breadth"],
        ["EECS 16A", "CS 70", "Elective", "Breadth"],
        ["EECS 16B", "CS 61C", "Elective", "Breadth"],
        ["CS 170", "CS 169A", "Elective", "Breadth"],
        ["CS 188", "CS 169L", "Elective", "Breadth"],
        ["CS 161", "CS 168", "Elective", "Breadth"],
        ["CS 162", "CS 160", "Elective", "Elective"]
    ]
    let theorySchedule = [
        ["Math 1A", "CS 61A", "Reading & Comp A", "Breadth"],
        ["Math 1B", "CS 61B", "Reading & Comp B", "Breadth"],
        ["EECS 16A", "CS 70", "Elective", "Breadth"],
        ["EECS 16B", "CS 61C", "Elective", "Breadth"],
        ["CS 170", "CS 161", "Elective", "Breadth"],
        ["CS 171", "CS 188", "Elective", "Breadth"],
        ["CS 172", "CS 174", "Elective", "Breadth"],
        ["CS 191", "Elective", "Elective", "Elective"]
    ]
    let applicationsSchedule = [
        ["Math 1A", "CS 61A", "Reading & Comp A", "Breadth"],
        ["Math 1B", "CS 61B", "Reading & Comp B", "Breadth"],
        ["EECS 16A", "CS 70", "Elective", "Breadth"],
        ["EECS 16B", "CS 61C", "Elective", "Breadth"],
        ["CS 170", "CS 186", "Elective", "Breadth"],
        ["EECS 127", "CS 188", "Elective", "Breadth"],
        ["CS 184", "CS 168", "Elective", "Breadth"],
        ["CS 189", "Elective", "Elective", "Elective"]
    ]
    
    
    @IBOutlet weak var nameTextLabel: UITextField!
    
    @IBOutlet weak var majorTextLabel: UITextField!
    
    @IBOutlet weak var emphasisTextLabel: UITextField!
    
    @IBOutlet weak var gradMonthText: UITextField!
    
    @IBOutlet weak var gradYearText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func makeSchedule(_ sender: Any) {
    }
    
    @IBAction func goToSchedule(_ sender: Any) {
        performSegue(withIdentifier: "createSchedule",
                   sender: self)
    }
    
    @IBAction func goHome(_ sender: Any) {
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "createSchedule") {
            let vc: ViewController4_schedule = segue.destination as! ViewController4_schedule
            vc.name = "Name: " + nameTextLabel.text!
            vc.major = "Major: " + majorTextLabel.text!
            vc.emphasis = "Emphasis: " + emphasisTextLabel.text!
            vc.graduation = "Graduation: " + (gradMonthText.text! + " " + gradYearText.text!)
            
            if (emphasisTextLabel.text! == "None") {
                vc.classList = noneSchedule
            } else if (emphasisTextLabel.text! == "Hardware") {
                vc.classList = hardwareSchedule
            } else if (emphasisTextLabel.text! == "Software") {
                vc.classList = softwareSchedule
            } else if (emphasisTextLabel.text! == "Theory") {
                vc.classList = theorySchedule
            } else if (emphasisTextLabel.text! == "Applications") {
                vc.classList = applicationsSchedule
                
            }
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
