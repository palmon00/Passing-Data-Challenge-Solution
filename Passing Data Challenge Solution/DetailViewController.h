//
//  DetailViewController.h
//  Passing Data Challenge Solution
//
//  Created by Raymond Louie on 3/16/14.
//  Copyright (c) 2014 Raymond Louie. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DetailViewControllerDelegate <NSObject>

-(void)didUpdateText:(NSString *)text;

@end

@interface DetailViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) NSString *text;

@property (strong, nonatomic) IBOutlet UILabel *textLabel;

@property (strong, nonatomic) IBOutlet UITextField *updateTextField;

- (IBAction)updateButtonPressed:(UIButton *)sender;

@property (weak, nonatomic) id <DetailViewControllerDelegate> delegate;

@end
