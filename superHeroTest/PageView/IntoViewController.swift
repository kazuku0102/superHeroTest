//
//  IntoViewController.swift
//  superHeroTest
//
//  Created by 蕭聿莘 on 2020/8/9.
//

import UIKit

class IntoViewController: UIViewController {    
    
    @IBOutlet weak var avengersImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        avengersImageView.layer.shadowOpacity = 0.8
    }
    
    @IBAction func skip(_ sender: UIButton) {
        performSegue(withIdentifier: "IntoToQ", sender: nil)
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
