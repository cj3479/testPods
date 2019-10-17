//
//  TestClass0.m
//  Pods-testPods_Example
//
//  Created by chengjian on 2019/10/17.
//

#import "TestClass0.h"
#import "TestPerson.h"
@implementation TestClass0
-(void)testCl{
    NSLog(@"testCl");
    TestPerson *per = [TestPerson new];
    [per eat];
}
@end
