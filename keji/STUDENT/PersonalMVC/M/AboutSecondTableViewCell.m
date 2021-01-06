//
//  AboutSecondTableViewCell.m
//  keji
//
//  Created by 王旭 on 2020/12/16.
//

#import "AboutSecondTableViewCell.h"

@implementation AboutSecondTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.numberLabel = [[UILabel alloc] init];
        self.selfLabel = [[UILabel alloc] init];
        
        [self addSubview:self.numberLabel];
        [self addSubview:self.selfLabel];
    }
    return self;
}
- (void)layoutSubviews {
    [super layoutSubviews];
    
    self.selfLabel.frame = CGRectMake(10, 5, 200, 25);
    self.selfLabel.font = [UIFont systemFontOfSize:14];
    self.selfLabel.text = @"本机版本";
    self.numberLabel.frame = CGRectMake(self.frame.size.width * 0.9, 5, 40, 25);
    self.numberLabel.font = [UIFont systemFontOfSize:14];
    self.numberLabel.text = @"4.5";
}
@end
