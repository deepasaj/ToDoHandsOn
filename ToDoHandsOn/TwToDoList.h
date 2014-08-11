#import <Foundation/Foundation.h>


@interface TwToDoList : NSObject
    @property (nonatomic, strong) NSString *title;
    @property (nonatomic, strong) NSArray *toDoItems;

- (instancetype)initWithTitle:(NSString *)title toDoItems:(NSArray *)toDoItems;

+ (TwToDoList *)listWithTitle:(NSString *)title toDoItems:(NSArray *)toDoItems;

+ (TwToDoList *)fromData:(NSDictionary *)dictionary;

@end