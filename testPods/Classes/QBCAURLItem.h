//
//  QBCAURLItem.h
//  TBS
//
//  Created by pennyli on 2019/1/2.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface QBCAURLItem : NSObject <NSCoding>

@property (nonatomic, strong) NSString *url; // scheme + host
@property (nonatomic, assign) BOOL bQuit;   // 是否手动退出

@end

NS_ASSUME_NONNULL_END
