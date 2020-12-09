//
//  MainView.m
//  keji
//
//  Created by 王旭 on 2020/12/5.
//

#import "MainView.h"
#import "Masonry.h"
@implementation MainView
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
        UIImageView *backimageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"B5EF1C3FD90C49A7706DF3C6C1C73031.png"]];
        self.tableView.backgroundView = backimageView;
        [self addSubview:self.tableView];
        
        self.addButton = [[UIButton alloc] init];
        self.leftMoreButton = [[UIButton alloc] init];
        self.rightMoreButton = [[UIButton alloc] init];
        self.downloadButton = [[UIButton alloc] init];
        self.shareButton = [[UIButton alloc] init];
        
        self.leftMoreButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        self.addButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        self.downloadButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        self.shareButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        self.rightMoreButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        
        self.timeLabel = [[UILabel alloc] init];
        self.underTimeLabel = [[UILabel alloc] init];
        
        [self.addButton setImage:[UIImage imageNamed:@"jia.png"] forState:UIControlStateNormal];
        [self.leftMoreButton setImage:[UIImage imageNamed:@"gengduo-2.png"] forState:UIControlStateNormal];
        [self.downloadButton setImage:[UIImage imageNamed:@"xiazai.png"] forState:UIControlStateNormal];
        [self.shareButton setImage:[UIImage imageNamed:@"share_icon.png"] forState:UIControlStateNormal];
        [self.rightMoreButton setImage:[UIImage imageNamed:@"gengduo.png"] forState:UIControlStateNormal];
        
        [self addSubview:self.leftMoreButton];
        [self addSubview:self.timeLabel];
        [self addSubview:self.addButton];
        [self addSubview:self.downloadButton];
        [self addSubview:self.shareButton];
        [self addSubview:self.rightMoreButton];
        [self addSubview:self.underTimeLabel];
    }
    return self;
}
@end
