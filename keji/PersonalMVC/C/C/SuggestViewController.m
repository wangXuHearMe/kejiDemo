//
//  SuggestViewController.m
//  keji
//
//  Created by 王旭 on 2020/12/17.
//

#import "SuggestViewController.h"
#import "PictureViewController.h"
@interface SuggestViewController ()

@end

@implementation SuggestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"建议与反馈";
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"zuojiantou.png"] style:UIBarButtonItemStyleDone target:self action:@selector(pressBack)];
    backButton.tintColor = [UIColor blackColor];
    [self.navigationItem setLeftBarButtonItem:backButton];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStyleGrouped];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.view addSubview:self.tableView];
    [self setUI];
}
- (void)setUI {
    self.suggestTextField = [[UITextField alloc] initWithFrame:CGRectMake(10, 0, self.view.frame.size.width-20, self.view.frame.size.height * 0.18)];
    self.suggestTextField.backgroundColor = [UIColor whiteColor];
    self.suggestTextField.keyboardType = UIKeyboardTypeDefault;
    [self.tableView addSubview:self.suggestTextField];
    self.addButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.addButton setImage:[UIImage imageNamed:@"jiahao.png"] forState:UIControlStateNormal];
    self.addButton.frame = CGRectMake(10, self.view.frame.size.height*0.20, 45, 45);
    self.addButton.backgroundColor = [UIColor colorWithRed:236/255.0 green:233/255.0 blue:233/255.0 alpha:1];
    self.addButton.imageEdgeInsets = UIEdgeInsetsMake(7, 7, 7, 7);
    [self.addButton addTarget:self action:@selector(pressAdd) forControlEvents:UIControlEventTouchUpInside];
    [self.tableView addSubview:self.addButton];
    self.sureButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.sureButton setTitle:@"提交" forState:UIControlStateNormal];
    self.sureButton.frame = CGRectMake(30, self.view.frame.size.height*0.32, self.view.frame.size.width - 60, 45);
    self.sureButton.backgroundColor = [UIColor colorWithRed:80/255.0 green:173/255.0 blue:87/255.0 alpha:1];
    self.sureButton.titleLabel.font = [UIFont systemFontOfSize:19];
    self.sureButton.titleLabel.tintColor = [UIColor whiteColor];
    [self.sureButton addTarget:self action:@selector(pressSure) forControlEvents:UIControlEventTouchUpInside];
    [self.tableView addSubview:self.sureButton];
}
- (void)pressSure {
    
}
- (void)pressAdd {
    PictureViewController *viewController = [[PictureViewController alloc] init];
    viewController.modalPresentationStyle = UIModalPresentationCustom;
    [self presentViewController:viewController animated:YES completion:nil];
}
- (void)pressBack {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [_suggestTextField resignFirstResponder];   
    return YES;
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
