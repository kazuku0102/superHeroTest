//
//  Into02ViewController.swift
//  superHeroTest
//
//  Created by 蕭聿莘 on 2020/8/10.
//

import UIKit

class Into02ViewController: UIViewController {

    @IBOutlet weak var ironManImageView: UIImageView!
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ironManImageView.layer.shadowOpacity = 0.8
        
        startButton.layer.borderWidth = 2
        startButton.layer.borderColor = UIColor.white.cgColor
        startButton.contentEdgeInsets = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
    }
    
    @IBAction func start(_ sender: UIButton) {
        performSegue(withIdentifier: "StartToQ", sender: nil)
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
