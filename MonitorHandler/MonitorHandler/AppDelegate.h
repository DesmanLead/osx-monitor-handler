//
//  AppDelegate.h
//  MonitorHandler
//
//  Created by Desman on 08.11.13.
//  Copyright (c) 2013 Desman. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "DisplayCallback.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>
{
    DisplayCallback* _callback;
}

@property (assign) IBOutlet NSWindow *window;

@end
