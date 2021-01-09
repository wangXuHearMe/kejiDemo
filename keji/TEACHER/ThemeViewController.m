//
//  ThemeViewController.m
//  keji
//
//  Created by 王旭 on 2021/1/9.
//

#import "ThemeViewController.h"

@interface ThemeViewController ()

@end

@implementation ThemeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height * 0.65, self.view.frame.size.width, self.view.frame.size.height * 0.35)];
    self.tableView.backgroundColor = [UIColor whiteColor];
    self.tableView.separatorStyle = 0;
    [self.view addSubview:self.tableView];
    [self setButton];
}
- (void)setButton {
    self.cancelButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.sureButton = [UIButton buttonWithType:UIButtonTypeCustom];
    
    self.cancelButton.frame = CGRectMake((self.view.frame.size.width - 140)/3, 230, 100, 40);
    self.cancelButton.backgroundColor = [UIColor colorWithRed:240/255.0 green:240/255.0 blue:246/255.0 alpha:1];
    [self.cancelButton setTitle:@"取消" forState:UIControlStateNormal];
    self.cancelButton.titleLabel.tintColor = [UIColor colorWithRed:80/255.0 green:173/255.0 blue:87/255.0 alpha:1];
    self.cancelButton.titleLabel.font = [UIFont systemFontOfSize:15];
    [self.tableView addSubview:self.cancelButton];
 
    
}
- (void)pressBack {
    
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
