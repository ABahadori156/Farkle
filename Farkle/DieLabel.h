//
//  DieLabel.h
//  Farkle
//
//  Created by Pasha Bahadori on 6/4/16.
//  Copyright © 2016 Pelican Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DieLabel;
@protocol DieLabelDelegate <NSObject>
@optional

//-(void)DieLabel:(DieLabel *)label didTapButton:(UITapGestureRecognizer *)tap;

-(void)dieLabelDelegateFunction;

@end


@interface DieLabel : UILabel
- (void)roll;

// Delegate Property
@property (nonatomic, weak) id<DieLabelDelegate> delegate;

@end

/*
 
 @class DrinkTableViewCell;
 @protocol DrinkTableViewCellDelegate <NSObject>
 @optional
 
 -(void)drinkTableViewCell:(DrinkTableViewCell *)cell didTapButton:(UIButton *)button;
 
 @end
 
 @interface DrinkTableViewCell : UITableViewCell
 
 @property (nonatomic, weak) id<DrinkTableViewCellDelegate> delegate;
 @end
 
 -------------------------------------
 Create a protocol “DieLabelDelegate”
 
 DONE- Add a method declaration to the DieLabelDelegate protocol by adding it to your angular brackets in your ViewController.m and implementing the methods that XCode warns you aren’t implemented.
 
 DONE-Add a NSMutableArray property to your ViewController called “dice”
 
 DONE-Add a property to DieLabel called delegate of type id<DieLabelDelegate>
 
 DONE -Set the delegate properties of all the DieLabels to the ViewController instance.
 
 hint: self
 
 
 When the DieLabel is tapped, call the delegate-protocol method on the DieLabel’s delegate property
 
 hint: You write this code in DieLabel.m
 
 In your DieLabelDelegate protocol method implementation add the DieLabel instance to yourdice array
 
 When roll is pressed, only call roll on the DieLabels not in the dice array.
 
 hint: When dice are pressed, change their background colors to indicate that they won’t be rolled next time
 
 hint: If you hooked the roll button up to all six roll methods on all six of your DieLabels, then you will now have to rethink that…
 

 
 
*/