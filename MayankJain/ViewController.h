//
//  ViewController.h
//  MayankJain
//
//  Created by Mayank Jain on 4/14/14.
//  Copyright (c) 2014 Mayank Jain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EduView.h"

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *profilePic;
@property (strong, nonatomic) IBOutlet UILabel *educationLabel;
@property (strong, nonatomic) IBOutlet UILabel *uiucLabel;
@property (strong, nonatomic) IBOutlet UIButton *expandEduButton;

- (IBAction)eduButtonPressed:(id)sender;
@end
