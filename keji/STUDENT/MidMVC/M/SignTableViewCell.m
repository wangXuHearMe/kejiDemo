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
        self.colorButton = [UIButton buttonWithType:UIButtonTypeCustom];
        self.signLabel = [[UILabel alloc] init];
        self.typeImageView = [[UIImageView alloc] init];
        self.typeLabel = [[UILabel alloc] init];
        self.typeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        self.timeImageView = [[UIImageView alloc] init];
        self.timeLabel = [[UILabel alloc] init];
        self.detailButton = [UIButton buttonWithType:UIButtonTypeCustom];
        self.signButton = [UIButton buttonWithType:UIButtonTypeCustom];
        
        [self.contentView addSubview:self.colorButton];
        [self.contentView addSubview:self.signLabel];
        [self.contentView addSubview:self.typeImageView];
        [self.contentView addSubview:self.typeLabel];
        [self.contentView addSubview:self.typeButton];
        [self.contentView addSubview:self.timeImageView];
        [self.contentView addSubview:self.timeLabel];
        [self.contentView addSubview:self.detailButton];
        [self.contentView addSubview:self.signButton];
    }
    return self;
}
- (void)layoutSubviews {
    [super layoutSubviews];
    self.colorButton.frame = CGRectMake(5, 0, 10, 140);
    
    self.signLabel.frame = CGRectMake(25, 5, 200, 40);
    self.signLabel.font = [UIFont systemFontOfSize:20];
    self.signLabel.textColor = [UIColor blackColor];
    
    [self.typeImageView setImage:[UIImage imageNamed:@"标签 (2)"]];
    self.typeImageView.frame = CGRectMake(25, 50, 20, 20);
    
    self.typeLabel.frame = CGRectMake(55, 50, 100, 20);
    self.typeLabel.font = [UIFont systemFontOfSize:15];
    self.typeLabel.textColor = [UIColor colorWithRed:119/255.0 green:119/255.0 blue:119/255.0 alpha:1];
    
    self.typeButton.frame = CGRectMake(255, 50, 65, 20);
    
    [self.timeImageView setImage:[UIImage imageNamed:@"shizhong (1)"]];
    self.timeImageView.frame = CGRectMake(25, 80, 20, 20);
    
    self.timeLabel.frame = CGRectMake(55, 80, self.frame.size.width * 0.8, 20);
    self.timeLabel.font = [UIFont systemFontOfSize:14];
    self.timeLabel.textColor = [UIColor colorWithRed:119/255.0 green:119/255.0 blue:119/255.0 alpha:1];
    
    self.detailButton.frame = CGRectMake(15, 110, 155, 30);
    self.detailButton.backgroundColor = [UIColor colorWithRed:241/255.0 green:239/255.0 blue:239/255.0 alpha:1];
    
    self.signButton.frame = CGRectMake(170, 110, 190, 30);
    self.signButton.backgroundColor = [UIColor colorWithRed:241/255.0 green:239/255.0 blue:239/255.0 alpha:1];
}
@end
