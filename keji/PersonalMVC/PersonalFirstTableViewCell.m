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
        
        [self addSubview:self.headImgaeView];
        [self addSubview:self.nameLabel];
        [self addSubview:self.collegeLabel];
        
    }
    return self;
}
- (void)layoutSubviews {
    self.headImgaeView.frame = CGRectMake(<#CGFloat x#>, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>)
}
@end
