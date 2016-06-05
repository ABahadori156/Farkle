//
//  ViewController.m
//  Farkle
//
//  Created by Pasha Bahadori on 6/4/16.
//  Copyright © 2016 Pelican Inc. All rights reserved.
//

#import "ViewController.h"
#import "DieLabel.h"

@interface ViewController () <UIGestureRecognizerDelegate, DieLabelDelegate>
@property (weak, nonatomic) IBOutlet DieLabel *dieLabel;
@property (weak, nonatomic) IBOutlet DieLabel *dieLabel2;
@property (weak, nonatomic) IBOutlet DieLabel *dieLabel3;
@property (weak, nonatomic) IBOutlet DieLabel *dieLabel4;
@property (weak, nonatomic) IBOutlet DieLabel *dieLabel5;
@property (weak, nonatomic) IBOutlet DieLabel *dieLabel6;

@property NSArray <DieLabel*> *dieLabels;
@property NSMutableArray *dice;
//@property NSArray <DieLabel *> *dieLabelArray;




@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *dieGesture1;
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *dieGesture2;
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *dieGesture3;
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *dieGesture4;
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *dieGesture5;
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *dieGesture6;


@end

@implementation ViewController





- (void)viewDidLoad {
    [super viewDidLoad];
    self.dieLabels = [[NSArray alloc] initWithObjects: self.dieLabel, self.dieLabel2, self.dieLabel3, self.dieLabel4, self.dieLabel5, self.dieLabel6, nil];

    
    [self setupGestureRecognizer];

    for (DieLabel *myDie in self.dieLabels) {
        myDie.delegate = self;
    }
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
//    self.dieLabel.userInteractionEnabled = YES;
//    self.dieLabel2.userInteractionEnabled = YES;
//    self.dieLabel3.userInteractionEnabled = YES;
//    self.dieLabel4.userInteractionEnabled = YES;
//    self.dieLabel5.userInteractionEnabled = YES;
//    self.dieLabel6.userInteractionEnabled = YES;
//    
    for (DieLabel *myDie in self.dieLabels) {
        myDie.userInteractionEnabled = YES;
        
    }
    
 

    
    [self.dieGesture1 addTarget:self action:@selector(didTapLabelWithGesture:)];
    [self.dieGesture2 addTarget:self action:@selector(didTapLabelWithGesture:)];
    [self.dieGesture3 addTarget:self action:@selector(didTapLabelWithGesture:)];
    [self.dieGesture4 addTarget:self action:@selector(didTapLabelWithGesture:)];
    [self.dieGesture5 addTarget:self action:@selector(didTapLabelWithGesture:)];
    [self.dieGesture6 addTarget:self action:@selector(didTapLabelWithGesture:)];
    
    // below we set the delegate of tapgesture

    
    self.dieGesture1.delegate = self;
    self.dieGesture2.delegate = self;
    self.dieGesture3.delegate = self;
    self.dieGesture4.delegate = self;
    self.dieGesture5.delegate = self;
    self.dieGesture6.delegate = self;
    
    [self.dieLabel addGestureRecognizer:self.dieGesture1];
    [self.dieLabel2 addGestureRecognizer:self.dieGesture2];
    [self.dieLabel3 addGestureRecognizer:self.dieGesture3];
    [self.dieLabel4 addGestureRecognizer:self.dieGesture4];
    [self.dieLabel5 addGestureRecognizer:self.dieGesture5];
    [self.dieLabel6 addGestureRecognizer:self.dieGesture6];
    
    
    
    
}

- (IBAction)onRollButtonPressed:(UIButton *)sender {
    for (DieLabel *myDie in self.dieLabels) {
        [myDie roll];
        NSLog(@"%@",myDie.text);
    }
}









@end
