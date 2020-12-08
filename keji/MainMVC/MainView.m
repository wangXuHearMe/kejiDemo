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
    }
    return self;
}
@end
