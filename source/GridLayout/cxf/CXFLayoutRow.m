//
//  CXFLayoutRow.m
//  IosGrid
//
//  Created by Langwan on 14/11/26.
//  Copyright (c) 2014年 chengxufan. All rights reserved.
//
//  source address: https://github.com/chengxufan/ios.gridlayout
//  website: http://www.chengxufan.com/
//  mail: langwan@chengxufan.com
//

#import "CXFLayout.h"
#import "CXFLayoutRow.h"

@implementation CXFLayoutRow

-(id)initWithParams:(CXFLayout*)layout {
    self = [super init];
    if(self == nil) {
        return nil;
    }
    
    self.layout = layout;
    [self.layout addRow:self];
    return self;
}


-(void)addColumn:(CXFLayoutColumn*)column {
    [self.columns addObject:column];
}

@end
