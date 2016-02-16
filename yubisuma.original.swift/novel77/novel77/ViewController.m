//
//  ViewController.m
//  novel77
//
//  Created by LifeisTech10 on 2014/08/21.
//  Copyright (c) 2014年 kano. All rights reserved.
//

#import "ViewController.h"
#import "tugiViewController.h"
#import "menuViewController.h"
@interface ViewController ()

@end

@implementation ViewController{
    NSString *namestory[100];
    NSString *story[100];
    NSString *imagepath[100];
    NSString *imagepath2[100];
    NSString *imagepath3[100];
    int reading;
    
}
- (void)viewDidLoad
{
    if (savenumber == 1) {
        NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];  // 取得
        reading = [ud integerForKey:@"KEY_I"];
        savenumber=0;
    }
    select1.hidden=YES;
    select2.hidden=YES;

    story[0]=@"（これが今日から通う雛見沢分校か）";
    story[1]=@"お、おまえ転校生か！？おれは前原圭一、おれも転校してきたばっかなんだ！よろしくな";
    story[2]=@"おはよ〜。あれ、圭ちゃんその子だれ？";
    story[3]=@"おう、魅音。転校生なんだってよ";
    story[4]=@"へえ、中２？そうなんだ。じゃあ圭ちゃんと同い年だね。わたしは園崎魅音、二人と・・・レナの一つ上だよ";
    story[5]=@"（レナってだれだろう？）";
    story[6]=@"あ、ふたりとも！その子転校生でしょ？今知恵先生から聞いてきたよ";
    story[7]=@"わたしは竜宮レナ、知恵先生っていうのは担任の先生なんだけど・・・もう会ったか、そっかははは";
    story[8]=@"（キーンコーンカーコーン）";
    story[9]=@"あ、予鈴なっちゃったね、席に着こうか。これからよろしくね";
    
    namestory[0]=@"あなた";
    namestory[1]=@"圭一";
    namestory[2]=@"？？？";
    namestory[3]=@"圭一";
    namestory[4]=@"魅音";
    namestory[5]=@"あなた";
    namestory[6]=@"レナ";
    namestory[7]=@"レナ";
    namestory[8]=@"（チャイム）";
    namestory[9]=@"魅音";
    
    imagepath[0]=@"no";
    imagepath[1]=@"keiichi copy.gif";
    imagepath[2]=@"keiichi copy.gif";
    imagepath[3]=@"keiichi copy.gif";
    imagepath[4]=@"keiichi copy.gif";
    imagepath[5]=@"keiichi copy.gif";
    imagepath[6]=@"keiichi copy.gif";
    imagepath[7]=@"keiichi copy.gif";
    imagepath[8]=@"keiichi copy.gif";
    imagepath[9]=@"mion copy.gif";
    first.image=[UIImage imageNamed:imagepath[reading]];
    
    imagepath3[0]=@"no";
    imagepath3[1]=@"no";
    imagepath3[2]=@"no";
    imagepath3[3]=@"mion copy.gif";
    imagepath3[4]=@"mion copy.gif";
    imagepath3[5]=@"mion copy.gif";
    imagepath3[6]=@"rena copy.gif";
    imagepath3[7]=@"rena copy.gif";
    imagepath3[8]=@"rena copy.gif";
    imagepath3[9]=@"rena copy.gif";
    second.image=[UIImage imageNamed:imagepath3[reading]];
    
    imagepath2[0]=@"kousha.png";
    imagepath2[1]=@"kyoushituyuu.jpg";
    imagepath2[2]=@"kyoushituyuu.jpg";
    imagepath2[3]=@"kyoushituyuu.jpg";
    imagepath2[4]=@"kyoushituyuu.jpg";
    imagepath2[5]=@"kyoushituyuu.jpg";
    imagepath2[6]=@"kyoushituyuu.jpg";
    imagepath2[7]=@"kyoushituyuu.jpg";
    imagepath2[8]=@"kyoushituyuu.jpg";
    imagepath2[9]=@"kyoushituyuu.jpg";
    haikei.image=[UIImage imageNamed:imagepath2[reading]];
    
    
    [super viewDidLoad];
    message.text=story[reading];
    NSLog(@"save %d reading %d",savenumber,reading);
    [super viewDidLoad];
    name.text=namestory[reading];
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
    name.text=namestory[reading];
    first.image=[UIImage imageNamed:imagepath[reading]];
    second.image=[UIImage imageNamed:imagepath3[reading]];
    haikei.image=[UIImage imageNamed:imagepath2[reading]];
    if (reading>=9) {
        select1.hidden=NO;
    //    select2.hidden=NO;
        NextButton.hidden=YES;
        first.image=[UIImage imageNamed:imagepath[reading]];
        second.image=[UIImage imageNamed:imagepath3[reading]];
        haikei.image=[UIImage imageNamed:imagepath2[reading]];
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
-(IBAction)select1b{
        tugiViewController *secondViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"tugi"];
        [self presentViewController:secondViewController animated:YES completion:nil];

}

@end
