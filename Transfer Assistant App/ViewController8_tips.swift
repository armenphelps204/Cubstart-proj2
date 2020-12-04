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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tip1.numberOfLines = 0
        self.tip1.text = "Be willing to collaborate. You tend to make more friends and study partners when you are the one initiate the conversation."
        tip2.numberOfLines = 0
        self.tip2.text = "Take classes you are interested in and not what everyone else is doing. Only you know yourself best."
        tip3.numberOfLines = 0
        self.tip3.text = "Study more than you party."
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
