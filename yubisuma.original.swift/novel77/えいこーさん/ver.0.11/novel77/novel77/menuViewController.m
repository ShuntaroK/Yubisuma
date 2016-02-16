//
//  menuViewController.m
//  novel77
//
//  Created by LifeisTech10 on 2014/08/26.
//  Copyright (c) 2014年 kano. All rights reserved.
//

#import "menuViewController.h"
#import "ViewController.h"
@interface menuViewController ()

@end

@implementation menuViewController{
    int reading;
    NSString *story[100];
    NSString *imagepath[100];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)modoru{
    ViewController *secondViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
    [self presentViewController:secondViewController animated:YES completion:nil];
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    reading = [ud integerForKey:@"KEY_I"];
    message.text=story[reading];


}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
