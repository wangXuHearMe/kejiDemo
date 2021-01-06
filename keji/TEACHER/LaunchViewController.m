//
//  LaunchViewController.m
//  keji
//
//  Created by 王旭 on 2020/12/30.
//

#import "LaunchViewController.h"
#import "LaunchTableViewCell.h"
#import "LaunchTwoTableViewCell.h"
@interface LaunchViewController ()

@end

@implementation LaunchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setNav];
    [self setUI];
    [self setString];
}
- (void)setNav {
    UITabBarItem* tabBarItem = [UITabBarItem new];
//    tabBarItem.image = [[UIImage imageNamed:@"xiazai.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    tabBarItem.selectedImage = [[UIImage imageNamed:@"xiazai.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    tabBarItem.title = @"发起签到";
    self.tabBarItem = tabBarItem;
    
    self.navigationItem.title = @"发起签到";
}
- (void)setString {
    self.zhutiString = @"主题";
    self.mingdanString = @"名单";
    self.shuomingString = @"说明";
    self.weizhiString = @"位置";
    self.isZhuti = NO;
    self.isMingdan = NO;
    self.isShuoming = NO;
    self.isWeizhi = NO;
}
- (void)setUI {
    self.view.backgroundColor = [UIColor colorWithRed:240/255.0 green:240/255.0 blue:246/255.0 alpha:1];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, 50, self.view.frame.size.width - 30, self.view.frame.size.height * 0.4) style:UITableViewStyleGrouped];
//    self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.tableHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0, 20, 0, CGFLOAT_MIN)];
    [self.tableView registerClass:[LaunchTableViewCell class] forCellReuseIdentifier:@"cell1"];
    [self.tableView registerClass:[LaunchTwoTableViewCell class] forCellReuseIdentifier:@"cell2"];
    self.tableView.layer.cornerRadius = 5;
    self.tableView.layer.masksToBounds = YES;
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
    self.timeLimitButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.startTimeButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.launchSignButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 3;
    } else {
        return 2;
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 50;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0.005;
}
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0,0, 320,0.005)];
    view.backgroundColor = [UIColor clearColor];
    return view;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 0.005;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        LaunchTableViewCell *cell1 = [tableView dequeueReusableCellWithIdentifier:@"cell1" forIndexPath:indexPath];
        cell1.contentView.backgroundColor = [UIColor whiteColor];
        cell1.selectionStyle = 0;
        if (indexPath.row == 0) {
            cell1.firstLabel.text = @"签到主题";
            cell1.secondLabel.text = self.zhutiString;
            if (self.isZhuti == NO) {
                cell1.secondLabel.textColor = [UIColor grayColor];
            } else {
                cell1.secondLabel.textColor = [UIColor blackColor];
            }
            return cell1;
        } else if (indexPath.row == 1) {
            cell1.firstLabel.text = @"签到说明";
            cell1.secondLabel.text = self.shuomingString;
            if (self.isShuoming == NO) {
                cell1.secondLabel.textColor = [UIColor grayColor];
            } else {
                cell1.secondLabel.textColor = [UIColor blackColor];
            }
            return cell1;
        } else if (indexPath.row == 2) {
            cell1.firstLabel.text = @"名单选择";
            cell1.secondLabel.text = self.mingdanString;
            if (self.isMingdan == NO) {
                cell1.secondLabel.textColor = [UIColor grayColor];
            } else {
                cell1.secondLabel.textColor = [UIColor blackColor];
            }
            return cell1;
        }
    } else if (indexPath.section == 1) {
        if (indexPath.row == 0) {
            LaunchTwoTableViewCell *cell2 = [tableView dequeueReusableCellWithIdentifier:@"cell2" forIndexPath:indexPath];
            cell2.contentView.backgroundColor = [UIColor whiteColor];
            cell2.firstLabel.text = @"签到类型";
            cell2.selectionStyle = 0;
            return cell2;
        } else if (indexPath.row == 1) {
            LaunchTableViewCell *cell2 = [tableView dequeueReusableCellWithIdentifier:@"cell1" forIndexPath:indexPath];
            cell2.contentView.backgroundColor = [UIColor whiteColor];
            cell2.selectionStyle = 0;
            cell2.firstLabel.text = @"签到位置";
            cell2.secondLabel.text = self.weizhiString;
            if (self.isWeizhi == NO) {
                cell2.secondLabel.textColor = [UIColor grayColor];
            } else {
                cell2.secondLabel.textColor = [UIColor blackColor];
            }
            return cell2;
        }
    }
    return 0;
}
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    cell.backgroundColor = [UIColor clearColor];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
