//
//  ETIMonthHeaderView.m
//  CalendarIOS7
//
//  Created by Jerome Morissard on 3/3/14.
//  Copyright (c) 2014 Jerome Morissard. All rights reserved.
//
// 版权属于原作者

#import "CalendarMonthHeaderView.h"
#import "CalendarDefines.h"

@interface CalendarMonthHeaderView ()

@end

@implementation CalendarMonthHeaderView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self setupView];
    }
    return self;
}

- (void) setupView
{
    self.clipsToBounds = YES;
    NSArray *weekTitleArr = @[@"日", @"一", @"二", @"三", @"四", @"五", @"六"];
    
    //月份
    UILabel *masterLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, UIScreenBoundSize.width, 30.f)];
    [masterLabel setBackgroundColor:[UIColor clearColor]];
    [masterLabel setTextAlignment:NSTextAlignmentCenter];
    [masterLabel setFont:[UIFont fontWithName:@"HelveticaNeue" size:17.0f]];
    masterLabel.textColor = COLOR_NORMAL_THEME;
    [self addSubview:masterLabel];
    self.calendarHeaderLabel = masterLabel;
    
    //一，二，三，四，五，六，日
    for (int i = 0; i < weekTitleArr.count; i++) {
        UILabel *dayWeekLabel = [[UILabel alloc]initWithFrame:CGRectMake(i * WeekTitleLabelWidth, CGRectGetMaxY(self.calendarHeaderLabel.frame) + 5, WeekTitleLabelWidth, WeekTitleLabelHeight)];
        [dayWeekLabel setBackgroundColor:[UIColor clearColor]];
        [dayWeekLabel setFont:[UIFont fontWithName:@"HelveticaNeue-Light" size:15.0f]];
        dayWeekLabel.textAlignment = NSTextAlignmentCenter;
        dayWeekLabel.text = weekTitleArr[i];
        if (i == 0 || i == 6) {
            dayWeekLabel.textColor = COLOR_WEEKEND_THEME;
        }
        else
        {
            dayWeekLabel.textColor = COLOR_NORMAL_THEME;
        }
        [self addSubview:dayWeekLabel];
    }
}

@end
