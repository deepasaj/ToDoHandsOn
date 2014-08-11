#import <Foundation/Foundation.h>

@interface TwToDoItem : NSObject
    @property (nonatomic, strong) NSString *title;
    @property (nonatomic, strong) NSString *description;
    @property (nonatomic) BOOL completed;
@end