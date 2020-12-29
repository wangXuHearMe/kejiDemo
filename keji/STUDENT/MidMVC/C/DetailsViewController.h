//
//  DetailsViewController.h
//  keji
//
//  Created by 王旭 on 2020/12/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DetailsViewController : UIViewController
<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSString *startStr;
@property (nonatomic, strong) NSString *stopStr;
@property (nonatomic, strong) NSString *typeStr;
@property (nonatomic, strong) NSString *shangkeStr;
@property (nonatomic, strong) UIImageView *teacherImageView;
@property (nonatomic, strong) NSString *teacherNameStr;
@property (nonatomic, strong) NSString *teacherTypeStr;
@property (nonatomic, strong) NSString *teacherPostStr;
@end

NS_ASSUME_NONNULL_END
