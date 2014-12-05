//
//  CXFButton.h
//  IosGrid
//
//  Created by Langwan on 14/12/1.
//  Copyright (c) 2014年 chengxufan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CXFLayout.h"

typedef NS_ENUM(NSInteger, CXF_BUTTON_SIZES) {
    CXF_BUTTON_SIZES_SMALL = 0,
    CXF_BUTTON_SIZES_COMMON,
    CXF_BUTTON_SIZES_BIG,
    CXF_BUTTON_SIZES_FULL
};

typedef NS_ENUM(NSInteger, CXF_BUTTON_SCENE) {
    CXF_BUTTON_SCENE_COMMON = 0,
    CXF_BUTTON_SCENE_IMPORTANT,
    CXF_BUTTON_SCENE_DISABLE,
    CXF_BUTTON_SCENE_LINK
};

@interface CXFButton : UIButton

@property(nonatomic, assign) CXFLayoutRow* row;
@property(nonatomic, assign) NSInteger size;
@property(nonatomic, assign) NSInteger scene;
@property(nonatomic, assign) NSInteger cols;
@property(nonatomic, assign) CGFloat height;
@property(nonatomic, strong) CXFLayoutColumn* column;


-(id)initWithParams:(CXFLayoutRow*) row size:(NSInteger)size scene:(NSInteger)scene;

@end
