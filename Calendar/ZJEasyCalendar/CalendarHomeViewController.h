//
//  CalendarHomeViewController.h
//  Calendar
//
//  Created by Allan on 14-6-23.
//  Copyright (c) 2014年 Allan. All rights reserved.
//
// 版权属于原作者
#import <UIKit/UIKit.h>
#import "CalendarViewController.h"


@interface CalendarHomeViewController : CalendarViewController

@property (nonatomic, strong) NSString *calendartitle;//设置导航栏标题

- (void)setStartDateString:(NSString *) startDateString toDateString:(NSString *) endDateString andSelectedDateString:(NSString *) selectedDateString;

@end
