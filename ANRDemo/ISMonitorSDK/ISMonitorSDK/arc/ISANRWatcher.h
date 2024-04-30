//
//  ISANRWatcher.h
//  ANRTest
//
//  Created by DevWhizx on 2023/8/1.
//  Copyright © 2023年 intsig. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ISANRWatcher : NSObject
+ (void)setUploadHost:(NSString *)host isDebug:(BOOL)isDebug;
+ (void)startWatch:(uint64_t)runloopThreshold;
+ (void)stopWatch;
+ (int)logCount;
@end
