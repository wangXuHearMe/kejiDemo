//
//  PersonalView.m
//  keji
//
//  Created by 王旭 on 2020/12/13.
//

#import "PersonalView.h"
#import "InformationTableViewController.h"
@implementation PersonalView
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height) style:UITableViewStyleGrouped];
//        self.tableView.backgroundColor = [UIColor whiteColor];
//        self.tableView.separatorStyle = UITableViewCellSelectionStyleNone;
        [self.tableView registerClass:[PersonalFirstTableViewCell class] forCellReuseIdentifier:@"cell1"];
        [self.tableView registerClass:[PersonalSecondTableViewCell class] forCellReuseIdentifier:@"cell2"];
        self.tableView.delegate = self;
        self.tableView.dataSource = self;
        [self addSubview:self.tableView];
    }
    return self;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        return 70;
    } else {
        return 50;
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 0;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        PersonalFirstTableViewCell *cell1 = [tableView dequeueReusableCellWithIdentifier:@"cell1" forIndexPath:indexPath];
        [cell1.headImgaeView setImage:[UIImage imageNamed:@"tx.jpg"]];
        cell1.nameLabel.text = @"马六";
        cell1.nameLabel.textColor = [UIColor blackColor];
        cell1.collegeLabel.text = @"计算机学院";
        cell1.collegeLabel.textColor = [UIColor grayColor];
        cell1.backgroundColor = [UIColor whiteColor];
        cell1.selectionStyle = 0;
        return cell1;
    } else {
        PersonalSecondTableViewCell *cell2 = [tableView dequeueReusableCellWithIdentifier:@"cell2" forIndexPath:indexPath];
        cell2.backgroundColor = [UIColor whiteColor];
        cell2.selectionStyle = 0;
        return cell2;
    }
    return 0;
}
//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//    if (indexPath.section == 0) {
//        InformationTableViewController *viewController = [[InformationTableViewController alloc] init];
//        viewController.modalPresentationStyle = 0;
//    } else {
//
//    }
//}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
