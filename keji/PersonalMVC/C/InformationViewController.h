//
//  InformationViewController.h
//  keji
//
//  Created by 王旭 on 2020/12/17.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface InformationViewController : UIViewController
<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UIButton *sureButton;
@property bool isBegan;
@end

NS_ASSUME_NONNULL_END
