//
//  ModalViewController.h
//  UITest
//
//  Created by Wayloon Tan on 3/22/13.
//  Copyright (c) 2013 Sandhills Publishing. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ModalViewControllerDelegate <NSObject>

- (void)cancelDone;

@end

@interface ModalViewController : UIViewController

@property (weak, nonatomic) id<ModalViewControllerDelegate> delegate;

- (IBAction)cancelTapped:(id)sender;

@end
