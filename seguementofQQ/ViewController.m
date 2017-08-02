//
//  ViewController.m
//  seguementofQQ
//
//  Created by 王俊钢 on 2017/8/2.
//  Copyright © 2017年 wangjungang. All rights reserved.
//

#import "ViewController.h"
#import "T1.h"
#import "T2.h"
#import "UIView+AYView.h"
#define kCOLOR(r,g,b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1]
@interface ViewController ()<UIScrollViewDelegate>
@property (nonatomic, strong) UISegmentedControl *segmentCtrl;
@property (nonatomic, strong) UIScrollView *scrollView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self settingScrollView];
    [self settingSegment];
}

- (void)settingScrollView{
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.width, self.view.height)];
    scrollView.delegate = self;
    scrollView.bounces = NO;
    scrollView.pagingEnabled = YES;
    scrollView.directionalLockEnabled = YES;
    scrollView.contentInset = UIEdgeInsetsMake(-64, 0, -49, 0);
    scrollView.contentSize = CGSizeMake(2 *self.view.width, self.view.height);
    scrollView.showsHorizontalScrollIndicator = NO;
    [self.view addSubview:scrollView];
    T1 * t1 = [[T1 alloc] initWithFrame:CGRectMake(0,64, self.view.width, self.view.height-64)];
    
    T2 * t2 = [[T2 alloc]initWithFrame:CGRectMake(self.view.width,64, self.view.width, self.view.height-64)];
    
    [scrollView addSubview:t1];
    [scrollView addSubview:t2];
    _scrollView = scrollView;
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    CGFloat offset = scrollView.contentOffset.x;
    //显示第几段
    self.segmentCtrl.selectedSegmentIndex = offset/self.view.width;
}

- (void)settingSegment{
    UISegmentedControl *segmentCtrl = [[UISegmentedControl alloc] initWithItems:@[@"消息",@"电话"]];
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"NLArenaNavBar64"] forBarMetrics:UIBarMetricsDefault];
    self.navigationItem.titleView = segmentCtrl;
    segmentCtrl.width = 120;
    segmentCtrl.selectedSegmentIndex = 0;
    [segmentCtrl addTarget:self action:@selector(segmentBtnClick) forControlEvents:UIControlEventValueChanged];
    [segmentCtrl setBackgroundImage:[UIImage imageNamed:@"CPArenaSegmentBG"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    [segmentCtrl setBackgroundImage:[UIImage imageNamed:@"CPArenaSegmentSelectedBG"] forState:UIControlStateSelected barMetrics:UIBarMetricsDefault];
    segmentCtrl.selectedSegmentIndex = 0;
    //设置文字的颜色
    [segmentCtrl setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]} forState:UIControlStateSelected];
    [segmentCtrl setTitleTextAttributes:@{NSForegroundColorAttributeName:kCOLOR(6, 150, 120)} forState:UIControlStateNormal];
    
    _segmentCtrl = segmentCtrl;
}

- (void)segmentBtnClick{
    //点击实现偏移
    [UIView animateWithDuration:0.5 animations:^{
        self.scrollView.contentOffset = CGPointMake(self.segmentCtrl.selectedSegmentIndex * self.view.width, 0);
    }];
    
}

@end
