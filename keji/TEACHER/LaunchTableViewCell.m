//
//  LaunchTableViewCell.m
//  keji
//
//  Created by 王旭 on 2020/12/30.
//

#import "LaunchTableViewCell.h"

@implementation LaunchTableViewCell

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
    self.firstLabel.textColor = [UIColor blackColor];
    self.firstLabel.frame = CGRectMake(0, 10, 100, 100);
}
@end
