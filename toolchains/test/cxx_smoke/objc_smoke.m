/* Guards the Objective-C path `toolchains//:cxx` exists for: the prelude's own
 * cxx toolchains leave `objc_compiler_info` unset, so a `.m` source fails
 * analysis with "Could not find compiler for extension `.m`" rather than
 * failing to compile. matchlock's Virtualization.framework backend
 * (`github.com/Code-Hex/vz/v3`) is a dozen files like this one. */

#import <Foundation/Foundation.h>

int main(void) {
  @autoreleasepool {
    /* Touches the runtime and Foundation, not just the `.m` syntax: a missing
     * `-lobjc` or `-framework Foundation` fails the link rather than compiling
     * to something that does nothing. */
    NSString *greeting = [NSString stringWithFormat:@"%@ %d", @"ok", 42];
    if (![greeting isEqualToString:@"ok 42"]) {
      NSLog(@"FAIL: Foundation gave back %@", greeting);
      return 1;
    }
    printf("%s\n", [greeting UTF8String]);
  }
  return 0;
}
