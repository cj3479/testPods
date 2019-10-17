//
//  main.m
//  testPods
//
//  Created by cj3479 on 10/04/2019.
//  Copyright (c) 2019 cj3479. All rights reserved.
//

@import UIKit;
#import "CJPODAppDelegate.h"
#import "TestPerson.h"
int main(int argc, char * argv[])
{
    TestPerson *person = [[TestPerson alloc]init];
    [person eat];
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([CJPODAppDelegate class]));
    }
}
