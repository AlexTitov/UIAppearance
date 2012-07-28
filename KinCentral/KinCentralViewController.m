//
//  KinCantralViewController.m
//  KinCentral
//
//  Created by student on 7/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "KinCentralViewController.h"
#import "WellcomeViewController.h"

@implementation KinCentralViewController

- (void)dealloc
{
    [super dealloc];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.navigationItem.titleView setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"logo.png"]]];
    
    //self.view = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"intro_back.png"]];
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"intro_back.png"]]];
    
    UIView *whiteView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"intro_white_board.png"]];
    whiteView.frame = CGRectMake(10, 20, 300, 370);
    whiteView.userInteractionEnabled = YES;
    
    UIView *funView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"family_photos_fun.png"]];
    funView.frame = CGRectMake(62, 30, 175, 31);
    
    UIView *getView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"to_get_started_text.png"]];
    getView.frame = CGRectMake(40, 90, 220, 141);
    
    UIButton *shareButton = [[UIButton alloc] initWithFrame:CGRectMake(29, 250, 242, 57)];
    //[shareButton setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"share_photo_but.png"]]];
    [shareButton setBackgroundImage:[UIImage imageNamed:@"share_photo_but.png"] forState:UIControlStateNormal];
    //UIView *shareView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"share_photo_but.png"]];
    //shareView.frame = CGRectMake(29, 250, 242, 57);
    
    UIView *alreadyView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"already_have_an_account.png"]];
    alreadyView.frame = CGRectMake(39, 330, 173, 14);
    
    UIButton *loginButton = [[UIButton alloc] initWithFrame:CGRectMake(220, 330, 41, 14)];
    //[loginButton setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"login_text.png"]]];
    [loginButton setBackgroundImage:[UIImage imageNamed:@"login_text.png"] forState:UIControlStateNormal];
    [loginButton addTarget:self action:@selector(wellcomeView) forControlEvents:UIControlEventTouchUpInside];
    //UIView *loginView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"login_text.png"]];
    //loginView.frame = CGRectMake(220, 330, 41, 14);
    
    [whiteView addSubview:funView];
    [whiteView addSubview:getView];
    [whiteView addSubview:shareButton];
    [whiteView addSubview:alreadyView];
    [whiteView addSubview:loginButton];
    
    [self.view addSubview:whiteView];
}

- (void)wellcomeView
{
    WellcomeViewController *wellcomeViewController = [[WellcomeViewController alloc] init];
    
    [self.navigationController pushViewController:wellcomeViewController animated:YES];
    
    [wellcomeViewController release];
}

@end
