#import "TwToDoItem.h"


@implementation TwToDoItem {

}
- (instancetype)initWithTitle:(NSString *)title description:(NSString *)description completed:(BOOL)completed {
    self = [super init];
    if (self) {
        self.title = title;
        self.description = description;
        self.completed = completed;
    }

    return self;
}

+ (TwToDoItem *)itemWithTitle:(NSString *)title description:(NSString *)description completed:(BOOL)completed {
    return [[self alloc] initWithTitle:title description:description completed:completed];
}

+ (id)fromData:(NSDictionary *)dictionary {
    NSString *title = dictionary[@"title"];
    NSString *description = dictionary[@"description"];
    NSString *completed = dictionary[@"completed"];
    BOOL completeFlag = [completed isEqualToString:@"T"] ? true : false;
    return [TwToDoItem itemWithTitle:title description:description completed: completeFlag];
}
@end
