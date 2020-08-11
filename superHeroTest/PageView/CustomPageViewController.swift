//
//  CustomPageViewController.swift
//  superHeroTest
//
//  Created by 蕭聿莘 on 2020/8/9.
//

import UIKit

class CustomPageViewController: UIPageViewController, UIPageViewControllerDataSource,UIPageViewControllerDelegate {
   
    var currrentPage = 0
    var subViewControllers: [UIViewController] = {
        return[
            UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "First") as! IntoViewController,
            UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "Second") as! Into01ViewController,
            UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "Third") as! Into02ViewController
        ]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource = self
        delegate = self
        setViewControllers([subViewControllers[0]], direction: .forward, animated: true, completion: nil)
    }
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return subViewControllers.count
    }
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return 0
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        let currentIndex: Int = subViewControllers.firstIndex(of: viewController) ?? 0
        if currentIndex <= 0 {
            return nil
        }
        return subViewControllers[currentIndex - 1]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let currentIndex: Int = subViewControllers.firstIndex(of: viewController) ?? 0
        if currentIndex >= subViewControllers.count - 1 {
            return nil
        }
        return subViewControllers[currentIndex + 1]
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
