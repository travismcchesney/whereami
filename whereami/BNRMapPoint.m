//
//  BNRMapPoint.m
//  whereami
//
//  Created by Travis McChesney on 5/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BNRMapPoint.h"

@implementation BNRMapPoint 

@synthesize coordinate, title;

- (id)initWithCoordinate:(CLLocationCoordinate2D)c title:(NSString *)t
{
    self = [super init];
    if (self) {
        coordinate = c;
        [self setTitle:t];
    }
    return self;
}

- (id)init
{
    return [self initWithCoordinate:CLLocationCoordinate2DMake(43.07, -89.32)
                              title:@"Hometown"];
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    if (self) {
        coordinate = CLLocationCoordinate2DMake([aDecoder decodeFloatForKey:@"latitude"], [aDecoder decodeFloatForKey:@"longitude"]);
        
        [self setTitle:[aDecoder decodeObjectForKey:@"title"]];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeFloat:coordinate.latitude forKey:@"latitude"];
    [aCoder encodeFloat:coordinate.longitude forKey:@"longitude"];
    
    [aCoder encodeObject:title forKey:@"title"];
}

@end
