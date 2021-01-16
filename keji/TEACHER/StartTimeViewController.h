//
//  StartTimeViewController.h
//  keji
//
//  Created by 王旭 on 2021/1/15.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol startTimeDelegate <NSObject>

- (void)passStartTime:(NSString *)startTimeString;

@end
@interface StartTimeViewController : UIViewController
@property (nonatomic, assign) id<startTimeDelegate>delegate;
@end

NS_ASSUME_NONNULL_END
