//
//  DisplayCallback.m
//  MonitorHandler
//
//  Created by Artem Kirienko on 08.11.13.
//  Copyright (c) 2013 Artem Kirienko. All rights reserved.
//

#import "DisplayCallback.h"

@implementation DisplayCallback

static void displayReconfigurationCallBack (
                                            CGDirectDisplayID display,
                                            CGDisplayChangeSummaryFlags flags,
                                            void *userInfo)
{
    if (flags & kCGDisplayEnabledFlag) {
        NSLog(@"Enabled %d", display);
    }
    if (flags & kCGDisplayDisabledFlag) {
        NSLog(@"Disabled %d", display);
    }
    if (flags & kCGDisplayAddFlag) {
        NSLog(@"Connected");
        [(__bridge DisplayCallback *)userInfo setCombo:[NSString stringWithFormat:@"%u added", display]];
    }
    if (flags & kCGDisplayRemoveFlag) {
        NSLog(@"Disconnected");
        [(__bridge DisplayCallback *)userInfo setCombo:[NSString stringWithFormat:@"%u removed", display]];
    }
}

- (id)init
{
    if (self = [super init])
    {
        CGDisplayRegisterReconfigurationCallback (displayReconfigurationCallBack, (__bridge void *)(self));
    }
    
    return self;
}

- (void)dealloc
{
    CGDisplayRemoveReconfigurationCallback (displayReconfigurationCallBack, (__bridge void *)(self));
}

- (void)setCombo:(NSString *)str
{
    NSLog(@"%@", str);
}

@end
