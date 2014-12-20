//
//  ViewController.m
//  UISliderExample
//
//  Created by Mateus de Campos on 20/12/14.
//  Copyright (c) 2014 Mateus de Campos. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UILabel *sliderValue;
@property (strong, nonatomic) IBOutlet UISlider *slider;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeSliderValue:(UISlider*)sender {
    int discreteValue = roundl([sender value]); // Rounds float to an integer
    [sender setValue:(float)discreteValue]; // Sets your slider to this value
    self.sliderValue.text = [NSString stringWithFormat:@"%.2f ", sender.value];
}
@end
