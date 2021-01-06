//
//  PosterTableViewCell.m
//  keji
//
//  Created by 王旭 on 2020/12/29.
//

#import "PosterTableViewCell.h"

@implementation PosterTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.shangkeLabel = [[UILabel alloc] init];
        self.posterLabel = [[UILabel alloc] init];
        
        [self.contentView addSubview:self.shangkeLabel];
        [self.contentView addSubview:self.posterLabel];
    }
    return self;
}
- (void)layoutSubviews {
    [super layoutSubviews];
    
    self.shangkeLabel.font = [UIFont systemFontOfSize:20];
    self.shangkeLabel.textColor = [UIColor blackColor];
    self.shangkeLabel.frame = CGRectMake(20, 10, 100, 30);
    
    self.posterLabel.font = [UIFont systemFontOfSize:17];
    self.posterLabel.textColor = [UIColor colorWithRed:119/255.0 green:119/255.0 blue:119/255.0 alpha:1];
    self.posterLabel.frame = CGRectMake(20, 55, 350, 30);
    self.posterLabel.numberOfLines = 0;
}
@end
