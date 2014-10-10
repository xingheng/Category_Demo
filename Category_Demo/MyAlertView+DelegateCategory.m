//
//  MyAlertView+DelegateCategory.m
//  Category_Demo
//
//  Created by WeiHan on 10/10/14.
//  Copyright (c) 2014 Wei Han. All rights reserved.
//

#import "MyAlertView+DelegateCategory.h"

@implementation MyAlertView (DelegateCategory)

// Called when a button is clicked. The view will be automatically dismissed after this call returns
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSLog(@"CASEA: alertView: %@, buttonIndex: %ld", alertView, (long)buttonIndex);
}

// Called when we cancel a view (eg. the user clicks the Home button). This is not called when the user clicks the cancel button.
// If not defined in the delegate, we simulate a click in the cancel button
- (void)alertViewCancel:(UIAlertView *)alertView
{
    NSLog(@"CASEA: alertView: %@", alertView);
}

- (void)willPresentAlertView:(UIAlertView *)alertView  // before animation and showing view
{
    NSLog(@"CASEA: alertView: %@", alertView);
}

- (void)didPresentAlertView:(UIAlertView *)alertView  // after animation
{
    NSLog(@"CASEA: alertView: %@", alertView);
}

@end
