//
//  T1.m
//  QQ分段控制器
//
//  Created by Yang on 2017/7/11.
//  Copyright © 2017年 Yang. All rights reserved.
//

#import "T1.h"

@interface T1()<UITableViewDelegate,UITableViewDataSource>

@end
static NSString * const cellID = @"indentifier";

@implementation T1
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.delegate = self;
        self.dataSource = self;
    }
    return self;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 40;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if(!cell){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    cell.textLabel.text = @"TABLEVIEW 01";
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}


@end
