//
//  TestPerson.m
//  Pods-testPods_Example
//
//  Created by chengjian on 2019/10/4.
//

#import "TestPerson.h"
#import "AFURLSessionManager.h"
#import "QBCAURLItem.h"
@implementation TestPerson
-(void)eat{
    QBCAURLItem *item = [QBCAURLItem new];
    NSLog(@"chengjian_person eat item=%@",item);
    NSLog(@"File downloaded ");
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];

    NSURL *URL = [NSURL URLWithString:@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1568906721127&di=723f5a4b684c8d43e54fbd8ed0288324&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fwallpaper%2Fc%2F53cdd1f7c1f21.jpg"];
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];

    NSURLSessionDownloadTask *downloadTask = [manager downloadTaskWithRequest:request progress:nil destination:^NSURL *(NSURL *targetPath, NSURLResponse *response) {
        NSURL *documentsDirectoryURL = [[NSFileManager defaultManager] URLForDirectory:NSDocumentDirectory inDomain:NSUserDomainMask appropriateForURL:nil create:NO error:nil];
         NSLog(@"File downloaded to: %@", response);
        return [documentsDirectoryURL URLByAppendingPathComponent:[response suggestedFilename]];
    } completionHandler:^(NSURLResponse *response, NSURL *filePath, NSError *error) {
        NSLog(@"File downloaded to: %@", filePath);
    }];
    [downloadTask resume];
}
@end
