//
//  Student.h
//  ThreadHomework
//
//  Created by Stepan Paholyk on 7/10/16.
//  Copyright © 2016 Stepan Paholyk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject

- (void)guessNumber:(NSUInteger)number withRange:(NSRange)range;

@property (strong, nonatomic) NSString* name;

@end
