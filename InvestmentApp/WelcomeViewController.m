//
//  WelcomeViewController.m
//  InvestmentApp
//
//  Created by love_ping891122 on 15/4/28.
//  Copyright (c) 2015年 love_ping891122. All rights reserved.
//

#import "WelcomeViewController.h"

@interface WelcomeViewController ()

@end

@implementation WelcomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationController.navigationBarHidden = YES;

    UIButton *button = [UIButton ButtonWithFrame:CGRectMake(0, 0, 100, 100) Normal:nil Select:nil Title:@""];
    [button addTarget:self action:@selector(bubububub) forControlEvents:UIControlEventTouchUpInside];
    button.backgroundColor =[UIColor yellowColor];
    [self.view addSubview:button];
    
    
    
    // Do any additional setup after loading the view.
}

-(void)bubububub
{

    firstViewController *VC = [[firstViewController alloc]init];
    [self.navigationController pushViewController:VC animated:NO];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
