public class PmdRuleTriggerExample {

    public static void badCryptoExample() {
        // ❌ ApexBadCrypto: Using weak hashing algorithm (MD5) 20Feb26
        Blob data = Blob.valueOf('SensitiveData');

        // MD5 is considered insecure by PMD
        Blob hash = Crypto.generateDigest('MD5', data);
    }

    public static void emptyCatchExample() {
        try {
            Integer x = 10 / 0; // Force an exception
        } catch (Exception e) {
            // ❌ EmptyCatchBlock: Catch block does nothing
        }
    }
}
