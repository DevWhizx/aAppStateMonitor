//
//  ISANRWatcher.mm
//  ANRTest
//
//  Created by DevWhizx on 2023/8/1.
//  Copyright © 2023年 intsig. All rights reserved.
//

#import "ISANRWatcher.h"
#import "ISMainThreadChecker.h"
#import "ISMonitorCenter.h"

@implementation ISANRWatcher
+ (void)setUploadHost:(NSString *)host isDebug:(BOOL)isDebug {
    [ISMonitorCenter setUploadHost:host isDebug:isDebug];
}

+ (void)startWatch:(uint64_t)runloopThreshold {
    ISMainThreadChecker::startWatch(runloopThreshold);
}

+ (void)stopWatch {
    ISMainThreadChecker::stopWatch();
}

+ (int)logCount {
    return ISMainThreadChecker::logCount();
}

@end
