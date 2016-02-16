//
//  ViewController.h
//  novel77
//
//  Created by LifeisTech10 on 2014/08/21.
//  Copyright (c) 2014年 kano. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{IBOutlet UIImageView *first;
    IBOutlet UILabel *message;
    IBOutlet UIButton *select1;
    IBOutlet UIButton *select2;
    IBOutlet UIButton *NextButton;
    
    
}
-(IBAction)NextButton;
-(IBAction)select1b;
-(IBAction)select2b;
-(IBAction)save;
-(IBAction)start;

@end


