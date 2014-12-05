//
//  GridView.m
//  IosGrid
//
//  Created by Langwan on 14/11/25.
//  Copyright (c) 2014年 chengxufan. All rights reserved.
//



#import "CXFLayout.h"

@implementation CXFGridView

-(id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    CXFLayout *layout = [[CXFLayout alloc]initWithParams:self columns:12];
    [layout drawGrid];
}


@end
