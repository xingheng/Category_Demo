//
//  ViewController.m
//  Category_Demo
//
//  Created by WeiHan on 10/10/14.
//  Copyright (c) 2014 Wei Han. All rights reserved.
//

#if 1
    #define CASEA       1
#else
    #define CASEB       1
#endif


#import "ViewController.h"
#import "MyAlertView.h"

// No matter whether you include this header file or not, the methods in MyAlertView+DelegateCategory.h(CASEA) or UIViewController+AlertViewDelegate.h(CASEB) will be included.
// See Conclusion.rft to get more info.

#if CASEA
//#import "MyAlertView+DelegateCategory.h"
#elif CASEB
//#import "UIViewController+AlertViewDelegate.h"
#endif


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
#if CASEA
    MyAlertView *alertView = [[MyAlertView alloc] initWithTitle:@"Title"
                                                        message:@"Message"
                                                       delegate:self
                                              cancelButtonTitle:@"Cancel"
                                              otherButtonTitles:@"OK", nil];
    [alertView show];
#elif CASEB
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Title"
                                                        message:@"Message"
                                                       delegate:self
                                              cancelButtonTitle:@"Cancel"
                                              otherButtonTitles:@"OK", nil];
    [alertView show];
#endif
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
