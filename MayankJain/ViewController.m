//
//  ViewController.m
//  MayankJain
//
//  Created by Mayank Jain on 4/14/14.
//  Copyright (c) 2014 Mayank Jain. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UILabel *tjLabel;
@property (strong, nonatomic) IBOutlet UILabel *huminTitle;
@property (strong, nonatomic) IBOutlet UILabel *huminRole;
@property (strong, nonatomic) IBOutlet UILabel *huminTime;
@property (strong, nonatomic) IBOutlet UILabel *work;
@property (strong, nonatomic) IBOutlet UILabel *kairosRole;
@property (strong, nonatomic) IBOutlet UILabel *kairosTitle;
@property (strong, nonatomic) IBOutlet UILabel *kairosTime;
@property (strong, nonatomic) IBOutlet UIView *workView;
@property (strong, nonatomic) IBOutlet EduView *eduView;
@property (assign, nonatomic) BOOL eduUp;
@property (assign, nonatomic) BOOL workUp;
@property (assign, nonatomic) BOOL bioUp;
@property (strong, nonatomic) IBOutlet UILabel *pilotTitle;
@property (strong, nonatomic) IBOutlet UILabel *pilotRole;
@property (strong, nonatomic) IBOutlet UILabel *pilotTime;
@property (strong, nonatomic) IBOutlet UITextView *bioText;
@property (strong, nonatomic) IBOutlet UIView *bioView;
@property (strong, nonatomic) IBOutlet UILabel *bio;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.profilePic.layer.cornerRadius = 50.0;
    self.profilePic.layer.masksToBounds = YES;
    
    UIFont *bebas = [UIFont fontWithName:@"Bebas Neue" size:17.0f];
    UIFont *proximaSmall = [UIFont fontWithName:@"ProximaNova-Regular" size:14.0];
    UIFont *proximaBig = [UIFont fontWithName:@"ProximaNova-Regular" size:17.0];
    
    NSLog(@" font name %@", [UIFont fontNamesForFamilyName:@"ProximaNova-Regular.otf"]);
    
    [self.educationLabel setFont:bebas];
    [self.work setFont:bebas];
    [self.uiucLabel setFont:proximaBig];
    [self.tjLabel setFont:proximaBig];
    [self.huminTitle setFont:proximaBig];
    [self.huminRole setFont:proximaSmall];
    [self.huminTime setFont:proximaSmall];
    [self.kairosTitle setFont:proximaBig];
    [self.kairosRole setFont:proximaSmall];
    [self.kairosTime setFont:proximaSmall];
    [self.pilotTitle setFont:proximaBig];
    [self.pilotRole setFont:proximaSmall];
    [self.pilotTime setFont:proximaSmall];
    [self.bio setFont:bebas];
    [self.bioText setFont:proximaSmall];
    [self.bioText setEditable:NO];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)eduButtonPressed:(id)sender {
    
    UIView * view = self.eduView;
    
    if(!self.eduUp){
        [UIView animateWithDuration:0.3f
                              delay:0.0f
                            options:UIViewAnimationOptionCurveLinear
                         animations:^{
                             [view setFrame:CGRectMake(view.frame.origin.x, view.frame.origin.y - 278, view.frame.size.width, view.frame.size.height)];
                         }
                         completion:nil];
        self.eduUp = true;
    }
    else{
        [UIView animateWithDuration:0.3f
                              delay:0.0f
                            options:UIViewAnimationOptionCurveLinear
                         animations:^{
                             [view setFrame:CGRectMake(view.frame.origin.x, view.frame.origin.y + 278, view.frame.size.width, view.frame.size.height)];
                         }
                         completion:nil];
        self.eduUp = false;
    }
}

- (IBAction)workButtonPressed:(id)sender {
    UIView * view = self.workView;
    
    if(!self.workUp){
        [UIView animateWithDuration:0.3f
                              delay:0.0f
                            options:UIViewAnimationOptionCurveLinear
                         animations:^{
                             [view setFrame:CGRectMake(view.frame.origin.x, view.frame.origin.y - 322, view.frame.size.width, view.frame.size.height)];
                             [view setAlpha:1];
                         }
                         completion:nil];
        self.workUp = true;
    }
    else{
        [UIView animateWithDuration:0.3f
                              delay:0.0f
                            options:UIViewAnimationOptionCurveLinear
                         animations:^{
                             [view setFrame:CGRectMake(view.frame.origin.x, view.frame.origin.y + 322, view.frame.size.width, view.frame.size.height)];
                             [view setAlpha:.8];
                         }
                         completion:nil];
        self.workUp = false;
    }
}
- (IBAction)bioButtonPressed:(id)sender {
    UIView * view = self.bioView;
    
    if(!self.bioUp){
        [UIView animateWithDuration:0.3f
                              delay:0.0f
                            options:UIViewAnimationOptionCurveLinear
                         animations:^{
                             [view setFrame:CGRectMake(view.frame.origin.x, view.frame.origin.y - 322, view.frame.size.width, view.frame.size.height)];
                             [view setAlpha:1];
                         }
                         completion:nil];
        self.bioUp = true;
    }
    else{
        [UIView animateWithDuration:0.3f
                              delay:0.0f
                            options:UIViewAnimationOptionCurveLinear
                         animations:^{
                             [view setFrame:CGRectMake(view.frame.origin.x, view.frame.origin.y + 322, view.frame.size.width, view.frame.size.height)];
                             [view setAlpha:.8];
                         }
                         completion:nil];
        self.bioUp = false;
    }
}
@end
