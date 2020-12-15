//
//  WeekViewController.m
//  keji
//
//  Created by 王旭 on 2020/12/10.
//

#import "WeekViewController.h"

@interface WeekViewController ()

@end

@implementation WeekViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.backgroundColor = [UIColor whiteColor];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(self.view.frame.size.width * 0.05, self.view.frame.size.height * 0.55, self.view.frame.size.width * 0.9, self.view.frame.size.height * 0.4 - 60) style:UITableViewStylePlain];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.layer.cornerRadius = 5;
    self.tableView.layer.masksToBounds = YES;
    [self setUI];
    [self.view addSubview:self.tableView];
}
- (void)setUI {
    self.weekLabel = [[UILabel alloc] init];
    self.changeButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    self.weekLabel.text = @"周数";
    self.weekLabel.textColor = [UIColor grayColor];
    self.weekLabel.font = [UIFont systemFontOfSize:13];
    self.weekLabel.frame = CGRectMake(self.tableView.frame.size.width * 0.06, self.tableView.frame.size.width * 0.06, 30, 20);
    [self.tableView addSubview:self.weekLabel];
    
    [self.changeButton setTitle:@"修改当前周" forState:UIControlStateNormal];
    [self.changeButton addTarget:self action:@selector(pressChange) forControlEvents:UIControlEventTouchUpInside];
    [self.changeButton setTitleColor:[UIColor purpleColor] forState:UIControlStateNormal];
    [self.changeButton setFrame:CGRectMake(self.tableView.frame.size.width * 0.67, self.tableView.frame.size.width * 0.02, 100, 35)];
    self.changeButton.layer.borderColor = [[UIColor grayColor] CGColor];
    self.changeButton.layer.masksToBounds = YES;
    self.changeButton.layer.borderWidth = 1.0f;
    [self.tableView addSubview:self.changeButton];
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self dismissViewControllerAnimated:NO completion:nil];
}
- (void)pressChange {
    
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
