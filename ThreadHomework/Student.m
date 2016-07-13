//
//  Student.m
//  ThreadHomework
//
//  Created by Stepan Paholyk on 7/10/16.
//  Copyright © 2016 Stepan Paholyk. All rights reserved.
//

#import "Student.h"
#import <UIKit/UIKit.h>

@implementation Student

- (void)guess:(NSUInteger)number withRange:(NSRange)range
{
    
    dispatch_queue_t studentQueue = dispatch_queue_create("com.stepanpaholyk.threadhomework.queue", DISPATCH_QUEUE_PRIORITY_DEFAULT);
    
    dispatch_async(studentQueue, ^{
        
        NSLog(@"Student %@ started guessing", self.name);
        double startTimeDispatch = CACurrentMediaTime();
        
        NSUInteger randNumber;
        while (randNumber != number) {
            randNumber = arc4random() % range.length;
        }
        NSLog(@"Student %@ guess! in %f seconds", self.name, CACurrentMediaTime() - startTimeDispatch);
        
    });
    
}

@end
