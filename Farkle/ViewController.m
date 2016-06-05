//
//  ViewController.m
//  Farkle
//
//  Created by Pasha Bahadori on 6/4/16.
//  Copyright © 2016 Pelican Inc. All rights reserved.
//

#import "ViewController.h"
#import "DieLabel.h"

@interface ViewController () <UIGestureRecognizerDelegate>
@property (weak, nonatomic) IBOutlet DieLabel *dieLabel;
@property (weak, nonatomic) IBOutlet DieLabel *dieLabel2;
@property (weak, nonatomic) IBOutlet DieLabel *dieLabel3;
@property (weak, nonatomic) IBOutlet DieLabel *dieLabel4;
@property (weak, nonatomic) IBOutlet DieLabel *dieLabel5;
@property (weak, nonatomic) IBOutlet DieLabel *dieLabel6;





@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *dieGesture1;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupGestureRecognizer];
    [self.dieLabel addGestureRecognizer:self.dieGesture1];
    [self.dieLabel2 addGestureRecognizer:self.dieGesture1];
    [self.dieLabel3 addGestureRecognizer:self.dieGesture1];
    [self.dieLabel4 addGestureRecognizer:self.dieGesture1];
    [self.dieLabel5 addGestureRecognizer:self.dieGesture1];
    
    
}


//-(instancetype)initWithCoder:(NSCoder *)aDecoder
//{
//   self = [super initWithCoder:aDecoder];
//    
//    [self setupGestureRecognizer];
////   self.dieLabel.userInteractionEnabled = YES;
////    
////    
////    [self.dieGesture1 addTarget:self action:@selector(didTapLabelWithGesture:)];
////     self.dieGesture1.delegate = self;
//    
//    
//    
//    
//// UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(didTapLabelWithGesture:)];
//    
//    // self.dieGesture1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(didTapLabelWithGesture:)];
//    
// 
//
//    return self;
//}


- (void)didTapLabelWithGesture:(UITapGestureRecognizer *)tapGesture {
    NSLog(@"Die button tapped");
}

-(void)setupGestureRecognizer {
    self.dieLabel.userInteractionEnabled = YES;
    
    [self.dieGesture1 addTarget:self action:@selector(didTapLabelWithGesture:)];
    
    // below we set the delegate of tapgesture
    self.dieGesture1.delegate = self;
    
}


// Create a UITapGesture object in the initWithCoder method and set the action to the method you created earlier





//- (void)someSetupMethod {
//    // ...
//    self.dieLabel.userInteractionEnabled = YES;
//    UITapGestureRecognizer *tapGesture = \
//    [[UITapGestureRecognizer alloc]
//     initWithTarget:self action:@selector(didTapLabelWithGesture:)];
//    [self.dieLabel addGestureRecognizer:tapGesture];
//    
//}




@end
