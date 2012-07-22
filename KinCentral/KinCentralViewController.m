//
//  KinCantralViewController.m
//  KinCentral
//
//  Created by student on 7/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "KinCentralViewController.h"

@implementation KinCentralViewController

- (void)dealloc
{
    [super dealloc];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        //self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"logo_navBar.png"]];
        [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"logo_navBar.png"] forBarMetrics:UIBarMetricsDefault];
        //[[self.navigationController.navigationBar.appearance setBackgroundImage:[UIImage imageNamed:@"logo_navBar.png"] forBarMetrics:UIBarMetricsDefault];
        UIImage *barImage = [UIImage imageNamed:@"logo_navBar.png"];
        [self.navigationController.navigationBar setBackgroundImage:barImage forBarMetrics:UIBarMetricsDefault];
        //self.view = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"intro_back.png"]];
        [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"intro_back.png"]]];
        
        UIView *whiteView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"intro_white_board.png"]];
        whiteView.frame = CGRectMake(10, 20, 300, 370);
        UIView *funView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"family_photos_fun.png"]];
        funView.frame = CGRectMake(62, 30, 175, 31);
        UIView *getView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"to_get_started_text.png"]];
        getView.frame = CGRectMake(40, 90, 220, 141);
        UIView *shareView = [[UIButton alloc] initWithFrame:CGRectMake(29, 250, 242, 57)];
        [shareView setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"share_photo_but.png"]]];
        //UIView *shareView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"share_photo_but.png"]];
        //shareView.frame = CGRectMake(29, 250, 242, 57);
        UIView *alreadyView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"already_have_an_account.png"]];
        alreadyView.frame = CGRectMake(39, 330, 173, 14);
        UIView *loginView = [[UIButton alloc] initWithFrame:CGRectMake(220, 330, 41, 14)];
        [loginView setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"login_text.png"]]];
        //UIView *loginView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"login_text.png"]];
        //loginView.frame = CGRectMake(220, 330, 41, 14);
        
        [whiteView addSubview:funView];
        [whiteView addSubview:getView];
        [whiteView addSubview:shareView];
        [whiteView addSubview:alreadyView];
        [whiteView addSubview:loginView];
        
        [self.view addSubview:whiteView];
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //self.navigationItem.leftBarButtonItem = [[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(add)] autorelease];
}

@end
