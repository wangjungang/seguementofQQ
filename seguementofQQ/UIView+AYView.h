//
//  UIView+AYView.h
//  seguementofQQ
//
//  Created by 王俊钢 on 2017/8/2.
//  Copyright © 2017年 wangjungang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (AYView)
// 视图原点
@property (nonatomic, assign) CGPoint origin;
// 视图尺寸
@property (nonatomic, assign) CGSize size;
// frame 原点 x 值
@property(nonatomic, assign) CGFloat x;
// frame 原点 y 值
@property (nonatomic, assign) CGFloat y;
// frame 尺寸 width
@property (nonatomic, assign) CGFloat width;
// frame 尺寸 height
@property (nonatomic, assign) CGFloat height;

//min max center
@property (nonatomic, assign) CGFloat minX;
@property (nonatomic, assign) CGFloat maxX;
@property (nonatomic, assign) CGFloat centerX;

//min max center
@property (nonatomic, assign) CGFloat minY;
@property (nonatomic, assign) CGFloat maxY;
@property (nonatomic, assign) CGFloat centerY;
@end
