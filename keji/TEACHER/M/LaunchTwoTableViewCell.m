//
//  LaunchTwoTableViewCell.m
//  keji
//
//  Created by 王旭 on 2021/1/6.
//

#import "LaunchTwoTableViewCell.h"

@implementation LaunchTwoTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.firstLabel = [[UILabel alloc] init];
        self.secondLabel = [[UILabel alloc] init];
        self.jumpImageView = [[UIImageView alloc] init];
        
        [self.contentView addSubview:self.firstLabel];
        [self.contentView addSubview:self.secondLabel];
        [self.contentView addSubview:self.jumpImageView];
    }
    return self;
}
- (void)layoutSubviews {
    [super layoutSubviews];
    
    self.firstLabel.textColor = [UIColor blackColor];
    self.firstLabel.frame = CGRectMake(10, 10, 100, 30);
    self.firstLabel.font = [UIFont systemFontOfSize:17];
    
    self.secondLabel.text = @"人脸识别 定位签到";
    self.secondLabel.textColor = [UIColor blackColor];
    self.secondLabel.frame = CGRectMake(185, 10, 140, 30);
    self.secondLabel.font = [UIFont systemFontOfSize:14];
    
    self.jumpImageView.frame = CGRectMake(310, 10, 25, 25);
    [self.jumpImageView setImage:[UIImage imageNamed:@"youjiantou.png"]];
}

@end
