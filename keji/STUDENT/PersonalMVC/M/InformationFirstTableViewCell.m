//
//  InformationFirstTableViewCell.m
//  keji
//
//  Created by 王旭 on 2020/12/17.
//

#import "InformationFirstTableViewCell.h"

@implementation InformationFirstTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.mainLabel = [[UILabel alloc] init];
        self.mainImageview = [[UIImageView alloc] init];
        
        [self addSubview:self.mainLabel];
        [self addSubview:self.mainImageview];
    }
    return self;
}
- (void)layoutSubviews {
    [super layoutSubviews];
    
    self.mainLabel.text = @"头像";
    self.mainLabel.font = [UIFont systemFontOfSize:17];
    self.mainLabel.frame = CGRectMake(10, 15, 100, 30);
    self.mainLabel.textColor = [UIColor blackColor];
    
    self.mainImageview.frame = CGRectMake(self.frame.size.width * 0.8, 10, 50, 50);
}
@end
