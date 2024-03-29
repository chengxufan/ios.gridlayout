//
//  CXFLayoutColumn.m
//  IosGrid
//
//  Created by Langwan on 14/11/26.
//  Copyright (c) 2014年 chengxufan. All rights reserved.
//
//  source address: https://github.com/chengxufan/ios.gridlayout
//  website: http://www.chengxufan.com/
//  mail: langwan@chengxufan.com
//

#import "CXFLayoutColumn.h"

@implementation CXFLayoutColumn

-(id)initWithLayout:(UIView*)view cols:(NSInteger)cols height:(CGFloat)height {
    self = [super init];
    if(self == nil) {
        return nil;
    }
    self.view = view;
    self.cols = cols;
    self.height = height;
    return self;
}

@end
