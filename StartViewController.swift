//
//  StartViewController.swift
//  yubisuma.original.swift
//
//  Created by ┗(＾狗＾ )┓≡3≡3≡3≡3 on 2015/09/15.
//  Copyright (c) 2015年 ┗(＾狗＾ )┓≡3≡3≡3≡3. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {
    
    @IBOutlet var katiLabel: UILabel!
    @IBOutlet var makeLabel:UILabel!
    @IBOutlet var shourituLabel: UILabel!
    @IBOutlet var raberukunn: UILabel!
    @IBOutlet var haikei:UILabel!
    
    @IBOutlet var startButton: UIButton!
    
    var kati: Int = 0
    var make: Int = 0
    var shouritu: Double = 0
    var kusshon1: Double = 0
    var kusshon2: Double = 0
    var kusshon3: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        katiLabel.textColor = ColorManager.textColor()
        makeLabel.textColor = ColorManager.textColor()
        shourituLabel.textColor = ColorManager.textColor()
        raberukunn.textColor = ColorManager.textColor()
        haikei.backgroundColor = ColorManager.backgroundColor()
        startButton.setTitleColor(ColorManager.textColor(), forState: UIControlState.Normal)
        
        let saveData = NSUserDefaults.standardUserDefaults()
        kati = saveData.integerForKey("Win")
        make = saveData.integerForKey("Lose")
        kusshon1 = Double(kati + make)
        kusshon2 = Double(kati * 1000)
        if kusshon1 != 0{
            kusshon3 = Int((kusshon2 / kusshon1))
        }
        shouritu = Double(kusshon3) / 10
        
        katiLabel.text = String(kati) + "勝"
        makeLabel.text = String(make) + "敗"
        shourituLabel.text = String(shouritu) + "%"
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
