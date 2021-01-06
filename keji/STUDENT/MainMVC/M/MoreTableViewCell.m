//
//  MoreTableViewCell.m
//  keji
//
//  Created by 王旭 on 2020/12/9.
//

#import "MoreTableViewCell.h"

@implementation MoreTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    self.labelone = [[UILabel alloc] init];
    
    [self.contentView addSubview:self.labelone];
    
    return self;
}
- (void)layoutSubviews {
    [super layoutSubviews];
    
    self.labelone.font = [UIFont systemFontOfSize:14];
    self.labelone.textColor = [UIColor blackColor];
    self.labelone.frame = CGRectMake(20, 10, 200, 40);
}
@end
