//
//  EduView.m
//  MayankJain
//
//  Created by Mayank Jain on 4/14/14.
//  Copyright (c) 2014 Mayank Jain. All rights reserved.
//

#import "EduView.h"

@implementation EduView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        NSArray *subviewArray = [[NSBundle mainBundle] loadNibNamed:@"yourXib" owner:self options:nil];
        id mainView = [subviewArray objectAtIndex:0];
        
        return mainView;
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
