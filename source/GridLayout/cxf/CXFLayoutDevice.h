//
//  CXFLayoutDevice.h
//  IosGrid
//
//  Created by Langwan on 14/11/26.
//  Copyright (c) 2014年 chengxufan. All rights reserved.
//
//  source address: https://github.com/chengxufan/ios.gridlayout
//  website: http://www.chengxufan.com/
//  mail: langwan@chengxufan.com
//

#import <Foundation/Foundation.h>

typedef enum {
    IPHONE_320 = 1,
    IPHONE_375,
    IPHONE_414
} DeviceIds;

@interface CXFLayoutDevice : NSObject
+(DeviceIds) IPHONE_320;
+(DeviceIds) IPHONE_375;
+(DeviceIds) IPHONE_414;
@end
