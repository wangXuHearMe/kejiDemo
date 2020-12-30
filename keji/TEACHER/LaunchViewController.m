//
//  LaunchViewController.m
//  keji
//
//  Created by 王旭 on 2020/12/30.
//

#import "LaunchViewController.h"

@interface LaunchViewController ()

@end

@implementation LaunchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setNav];
    [self setUI];
}
- (void)setNav {
    UITabBarItem* tabBarItem = [UITabBarItem new];
//    tabBarItem.image = [[UIImage imageNamed:@"xiazai.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    tabBarItem.selectedImage = [[UIImage imageNamed:@"xiazai.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    tabBarItem.title = @"发起签到";
    self.tabBarItem = tabBarItem;
    
    self.navigationItem.title = @"发起签到";
}
- (void)setUI {
    self.view.backgroundColor = [UIColor colorWithRed:240/255.0 green:240/255.0 blue:246/255.0 alpha:1];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, 20, self.view.frame.size.width - 30, self.view.frame.size.height * 0.4) style:UITableViewStyleGrouped];
//    self.tableView.backgroundColor = [UIColor whiteColor];
    self.tableView.tableHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0, 20, 0, CGFLOAT_MIN)];
    [self.view addSubview:self.tableView];
    self.timeLimitButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.startTimeButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.launchSignButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
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
