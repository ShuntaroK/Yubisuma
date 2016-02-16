//
//  StartViewController.m
//  novel77
//
//  Created by LifeisTech10 on 2014/08/25.
//  Copyright (c) 2014年 kano. All rights reserved.
//

#import "StartViewController.h"
#import "ViewController.h"
@interface StartViewController ()

@end

@implementation StartViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
int reading;

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
-(IBAction)load{
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    savenumber = [ud integerForKey:@"KEY_I"];
    //
ViewController *secondViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
    [self presentViewController:secondViewController animated:YES completion:nil];

    
}


@end
