//
//  CXFLayoutRow.h
//  IosGrid
//
//  Created by Langwan on 14/11/26.
//  Copyright (c) 2014年 chengxufan. All rights reserved.
//
//  source address: https://github.com/chengxufan/ios.gridlayout
//  website: http://www.chengxufan.com/
//  mail: langwan@chengxufan.com
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
@class CXFLayout;

@interface CXFLayoutRow : NSObject
@property(nonatomic, strong) NSMutableArray* columns;
@property(nonatomic, strong) CXFLayout* layout;
-(id)initWithParams:(CXFLayout*)layout;
-(void)addColumn:(CXFLayoutColumn*)column;
@end
