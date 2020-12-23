//
//  MidViewController.h
//  keji
//
//  Created by 王旭 on 2020/12/8.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MidViewController : UIViewController
<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSString *startTimeStr;
@property (nonatomic, strong) NSString *stopTimeStr;
@property (nonatomic, strong) NSString *midTimeStr;
@property (nonatomic, strong) NSString *connectStr;
@property (nonatomic, strong) NSString *shangkeStr;
@property (nonatomic, strong) NSString *typeStr;
@end

NS_ASSUME_NONNULL_END
