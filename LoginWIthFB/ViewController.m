//
//  ViewController.m
//  LoginWIthFB
//
//  Created by PasumaiSolutions on 10/11/13.
//  Copyright (c) 2013 PasumaiSolutions. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize lblUserName,lblCreate,txtEmailId,profilePic;

- (void)viewDidLoad
{
    [super viewDidLoad];
    FBLoginView *loginview=[[FBLoginView alloc]initWithReadPermissions:@[@"email",@"user_likes"]];
    loginview.frame=CGRectMake(60, 50, 200, 50);
    loginview.delegate=self;
    [loginview sizeToFit];
    [self.view addSubview:loginview];
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)butCreate:(id)sender {
}


#pragma FBLoginDelegateFunctions

-(void)loginViewShowingLoggedInUser:(FBLoginView *)loginView
{
    self.lblCreate.enabled=YES;
    self.txtEmailId.enabled=YES;
    self.lblUserName.enabled=YES;
    
    
    
}

-(void)loginViewFetchedUserInfo:(FBLoginView *)loginView user:(id<FBGraphUser>)user
{
    self.lblUserName.text=[NSString stringWithFormat:@"%@",user.name];
    self.txtEmailId.text=[user objectForKey:@"email"];
    //self.profilePic.profileID=user.id;
    self.loggedInUser=user;
}

-(void)loginViewShowingLoggedOutUser:(FBLoginView *)loginView
{
  
    self.txtEmailId.text=nil;
    self.lblUserName.text=nil;
    self.loggedInUser=nil;
    self.lblCreate.enabled=NO;
    
}

-(void)loginView:(FBLoginView *)loginView handleError:(NSError *)error{
    NSLog(@"Show the Error ==%@",error);
}

@end
