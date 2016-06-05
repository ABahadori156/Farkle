//
//  DieLabel.m
//  Farkle
//
//  Created by Pasha Bahadori on 6/4/16.
//  Copyright © 2016 Pelican Inc. All rights reserved.
//

#import "DieLabel.h"

@interface DieLabel ()  <UIGestureRecognizerDelegate>

@end

@implementation DieLabel 
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
    
    
    
}

// set the label’s text to a random number between 1 and 6.





@end


//@interface StickerImageView () <UIGestureRecognizerDelegate>
//
//@end
//
//@implementation StickerImageView