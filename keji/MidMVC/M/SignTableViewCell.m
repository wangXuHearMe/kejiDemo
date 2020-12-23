//
//  SignTableViewCell.m
//  keji
//
//  Created by 王旭 on 2020/12/22.
//

#import "SignTableViewCell.h"

@implementation SignTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.signLabel = [[UILabel alloc] init];
        self.typeImageView = [[UIImageView alloc] init];
        self.typeLabel = [[UILabel alloc] init];
        self.typeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        self.timeImageView = [[UIImageView alloc] init];
        self.timeLabel = [[UILabel alloc] init];
        self.detailButton = [UIButton buttonWithType:UIButtonTypeCustom];
        self.signButton = [UIButton buttonWithType:UIButtonTypeCustom];
        
        [self.contentView addSubview:self.signLabel];
        [self addSubview:self.typeImageView];
        [self addSubview:self.typeLabel];
        [self addSubview:self.typeButton];
        [self addSubview:self.timeImageView];
        [self addSubview:self.timeLabel];
        [self.contentView addSubview:self.detailButton];
        [self.contentView addSubview:self.signButton];
    }
    return self;
}
- (void)layoutSubviews {
    self.signLabel.frame = CGRectMake(20, 10, 200, 40);
    self.signLabel.font = [UIFont systemFontOfSize:20];
    self.signLabel.textColor = [UIColor blackColor];
    
    [self.typeImageView setImage:[UIImage imageNamed:@"标签 (2)"]];
    self.typeImageView.frame = CGRectMake(20, 55, 20, 20);
    
    self.typeLabel.frame = CGRectMake(50, 55, 100, 20);
    self.typeLabel.font = [UIFont systemFontOfSize:15];
    self.typeLabel.textColor = [UIColor colorWithRed:119/255.0 green:119/255.0 blue:119/255.0 alpha:1];
    
    self.typeButton.frame = CGRectMake(250, 60, 80, 20);
    
    [self.timeImageView setImage:[UIImage imageNamed:@"shizhong (1)"]];
    self.timeImageView.frame = CGRectMake(20, 75, 20, 20);
    
    self.timeLabel.frame = CGRectMake(50, 80, self.frame.size.width * 0.8, 20);
    self.timeLabel.font = [UIFont systemFontOfSize:15];
    self.timeLabel.textColor = [UIColor colorWithRed:119/255.0 green:119/255.0 blue:119/255.0 alpha:1];
    
    self.detailButton.frame = CGRectMake(20, 110, 150, 30);
    self.detailButton.backgroundColor = [UIColor colorWithRed:241/255.0 green:239/255.0 blue:239/255.0 alpha:1];
    
    self.signButton.frame = CGRectMake(170, 110, 190, 30);
    self.signButton.backgroundColor = [UIColor colorWithRed:241/255.0 green:239/255.0 blue:239/255.0 alpha:1];
}
@end
