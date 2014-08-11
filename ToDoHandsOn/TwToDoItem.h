#import <Foundation/Foundation.h>

@interface TwToDoItem : NSObject <NSCoding>
@property (nonatomic, strong) NSString *title;
    @property (nonatomic, strong) NSString *description;
    @property (nonatomic) BOOL completed;

- (instancetype)initWithTitle:(NSString *)title description:(NSString *)description completed:(BOOL)completed;

+ (instancetype)itemWithTitle:(NSString *)title description:(NSString *)description completed:(BOOL)completed;

+ (id)fromData:(NSDictionary *)dictionary;
@end