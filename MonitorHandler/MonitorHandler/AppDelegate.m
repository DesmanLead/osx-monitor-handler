//
//  AppDelegate.m
//  MonitorHandler
//
//  Created by Artem Kirienko on 08.11.13.
//  Copyright (c) 2013 Artem Kirienko. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    _callback = [DisplayCallback new];
}

@end
