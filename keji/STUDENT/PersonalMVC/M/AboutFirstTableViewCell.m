//
//  AboutFirstTableViewCell.m
//  keji
//
//  Created by 王旭 on 2020/12/16.
//

#import "AboutFirstTableViewCell.h"

@implementation AboutFirstTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.sugLabel = [[UILabel alloc] init];
        self.rightImageView = [[UIImageView alloc] init];
        
        [self addSubview:self.sugLabel];
        [self addSubview:self.rightImageView];
    }
    return self;
}
- (void)layoutSubviews {
    [super layoutSubviews];
    
    self.sugLabel.text = @"建议与反馈";
    self.sugLabel.textColor = [UIColor blackColor];
    self.sugLabel.font = [UIFont systemFontOfSize:14];
    self.sugLabel.frame = CGRectMake(10, 5, 200, 25);
    
    self.rightImageView.frame = CGRectMake(self.frame.size.width * 0.9, 5, 25, 25);
    self.rightImageView.image = [UIImage imageNamed:@"youjiantou.png"];
}
@end
