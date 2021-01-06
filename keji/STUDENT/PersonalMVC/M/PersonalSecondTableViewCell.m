//
//  PersonalSecondTableViewCell.m
//  keji
//
//  Created by 王旭 on 2020/12/14.
//

#import "PersonalSecondTableViewCell.h"

@implementation PersonalSecondTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        self.aboutImageView = [[UIImageView alloc] init];
        self.aboutLabel = [[UILabel alloc] init];
        self.rightImageView = [[UIImageView alloc] init];
        
        [self addSubview:self.aboutImageView];
        [self addSubview:self.aboutLabel];
        [self addSubview:self.rightImageView];
    }
    return self;
}
- (void)layoutSubviews {
    [super layoutSubviews];
    
    self.aboutImageView.frame = CGRectMake(10, 12, 25, 25);
    [self.aboutImageView setImage:[UIImage imageNamed:@"关于.png"]];
    self.aboutLabel.frame = CGRectMake(55, 10, 100, 30);
    self.aboutLabel.font = [UIFont systemFontOfSize:16];
    self.aboutLabel.text = @"关于";
    self.rightImageView.frame = CGRectMake(self.frame.size.width * 0.9, 10, 30, 30);
    [self.rightImageView setImage:[UIImage imageNamed:@"youjiantou.png"]];
}

@end
