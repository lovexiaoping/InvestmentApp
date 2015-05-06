//
//  firstViewController.m
//  InvestmentApp
//
//  Created by love_ping891122 on 15/5/5.
//  Copyright (c) 2015年 love_ping891122. All rights reserved.
//

#import "firstViewController.h"

@interface firstViewController ()

@end

@implementation firstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.navigationBarHidden = YES;
    self.view.backgroundColor = [UIColor whiteColor];

    UIImageView *BG = [UIImageView imageViewWithFrame:self.view.bounds :@"bg.png"];
    [self.view addSubview:BG];
    
    
    
    UIImageView *logo = [UIImageView imageViewWithFrame:CGRectMake(WIGHT/2-150/2, 100, 150, 100) :@"logo.png"];
    [self.view addSubview:logo];
    
    UIImageView *title_logo = [UIImageView imageViewWithFrame:CGRectMake(30, 230, WIGHT-60, 30) :@"firstTitle.png"];
    [self.view addSubview:title_logo];
    
    
    
    
    
    
    
    
    UIButton *button_login = [UIButton ButtonWithFrame:CGRectMake(30,HEIGHT- 250, WIGHT-60, 40) Normal:nil Select:nil Title:@"登陆"];
    button_login.tag = 1;
    [button_login setTitleColor:RGBAcolor(255, 130, 0, 1) forState:UIControlStateNormal];
    [button_login addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    button_login.backgroundColor =[UIColor whiteColor];
    [self.view addSubview:button_login];
    
    
    
    UIButton *button_register = [UIButton ButtonWithFrame:CGRectMake(30,HEIGHT-200, WIGHT-60, 40) Normal:nil Select:nil Title:@"注册"];
    button_register.tag = 2;
    [button_register setTitleColor:RGBAcolor(155, 155, 155, 1) forState:UIControlStateNormal];
    [button_register addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    button_register.backgroundColor =[UIColor whiteColor];
    [self.view addSubview:button_register];
    

    
    
    
    // Do any additional setup after loading the view.
}
-(void)buttonAction:(UIButton*)button{

    if (button.tag==1) {
        loginViewController *VC =[[loginViewController alloc]init];
        [self.navigationController pushViewController:VC animated:NO];
        
    }

    if (button.tag==2) {
        registerViewController *VC =[[registerViewController alloc]init];
        [self.navigationController pushViewController:VC animated:NO];
        
    }
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
