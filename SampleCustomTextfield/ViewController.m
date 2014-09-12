//
//  ViewController.m
//  SampleCustomTextfield
//
//  Created by Jirat K. on 9/12/2557 BE.
//  Copyright (c) 2557 OLX Thailand. All rights reserved.
//

#import "ViewController.h"
#import "NTTTextField.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet NTTTextField *myTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIImage *fbImage = [UIImage imageNamed:@"50.png"];
    self.myTextField.leftView = [[UIImageView alloc] initWithImage:fbImage];
    self.myTextField.leftViewMode = UITextFieldViewModeAlways;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)dismissKeyboard:(id)sender {
    
    [self.view endEditing:YES];
    
}

@end
