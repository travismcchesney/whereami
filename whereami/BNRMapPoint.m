//
//  BNRMapPoint.m
//  whereami
//
//  Created by Travis McChesney on 5/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BNRMapPoint.h"

@implementation BNRMapPoint

@synthesize coordinate, title, subtitle;

- (id)initWithCoordinate:(CLLocationCoordinate2D)c title:(NSString *)t
{
    self = [super init];
    if (self) {
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        
        NSDate *date = [[NSDate alloc] init];
        
        coordinate = c;
        [self setTitle:t];
        [self setSubtitle:[[NSString alloc] initWithFormat:@"Tagged: %@",[dateFormatter stringFromDate:date]]];
    }
    return self;
}

- (id)init
{
    return [self initWithCoordinate:CLLocationCoordinate2DMake(43.07, -89.32)
                              title:@"Hometown"];
}

@end
