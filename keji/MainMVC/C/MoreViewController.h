//
//  MoreViewController.h
//  keji
//
//  Created by 王旭 on 2020/12/9.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MoreViewController : UIViewController
<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@end

NS_ASSUME_NONNULL_END
