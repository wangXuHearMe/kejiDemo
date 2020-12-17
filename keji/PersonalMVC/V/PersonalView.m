//
//  PersonalView.m
//  keji
//
//  Created by 王旭 on 2020/12/13.
//

#import "PersonalView.h"
#import "InformationViewController.h"
@implementation PersonalView
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height) style:UITableViewStyleGrouped];
//        self.tableView.backgroundColor = [UIColor whiteColor];
//        self.tableView.separatorStyle = UITableViewCellSelectionStyleNone;
        [self addSubview:self.tableView];
    }
    return self;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
