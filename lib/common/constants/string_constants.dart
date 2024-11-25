class StringConstants {
  static String getPhoneNumberVN(String phoneNumber) {
    return '+84${phoneNumber.substring(1)}';
  }
}
