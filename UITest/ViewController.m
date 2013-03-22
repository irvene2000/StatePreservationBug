//
//  ViewController.m
//  UITest
//
//  Created by Wayloon Tan on 3/22/13.
//  Copyright (c) 2013 Sandhills Publishing. All rights reserved.
//

#import "ViewController.h"
#import "ModalViewController.h"

@interface ViewController () <ModalViewControllerDelegate>

@end

@implementation ViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"ViewToModal"]){
        UINavigationController *nvc = segue.destinationViewController;
        ModalViewController *mvc = nvc.viewControllers[0];
        mvc.delegate = self;
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)cancelDone{
    self.view.backgroundColor = [UIColor redColor];
}

@end
