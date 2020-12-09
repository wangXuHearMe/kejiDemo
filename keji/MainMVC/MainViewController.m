//
//  MainViewController.m
//  keji
//
//  Created by 王旭 on 2020/12/5.
//

#import "MainViewController.h"
#import "MoreViewController.h"
@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.mainView = [[MainView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:self.mainView];
    [self.mainView.leftMoreButton addTarget:self action:@selector(pressLeft) forControlEvents:UIControlEventTouchUpInside];
}
- (void)pressLeft {
    MoreViewController *moreViewController = [[MoreViewController alloc] init];
    moreViewController.modalPresentationStyle = UIModalPresentationCustom;
    [self presentViewController:moreViewController animated:YES completion:nil];
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
