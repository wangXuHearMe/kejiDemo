//
//  SexTableViewCell.m
//  keji
//
//  Created by 王旭 on 2020/12/21.
//

#import "SexTableViewCell.h"

@implementation SexTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.tatLabel = [[UILabel alloc] init];
        [self addSubview:self.tatLabel];
    }
    return self;
}
- (void)layoutSubviews {
    [super layoutSubviews];
    
    self.tatLabel.font = [UIFont systemFontOfSize:20];
    self.tatLabel.frame = CGRectMake(110, 10, 150, 25);
    self.tatLabel.textAlignment = NSTextAlignmentCenter;
    self.tatLabel.textColor = [UIColor blackColor];
}
@end
