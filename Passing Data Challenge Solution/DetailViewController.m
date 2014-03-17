//
//  DetailViewController.m
//  Passing Data Challenge Solution
//
//  Created by Raymond Louie on 3/16/14.
//  Copyright (c) 2014 Raymond Louie. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.textLabel.text = self.text;
    self.updateTextField.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)updateButtonPressed:(UIButton *)sender {
    self.textLabel.text = self.updateTextField.text;
    [self.delegate didUpdateText:self.updateTextField.text];
}

#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    self.textLabel.text = self.updateTextField.text;
    [self.delegate didUpdateText:self.updateTextField.text];
    [self.updateTextField resignFirstResponder];
    return YES;
}

@end
