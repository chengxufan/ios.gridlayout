//
//  ViewController.m
//  IosGrid
//
//  Created by Langwan on 14/11/25.
//  Copyright (c) 2014年 chengxufan. All rights reserved.
//
//  source address: https://github.com/chengxufan/ios.gridlayout
//  website: http://www.chengxufan.com/
//  mail: langwan@chengxufan.com
//

#import "ViewController.h"
#import "CXFGridView.h"
#import "CXFLayout.h"



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.view.backgroundColor = [UIColor whiteColor];
    CXFGridView* gridView = [[CXFGridView alloc]initWithFrame:CGRectMake(0.0f,0.0f,self.view.bounds.size.width,self.view.bounds.size.height)];
    gridView.backgroundColor = [UIColor whiteColor];
    
    /* remove this line hidden grid view. */
    [self.view addSubview:gridView];
    
    UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"applogo.png"]];
    imageView.contentMode = UIViewContentModeScaleAspectFit ;
    
    /* default layout params. */
    CXFLayout* layout = [[CXFLayout alloc] initWithParams:self.view];
    
    /* 12 columns */
    //CXFLayout* layout = [[CXFLayout alloc] initWithParams:self.view columns:12];
    
    /* custom all params */
    //CXFLayout* layout = [[CXFLayout alloc] initWithParams:self.view columns:12 lineSpacing:20.0f];
    
    CXFLayoutRow *row = [[CXFLayoutRow alloc] initWithParams:layout];
    
    CXFLabel *label = [[CXFLabel alloc]initWithParams:row size:CXF_LABEL_SIZES_FULL scene:CXF_LABEL_SCENE_COMMON];
    label.column.height = 120.0f;
    
    row = [[CXFLayoutRow alloc] initWithParams:layout];
    
    CXFTextField *textFiled = [[CXFTextField alloc]initWithParams:row size:CXF_TEXTFIELD_SIZES_FULL scene:CXF_TEXTFIELD_SCENE_COMMON];
    textFiled.placeholder = @"Phone, email or username";
    
    row = [[CXFLayoutRow alloc] initWithParams:layout];
    
    textFiled = [[CXFTextField alloc]initWithParams:row size:CXF_TEXTFIELD_SIZES_FULL scene:CXF_TEXTFIELD_SCENE_COMMON];
    textFiled.placeholder = @"Password";
    
    
    row = [[CXFLayoutRow alloc] initWithParams:layout];
    
    CXFButton * button = [[CXFButton alloc]initWithParams:row size:CXF_BUTTON_SIZES_BIG scene:CXF_BUTTON_SCENE_LINK];
    [button setTitle:@"Forgot password?" forState:UIControlStateNormal];
    button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    
    button = [[CXFButton alloc]initWithParams:row size:CXF_BUTTON_SIZES_BIG scene:CXF_BUTTON_SCENE_LINK];
    [button setTitle:@"Sign up now" forState:UIControlStateNormal];
    button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
    
    row = [[CXFLayoutRow alloc] initWithParams:layout];
    button = [[CXFButton alloc]initWithParams:row size:CXF_BUTTON_SIZES_FULL scene:CXF_BUTTON_SCENE_IMPORTANT];
    [button setTitle:@"Log in" forState:UIControlStateNormal];
    
    row = [[CXFLayoutRow alloc] initWithParams:layout];
    label = [[CXFLabel alloc]initWithParams:row size:CXF_LABEL_SIZES_FULL scene:CXF_LABEL_SCENE_COMMON];
    
    [label setText:@"https://github.com/chengxufan/ios.gridlayout"];
    label.lineBreakMode = UILineBreakModeWordWrap;
    label.numberOfLines = 0;
    label.height = 100.0f;
    label.column.height = 100.0f;
    
    [layout draw];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
