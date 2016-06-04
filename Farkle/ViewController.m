//
//  ViewController.m
//  Farkle
//
//  Created by Pasha Bahadori on 6/4/16.
//  Copyright © 2016 Pelican Inc. All rights reserved.
//

#import "ViewController.h"
#import "DieLabel.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet DieLabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)onDieTapped:(UILabel *)sender {
    NSLog(@"Bernie");
}



@end
