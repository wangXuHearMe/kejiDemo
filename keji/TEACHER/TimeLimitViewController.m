//
//  TimeLimitViewController.m
//  keji
//
//  Created by 王旭 on 2021/1/15.
//

#import "TimeLimitViewController.h"

@interface TimeLimitViewController ()

@end

@implementation TimeLimitViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"持续时间";
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"zuojiantou.png"] style:UIBarButtonItemStyleDone target:self action:@selector(pressBack)];
    backButton.tintColor = [UIColor blackColor];
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"right.png"] style:UIBarButtonItemStyleDone target:self action:@selector(pressRight)];
    rightButton.tintColor = [UIColor blackColor];
    [self.navigationItem setLeftBarButtonItem:backButton];
    [self.navigationItem setRightBarButtonItem:rightButton];
    self.view.backgroundColor = [UIColor colorWithRed:250/255.0 green:250/255.0 blue:250/255.0 alpha:1];
    [self setUI];
}
- (void)setUI {
//    self.timeString = [[NSString alloc] init];
    
    self.timeLabel = [[UILabel alloc] init];
    self.timeLabel.frame = CGRectMake((self.view.frame.size.width - 200)/2, 100, 200, 25);
    [self setText];
    self.timeLabel.font = [UIFont systemFontOfSize:20];
    self.timeLabel.textColor = [UIColor blackColor];
    self.timeLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:self.timeLabel];
    
    self.twoMinuteButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.fiveMinuteButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.tenMinuteButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.thirtyMinuteButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.oneHourButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.threeHourButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.oneDayButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.twoDayButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.sevenDayButton = [UIButton buttonWithType:UIButtonTypeCustom];
    
    self.twoMinuteButton.frame = CGRectMake(15, 150, (self.view.frame.size.width - 70)/3, 33);
    self.twoMinuteButton.backgroundColor = [UIColor whiteColor];
    [self.twoMinuteButton setTitle:@"两分钟" forState:UIControlStateNormal];
    [self.twoMinuteButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    self.twoMinuteButton.titleLabel.font = [UIFont systemFontOfSize:17];
    self.twoMinuteButton.layer.cornerRadius = 5;
    self.twoMinuteButton.layer.borderColor = [[UIColor grayColor] CGColor];
    self.twoMinuteButton.layer.masksToBounds = YES;
    self.twoMinuteButton.layer.borderWidth = 0.2f;
    [self.view addSubview:_twoMinuteButton];
    
    self.fiveMinuteButton.frame = CGRectMake(15+(self.view.frame.size.width - 70)/3+20, 150, (self.view.frame.size.width - 70)/3, 33);
    self.fiveMinuteButton.backgroundColor = [UIColor whiteColor];
    [self.fiveMinuteButton setTitle:@"五分钟" forState:UIControlStateNormal];
    [self.fiveMinuteButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    self.fiveMinuteButton.titleLabel.font = [UIFont systemFontOfSize:17];
    self.fiveMinuteButton.layer.cornerRadius = 5;
    self.fiveMinuteButton.layer.borderColor = [[UIColor grayColor] CGColor];
    self.fiveMinuteButton.layer.masksToBounds = YES;
    self.fiveMinuteButton.layer.borderWidth = 0.2f;
    [self.view addSubview:_fiveMinuteButton];
    
    self.tenMinuteButton.frame = CGRectMake(55 + (self.view.frame.size.width - 70)/3 * 2 , 150, (self.view.frame.size.width - 70)/3, 33);
    self.tenMinuteButton.backgroundColor = [UIColor whiteColor];
    [self.tenMinuteButton setTitle:@"十分钟" forState:UIControlStateNormal];
    [self.tenMinuteButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    self.tenMinuteButton.titleLabel.font = [UIFont systemFontOfSize:17];
    self.tenMinuteButton.layer.cornerRadius = 5;
    self.tenMinuteButton.layer.borderColor = [[UIColor grayColor] CGColor];
    self.tenMinuteButton.layer.masksToBounds = YES;
    self.tenMinuteButton.layer.borderWidth = 0.2f;
    [self.view addSubview:_tenMinuteButton];
    
    self.thirtyMinuteButton.frame = CGRectMake(15, 150 + 23 + 30, (self.view.frame.size.width - 70)/3, 33);
    self.thirtyMinuteButton.backgroundColor = [UIColor whiteColor];
    [self.thirtyMinuteButton setTitle:@"三十分钟" forState:UIControlStateNormal];
    [self.thirtyMinuteButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    self.thirtyMinuteButton.titleLabel.font = [UIFont systemFontOfSize:17];
    self.thirtyMinuteButton.layer.cornerRadius = 5;
    self.thirtyMinuteButton.layer.borderColor = [[UIColor grayColor] CGColor];
    self.thirtyMinuteButton.layer.masksToBounds = YES;
    self.thirtyMinuteButton.layer.borderWidth = 0.2f;
    [self.view addSubview:_thirtyMinuteButton];
    
    self.oneHourButton.frame = CGRectMake(15+(self.view.frame.size.width - 70)/3+20, 150 + 23 + 30, (self.view.frame.size.width - 70)/3, 33);
    self.oneHourButton.backgroundColor = [UIColor whiteColor];
    [self.oneHourButton setTitle:@"一小时" forState:UIControlStateNormal];
    [self.oneHourButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    self.oneHourButton.titleLabel.font = [UIFont systemFontOfSize:17];
    self.oneHourButton.layer.cornerRadius = 5;
    self.oneHourButton.layer.borderColor = [[UIColor grayColor] CGColor];
    self.oneHourButton.layer.masksToBounds = YES;
    self.oneHourButton.layer.borderWidth = 0.2f;
    [self.view addSubview:_oneHourButton];
    
    self.threeHourButton.frame = CGRectMake(55 + (self.view.frame.size.width - 70)/3 * 2 , 150 + 23 + 30, (self.view.frame.size.width - 70)/3, 33);
    self.threeHourButton.backgroundColor = [UIColor whiteColor];
    [self.threeHourButton setTitle:@"三小时" forState:UIControlStateNormal];
    [self.threeHourButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    self.threeHourButton.titleLabel.font = [UIFont systemFontOfSize:17];
    self.threeHourButton.layer.cornerRadius = 5;
    self.threeHourButton.layer.borderColor = [[UIColor grayColor] CGColor];
    self.threeHourButton.layer.masksToBounds = YES;
    self.threeHourButton.layer.borderWidth = 0.2f;
    [self.view addSubview:_threeHourButton];
    
    self.oneDayButton.frame = CGRectMake(15, 150 + 23 + 30 + 23 + 30, (self.view.frame.size.width - 70)/3, 33);
    self.oneDayButton.backgroundColor = [UIColor whiteColor];
    [self.oneDayButton setTitle:@"一天" forState:UIControlStateNormal];
    [self.oneDayButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    self.oneDayButton.titleLabel.font = [UIFont systemFontOfSize:17];
    self.oneDayButton.layer.cornerRadius = 5;
    self.oneDayButton.layer.borderColor = [[UIColor grayColor] CGColor];
    self.oneDayButton.layer.masksToBounds = YES;
    self.oneDayButton.layer.borderWidth = 0.2f;
    [self.view addSubview:_oneDayButton];
    
    self.twoDayButton.frame = CGRectMake(15+(self.view.frame.size.width - 70)/3+20, 150 + 23 + 30 + 23 + 30, (self.view.frame.size.width - 70)/3, 33);
    self.twoDayButton.backgroundColor = [UIColor whiteColor];
    [self.twoDayButton setTitle:@"两天" forState:UIControlStateNormal];
    [self.twoDayButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    self.twoDayButton.titleLabel.font = [UIFont systemFontOfSize:17];
    self.twoDayButton.layer.cornerRadius = 5;
    self.twoDayButton.layer.borderColor = [[UIColor grayColor] CGColor];
    self.twoDayButton.layer.masksToBounds = YES;
    self.twoDayButton.layer.borderWidth = 0.2f;
    [self.view addSubview:_twoDayButton];
    
    self.sevenDayButton.frame = CGRectMake(55 + (self.view.frame.size.width - 70)/3 * 2 , 150 + 23 + 30 + 23 + 30, (self.view.frame.size.width - 70)/3, 33);
    self.sevenDayButton.backgroundColor = [UIColor whiteColor];
    [self.sevenDayButton setTitle:@"七天" forState:UIControlStateNormal];
    [self.sevenDayButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    self.sevenDayButton.titleLabel.font = [UIFont systemFontOfSize:17];
    self.sevenDayButton.layer.cornerRadius = 5;
    self.sevenDayButton.layer.borderColor = [[UIColor grayColor] CGColor];
    self.sevenDayButton.layer.masksToBounds = YES;
    self.sevenDayButton.layer.borderWidth = 0.2f;
    [self.view addSubview:_sevenDayButton];
    
    [self.twoMinuteButton addTarget:self action:@selector(pressTwoMinute) forControlEvents:UIControlEventTouchUpInside];
    [self.fiveMinuteButton addTarget:self action:@selector(pressFiveMinute) forControlEvents:UIControlEventTouchUpInside];
    [self.tenMinuteButton addTarget:self action:@selector(pressTenMinute) forControlEvents:UIControlEventTouchUpInside];
    [self.thirtyMinuteButton addTarget:self action:@selector(pressTenMinute) forControlEvents:UIControlEventTouchUpInside];
    [self.oneHourButton addTarget:self action:@selector(pressOneHour) forControlEvents:UIControlEventTouchUpInside];
    [self.threeHourButton addTarget:self action:@selector(pressThreeHour) forControlEvents:UIControlEventTouchUpInside];
    [self.oneDayButton addTarget:self action:@selector(pressOneDay) forControlEvents:UIControlEventTouchUpInside];
    [self.twoDayButton addTarget:self action:@selector(pressTwoDay) forControlEvents:UIControlEventTouchUpInside];
    [self.sevenDayButton addTarget:self action:@selector(pressSevenDay) forControlEvents:UIControlEventTouchUpInside];
}
- (void)setText {
    self.timeLabel.text = self.timeString;
}
- (void)pressBack {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)pressRight {
    [self.delegate passTimeLimit:self.timeString];
    [self dismissViewControllerAnimated:YES completion:nil];
}
#pragma pressTag
- (void)pressTwoMinute {
    self.timeString = @"两分钟";
    [self setText];
}
- (void)pressFiveMinute {
    self.timeString = @"五分钟";
    [self setText];
}
- (void)pressTenMinute {
    self.timeString = @"十分钟";
    [self setText];
}
- (void)pressThirtyMinute {
    self.timeString = @"三十分钟";
    [self setText];
}
- (void)pressOneHour {
    self.timeString = @"一小时";
    [self setText];
}
- (void)pressThreeHour {
    self.timeString = @"三小时";
    [self setText];
}
- (void)pressOneDay {
    self.timeString = @"一天";
    [self setText];
}
- (void)pressTwoDay {
    self.timeString = @"两天";
    [self setText];
}
- (void)pressSevenDay {
    self.timeString = @"七天";
    [self setText];
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
