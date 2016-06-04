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

- (void)someSetupMethod {
    // ...
    label.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGesture = \
    [[UITapGestureRecognizer alloc]
     initWithTarget:self action:@selector(didTapLabelWithGesture:)];
    [label addGestureRecognizer:tapGesture];
    
}

- (void)didTapLabelWithGesture:(UITapGestureRecognizer *)tapGesture {
    // ...
}


@end


//@interface StickerImageView () <UIGestureRecognizerDelegate>
//
//@end
//
//@implementation StickerImageView