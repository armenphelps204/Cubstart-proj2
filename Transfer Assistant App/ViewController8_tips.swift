//
//  ViewController8_tips.swift
//  Transfer Assistant App
//
//  Created by Armen Phelps on 10/18/20.
//

import UIKit

class ViewController8_tips: UIViewController {

    @IBOutlet weak var stackTips: UIStackView!
    
    @IBOutlet weak var tip1: UILabel!
    @IBOutlet weak var tip2: UILabel!
    
    @IBOutlet weak var tip3: UILabel!
    
    @IBOutlet weak var tip4: UILabel!
    @IBOutlet weak var tip5: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        tip1.numberOfLines = 0
        self.tip1.text = "📌Be willing to collaborate. You tend to make more friends and study partners when you are the one initiate the conversation."
        tip2.numberOfLines = 0
        self.tip2.text = "📌Take classes you are interested in and not what everyone else is doing. Only you know yourself best."
        tip3.numberOfLines = 0
        self.tip3.text = "📌Study more than you party."
        tip4.numberOfLines = 0
        self.tip4.text = "📌Academics is a big part of the life here at UC Berkeley, but it is does not have to be everything. Joining a club, picking up a new hobby, finding an internship and exploring the city are just some of the options available here."
        tip5.numberOfLines = 0
        self.tip5.text = "📌No matter what happens this semester, remember that you are amazing. Remember that it was YOU who got into UC Berkeley. Be great, do great things and have fun!"
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
