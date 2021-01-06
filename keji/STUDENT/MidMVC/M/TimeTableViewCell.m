//
//  TimeTableViewCell.m
//  keji
//
//  Created by 王旭 on 2020/12/29.
//

#import "TimeTableViewCell.h"

@implementation TimeTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.typeImageView = [[UIImageView alloc] init];
        self.startImageView = [[UIImageView alloc] init];
        self.stopImageView = [[UIImageView alloc] init];
        self.typeLabel = [[UILabel alloc] init];
        self.startTimeLabel = [[UILabel alloc] init];
        self.stopTimeLabel = [[UILabel alloc] init];
        
        [self.contentView addSubview:self.typeImageView];
        [self.contentView addSubview:self.startImageView];
        [self.contentView addSubview:self.stopImageView];
        [self.contentView addSubview:self.typeLabel];
        [self.contentView addSubview:self.startTimeLabel];
        [self.contentView addSubview:self.stopTimeLabel];
    }
    return self;
}
- (void)layoutSubviews {
    [super layoutSubviews];
    [self.typeImageView setImage:[UIImage imageNamed:@"标签 (2)"]];
    [self.startImageView setImage:[UIImage imageNamed:@"开始时间1"]];
    [self.stopImageView setImage:[UIImage imageNamed:@"结束时间1"]];
    
    self.typeImageView.frame = CGRectMake(20, 10, 20, 20);
    self.startImageView.frame = CGRectMake(20, 40, 20, 20);
    self.stopImageView.frame = CGRectMake(20, 70, 20, 20);
    
    self.typeLabel.textColor = [UIColor colorWithRed:119/255.0 green:119/255.0 blue:119/255.0 alpha:1];
    self.startTimeLabel.textColor = [UIColor colorWithRed:119/255.0 green:119/255.0 blue:119/255.0 alpha:1];
    self.stopTimeLabel.textColor = [UIColor colorWithRed:119/255.0 green:119/255.0 blue:119/255.0 alpha:1];
    
    self.typeLabel.font = [UIFont systemFontOfSize:16];
    self.startTimeLabel.font = [UIFont systemFontOfSize:16];
    self.stopTimeLabel.font = [UIFont systemFontOfSize:16];
    
    self.typeLabel.frame = CGRectMake(50, 10, 100, 20);
    self.startTimeLabel.frame = CGRectMake(50, 40, 200, 20);
    self.stopTimeLabel.frame = CGRectMake(50, 70, 200, 20);
}
@end
