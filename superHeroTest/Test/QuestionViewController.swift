//
//  QuestionViewController.swift
//  superHeroTest
//
//  Created by 蕭聿莘 on 2020/8/10.
//

import UIKit

class QuestionViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var answerButtons: [UIButton]!
    
    var questions = [Hero]()
    var totalNumber = 0
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        questions = [Hero(question: "上一次別人叫你帥哥/美女是什麼時候？", answer: ["陌生人向你搭訕的時候","好久不見的朋友誇獎你","放在社圖軟體的修圖得到讚美","逛街時，店員招呼你的時候"], number: [1,2,3,4]),
                     Hero(question: "“你一定能答對這道題！”請問這個論斷是正確的嗎？", answer: ["正確，我一定可以答對","我說對就對啦","錯誤，我不知道這題的意思","你...說...什...麼"], number: [1,2,3,4]),
                     Hero(question: "你覺得Apple Watch的售價怎麽樣？", answer: ["不知道，別人送的","不知道,反正買不起","不知道,不想用","買了一個，不要問你會怕"], number: [1,2,3,4]),
                     Hero(question: "你喜歡用電動剃刀還是刮刀來刮鬍子/刮腿毛呢？", answer: ["用鑷子拔","電動的","手動的","沒長鬍子/腿毛"], number: [1,2,3,4]),
                     Hero(question: "你怎麽看旅途中的艷遇？", answer: ["相信佛系豔遇法","電影才會發生的情節","旅行的意義就是豔遇","很自然的事情"], number: [1,2,3,4]),
                     Hero(question: "你後面有輛車猛按喇叭，這時你打算?", answer: ["不跟他一般見識","下次看到我就ＯＯＯ","揍他","想像對方原地爆炸的樣子"], number: [1,2,3,4]),
                     Hero(question: "感覺身邊的朋友長得好看嗎？", answer: ["對，我拉高平均值","是的，習慣他們的長相","客觀來看他們一樣醜","看膩了"], number: [1,2,3,4]),
                     Hero(question: "在好朋友的聚會上碰上了一個不熟悉但十分討厭的人，你會？", answer: ["找他麻煩","臭臉但什麼都不會做","不理他","觀察他，重新檢視之前的判斷"], number: [1,2,3,4]),
                     Hero(question: "捐舊衣服導致消費力下降，你怎麽看?", answer: ["這世界不會好了","我依然覺得做了一件好事","那我不捐衣服了","不要問我辣"], number: [1,2,3,4]),
                     Hero(question: "喜歡玩命關頭7嗎？", answer: ["一個字爽","為了保羅沃克去看的","不喜歡這類電影","劇情普通，車子很炫"], number: [1,2,3,4]),
                     Hero(question: "已知2+2=魚，3+3=無限，那麽7+7等於什麽？", answer: ["圓圈","狗","金牛","三角形"], number: [1,2,3,4]),
                     Hero(question: "你做過被搶劫或破產的夢嘛？害怕嗎？", answer: ["我沒什麼好搶的","有，錢都飛走了","還真的沒有","做過，錢沒了再賺就好啊"], number: [1,2,3,4]),
                     Hero(question: "給你一台電腦一年不出門。一年後會發生什麽？", answer: ["死了","靠著外送跟電視劇過生活","成為超級駭客","我現在就是"], number: [1,2,3,4]),
                     Hero(question: "和喜歡的異性玩競賽類遊戲，你會怎樣做?", answer: ["贏他，讓他知道我的實力","故意輸，讓他開心","幹嘛玩競賽遊戲","享受遊戲，輸贏無所謂"], number: [1,2,3,4]),
                     Hero(question: "你做了個奇怪的夢，你能想起來這個夢嗎？", answer: ["從來不記得","能記得還叫夢？","一定跟我最近想的是有關","怎麼證明我現在醒著"], number: [1,2,3,4]),
        ]
        
        questionLabel.text = questions[0].question
        for (i, answerButton) in answerButtons.enumerated() {
            answerButton.setTitle(questions[0].answer[i], for: .normal)
        }
    }
    
    @IBAction func selected(_ sender: UIButton) {
        //計算分數
        if let numberString = sender.restorationIdentifier,
           let number = Int(numberString) {
            totalNumber += number
            print("計算值\(totalNumber)")
        }
        
        //增加題數
        questionNumber += 1
        if questionNumber < 15 {
            questionLabel.text = questions[questionNumber].question
            for (i,answerButton) in answerButtons.enumerated() {
                answerButton.setTitle(questions[questionNumber].answer[i], for: .normal)
            }
        }else if questionNumber == 15 {
            performSegue(withIdentifier: "ToAnswer", sender: nil)
        }
    }
    
    @IBAction func unwindBack(_ segue: UIStoryboardSegue){
        totalNumber = 0
        questionNumber = 0
        questions.shuffle()
    }
    
    @IBSegueAction func chooseAnswer(_ coder: NSCoder,sender: Any?, segueIdentifier: String?) -> AnswerViewController? {
        let controller = AnswerViewController(coder: coder)
        controller?.totalNumber = totalNumber

        return controller
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
