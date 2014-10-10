//
//  MyAlertView.m
//  Category_Demo
//
//  Created by WeiHan on 10/10/14.
//  Copyright (c) 2014 Wei Han. All rights reserved.
//

#import "MyAlertView.h"

@implementation MyAlertView

- (id)initWithTitle:(NSString *)title message:(NSString *)message delegate:(id)delegate cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSString *)otherButtonTitles, ...
{
    if (self = [super initWithTitle:title message:message delegate:delegate cancelButtonTitle:cancelButtonTitle otherButtonTitles:otherButtonTitles, nil])
    {
//        if (delegate == nil)
            self.delegate = self;
    }
    return self;
}

@end
