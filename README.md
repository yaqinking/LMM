# LMM
學習一下 Objective-C 的內存管理 w

原则
看到 `alloc` `new` `retain` 就要 `release` or `autorelease`

产生内存泄漏的原因是，对象并不再使用，然而 `retainCount` 不为 0。（也就是一直存在于内存中）

防止内存泄漏的一个方法是，一个 `alloc` or `new` or `retain` 配对一个 `release` or `autolease` 使用。

`@property` 默认生成简单 `setter` 和 `getter` 其修饰符的作用
- 内存相关
1. `assign` 直接赋值（应用于 基本数据类型 or 对象）
2. `retain` 生成符合内存管理原则的 setter（应用于 对象）
3. `copy`
- 多线程相关
1. `nonatomic` 不生成多线程相关的代码（iOS 中一般要声明成这个）
2. `atomic` 生成 （默认生成的 w）
- set get 生成相关
1. `readonly` 只生成 `getter`
2. `readwrite` 全部生成
- set get 命名相关
1. `setter` = `XXX`
2. `getter` = `XXX`
在用 `property` 时使用符合内存管理的修饰符后，在 MRC 中一定要在 `dealloc` 中 `release` 掉相应的对象。

`release` 的作用是让 `retainCount` - 1 而 `autorelease` 的作用是把对象添加到 `autoreleasepool` 中去

`autoreleasepool` 会在自身消失的时候，把添加到 `pool` 里的对象发送一次 or n次 `release` 消息（n次的来源是这个对象在 `autoreleasepool` 中发送了几次 `autorelease` 消息。）

ARC 指针类型 ARC -> MRC 对应
1. `strong` -> 「`retain` (默认情况下生成的，应用于对象类型)」 只要有强指针指向对象，系统就不会回收对象
2. `weak` -> 「`assign` （应用于基本数据类型）」只要没有强指针指向对象，系统立即回收该对象
 
当然虽然说的是对应，但不要混用 w

在 ARC 下一般使用的有 `strong` `weak` （用于对象） `assign`（用于基本数据类型）

当类中出现循环引用的时候，需要将一个的修饰符 `strong` 改为 `weak` 具体改哪个，看谁拥有谁，且在改为 `weak` 里面使用 `@class` 声明使用 `weak` 修饰的数据类型（类名），要调用方法的话，在 .m 文件中引入那个类的头文件。
