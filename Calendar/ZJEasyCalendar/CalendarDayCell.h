//
//  CalendarDayCell.h
//
//  Created by Allan on 14-8-20.
//  Copyright (c) 2014年 Allan. All rights reserved.
//
// 版权属于原作者

#import <UIKit/UIKit.h>
#import "CalendarDayModel.h"
#import "CalendarDefines.h"

@interface CalendarDayCell : UICollectionViewCell
{
    UILabel *day_lab;//今天的日期
    UILabel *day_title;//显示农历或者节日
    UIImageView *imgview;//选中时的图片
}

@property(nonatomic , strong)CalendarDayModel *model;

@end
