//
//  QBCAURLItem.m
//  TBS
//
//  Created by pennyli on 2019/1/2.
//

#import "QBCAURLItem.h"
@implementation QBCAURLItem

- (instancetype)init
{
    if (self = [super init]) {
        self.bQuit = NO;
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)decoder
{
    if (self = [super init])
    {
        self.url = [decoder decodeObjectForKey: @"url"];
        self.bQuit = [[decoder decodeObjectForKey: @"bQuit"] boolValue];
    }
    
    return self;
}

- (void)encodeWithCoder:(NSCoder *)encoder
{
    [encoder encodeObject: self.url forKey: @"url"];
    [encoder encodeObject: @(self.bQuit) forKey: @"bQuit"];
}

@end
