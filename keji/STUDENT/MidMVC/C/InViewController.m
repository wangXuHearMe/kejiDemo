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
    [self setNav];
    [self setNowTime];
    [self setUI];
    [self setTimer];
}
- (void)setNav {
    self.navigationItem.title = @"签到";
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"zuojiantou.png"] style:UIBarButtonItemStyleDone target:self action:@selector(pressBack)];
    backButton.tintColor = [UIColor blackColor];
    [self.navigationItem setLeftBarButtonItem:backButton];
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
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate *datenow = [NSDate date];
    self.startStr = [formatter stringFromDate:datenow];
    self.secondsCountDown = [self getDateDifferenceWithNowDateStr:self.startStr deadlineStr:self.stopStr];
}
- (void)setUI {
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStyleGrouped];
    [self.view addSubview:self.tableView];
    self.textLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 140, 200, 30)];
    self.textLabel.font = [UIFont systemFontOfSize:26];
    [self.tableView addSubview:self.textLabel];
    self.timeLabel = [[UILabel alloc] initWithFrame:CGRectMake(140, 185, 200, 30)];
    self.timeLabel.font = [UIFont systemFontOfSize:27];
    [self.tableView addSubview:self.timeLabel];
    self.signButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.signButton setFrame:CGRectMake(135, 245, 120, 120)];
    [self.signButton setBackgroundImage:[UIImage imageNamed:@"圆形.png"] forState:UIControlStateNormal];
    [self.signButton setTitle:@"签到" forState:UIControlStateNormal];
    self.signButton.titleLabel.font = [UIFont systemFontOfSize:27];
    self.signButton.titleLabel.textColor = [UIColor blackColor];
    [self.signButton addTarget:self action:@selector(pressSign) forControlEvents:UIControlEventTouchUpInside];
    [self.tableView addSubview:self.signButton];
}
- (void)pressSign {
    [self.signButton removeFromSuperview];
    self.timeLabel.text = nil;
    self.textLabel.text = @"当前签到已完成";
    self.textLabel.textColor = [UIColor greenColor];
    [self.activeTimer invalidate];
    _activeTimer = nil;
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
    NSString *format_time = [NSString stringWithFormat:@"%@:%@:%@", str_hour, str_minute, str_second];
    if (self.secondsCountDown > 0) {
        self.textLabel.text = @"距签到结束还有:";
        self.textLabel.textColor = [UIColor colorWithRed:235/255.0 green:147/255.0 blue:41/255.0 alpha:1];
        self.timeLabel.text = [NSString stringWithFormat:@"%@", format_time];
        self.timeLabel.textColor = [UIColor colorWithRed:235/255.0 green:147/255.0 blue:41/255.0 alpha:1];
    } else {
        [self.signButton removeFromSuperview];
        self.timeLabel.text = nil;
        self.textLabel.text = @"当前签到已结束";
        self.textLabel.textColor = [UIColor redColor];
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
