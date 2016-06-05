//
//  DieLabel.m
//  Farkle
//
//  Created by Pasha Bahadori on 6/4/16.
//  Copyright © 2016 Pelican Inc. All rights reserved.
//

#import "DieLabel.h"

@interface DieLabel ()  <UIGestureRecognizerDelegate, DieLabelDelegate>

@end

@implementation DieLabel

- (instancetype) initWithCoder:(NSCoder *)aDecoder {
    
    self = [super initWithCoder:aDecoder];
    self.userInteractionEnabled = YES;
    
    UITapGestureRecognizer *pan = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(didTapLabelWithGesture:)];
    
    return self;
    
}

                                                                                                       
 - (void)didTapLabelWithGesture:(UITapGestureRecognizer *)tapGesture {
     NSLog(@"Die button tapped");
 }
                                                                                                       



- (void)roll {
    int randomNum = arc4random() % 5;
    if (randomNum==0) {
        self.text = @"1";
    }
    else if (randomNum ==1) {
        self.text = @"2";
    }
    else if (randomNum ==2) {
        self.text = @"3";
    }
    else if (randomNum ==3) {
        self.text = @"4";
    }
    else if (randomNum ==4) {
        self.text = @"5";
    }
    else {
        self.text = @"6";
    }
    
    
//    [self.dice = [NSMutableArray alloc] ]
}

//[self.delegate dieLabelDelegateFunction];




/*
 - (IBAction)onColorTap:(UIButton *)sender {
 [self.delegate customizationView:self updateForButton:sender];
 [self removeFromSuperview];
 }
 
 In your DieLabelDelegate protocol method implementation add the DieLabel instance to your dice array
 
 
 DONE-When the DieLabel is tapped, call the delegate-protocol method on the DieLabel’s delegate property
 
 hint: You write this code in DieLabel.m

 
*/




@end


//@interface StickerImageView () <UIGestureRecognizerDelegate>
//
//@end
//
//@implementation StickerImageView