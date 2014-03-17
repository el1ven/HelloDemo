iphone开发中 TextField如何按return 让键盘消失?
原理呢，是ios的FirstRespond机制，当TextField成为FirstRespond时，键盘出现；当把FirstRespond转移到ViewController或窗体,TextField失去FirstRespond时，键盘消失。所以要通过实现textFieldShouldReturn方法，在这个方法里，重新分配FirstRespond事件。

具体的做法，是两步：

第一步，设定TextField到ViewController的委托；

第二步，在ViewController里，实现TextFieldDelegate，实现其中的一个textFieldShouldReturn方法

Step1.设定文本栏的委托
在视图中，按住 Control 键将文本栏拖移到场景台中的黄色球体（黄色球体代表视图控制器对象）。

松开 Control 键并停止拖移时，看到的应该是这样的：

在出现的半透明面板的“Outlets”部分中选择“delegate”。

此方法应该指示文本栏放弃第一响应器的状态。实现结果应该是这样的：

- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    if (theTextField == self.textField) {
        [theTextField resignFirstResponder];
    }
    return YES;
}
在本应用程序中，没有必要真正测试 theTextField == self.textField 表达式，因为只有一个文本栏。但这是一个很好的模式，因为有些场合您的对象可能是不只一个同类对象的委托，所以可能有需要对它们加以区分。

Step2.在 @interface 行的末尾，添加 <UITextFieldDelegate>。

您的接口声明应如下图所示：

@interface HelloWorldViewController :UIViewController <UITextFieldDelegate>
…
此声明指定 HelloWorldViewController 类采用 UITextFieldDelegate 协议。