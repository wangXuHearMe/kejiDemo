//
//  TimeLimitViewController.h
//  keji
//
//  Created by 王旭 on 2021/1/15.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol timeLimitDelegate <NSObject>

- (void)pass:(NSString *)timeLimitString;

@end
@interface TimeLimitViewController : UIViewController
@property (nonatomic, assign) id<timeLimitDelegate>delegate;
@end

NS_ASSUME_NONNULL_END
