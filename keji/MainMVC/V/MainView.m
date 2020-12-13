//
//  MainView.m
//  keji
//
//  Created by 王旭 on 2020/12/5.
//

#import "MainView.h"
#import "Masonry.h"
@implementation MainView
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
        UIImageView *backimageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"B5EF1C3FD90C49A7706DF3C6C1C73031.png"]];
        self.tableView.backgroundView = backimageView;
        self.tableView.separatorStyle = UITableViewCellSelectionStyleNone;
        [self addSubview:self.tableView];
        
        NSDateFormatter *df = [[NSDateFormatter alloc] init];
        [df setDateFormat:@"MM月dd日"];
        self.nowDate = [df stringFromDate:[NSDate date]];
        
        NSDateFormatter *ee = [[NSDateFormatter alloc] init];
        [ee setDateFormat:@"EEEE"];
        self.weekDay = [ee stringFromDate:[NSDate date]];
        
        if ([self.weekDay isEqualToString:@"Thursday"]) {
            self.weekDay = @" 周四";
        } else if ([self.weekDay isEqualToString:@"Monday"]) {
            self.weekDay = @"周一";
        } else if ([self.weekDay isEqualToString:@"Tuesday"]) {
            self.weekDay = @"周二";
        } else if ([self.weekDay isEqualToString:@"Wednesday"]) {
            self.weekDay = @"周三";
        } else if ([self.weekDay isEqualToString:@"Friday"]) {
            self.weekDay = @"周五";
        } else if ([self.weekDay isEqualToString:@"Saturday"]) {
            self.weekDay = @"周六";
        } else if ([self.weekDay isEqualToString:@"Sunday"]) {
            self.weekDay = @"周日";
        }
        self.week = @"第三周";
        self.forWeek = [self.week stringByAppendingString:self.weekDay];
        
        self.addButton = [[UIButton alloc] init];
        self.leftMoreButton = [[UIButton alloc] init];
        self.rightMoreButton = [[UIButton alloc] init];
        self.downloadButton = [[UIButton alloc] init];
        self.shareButton = [[UIButton alloc] init];
        
        self.leftMoreButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        self.addButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        self.downloadButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        self.shareButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        self.rightMoreButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        
        self.timeLabel = [[UILabel alloc] init];
        self.underTimeLabel = [[UILabel alloc] init];
        
        [self.addButton setImage:[UIImage imageNamed:@"jia.png"] forState:UIControlStateNormal];
        [self.leftMoreButton setImage:[UIImage imageNamed:@"更多.png"] forState:UIControlStateNormal];
        [self.downloadButton setImage:[UIImage imageNamed:@"xiazai.png"] forState:UIControlStateNormal];
        [self.shareButton setImage:[UIImage imageNamed:@"share_icon.png"] forState:UIControlStateNormal];
        [self.rightMoreButton setImage:[UIImage imageNamed:@"gengduo.png"] forState:UIControlStateNormal];
        
        self.timeLabel.text = self.nowDate;
        [_timeLabel setFont:[UIFont fontWithName:@"Helvetica-Bold" size:20]];
        self.timeLabel.textColor = [UIColor blackColor];
        
        self.underTimeLabel.text = self.forWeek;
        self.underTimeLabel.textColor = [UIColor blackColor];
        self.underTimeLabel.font = [UIFont systemFontOfSize:13];
        
        [self.addButton setTintColor:[UIColor blackColor]];
        [self.leftMoreButton setTintColor:[UIColor blackColor]];
        [self.downloadButton setTintColor:[UIColor blackColor]];
        [self.shareButton setTintColor:[UIColor blackColor]];
        [self.rightMoreButton setTintColor:[UIColor blackColor]];

        [self addSubview:self.leftMoreButton];
        [self addSubview:self.timeLabel];
        [self addSubview:self.addButton];
        [self addSubview:self.downloadButton];
        [self addSubview:self.shareButton];
        [self addSubview:self.rightMoreButton];
        [self addSubview:self.underTimeLabel];
        
        [_leftMoreButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.tableView.mas_top).offset(40);
            make.left.equalTo(self.tableView.mas_left).offset(self.frame.size.width * 0.02);
            make.size.mas_equalTo(CGSizeMake(self.frame.size.height * 0.01, self.frame.size.height * 0.02));
        }];
        [_addButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.tableView.mas_top).offset(40);
            make.left.equalTo(self.tableView.mas_left).offset(self.frame.size.width * 0.68);
            make.size.mas_equalTo(CGSizeMake(self.frame.size.height * 0.02, self.frame.size.height * 0.02));
        }];
        [_downloadButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.tableView.mas_top).offset(40);
            make.left.equalTo(self.tableView.mas_left).offset(self.frame.size.width * 0.76);
            make.size.mas_equalTo(CGSizeMake(self.frame.size.height * 0.02, self.frame.size.height * 0.02));
        }];
        [_shareButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.tableView.mas_top).offset(42);
            make.left.equalTo(self.tableView.mas_left).offset(self.frame.size.width * 0.84);
            make.size.mas_equalTo(CGSizeMake(self.frame.size.height * 0.02, self.frame.size.height * 0.02));
        }];
        [_rightMoreButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.tableView.mas_top).offset(40);
            make.left.equalTo(self.tableView.mas_left).offset(self.frame.size.width * 0.92);
            make.size.mas_equalTo(CGSizeMake(self.frame.size.height * 0.02, self.frame.size.height * 0.024));
        }];
        [_timeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.tableView.mas_top).offset(40);
            make.left.equalTo(self.tableView.mas_left).offset(self.frame.size.width * 0.08);
            make.size.mas_equalTo(CGSizeMake(self.frame.size.width * 0.25, self.frame.size.height * 0.025));
        }];
        [_underTimeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.tableView.mas_top).offset(40 + self.frame.size.height * 0.035);
            make.left.equalTo(self.tableView.mas_left).offset(self.frame.size.width * 0.09);
            make.size.mas_equalTo(CGSizeMake(self.frame.size.width * 0.25, self.frame.size.height * 0.025));
        }];
    }
    return self;
}
@end
