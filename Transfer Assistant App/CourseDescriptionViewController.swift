//
//  CourseDescriptionViewController.swift
//  Transfer Assistant App
//
//  Created by Jeremy Liu 🎓 on 10/30/20.
//

import UIKit

class CourseDescriptionViewController: UIViewController {
    var name = ""
    @IBOutlet weak var descriptionLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.descriptionLabel.text = name
        // Do any additional setup after loading the view.
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
