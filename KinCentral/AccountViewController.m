//
//  AccountViewController.m
//  KinCentral
//
//  Created by student on 7/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AccountViewController.h"

@implementation AccountViewController

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
    
    self.navigationItem.title = @"Save Your Account";
    
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"flight_girl_back.png"]]];
    
    UIView *whiteView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"intro_white_board.png"]];
    whiteView.frame = CGRectMake(10, 20, 300, 370);
    whiteView.userInteractionEnabled = YES;
    
    UIView *yeahView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"yeah_we_hate_text.png"]];
    yeahView.frame = CGRectMake(34, 30, 232, 72);
    
    UITextField *emailField = [[UITextField alloc] initWithFrame:CGRectMake(34, 120, 232, 22)];
    emailField.borderStyle = UITextBorderStyleRoundedRect;
    emailField.textColor = [UIColor grayColor];
    emailField.font = [UIFont systemFontOfSize:13];
    emailField.text = @"Email Address";
    
    UITextField *firstField = [[UITextField alloc] initWithFrame:CGRectMake(34, 160, 232, 22)];
    firstField.borderStyle = UITextBorderStyleRoundedRect;
    firstField.textColor = [UIColor grayColor];
    firstField.font = [UIFont systemFontOfSize:13];
    firstField.text = @"First Name";
    
    UITextField *lastField = [[UITextField alloc] initWithFrame:CGRectMake(34, 200, 232, 22)];
    lastField.borderStyle = UITextBorderStyleRoundedRect;
    lastField.textColor = [UIColor grayColor];
    lastField.font = [UIFont systemFontOfSize:13];
    lastField.text = @"Last Name";
    
    UITextField *phoneField = [[UITextField alloc] initWithFrame:CGRectMake(34, 240, 232, 22)];
    phoneField.borderStyle = UITextBorderStyleRoundedRect;
    phoneField.textColor = [UIColor grayColor];
    phoneField.font = [UIFont systemFontOfSize:13];
    phoneField.text = @"Phone Number (optional)";
    
    UIView *soView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"so_your_family_text.png"]];
    soView.frame = CGRectMake(40, 268, 173, 9);
    
    UITextField *passwordField = [[UITextField alloc] initWithFrame:CGRectMake(34, 290, 232, 22)];
    passwordField.borderStyle = UITextBorderStyleRoundedRect;
    passwordField.textColor = [UIColor grayColor];
    passwordField.font = [UIFont systemFontOfSize:13];
    passwordField.text = @"Password";
    
    UIView *pictureView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"picture_text.png"]];
    pictureView.frame = CGRectMake(40, 334, 43, 9);
    
    UIView *photoView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"no_photo_logo.png"]];
    photoView.frame = CGRectMake(100, 322, 41, 41);
    
    
    [whiteView addSubview:yeahView];
    [whiteView addSubview:emailField];
    [whiteView addSubview:firstField];
    [whiteView addSubview:lastField];
    [whiteView addSubview:phoneField];
    [whiteView addSubview:soView];
    [whiteView addSubview:passwordField];
    [whiteView addSubview:pictureView];
    [whiteView addSubview:photoView];
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [scrollView addSubview:whiteView];
    scrollView.scrollEnabled = YES;
    
    [self.view addSubview:scrollView];
}

- (void)back
{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
