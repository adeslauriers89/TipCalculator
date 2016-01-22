//
//  ViewController.m
//  TipCalculator
//
//  Created by Adam DesLauriers on 2016-01-22.
//  Copyright © 2016 Adam DesLauriers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;
@property (weak, nonatomic) IBOutlet UITextField *tipPercentageTextField;

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
- (IBAction)calculateTipButtonPressed:(UIButton *)sender {
    
    NSString *billAmountString = self.billAmountTextField.text;
    float billAmountFloat = [billAmountString floatValue];
   
    
    NSString *customTipPercentage = self.tipPercentageTextField.text;
    float customTipFloat =  [customTipPercentage floatValue] /100;
    
    
    if (customTipFloat) {
        float customTipAmount = billAmountFloat * customTipFloat;
        
        self.tipAmountLabel.text = [NSString stringWithFormat:@"Your tip is: $%0.2f", customTipAmount];
    } else {
        float tipAmount = billAmountFloat *0.15;
        NSLog(@"tip amount %f",tipAmount);
        
        self.tipAmountLabel.text = [NSString stringWithFormat:@"Your tip is: $%0.2f", tipAmount];
    }
}

@end

