//
//  ViewController.swift
//  yubisuma.original.swift
//
//  Created by ┗(＾狗＾ )┓≡3≡3≡3≡3 on 2015/09/08.
//  Copyright (c) 2015年 ┗(＾狗＾ )┓≡3≡3≡3≡3. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet var countdown: UILabel!
    @IBOutlet var outcome: UILabel!
    
    @IBOutlet var startbt: UIButton!
    @IBOutlet var agerubt1: UIButton!
    @IBOutlet var agerubt2: UIButton!
    @IBOutlet var agerubt3: UIButton!
    
    @IBOutlet var jibunImageView: UIImageView!
    @IBOutlet var aiteImageView: UIImageView!
    @IBOutlet var jibunserihu: UIImageView!
    @IBOutlet var aiteserihu: UIImageView!
    
    var yosounumber: Int = 0
    var agerunumber: Int = 0
    var aitenumber: Int = 0
    var jibunnnote: Int = 2
    var aitenote: Int = 2
    var turncount: Int = 0
    
    
    // UIPickerView.
    private var myUIPicker: UIPickerView!
    
    // 表示する値の配列.
    private var myValues: NSArray = ["0本","1本","2本","3本","4本"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.agerubt1.hidden = true
        self.agerubt2.hidden = true
        self.agerubt3.hidden = true
        
        myUIPicker = UIPickerView()
        
        // サイズを指定する.
        myUIPicker.frame = CGRectMake(0,360,self.view.bounds.width/5, 180.0)
        
        // Delegateを設定する.
        myUIPicker.delegate = self
        
        // DataSourceを設定する.
        myUIPicker.dataSource = self
        
    }
    
    /*
    pickerに表示する列数を返すデータソースメソッド.
    (実装必須)
    */
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    /*
    pickerに表示する行数を返すデータソースメソッド.
    (実装必須)
    */
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return aitenote + jibunnnote + 1
    }
    
    /*
    pickerに表示する値を返すデリゲートメソッド.
    */
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String {
        return myValues[row] as! String
    }
    
    /*
    pickerが選択された際に呼ばれるデリゲートメソッド.
    */
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        yosounumber = row
        
        print("row: \(row)")
        print("value: \(myValues[row])")
    }
    
    
    @IBAction func start() {
        self.startbt.hidden = true
        self.gamestart()
    }
    
    func gamestart() {
        // Viewに追加する.
        self.view.addSubview(myUIPicker)
        myUIPicker.hidden = false
        self.agerubt1.hidden = false
        self.agerubt2.hidden = false
        self.agerubt3.hidden = false
        jibunImageView.image = UIImage(named: "2.0j.png")
        aiteImageView.image = UIImage(named: "2.0a.png")
        
    }
    
    
    func aiteAnimation() {
        aitenumber = Int(random() % (aitenote+1))
        if turncount%2 == 1 {
            if aitenumber == 0 {
                if aitenote == 2 {
                    aiteImageView.image = UIImage(named: "2.0a.png")
                    if jibunnnote + aitenote == 4 {
                        yosounumber = Int(random() % 3)
                    }else if jibunnnote + aitenote == 3 {
                        yosounumber = Int(random() % 2)
                    }
                } else {
                    aiteImageView.image = UIImage(named: "1.0a.png")
                    if jibunnnote + aitenote == 3 {
                        yosounumber = Int(random() % 3)
                    }else if jibunnnote + aitenote == 2 {
                        yosounumber = Int(random() % 2)
                    }
                }
            } else if aitenumber == 1 {
                if aitenote == 2 {
                    aiteImageView.image = UIImage(named: "2.1a.png")
                    if jibunnnote + aitenote == 4 {
                        yosounumber = Int(random() % 3) + 1
                    }else if jibunnnote + aitenote == 3 {
                        yosounumber = Int(random() % 2) + 1
                    }
                } else {
                    aiteImageView.image = UIImage(named: "1.1a.png")
                    if jibunnnote + aitenote == 3 {
                        yosounumber = Int(random() % 3) + 1
                    }else if jibunnnote + aitenote == 2 {
                        yosounumber = Int(random() % 2) + 1
                    }
                }
            }else if aitenumber == 2 {
                aiteImageView.image = UIImage(named: "2.2a.png")
                if jibunnnote + aitenote == 4 {
                    yosounumber = Int(random() % 3) + 2
                }else if jibunnnote + aitenote == 3 {
                    yosounumber = Int(random() % 2) + 2
                }
            }
        }else {
            
            if aitenumber == 0 {
                if aitenote == 2 {
                    aiteImageView.image = UIImage(named: "2.0a.png")
                    
                } else {
                    aiteImageView.image = UIImage(named: "1.0a.png")
                    
                }
            } else if aitenumber == 1 {
                if aitenote == 2 {
                    aiteImageView.image = UIImage(named: "2.1a.png")
                    
                } else {
                    aiteImageView.image = UIImage(named: "1.1a.png")
                    
                }
            }else if aitenumber == 2 {
                aiteImageView.image = UIImage(named: "2.2a.png")
                
            }
            
        }
        
    }
    
    @IBAction func ageru0() {
        agerunumber = 0
        if jibunnnote == 2 {
            jibunImageView.image = UIImage(named: "2.0j.png")
        } else {
            jibunImageView.image = UIImage(named: "1.0j.png")
            
        }
        
        self.aiteAnimation()
        
        if turncount%2 == 0 {
            self.hentai()
        } else {
            self.aitehentai()
        }
        turncount = turncount + 1
        
    }
    
    @IBAction func ageru1() {
        agerunumber = 1
        if jibunnnote == 2 {
            jibunImageView.image = UIImage(named: "2.1j.png")
        } else {
            jibunImageView.image = UIImage(named: "1.1j.png")
            
        }
        
        self.aiteAnimation()
        
        if turncount%2 == 0 {
            self.hentai()
        } else {
            self.aitehentai()
        }
        turncount = turncount + 1
        
    }
    @IBAction func ageru2() {
        agerunumber = 2
        jibunImageView.image = UIImage(named: "2.2j.png")
        
        self.aiteAnimation()
        
        if turncount%2 == 0 {
            self.hentai()
        } else {
            self.aitehentai()
        }
        turncount = turncount + 1
        
    }
    
    
    func hentai(){
        //     NSLog("相手...%d", aitenumber)
        //     NSLog("予想...%d", yosounumber)
        outcome.text = "予想は" + String(yosounumber)
        
        if aitenumber + agerunumber == yosounumber {
            self.good()
        }else {
            self.bad()
        }
    }
    
    func aitehentai(){
        //   aitenumber = Int(arc4random_uniform(3))
        //    NSLog("相手...%d", aitenumber)
        //    NSLog("予想...%d", yosounumber)
        outcome.text = String(yosounumber)
        //        if aitenumber == 0 {
        //            aiteImageView.image = UIImage(named: "notraised2.png")
        //        }
        if aitenumber + agerunumber == yosounumber {
            self.aitegood()
        }else {
            self.aitebad()
        }
    }
    
    func good(){
        NSLog("あたった！！")
        if jibunnnote == 1 {
            self.clear()
        } else {
            jibunnnote = jibunnnote - 1
            self.agerubt3.hidden = true
            myUIPicker.hidden = true
            self.aiteturn()
            self.performSelector(Selector("removeYubij"), withObject: nil, afterDelay: 1)
            jibunserihu.image = UIImage(named: "serihuj")
            self.performSelector(Selector("removeSerihuj"), withObject: nil, afterDelay: 1)
        }
        
    }
    
    func removeSerihuj() {
        self.jibunserihu.hidden = true
    }
    
    func removeSerihua() {
        self.aiteserihu.hidden = true
    }
    
    func removeYubij() {
        jibunImageView.image = UIImage(named: "1.0j.png")
    }
    func removeYubia() {
        aiteImageView.image = UIImage(named: "1.0a.png")
    }
    
    func aitegood(){
        NSLog("相手あたった！！")
        
        if aitenote == 2 {
            aitenote = aitenote - 1
            self.performSelector(Selector("removeYubia"), withObject: nil, afterDelay: 1)
            aiteserihu.image = UIImage(named: "serihua")
            self.performSelector(Selector("removeSerihua"), withObject: nil, afterDelay: 1)
        } else {
            NSLog("相手の勝ち")
            self.performSegueWithIdentifier("toLose", sender: self)
        }
        self.jibunturn()
        
    }
    
    func bad(){
        NSLog("あたらず！！")
        myUIPicker.hidden = true
        self.aiteturn()
    }
    func aitebad(){
        NSLog("あいてあたらず！！")
        // self.gamestart()
        self.jibunturn()
    }
    
    func clear(){
        NSLog("自分の勝ち")
        self.performSegueWithIdentifier("toWin", sender: self)
    }
    
    func jibunturn() {
        
        myUIPicker.hidden = false
        myUIPicker.reloadAllComponents()
        yosounumber = myUIPicker.selectedRowInComponent(0)
    }
    
    func aiteturn(){
        
        
        //aitenumber = Int(arc4random_uniform(3))
        
        
        //        if aitenumber + agerunumber == yosounumber {
        //            self.aitegood()
        //        }else {
        //            self.bad()
        //        }
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

