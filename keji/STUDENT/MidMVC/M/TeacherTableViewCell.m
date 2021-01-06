//
//  TeacherTableViewCell.m
//  keji
//
//  Created by 王旭 on 2020/12/29.
//

#import "TeacherTableViewCell.h"

@implementation TeacherTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.touxiangImageView = [[UIImageView alloc] init];
        self.teacherNameLabel = [[UILabel alloc] init];
        self.teacherTypeLabel = [[UILabel alloc] init];
        
        [self.contentView addSubview:self.touxiangImageView];
        [self.contentView addSubview:self.teacherNameLabel];
        [self.contentView addSubview:self.teacherTypeLabel];
    }
    return self;
}
- (void)layoutSubviews {
    [super layoutSubviews];
    self.touxiangImageView.frame = CGRectMake(20, 15, 50, 50);
    
    self.teacherNameLabel.textColor = [UIColor blackColor];
    self.teacherNameLabel.font = [UIFont systemFontOfSize:18];
    self.teacherNameLabel.frame = CGRectMake(85, 15, 100, 20);
    
    self.teacherTypeLabel.textColor = [UIColor colorWithRed:119/255.0 green:119/255.0 blue:119/255.0 alpha:1];
    self.teacherTypeLabel.font = [UIFont systemFontOfSize:16];
    self.teacherTypeLabel.frame = CGRectMake(85, 45, 100, 15);
}
@end
