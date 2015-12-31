//
//  CalendarHomeViewController.m
//  Calendar
//
//  Created by Allan on 14-6-23.
//  Copyright (c) 2014年 Allan. All rights reserved.
//
// 版权属于原作者

#import "CalendarHomeViewController.h"
#import "CalendarDefines.h"

@interface CalendarHomeViewController ()

@end

@implementation CalendarHomeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

#pragma mark - 设置方法
- (void)setStartDateString:(NSString *) startDateString toDateString:(NSString *) endDateString andSelectedDateString:(NSString *) selectedDateString
{
    NSDate *date = [NSDate date];
    NSDate *startDate, *endDate;
    startDate = [date dateFromString:startDateString];
    endDate = [date dateFromString:endDateString];
    int days = [NSDate getDayNumbertoDay:startDate beforDay:endDate];
    
    NSDate *selectDate  = [NSDate date];
    if (selectedDateString) {
        selectDate = [selectDate dateFromString:selectedDateString];
    }
    super.Logic = [[CalendarLogic alloc]init];
    super.calendarMonth = [super.Logic reloadCalendarView:startDate selectDate:selectDate needDays:days];
    [super.collectionView reloadData];//刷新
}

#pragma mark - 设置标题

- (void)setCalendartitle:(NSString *)calendartitle
{
    [self.navigationItem setTitle:calendartitle];
}

@end
