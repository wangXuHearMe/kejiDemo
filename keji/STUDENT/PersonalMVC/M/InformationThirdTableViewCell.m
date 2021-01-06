//
//  InformationThirdTableViewCell.m
//  keji
//
//  Created by 王旭 on 2020/12/21.
//

#import "InformationThirdTableViewCell.h"

@implementation InformationThirdTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.mainLabel = [[UILabel alloc] init];
        self.strLabel = [[UILabel alloc] init];
        self.mainImageView = [[UIImageView alloc] init];
        
        [self.contentView addSubview:self.mainImageView];
        [self.contentView addSubview:self.strLabel];
        [self.contentView addSubview:self.mainLabel];
    }
    return self;
}
- (void)layoutSubviews {
    [super layoutSubviews];
    
    self.mainLabel.frame = CGRectMake(10, 10, 60, 30);
    self.mainLabel.font = [UIFont systemFontOfSize:17];
    self.mainLabel.textColor = [UIColor blackColor];
    self.strLabel.frame = CGRectMake(80, 10, 200, 30);
    self.strLabel.font = [UIFont systemFontOfSize:17];
    self.mainImageView.frame = CGRectMake(self.frame.size.width * 0.85, 10, 25, 25);
}

@end
