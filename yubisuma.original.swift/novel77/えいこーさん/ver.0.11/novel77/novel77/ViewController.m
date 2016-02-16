//
//  ViewController.m
//  novel77
//
//  Created by LifeisTech10 on 2014/08/21.
//  Copyright (c) 2014年 kano. All rights reserved.
//

#import "ViewController.h"
#import "menuViewController.h"
@interface ViewController ()

@end

@implementation ViewController{
    NSString *story[100];
    NSString *imagepath[100];
    int reading;
    
}
- (void)viewDidLoad
{
    if (savenumber==0) {
        reading=0;
    }else{
        reading=savenumber;
    }
    select1.hidden=YES;
    select2.hidden=YES;

    story[0]=@"おはよう";
    story[1]=@"ぬ";
    story[2]=@"る";
    story[3]=@"ぽ";
    
    imagepath[0]=@"color_ohishi.gif";
    imagepath[1]=@"color_ohishi.gif";
    imagepath[2]=@"color_ohishi.gif";
    imagepath[3]=@"keiichi.gif";
    first.image=[UIImage imageNamed:imagepath[reading]];

    [super viewDidLoad];
    message.text=story[reading];
    NSLog(@"save %d reading %d",savenumber,reading);
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)NextButton{
    reading++;
    message.text=story[reading];
    if (reading>=3) {
        select1.hidden=NO;
        select2.hidden=NO;
        NextButton.hidden=YES;
        first.image=[UIImage imageNamed:imagepath[reading]];
    }
}
-(IBAction)save{
    
NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];  // 取得
[ud setInteger:reading forKey:@"KEY_I"];
}
-(IBAction)lode{
NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    reading = [ud integerForKey:@"KEY_I"];
    message.text=story[reading];
}
-(IBAction)menu{
    menuViewController *secondViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"menu"];
    [self presentViewController:secondViewController animated:YES completion:nil];
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];  // 取得
    [ud setInteger:reading forKey:@"KEY_I"];

}


@end
