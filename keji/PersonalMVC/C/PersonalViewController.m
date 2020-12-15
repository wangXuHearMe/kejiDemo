//
//  PersonalViewController.m
//  keji
//
//  Created by 王旭 on 2020/12/13.
//

#import "PersonalViewController.h"
#import "InformationTableViewController.h"
@interface PersonalViewController ()

@end

@implementation PersonalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UITabBarItem* tabBarItem = [UITabBarItem new];
//    tabBarItem.image = [[UIImage imageNamed:@"xiazai.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    tabBarItem.selectedImage = [[UIImage imageNamed:@"xiazai.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    tabBarItem.title = @"个人中心";
    self.tabBarItem = tabBarItem;
    
    self.navigationItem.title = @"个人中心";
    self.personalView = [[PersonalView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:self.personalView];
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        InformationTableViewController *viewController = [[InformationTableViewController alloc] init];
        viewController.modalPresentationStyle = 0;
        [self presentViewController:viewController animated:YES completion:nil];
    } else {

    }
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
