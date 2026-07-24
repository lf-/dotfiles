/**
 * Proves `toolchains//:java` is the JDK we pinned and not whatever is on PATH.
 *
 * No exact-version assertion on purpose: it would need hand-editing every time
 * `update_hermetic_toolchain` moves the pin, and these catch a system JDK anyway.
 */
public class JavaSmoke {

    public static void main(String[] args) {
        // A system JDK lives anywhere but here.
        String home = System.getProperty("java.home");
        check(home.contains("buck-out"), "java.home is not under buck-out: " + home);

        String vendor = System.getProperty("java.vendor");
        check(vendor.contains("Azul"), "unexpected java.vendor: " + vendor);

        // A record needs source 16+, so compiling at all proves `source`/`target`
        // took effect instead of the prelude's default of 8.
        Point point = new Point(1, 2);
        check(point.x() + point.y() == 3, "records are broken, which is quite the result");

        System.out.println("ok: " + vendor + " " + System.getProperty("java.version"));
    }

    record Point(int x, int y) {}

    private static void check(boolean condition, String message) {
        if (!condition) {
            System.err.println("FAIL: " + message);
            System.exit(1);
        }
    }
}
