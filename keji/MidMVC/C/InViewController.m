//
//  InViewController.m
//  keji
//
//  Created by 王旭 on 2020/12/22.
//

#import "InViewController.h"

@interface InViewController ()

@end

@implementation InViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"签到";
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"zuojiantou.png"] style:UIBarButtonItemStyleDone target:self action:@selector(pressBack)];
    backButton.tintColor = [UIColor blackColor];
    [self.navigationItem setLeftBarButtonItem:backButton];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStyleGrouped];
    [self.view addSubview:self.tableView];
    [self setNowTime];
    [self setUI];
    [self setTimer];
} 
- (void)pressBack {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (NSInteger)getDateDifferenceWithNowDateStr:(NSString*)nowDateStr deadlineStr:(NSString*)deadlineStr {
    NSInteger timeDifference = 0;
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yy-MM-dd HH:mm:ss"];
    NSDate *nowDate = [formatter dateFromString:nowDateStr];
    NSDate *deadline = [formatter dateFromString:deadlineStr];
    NSTimeInterval oldTime = [nowDate timeIntervalSince1970];
    NSTimeInterval newTime = [deadline timeIntervalSince1970];
    timeDifference = newTime - oldTime;
    return timeDifference;
}
- (void)setNowTime {
    self.startStr = [[NSString alloc] init];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"YYYY-MM-dd HH:mm:ss"];
    NSDate *datenow = [NSDate date];
    self.startStr = [formatter stringFromDate:datenow];
    self.secondsCountDown = [self getDateDifferenceWithNowDateStr:self.startStr deadlineStr:self.stopStr];
}
- (void)setUI {
    self.textLabel = [UILabel alloc] initWithFrame:CGRectMake(<#CGFloat x#>, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>)
    self.timeLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 200, 400, 200)];
    self.timeLabel.font = [UIFont systemFontOfSize:24];
    [self.tableView addSubview:self.timeLabel];
}
- (void)setTimer {
    _activeTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(activeCountDownAction) userInfo:nil repeats:YES];
    [_activeTimer fire];
}
- (void)activeCountDownAction {
    self.secondsCountDown--;
    NSString *str_hour = [NSString stringWithFormat:@"%02ld", self.secondsCountDown / 3600];
    NSString *str_minute = [NSString stringWithFormat:@"%02ld", (self.secondsCountDown % 3600) / 60];
    NSString *str_second = [NSString stringWithFormat:@"%02ld", self.secondsCountDown % 60];
    NSString *format_time = [NSString stringWithFormat:@"%@ : %@ : %@", str_hour, str_minute, str_second];
    if (self.secondsCountDown > 0) {
        self.timeLabel.text = [NSString stringWithFormat:@"%@", format_time];
        self.timeLabel.textColor = [UIColor colorWithRed:235/255.0 green:147/255.0 blue:41/255.0 alpha:1];
    } else {
        self.timeLabel.text = @"当前活动已结束";
        self.timeLabel.textColor = [UIColor redColor];
        [_activeTimer invalidate];
        _activeTimer = nil;
        return;
    }
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
