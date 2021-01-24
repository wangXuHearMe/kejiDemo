//
//  ExplainViewController.h
//  keji
//
//  Created by 王旭 on 2021/1/11.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol explainDelegate <NSObject>

- (void)passExplainText:(NSString *)explainText andBool:(BOOL)isExplain;

@end
@interface ExplainViewController : UIViewController
//@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UITextField *textField;
@property (nonatomic, assign) id<explainDelegate>delegate;
@end

NS_ASSUME_NONNULL_END
