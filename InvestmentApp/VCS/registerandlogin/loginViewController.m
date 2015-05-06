//
//  loginViewController.m
//  InvestmentApp
//
//  Created by love_ping891122 on 15/5/5.
//  Copyright (c) 2015年 love_ping891122. All rights reserved.
//

#import "loginViewController.h"

@interface loginViewController ()

@end

@implementation loginViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.navigationController.navigationBarHidden = NO;
    self.title = @"登陆";
    
    
    
    UIImageView *BG = [UIImageView imageViewWithFrame:self.view.bounds :@"bg.png"];
    [self.view addSubview:BG];
    
    
    
    UITextField *telTextfield = [UITextField textFieldWithFrame:CGRectMake(30, 100, WIGHT-60, 40) fieldTag:1 fieldFont:14 textColor:[UIColor blackColor]  fieldtext:@""];
    telTextfield.placeholder = @"手机号码";
    [self.view addSubview:telTextfield];

    
    
    
    UITextField *PSWTextfield = [UITextField textFieldWithFrame:CGRectMake(30, 140, WIGHT-60, 40) fieldTag:2 fieldFont:14 textColor:[UIColor blackColor]  fieldtext:@""];
    PSWTextfield.placeholder = @"密码";
    [self.view addSubview:PSWTextfield];

    
    
    
    UIButton *button_login = [UIButton ButtonWithFrame:CGRectMake(30, 250, WIGHT-60, 40) Normal:nil Select:nil Title:@"登陆"];
    button_login.tag = 1;
    [button_login setTitleColor:RGBAcolor(250, 190, 110, 1) forState:UIControlStateNormal];
    [button_login addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    button_login.backgroundColor =[UIColor whiteColor];
    [self.view addSubview:button_login];
    
    
    
    
    
    
    
    
    // Do any additional setup after loading the view.
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
