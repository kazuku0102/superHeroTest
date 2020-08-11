//
//  AnswerViewController.swift
//  superHeroTest
//
//  Created by 蕭聿莘 on 2020/8/10.
//

import UIKit

class AnswerViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var describeLabel: UILabel!
    @IBOutlet weak var heroImageView: UIImageView!
    @IBOutlet weak var replayButton: UIButton!
    
    var totalNumber: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        replayButton.layer.borderWidth = 2
        replayButton.contentEdgeInsets = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        replayButton.layer.borderColor = UIColor.white.cgColor
        heroImageView.layer.cornerRadius = 20
        heroImageView.layer.borderWidth = 10
        heroImageView.layer.borderColor = UIColor.white.cgColor
        
        if totalNumber <= 20 {
            resultLabel.text = "黑寡婦"
            heroImageView.image = UIImage(named: "BlackWidow")
            heroImageView.layer.borderColor = UIColor(named: "BlackWidowC")?.cgColor
            describeLabel.text = """
 果斷的你有著跟黑寡婦一樣讓人不可置信的狠勁外，更重要的應該是有陰險謀略的腦袋。
"""
        }else if totalNumber > 20 , totalNumber <= 25{
            resultLabel.text = "美國隊長"
            heroImageView.image = UIImage(named: "CaptainAmerica")
            heroImageView.layer.borderColor = UIColor(named: "CaptainAmericaC")?.cgColor
            describeLabel.backgroundColor = UIColor(named: "CaptainAmericaC")
            describeLabel.text = """
 與美國隊長相似的你，應該也是一個骨子裏很懷舊的人，正直到有點頑固，不管過去受過什麽傷，要往前看哦！
 """
        }else if totalNumber > 25, totalNumber <= 35{
            resultLabel.text = "鷹眼"
            heroImageView.image = UIImage(named: "HulkEye")
            heroImageView.layer.borderColor = UIColor(named: "HulkEyeC")?.cgColor
            describeLabel.backgroundColor = UIColor(named: "HulkEyeC")
            describeLabel.text = """
 你是一個理想的夥伴，忠誠、真誠，同時還是一個知道自己目標努力達成的人。
"""
        }else if totalNumber > 35, totalNumber <= 45{
            resultLabel.text = "鋼鐵人"
            heroImageView.image = UIImage(named: "IronMan")
            heroImageView.layer.borderColor = UIColor(named: "IronManC")?.cgColor
            describeLabel.backgroundColor = UIColor(named: "IronManC")
            describeLabel.text = """
 和鋼鐵人一樣，你也是高智商物種，而且很可能從小衣食無憂，異性緣也很好……我還能說什麽，求認識！
"""
        }else if totalNumber > 45, totalNumber <= 55{
            resultLabel.text = "雷神索爾"
            heroImageView.image = UIImage(named: "Thor")
            heroImageView.layer.borderColor = UIColor(named: "ThorC")?.cgColor
            describeLabel.backgroundColor = UIColor(named: "ThorC")
            describeLabel.text = """
 雷神選中的你，大概也和他一樣不食人間煙火吧。現實中總有事和你想象的不一樣，但是沒關係，你足夠強大，能應付這一切的。
"""
        }else if totalNumber > 55{
            resultLabel.text = "浩克"
            heroImageView.image = UIImage(named: "Hulk")
            heroImageView.layer.borderColor = UIColor(named: "HulkC")?.cgColor
            describeLabel.backgroundColor = UIColor(named: "HulkC")
            describeLabel.text = """
 說不好你更像綠巨人還是班納，也許他們每一個都是你，別擔心，精分兒童歡樂多~但是適當控制情緒對你有好處哦～
"""
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
