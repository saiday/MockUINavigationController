I wrote a post about how to [Unit testing your UIViewController been pushed properly](http://imnotyourson.com/unit-testing-your-uiviewcontroller-been-pushed-properly/)

### Usage
```objective-c
#import "UIViewController+MockUINavigationController.h"

- (void)testViewControllerBeenPushedProperly
{
  CustomViewController *viewController = [[CustomViewController alloc] init];
  [viewController pushIt];
  [MKTVerify(viewController.navigationController) pushViewController:anything() animated:YES];
}
```

My matcher is [OCHamcrest](https://github.com/hamcrest/OCHamcrest), mocking library is [OCMockito](https://github.com/jonreid/OCMockito).
