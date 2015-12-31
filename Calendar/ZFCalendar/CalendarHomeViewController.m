//
//  CalendarHomeViewController.m
//  Calendar
//
//  Created by Allan on 14-6-23.
//  Copyright (c) 2014年 Allan. All rights reserved.
//

// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com

#import "CalendarHomeViewController.h"
#import "Color.h"

@interface CalendarHomeViewController ()

@end

@implementation CalendarHomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

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
