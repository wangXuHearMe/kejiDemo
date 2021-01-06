//
//  PersonalFirstTableViewCell.m
//  keji
//
//  Created by 王旭 on 2020/12/13.
//

#import "PersonalFirstTableViewCell.h"

@implementation PersonalFirstTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        self.headImgaeView = [[UIImageView alloc] init];
        self.nameLabel = [[UILabel alloc] init];
        self.collegeLabel = [[UILabel alloc] init];
        self.rightImageView = [[UIImageView alloc] init];
        
        [self addSubview:self.headImgaeView];
        [self addSubview:self.nameLabel];
        [self addSubview:self.collegeLabel];
        [self addSubview:self.rightImageView];
        
    }
    return self;
}
- (void)layoutSubviews {
    [super layoutSubviews];
    
    self.headImgaeView.frame = CGRectMake(10, 10, 50, 50);
    self.nameLabel.frame = CGRectMake(70, 10, 100, 30);
    self.nameLabel.font = [UIFont systemFontOfSize:16];
    self.collegeLabel.frame = CGRectMake(70, 30, 200, 30);
    self.collegeLabel.font = [UIFont systemFontOfSize:14];
    self.rightImageView.frame = CGRectMake(self.frame.size.width * 0.9, 20, 30, 30);
    [self.rightImageView setImage:[UIImage imageNamed:@"youjiantou.png"]];
}
@end
