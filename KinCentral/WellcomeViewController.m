//
//  WellcomeViewController.m
//  KinCentral
//
//  Created by student on 7/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "WellcomeViewController.h"
#import "AccountViewController.h"

@implementation WellcomeViewController

- (void)dealloc
{
    [super dealloc];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIButton *back = [UIButton buttonWithType:UIButtonTypeCustom];
    back.frame = CGRectMake(0, 0, 50, 30);
    [back setBackgroundImage:[UIImage imageNamed:@"back.png"] forState:UIControlStateNormal];
    [back addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:back];
    self.navigationItem.leftBarButtonItem = backItem;
    
    self.navigationItem.title = @"Login";
    
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"intro_back.png"]]];
    
    UIView *whiteView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"intro_white_board.png"]];
    whiteView.frame = CGRectMake(10, 20, 300, 370);
    whiteView.userInteractionEnabled = YES;
    
    UIView *wellcomeView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"welcome_back_text.png"]];
    wellcomeView.frame = CGRectMake(33, 30, 157, 34);
    
    UITextField *emailField = [[UITextField alloc] initWithFrame:CGRectMake(33, 80, 234, 22)];
    emailField.borderStyle = UITextBorderStyleRoundedRect;
    emailField.textColor = [UIColor grayColor];
    emailField.font = [UIFont systemFontOfSize:13];
    emailField.text = @"Email Address";
    
    UITextField *passwordField = [[UITextField alloc] initWithFrame:CGRectMake(33, 110, 234, 22)];
    passwordField.borderStyle = UITextBorderStyleRoundedRect;
    passwordField.textColor = [UIColor grayColor];
    passwordField.font = [UIFont systemFontOfSize:13];
    passwordField.text = @"Password";
    
    UIButton *loginButton = [[UIButton alloc] initWithFrame:CGRectMake(33, 140, 234, 35)];
    [loginButton setBackgroundImage:[UIImage imageNamed:@"login_but.png"] forState:UIControlStateNormal];
    
    UIButton *forgotButton = [[UIButton alloc] initWithFrame:CGRectMake(40, 185, 101, 12)];
    [forgotButton setBackgroundImage:[UIImage imageNamed:@"forgot_password_text.png"] forState:UIControlStateNormal];
    
    UIView *dontView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"dont_have_an_account.png"]];
    dontView.frame = CGRectMake(40, 300, 142, 10);
    
    UIButton *startedButton = [[UIButton alloc] initWithFrame:CGRectMake(31, 320, 238, 35)];
    [startedButton setBackgroundImage:[UIImage imageNamed:@"get_started_but.png"] forState:UIControlStateNormal];
    [startedButton addTarget:self action:@selector(saveAccount) forControlEvents:UIControlEventTouchUpInside];
    
    [whiteView addSubview:wellcomeView];
    [whiteView addSubview:emailField];
    [whiteView addSubview:passwordField];
    [whiteView addSubview:loginButton];
    [whiteView addSubview:forgotButton];
    [whiteView addSubview:dontView];
    [whiteView addSubview:startedButton];
    
    [self.view addSubview:whiteView];
}

- (void)back
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)saveAccount
{
    AccountViewController *accountViewController = [AccountViewController new];
    
    [self.navigationController pushViewController:accountViewController animated:YES];
    
    [accountViewController release];
}

@end
