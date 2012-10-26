//
//  RootViewController.m
//  Navigation
//
//  Created by Hideki Eguchi on 2012/10/26.
//  Copyright (c) 2012年 Hideki Eguchi. All rights reserved.
//

#import "RootViewController.h"
#import "NextViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"RootView";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    // ボタン
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:button];
    button.frame = CGRectMake((self.view.frame.size.width - 200)/2,
                              (self.view.frame.size.height - 50)/2 + 50,
                              200,
                              50);
    [button setTitle:@"Next" forState:UIControlStateNormal];
    [button addTarget:self
               action:@selector(didButtonTapped)
     forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)didButtonTapped
{
    NextViewController *nextVC = [[NextViewController alloc] init];
    [self.navigationController pushViewController:nextVC animated:YES];
    [nextVC release];
}

@end
