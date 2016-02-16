//
//  WinViewController.swift
//  yubisuma.original.swift
//
//  Created by ┗(＾狗＾ )┓≡3≡3≡3≡3 on 2016/02/16.
//  Copyright © 2016年 ┗(＾狗＾ )┓≡3≡3≡3≡3. All rights reserved.
//

import UIKit
import SAConfettiView

class WinViewController: UIViewController {
    
    @IBOutlet var backButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(animated: Bool) {
        let confettiView = SAConfettiView(frame: CGRectMake(0, 0, 320, 320))
        self.view.addSubview(confettiView)
        confettiView.startConfetti()
        confettiView.userInteractionEnabled = true
        
        backButton.bringSubviewToFront(confettiView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
