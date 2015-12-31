//
//  TTViewController.m
//  Calendar
//
//  Created by Allan on 14-7-1.
//  Copyright (c) 2014年 Allan. All rights reserved.
//
// 版权属于原作者

#import "TTViewController.h"
#import "CalendarHomeViewController.h"
#import "CalendarViewController.h"
#import "CalendarDefines.h"

@interface TTViewController ()
{

    CalendarHomeViewController *chvc;

}
@end

@implementation TTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    UIButton *but1 = [[UIButton alloc]initWithFrame:CGRectMake(0, 200, self.view.frame.size.width, 50)];
    but1.backgroundColor = COLOR_NORMAL_THEME;
    but1.tintColor = [UIColor whiteColor];
    but1.tag = 1;
    [but1 setTitle:@"走起" forState:UIControlStateNormal];
    [but1 addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:but1];
}

-(void)click:(UIButton *)but
{
    if (!chvc) {
        chvc = [[CalendarHomeViewController alloc]init];
        chvc.calendartitle = @"日历";
        [chvc setStartDateString:@"2010-04-01" toDateString:@"2016-12-31" andSelectedDateString:nil];
    }

    chvc.calendarblock = ^(CalendarDayModel *model){
        NSLog(@"\n---------------------------");
        NSLog(@"1星期 %@",[model getWeek]);
        NSLog(@"2字符串 %@",[model toString]);
        NSLog(@"3节日  %@",model.holiday);
        
        if (model.holiday) {
            [but setTitle:[NSString stringWithFormat:@"%@ %@ %@",[model toString],[model getWeek],model.holiday] forState:UIControlStateNormal];
        }
        else
        {
            [but setTitle:[NSString stringWithFormat:@"%@ %@ %@",[model toString],[model getWeek], model.Chinese_calendar] forState:UIControlStateNormal];
        }
    };
    [self.navigationController pushViewController:chvc animated:YES];
}

@end
