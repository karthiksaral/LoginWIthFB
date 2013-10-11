//
//  ViewController.h
//  LoginWIthFB
//
//  Created by PasumaiSolutions on 10/11/13.
//  Copyright (c) 2013 PasumaiSolutions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController : UIViewController<FBLoginViewDelegate>





@property (strong, nonatomic) IBOutlet UILabel *lblUserName;
@property (strong, nonatomic) IBOutlet UITextField *txtEmailId;
@property (strong, nonatomic) IBOutlet UIButton *lblCreate;
@property (strong, nonatomic) IBOutlet FBProfilePictureView *profilePic;

@property (strong, nonatomic) id<FBGraphUser> loggedInUser;

- (IBAction)butCreate:(id)sender;

- (void)showAlert:(NSString *)message
           result:(id)result
            error:(NSError *)error;

@end
