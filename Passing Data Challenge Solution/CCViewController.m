//
//  CCViewController.m
//  Passing Data Challenge Solution
//
//  Created by Raymond Louie on 3/16/14.
//  Copyright (c) 2014 Raymond Louie. All rights reserved.
//

#import "CCViewController.h"
#import "DetailViewController.h"

@interface CCViewController ()

@end

@implementation CCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.textField.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // ensure sender is button
    if ([sender isKindOfClass:[UIButton class]])
    {
        if ([segue.destinationViewController isKindOfClass:[DetailViewController class]])
        {
            DetailViewController *nextUIViewController = segue.destinationViewController;
            nextUIViewController.text = self.textField.text;
            nextUIViewController.delegate = self;
        }
    }
}

#pragma mark - DetailViewControllerDelegate

-(void)didUpdateText:(NSString *)text
{
    self.textField.text = text;
}


#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.textField resignFirstResponder];
    return YES;
}

@end
