//
//  UIView+AYView.m
//  seguementofQQ
//
//  Created by 王俊钢 on 2017/8/2.
//  Copyright © 2017年 wangjungang. All rights reserved.
//

#import "UIView+AYView.h"

@implementation UIView (AYView)

- (CGPoint)origin {
    return self.frame.origin;
}

- (void)setOrigin:(CGPoint)origin {
    CGRect newFrame = self.frame;
    newFrame.origin = origin;
    self.frame = newFrame;
}

- (CGSize)size {
    return self.frame.size;
}

- (void)setSize:(CGSize)size {
    CGRect newFrame = self.frame;
    newFrame.size = size;
    self.frame = newFrame;
    
}
- (CGFloat)x {
    return self.frame.origin.x;
}

- (void)setX:(CGFloat)x {
    CGRect newFrame = self.frame;
    newFrame.origin.x = x;
    self.frame = newFrame;
}

- (CGFloat)y {
    return self.frame.origin.y;
}

- (void)setY:(CGFloat)y {
    CGRect newFrame = self.frame;
    newFrame.origin.y = y;
    self.frame = newFrame;
}

- (CGFloat)width {
    return self.frame.size.width;
}

- (void)setWidth:(CGFloat)width {
    CGRect newFrame = self.frame;
    newFrame.size.width = width;
    self.frame = newFrame;
}

- (CGFloat)height {
    return self.frame.size.height;
}

- (void)setHeight:(CGFloat)height {
    CGRect newFrame = self.frame;
    newFrame.size.height = height;
    self.frame = newFrame;
}
#pragma mark - other frame

- (CGFloat)minX {
    return CGRectGetMinX(self.frame);
}
- (void)setMinX:(CGFloat)minX {
    CGRect newFrame = self.frame;
    newFrame.origin.x = minX;
    self.frame = newFrame;
}

- (CGFloat)maxX {
    return CGRectGetMaxX(self.frame);
}

- (void)setMaxX:(CGFloat)maxX {
    CGRect newFrame = self.frame;
    newFrame.origin.x += (maxX - self.frame.size.width);
    self.frame = newFrame;
    
}

- (CGFloat)minY {
    return CGRectGetMinY(self.frame);
}
- (void)setMinY:(CGFloat)minY {
    CGRect newFrame = self.frame;
    newFrame.origin.y = minY;
    self.frame = newFrame;
}
- (CGFloat)maxY {
    return CGRectGetMaxY(self.frame);
}
- (void)setMaxY:(CGFloat)maxY {
    CGRect newFrame = self.frame;
    newFrame.origin.y += (maxY - self.frame.size.height);
    self.frame = newFrame;
}

- (CGFloat)centerX {
    return self.center.x;
}
- (void)setCenterX:(CGFloat)centerX {
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}


- (CGFloat)centerY {
    return self.center.y;
}

- (void)setCenterY:(CGFloat)centerY {
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}

@end
