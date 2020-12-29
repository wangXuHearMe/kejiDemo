//
//  AboutTableViewController.h
//  keji
//
//  Created by 王旭 on 2020/12/14.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AboutTableViewController : UITableViewController
<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableview;
@end

NS_ASSUME_NONNULL_END
