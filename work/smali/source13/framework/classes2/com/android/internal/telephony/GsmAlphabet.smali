.class public Lcom/android/internal/telephony/GsmAlphabet;
.super Ljava/lang/Object;
.source "GsmAlphabet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;,
        Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    }
.end annotation


# static fields
.field public static final greylist-max-o GSM_EXTENDED_ESCAPE:B = 0x1bt

.field private static final greylist-max-o TAG:Ljava/lang/String; = "GSM"

.field public static final greylist-max-o UDH_SEPTET_COST_CONCATENATED_MESSAGE:I = 0x6

.field public static final greylist-max-o UDH_SEPTET_COST_LENGTH:I = 0x1

.field public static final greylist-max-o UDH_SEPTET_COST_ONE_SHIFT_TABLE:I = 0x4

.field public static final greylist-max-o UDH_SEPTET_COST_TWO_SHIFT_TABLES:I = 0x7

.field private static final greylist sCharsToGsmTables:[Landroid/util/SparseIntArray;

.field private static final greylist sCharsToShiftTables:[Landroid/util/SparseIntArray;

.field private static greylist-max-o sDisableCountryEncodingCheck:Z

.field private static greylist sEnabledLockingShiftTables:[I

.field private static greylist sEnabledSingleShiftTables:[I

.field private static greylist sHighestEnabledSingleShiftCode:I

.field private static final greylist sLanguageShiftTables:[Ljava/lang/String;

.field private static final greylist sLanguageTables:[Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsEnabledSingleShiftTables()[I
    .registers 1

    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsHighestEnabledSingleShiftCode()I
    .registers 1

    sget v0, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 15

    .line 1124
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/GsmAlphabet;->sDisableCountryEncodingCheck:Z

    .line 1168
    const-string v1, "@\u00a3$\u00a5\u00e8\u00e9\u00f9\u00ec\u00f2\u00c7\n\u00d8\u00f8\r\u00c5\u00e5\u0394_\u03a6\u0393\u039b\u03a9\u03a0\u03a8\u03a3\u0398\u039e\uffff\u00c6\u00e6\u00df\u00c9 !\"#\u00a4%&\'()*+,-./0123456789:;<=>?\u00a1ABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c4\u00d6\u00d1\u00dc\u00a7\u00bfabcdefghijklmnopqrstuvwxyz\u00e4\u00f6\u00f1\u00fc\u00e0"

    const-string v2, "@\u00a3$\u00a5\u20ac\u00e9\u00f9\u0131\u00f2\u00c7\n\u011e\u011f\r\u00c5\u00e5\u0394_\u03a6\u0393\u039b\u03a9\u03a0\u03a8\u03a3\u0398\u039e\uffff\u015e\u015f\u00df\u00c9 !\"#\u00a4%&\'()*+,-./0123456789:;<=>?\u0130ABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c4\u00d6\u00d1\u00dc\u00a7\u00e7abcdefghijklmnopqrstuvwxyz\u00e4\u00f6\u00f1\u00fc\u00e0"

    const-string v3, ""

    const-string v4, "@\u00a3$\u00a5\u00ea\u00e9\u00fa\u00ed\u00f3\u00e7\n\u00d4\u00f4\r\u00c1\u00e1\u0394_\u00aa\u00c7\u00c0\u221e^\\\u20ac\u00d3|\uffff\u00c2\u00e2\u00ca\u00c9 !\"#\u00ba%&\'()*+,-./0123456789:;<=>?\u00cdABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c3\u00d5\u00da\u00dc\u00a7~abcdefghijklmnopqrstuvwxyz\u00e3\u00f5`\u00fc\u00e0"

    const-string/jumbo v5, "\u0981\u0982\u0983\u0985\u0986\u0987\u0988\u0989\u098a\u098b\n\u098c \r \u098f\u0990  \u0993\u0994\u0995\u0996\u0997\u0998\u0999\u099a\uffff\u099b\u099c\u099d\u099e !\u099f\u09a0\u09a1\u09a2\u09a3\u09a4)(\u09a5\u09a6,\u09a7.\u09a80123456789:; \u09aa\u09ab?\u09ac\u09ad\u09ae\u09af\u09b0 \u09b2   \u09b6\u09b7\u09b8\u09b9\u09bc\u09bd\u09be\u09bf\u09c0\u09c1\u09c2\u09c3\u09c4  \u09c7\u09c8  \u09cb\u09cc\u09cd\u09ceabcdefghijklmnopqrstuvwxyz\u09d7\u09dc\u09dd\u09f0\u09f1"

    const-string/jumbo v6, "\u0a81\u0a82\u0a83\u0a85\u0a86\u0a87\u0a88\u0a89\u0a8a\u0a8b\n\u0a8c\u0a8d\r \u0a8f\u0a90\u0a91 \u0a93\u0a94\u0a95\u0a96\u0a97\u0a98\u0a99\u0a9a\uffff\u0a9b\u0a9c\u0a9d\u0a9e !\u0a9f\u0aa0\u0aa1\u0aa2\u0aa3\u0aa4)(\u0aa5\u0aa6,\u0aa7.\u0aa80123456789:; \u0aaa\u0aab?\u0aac\u0aad\u0aae\u0aaf\u0ab0 \u0ab2\u0ab3 \u0ab5\u0ab6\u0ab7\u0ab8\u0ab9\u0abc\u0abd\u0abe\u0abf\u0ac0\u0ac1\u0ac2\u0ac3\u0ac4\u0ac5 \u0ac7\u0ac8\u0ac9 \u0acb\u0acc\u0acd\u0ad0abcdefghijklmnopqrstuvwxyz\u0ae0\u0ae1\u0ae2\u0ae3\u0af1"

    const-string/jumbo v7, "\u0901\u0902\u0903\u0905\u0906\u0907\u0908\u0909\u090a\u090b\n\u090c\u090d\r\u090e\u090f\u0910\u0911\u0912\u0913\u0914\u0915\u0916\u0917\u0918\u0919\u091a\uffff\u091b\u091c\u091d\u091e !\u091f\u0920\u0921\u0922\u0923\u0924)(\u0925\u0926,\u0927.\u09280123456789:;\u0929\u092a\u092b?\u092c\u092d\u092e\u092f\u0930\u0931\u0932\u0933\u0934\u0935\u0936\u0937\u0938\u0939\u093c\u093d\u093e\u093f\u0940\u0941\u0942\u0943\u0944\u0945\u0946\u0947\u0948\u0949\u094a\u094b\u094c\u094d\u0950abcdefghijklmnopqrstuvwxyz\u0972\u097b\u097c\u097e\u097f"

    const-string v8, " \u0c82\u0c83\u0c85\u0c86\u0c87\u0c88\u0c89\u0c8a\u0c8b\n\u0c8c \r\u0c8e\u0c8f\u0c90 \u0c92\u0c93\u0c94\u0c95\u0c96\u0c97\u0c98\u0c99\u0c9a\uffff\u0c9b\u0c9c\u0c9d\u0c9e !\u0c9f\u0ca0\u0ca1\u0ca2\u0ca3\u0ca4)(\u0ca5\u0ca6,\u0ca7.\u0ca80123456789:; \u0caa\u0cab?\u0cac\u0cad\u0cae\u0caf\u0cb0\u0cb1\u0cb2\u0cb3 \u0cb5\u0cb6\u0cb7\u0cb8\u0cb9\u0cbc\u0cbd\u0cbe\u0cbf\u0cc0\u0cc1\u0cc2\u0cc3\u0cc4 \u0cc6\u0cc7\u0cc8 \u0cca\u0ccb\u0ccc\u0ccd\u0cd5abcdefghijklmnopqrstuvwxyz\u0cd6\u0ce0\u0ce1\u0ce2\u0ce3"

    const-string v9, " \u0d02\u0d03\u0d05\u0d06\u0d07\u0d08\u0d09\u0d0a\u0d0b\n\u0d0c \r\u0d0e\u0d0f\u0d10 \u0d12\u0d13\u0d14\u0d15\u0d16\u0d17\u0d18\u0d19\u0d1a\uffff\u0d1b\u0d1c\u0d1d\u0d1e !\u0d1f\u0d20\u0d21\u0d22\u0d23\u0d24)(\u0d25\u0d26,\u0d27.\u0d280123456789:; \u0d2a\u0d2b?\u0d2c\u0d2d\u0d2e\u0d2f\u0d30\u0d31\u0d32\u0d33\u0d34\u0d35\u0d36\u0d37\u0d38\u0d39 \u0d3d\u0d3e\u0d3f\u0d40\u0d41\u0d42\u0d43\u0d44 \u0d46\u0d47\u0d48 \u0d4a\u0d4b\u0d4c\u0d4d\u0d57abcdefghijklmnopqrstuvwxyz\u0d60\u0d61\u0d62\u0d63\u0d79"

    const-string/jumbo v10, "\u0b01\u0b02\u0b03\u0b05\u0b06\u0b07\u0b08\u0b09\u0b0a\u0b0b\n\u0b0c \r \u0b0f\u0b10  \u0b13\u0b14\u0b15\u0b16\u0b17\u0b18\u0b19\u0b1a\uffff\u0b1b\u0b1c\u0b1d\u0b1e !\u0b1f\u0b20\u0b21\u0b22\u0b23\u0b24)(\u0b25\u0b26,\u0b27.\u0b280123456789:; \u0b2a\u0b2b?\u0b2c\u0b2d\u0b2e\u0b2f\u0b30 \u0b32\u0b33 \u0b35\u0b36\u0b37\u0b38\u0b39\u0b3c\u0b3d\u0b3e\u0b3f\u0b40\u0b41\u0b42\u0b43\u0b44  \u0b47\u0b48  \u0b4b\u0b4c\u0b4d\u0b56abcdefghijklmnopqrstuvwxyz\u0b57\u0b60\u0b61\u0b62\u0b63"

    const-string/jumbo v11, "\u0a01\u0a02\u0a03\u0a05\u0a06\u0a07\u0a08\u0a09\u0a0a \n  \r \u0a0f\u0a10  \u0a13\u0a14\u0a15\u0a16\u0a17\u0a18\u0a19\u0a1a\uffff\u0a1b\u0a1c\u0a1d\u0a1e !\u0a1f\u0a20\u0a21\u0a22\u0a23\u0a24)(\u0a25\u0a26,\u0a27.\u0a280123456789:; \u0a2a\u0a2b?\u0a2c\u0a2d\u0a2e\u0a2f\u0a30 \u0a32\u0a33 \u0a35\u0a36 \u0a38\u0a39\u0a3c \u0a3e\u0a3f\u0a40\u0a41\u0a42    \u0a47\u0a48  \u0a4b\u0a4c\u0a4d\u0a51abcdefghijklmnopqrstuvwxyz\u0a70\u0a71\u0a72\u0a73\u0a74"

    const-string v12, " \u0b82\u0b83\u0b85\u0b86\u0b87\u0b88\u0b89\u0b8a \n  \r\u0b8e\u0b8f\u0b90 \u0b92\u0b93\u0b94\u0b95   \u0b99\u0b9a\uffff \u0b9c \u0b9e !\u0b9f   \u0ba3\u0ba4)(  , .\u0ba80123456789:;\u0ba9\u0baa ?  \u0bae\u0baf\u0bb0\u0bb1\u0bb2\u0bb3\u0bb4\u0bb5\u0bb6\u0bb7\u0bb8\u0bb9  \u0bbe\u0bbf\u0bc0\u0bc1\u0bc2   \u0bc6\u0bc7\u0bc8 \u0bca\u0bcb\u0bcc\u0bcd\u0bd0abcdefghijklmnopqrstuvwxyz\u0bd7\u0bf0\u0bf1\u0bf2\u0bf9"

    const-string/jumbo v13, "\u0c01\u0c02\u0c03\u0c05\u0c06\u0c07\u0c08\u0c09\u0c0a\u0c0b\n\u0c0c \r\u0c0e\u0c0f\u0c10 \u0c12\u0c13\u0c14\u0c15\u0c16\u0c17\u0c18\u0c19\u0c1a\uffff\u0c1b\u0c1c\u0c1d\u0c1e !\u0c1f\u0c20\u0c21\u0c22\u0c23\u0c24)(\u0c25\u0c26,\u0c27.\u0c280123456789:; \u0c2a\u0c2b?\u0c2c\u0c2d\u0c2e\u0c2f\u0c30\u0c31\u0c32\u0c33 \u0c35\u0c36\u0c37\u0c38\u0c39 \u0c3d\u0c3e\u0c3f\u0c40\u0c41\u0c42\u0c43\u0c44 \u0c46\u0c47\u0c48 \u0c4a\u0c4b\u0c4c\u0c4d\u0c55abcdefghijklmnopqrstuvwxyz\u0c56\u0c60\u0c61\u0c62\u0c63"

    const-string/jumbo v14, "\u0627\u0622\u0628\u067b\u0680\u067e\u06a6\u062a\u06c2\u067f\n\u0679\u067d\r\u067a\u067c\u062b\u062c\u0681\u0684\u0683\u0685\u0686\u0687\u062d\u062e\u062f\uffff\u068c\u0688\u0689\u068a !\u068f\u068d\u0630\u0631\u0691\u0693)(\u0699\u0632,\u0696.\u06980123456789:;\u069a\u0633\u0634?\u0635\u0636\u0637\u0638\u0639\u0641\u0642\u06a9\u06aa\u06ab\u06af\u06b3\u06b1\u0644\u0645\u0646\u06ba\u06bb\u06bc\u0648\u06c4\u06d5\u06c1\u06be\u0621\u06cc\u06d0\u06d2\u064d\u0650\u064f\u0657\u0654abcdefghijklmnopqrstuvwxyz\u0655\u0651\u0653\u0656\u0670"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    .line 1362
    const-string v1, "          \u000c         ^                   {}     \\            [~] |                                    \u20ac                          "

    const-string v2, "          \u000c         ^                   {}     \\            [~] |      \u011e \u0130         \u015e               \u00e7 \u20ac \u011f \u0131         \u015f            "

    const-string v3, "         \u00e7\u000c         ^                   {}     \\            [~] |\u00c1       \u00cd     \u00d3     \u00da           \u00e1   \u20ac   \u00ed     \u00f3     \u00fa          "

    const-string v4, "     \u00ea   \u00e7\u000c\u00d4\u00f4 \u00c1\u00e1  \u03a6\u0393^\u03a9\u03a0\u03a8\u03a3\u0398     \u00ca        {}     \\            [~] |\u00c0       \u00cd     \u00d3     \u00da     \u00c3\u00d5    \u00c2   \u20ac   \u00ed     \u00f3     \u00fa     \u00e3\u00f5  \u00e2"

    const-string v5, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u09e6\u09e7 \u09e8\u09e9\u09ea\u09eb\u09ec\u09ed\u09ee\u09ef\u09df\u09e0\u09e1\u09e2{}\u09e3\u09f2\u09f3\u09f4\u09f5\\\u09f6\u09f7\u09f8\u09f9\u09fa       [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    const-string v6, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0ae6\u0ae7\u0ae8\u0ae9\u0aea\u0aeb\u0aec\u0aed\u0aee\u0aef  {}     \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    const-string v7, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0966\u0967\u0968\u0969\u096a\u096b\u096c\u096d\u096e\u096f\u0951\u0952{}\u0953\u0954\u0958\u0959\u095a\\\u095b\u095c\u095d\u095e\u095f\u0960\u0961\u0962\u0963\u0970\u0971 [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    const-string v8, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0ce6\u0ce7\u0ce8\u0ce9\u0cea\u0ceb\u0cec\u0ced\u0cee\u0cef\u0cde\u0cf1{}\u0cf2    \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    const-string v9, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0d66\u0d67\u0d68\u0d69\u0d6a\u0d6b\u0d6c\u0d6d\u0d6e\u0d6f\u0d70\u0d71{}\u0d72\u0d73\u0d74\u0d75\u0d7a\\\u0d7b\u0d7c\u0d7d\u0d7e\u0d7f       [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    const-string v10, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0b66\u0b67\u0b68\u0b69\u0b6a\u0b6b\u0b6c\u0b6d\u0b6e\u0b6f\u0b5c\u0b5d{}\u0b5f\u0b70\u0b71  \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    const-string v11, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0a66\u0a67\u0a68\u0a69\u0a6a\u0a6b\u0a6c\u0a6d\u0a6e\u0a6f\u0a59\u0a5a{}\u0a5b\u0a5c\u0a5e\u0a75 \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    const-string v12, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0be6\u0be7\u0be8\u0be9\u0bea\u0beb\u0bec\u0bed\u0bee\u0bef\u0bf3\u0bf4{}\u0bf5\u0bf6\u0bf7\u0bf8\u0bfa\\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    const-string v13, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*   \u0c66\u0c67\u0c68\u0c69\u0c6a\u0c6b\u0c6c\u0c6d\u0c6e\u0c6f\u0c58\u0c59{}\u0c78\u0c79\u0c7a\u0c7b\u0c7c\\\u0c7d\u0c7e\u0c7f         [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    const-string v14, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0600\u0601 \u06f0\u06f1\u06f2\u06f3\u06f4\u06f5\u06f6\u06f7\u06f8\u06f9\u060c\u060d{}\u060e\u060f\u0610\u0611\u0612\\\u0613\u0614\u061b\u061f\u0640\u0652\u0658\u066b\u066c\u0672\u0673\u06cd[~]\u06d4|ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    .line 1495
    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->enableCountrySpecificEncodings()V

    .line 1496
    array-length v0, v0

    .line 1497
    .local v0, "numTables":I
    array-length v1, v1

    .line 1498
    .local v1, "numShiftTables":I
    const-string v2, "GSM"

    if-eq v0, v1, :cond_77

    .line 1499
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: language tables array length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " != shift tables array length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    :cond_77
    new-array v3, v0, [Landroid/util/SparseIntArray;

    sput-object v3, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    .line 1504
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7c
    const-string v4, " (expected 128 or 0)"

    const-string v5, " length "

    const/16 v6, 0x80

    if-ge v3, v0, :cond_cb

    .line 1505
    sget-object v7, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v7, v7, v3

    .line 1507
    .local v7, "table":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    .line 1508
    .local v8, "tableLen":I
    if-eqz v8, :cond_b2

    if-eq v8, v6, :cond_b2

    .line 1509
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: language tables index "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    :cond_b2
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4, v8}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 1514
    .local v4, "charToGsmTable":Landroid/util/SparseIntArray;
    sget-object v5, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aput-object v4, v5, v3

    .line 1515
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_bc
    if-ge v5, v8, :cond_c8

    .line 1516
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1517
    .local v6, "c":C
    invoke-virtual {v4, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1515
    .end local v6    # "c":C
    add-int/lit8 v5, v5, 0x1

    goto :goto_bc

    .line 1504
    .end local v4    # "charToGsmTable":Landroid/util/SparseIntArray;
    .end local v5    # "j":I
    .end local v7    # "table":Ljava/lang/String;
    .end local v8    # "tableLen":I
    :cond_c8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7c

    .line 1521
    .end local v3    # "i":I
    :cond_cb
    new-array v3, v1, [Landroid/util/SparseIntArray;

    sput-object v3, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    .line 1522
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_d0
    if-ge v3, v1, :cond_11d

    .line 1523
    sget-object v7, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    aget-object v7, v7, v3

    .line 1525
    .local v7, "shiftTable":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    .line 1526
    .local v8, "shiftTableLen":I
    if-eqz v8, :cond_100

    if-eq v8, v6, :cond_100

    .line 1527
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error: language shift tables index "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    :cond_100
    new-instance v9, Landroid/util/SparseIntArray;

    invoke-direct {v9, v8}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 1532
    .local v9, "charToShiftTable":Landroid/util/SparseIntArray;
    sget-object v10, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aput-object v9, v10, v3

    .line 1533
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_10a
    if-ge v10, v8, :cond_11a

    .line 1534
    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 1535
    .local v11, "c":C
    const/16 v12, 0x20

    if-eq v11, v12, :cond_117

    .line 1536
    invoke-virtual {v9, v11, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1533
    .end local v11    # "c":C
    :cond_117
    add-int/lit8 v10, v10, 0x1

    goto :goto_10a

    .line 1522
    .end local v7    # "shiftTable":Ljava/lang/String;
    .end local v8    # "shiftTableLen":I
    .end local v9    # "charToShiftTable":Landroid/util/SparseIntArray;
    .end local v10    # "j":I
    :cond_11a
    add-int/lit8 v3, v3, 0x1

    goto :goto_d0

    .line 1540
    .end local v0    # "numTables":I
    .end local v1    # "numShiftTables":I
    .end local v3    # "i":I
    :cond_11d
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist charToGsm(C)I
    .registers 4
    .param p0, "c"    # C

    .line 156
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, v0}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm(CZ)I

    move-result v0
    :try_end_5
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_5} :catch_6

    return v0

    .line 157
    :catch_6
    move-exception v1

    .line 159
    .local v1, "ex":Lcom/android/internal/telephony/EncodeException;
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v0, v2, v0

    const/16 v2, 0x20

    invoke-virtual {v0, v2, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public static greylist charToGsm(CZ)I
    .registers 7
    .param p0, "c"    # C
    .param p1, "throwException"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .line 180
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, -0x1

    invoke-virtual {v2, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 182
    .local v2, "ret":I
    if-ne v2, v3, :cond_2a

    .line 183
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v4, v4, v1

    invoke-virtual {v4, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 185
    if-ne v2, v3, :cond_27

    .line 186
    if-nez p1, :cond_21

    .line 189
    aget-object v0, v0, v1

    const/16 v1, 0x20

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0

    .line 187
    :cond_21
    new-instance v0, Lcom/android/internal/telephony/EncodeException;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/EncodeException;-><init>(C)V

    throw v0

    .line 192
    :cond_27
    const/16 v0, 0x1b

    return v0

    .line 196
    :cond_2a
    return v2
.end method

.method public static greylist-max-o charToGsmExtended(C)I
    .registers 4
    .param p0, "c"    # C

    .line 210
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, -0x1

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 212
    .local v0, "ret":I
    if-ne v0, v2, :cond_17

    .line 213
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v2, v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    return v1

    .line 216
    :cond_17
    return v0
.end method

.method public static greylist-max-o countGsmSeptets(C)I
    .registers 3
    .param p0, "c"    # C

    .line 747
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, v0}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(CZ)I

    move-result v0
    :try_end_5
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_5} :catch_6

    return v0

    .line 748
    :catch_6
    move-exception v1

    .line 750
    .local v1, "ex":Lcom/android/internal/telephony/EncodeException;
    return v0
.end method

.method public static greylist countGsmSeptets(CZ)I
    .registers 6
    .param p0, "c"    # C
    .param p1, "throwsException"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .line 766
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, -0x1

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v2, :cond_e

    .line 767
    return v3

    .line 770
    :cond_e
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v0, v0, v1

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v2, :cond_1a

    .line 771
    const/4 v0, 0x2

    return v0

    .line 774
    :cond_1a
    if-nez p1, :cond_1d

    .line 778
    return v3

    .line 775
    :cond_1d
    new-instance v0, Lcom/android/internal/telephony/EncodeException;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/EncodeException;-><init>(C)V

    throw v0
.end method

.method public static greylist-max-o countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .registers 21
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z

    .line 853
    move-object/from16 v0, p0

    move/from16 v1, p1

    sget-boolean v2, Lcom/android/internal/telephony/GsmAlphabet;->sDisableCountryEncodingCheck:Z

    if-nez v2, :cond_b

    .line 854
    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->enableCountrySpecificEncodings()V

    .line 857
    :cond_b
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    array-length v2, v2

    sget-object v3, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    array-length v3, v3

    add-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xa0

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-nez v2, :cond_41

    .line 858
    new-instance v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v2}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 859
    .local v2, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    invoke-static {v0, v1, v4, v4}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v4

    .line 860
    .local v4, "septets":I
    if-ne v4, v6, :cond_26

    .line 861
    return-object v3

    .line 863
    :cond_26
    iput v7, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 864
    iput v4, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 865
    if-le v4, v5, :cond_3a

    .line 866
    add-int/lit16 v3, v4, 0x98

    div-int/lit16 v3, v3, 0x99

    iput v3, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 868
    iget v3, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    mul-int/lit16 v3, v3, 0x99

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_40

    .line 871
    :cond_3a
    iput v7, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 872
    rsub-int v3, v4, 0xa0

    iput v3, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 874
    :goto_40
    return-object v2

    .line 877
    .end local v2    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v4    # "septets":I
    :cond_41
    sget v2, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    .line 878
    .local v2, "maxSingleShiftCode":I
    new-instance v8, Ljava/util/ArrayList;

    sget-object v9, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    array-length v9, v9

    add-int/2addr v9, v7

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 882
    .local v8, "lpcList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;>;"
    new-instance v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    invoke-direct {v9, v4}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;-><init>(I)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 883
    sget-object v9, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    array-length v10, v9

    :goto_57
    if-ge v4, v10, :cond_72

    aget v11, v9, v4

    .line 885
    .local v11, "i":I
    if-eqz v11, :cond_6f

    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v12, v12, v11

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_6f

    .line 886
    new-instance v12, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    invoke-direct {v12, v11}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;-><init>(I)V

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 883
    .end local v11    # "i":I
    :cond_6f
    add-int/lit8 v4, v4, 0x1

    goto :goto_57

    .line 890
    :cond_72
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 892
    .local v4, "sz":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_77
    if-ge v9, v4, :cond_fe

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_fe

    .line 893
    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 894
    .local v10, "c":C
    const/16 v11, 0x1b

    if-ne v10, v11, :cond_90

    .line 895
    const-string v11, "GSM"

    const-string v12, "countGsmSeptets() string contains Escape character, ignoring!"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    goto/16 :goto_f9

    .line 899
    :cond_90
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_94
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_f9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    .line 900
    .local v12, "lpc":Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    iget v14, v12, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    aget-object v13, v13, v14

    invoke-virtual {v13, v10, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v13

    .line 901
    .local v13, "tableIndex":I
    if-ne v13, v6, :cond_e4

    .line 903
    const/4 v14, 0x0

    .local v14, "table":I
    :goto_ad
    if-gt v14, v2, :cond_e3

    .line 904
    iget-object v15, v12, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aget v15, v15, v14

    if-eq v15, v6, :cond_df

    .line 905
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v15, v15, v14

    invoke-virtual {v15, v10, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v15

    .line 906
    .local v15, "shiftTableIndex":I
    if-ne v15, v6, :cond_d7

    .line 907
    if-eqz v1, :cond_d2

    .line 909
    iget-object v3, v12, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aget v16, v3, v14

    add-int/lit8 v16, v16, 0x1

    aput v16, v3, v14

    .line 910
    iget-object v3, v12, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->unencodableCounts:[I

    aget v16, v3, v14

    add-int/lit8 v16, v16, 0x1

    aput v16, v3, v14

    goto :goto_df

    .line 913
    :cond_d2
    iget-object v3, v12, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aput v6, v3, v14

    goto :goto_df

    .line 917
    :cond_d7
    iget-object v3, v12, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aget v16, v3, v14

    add-int/lit8 v16, v16, 0x2

    aput v16, v3, v14

    .line 903
    .end local v15    # "shiftTableIndex":I
    :cond_df
    :goto_df
    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x0

    goto :goto_ad

    .end local v14    # "table":I
    :cond_e3
    goto :goto_f7

    .line 923
    :cond_e4
    const/4 v3, 0x0

    .local v3, "table":I
    :goto_e5
    if-gt v3, v2, :cond_f7

    .line 924
    iget-object v14, v12, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aget v14, v14, v3

    if-eq v14, v6, :cond_f4

    .line 925
    iget-object v14, v12, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aget v15, v14, v3

    add-int/2addr v15, v7

    aput v15, v14, v3

    .line 923
    :cond_f4
    add-int/lit8 v3, v3, 0x1

    goto :goto_e5

    .line 929
    .end local v3    # "table":I
    .end local v12    # "lpc":Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    .end local v13    # "tableIndex":I
    :cond_f7
    :goto_f7
    const/4 v3, 0x0

    goto :goto_94

    .line 892
    .end local v10    # "c":C
    :cond_f9
    :goto_f9
    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x0

    goto/16 :goto_77

    .line 933
    .end local v9    # "i":I
    :cond_fe
    new-instance v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v3}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 934
    .local v3, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const v9, 0x7fffffff

    iput v9, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 935
    iput v7, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 936
    const v10, 0x7fffffff

    .line 937
    .local v10, "minUnencodableCount":I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_111
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_197

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    .line 938
    .restart local v12    # "lpc":Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    const/4 v13, 0x0

    .local v13, "shiftTable":I
    :goto_11e
    if-gt v13, v2, :cond_18e

    .line 939
    iget-object v14, v12, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aget v14, v14, v13

    .line 940
    .local v14, "septets":I
    if-ne v14, v6, :cond_127

    .line 941
    goto :goto_184

    .line 944
    :cond_127
    iget v15, v12, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    if-eqz v15, :cond_130

    if-eqz v13, :cond_130

    .line 945
    const/16 v15, 0x8

    .local v15, "udhLength":I
    goto :goto_13a

    .line 946
    .end local v15    # "udhLength":I
    :cond_130
    iget v15, v12, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    if-nez v15, :cond_139

    if-eqz v13, :cond_137

    goto :goto_139

    .line 949
    :cond_137
    const/4 v15, 0x0

    .restart local v15    # "udhLength":I
    goto :goto_13a

    .line 947
    .end local v15    # "udhLength":I
    :cond_139
    :goto_139
    const/4 v15, 0x5

    .line 953
    .restart local v15    # "udhLength":I
    :goto_13a
    add-int v6, v14, v15

    if-le v6, v5, :cond_154

    .line 954
    if-nez v15, :cond_141

    .line 955
    const/4 v15, 0x1

    .line 957
    :cond_141
    add-int/lit8 v15, v15, 0x6

    .line 958
    rsub-int v6, v15, 0xa0

    .line 959
    .local v6, "septetsPerMessage":I
    add-int v17, v14, v6

    add-int/lit8 v17, v17, -0x1

    div-int v17, v17, v6

    .line 960
    .local v17, "msgCount":I
    mul-int v18, v17, v6

    sub-int v18, v18, v14

    .line 961
    .end local v6    # "septetsPerMessage":I
    .local v18, "septetsRemaining":I
    move/from16 v6, v17

    move/from16 v5, v18

    goto :goto_15e

    .line 962
    .end local v17    # "msgCount":I
    .end local v18    # "septetsRemaining":I
    :cond_154
    const/16 v17, 0x1

    .line 963
    .restart local v17    # "msgCount":I
    rsub-int v6, v15, 0xa0

    sub-int v18, v6, v14

    move/from16 v6, v17

    move/from16 v5, v18

    .line 966
    .end local v17    # "msgCount":I
    .local v5, "septetsRemaining":I
    .local v6, "msgCount":I
    :goto_15e
    iget-object v7, v12, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->unencodableCounts:[I

    aget v7, v7, v13

    .line 967
    .local v7, "unencodableCount":I
    if-eqz v1, :cond_167

    if-le v7, v10, :cond_167

    .line 968
    goto :goto_184

    .line 970
    :cond_167
    if-eqz v1, :cond_16b

    if-lt v7, v10, :cond_177

    :cond_16b
    iget v9, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-lt v6, v9, :cond_177

    iget v9, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-ne v6, v9, :cond_184

    iget v9, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    if-le v5, v9, :cond_184

    .line 973
    :cond_177
    move v10, v7

    .line 974
    iput v6, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 975
    iput v14, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 976
    iput v5, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 977
    iget v9, v12, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    iput v9, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    .line 978
    iput v13, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    .line 938
    .end local v5    # "septetsRemaining":I
    .end local v6    # "msgCount":I
    .end local v7    # "unencodableCount":I
    .end local v14    # "septets":I
    .end local v15    # "udhLength":I
    :cond_184
    :goto_184
    add-int/lit8 v13, v13, 0x1

    const/16 v5, 0xa0

    const/4 v6, -0x1

    const/4 v7, 0x1

    const v9, 0x7fffffff

    goto :goto_11e

    .line 981
    .end local v12    # "lpc":Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    .end local v13    # "shiftTable":I
    :cond_18e
    const/16 v5, 0xa0

    const/4 v6, -0x1

    const/4 v7, 0x1

    const v9, 0x7fffffff

    goto/16 :goto_111

    .line 983
    :cond_197
    iget v5, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_1a0

    .line 984
    const/4 v5, 0x0

    return-object v5

    .line 987
    :cond_1a0
    return-object v3
.end method

.method public static greylist-max-o countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I
    .registers 12
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "languageTable"    # I
    .param p3, "languageShiftTable"    # I

    .line 809
    const/4 v0, 0x0

    .line 810
    .local v0, "count":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 811
    .local v1, "sz":I
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v2, v2, p2

    .line 812
    .local v2, "charToLanguageTable":Landroid/util/SparseIntArray;
    sget-object v3, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v3, v3, p3

    .line 813
    .local v3, "charToShiftTable":Landroid/util/SparseIntArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_e
    if-ge v4, v1, :cond_3b

    .line 814
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 815
    .local v5, "c":C
    const/16 v6, 0x1b

    if-ne v5, v6, :cond_20

    .line 816
    const-string v6, "GSM"

    const-string v7, "countGsmSeptets() string contains Escape character, skipping."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    goto :goto_37

    .line 819
    :cond_20
    const/4 v6, -0x1

    invoke-virtual {v2, v5, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    if-eq v7, v6, :cond_2a

    .line 820
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 821
    :cond_2a
    invoke-virtual {v3, v5, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    if-eq v7, v6, :cond_33

    .line 822
    add-int/lit8 v0, v0, 0x2

    goto :goto_37

    .line 823
    :cond_33
    if-eqz p1, :cond_3a

    .line 824
    add-int/lit8 v0, v0, 0x1

    .line 813
    .end local v5    # "c":C
    :goto_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 826
    .restart local v5    # "c":C
    :cond_3a
    return v6

    .line 829
    .end local v4    # "i":I
    .end local v5    # "c":C
    :cond_3b
    return v0
.end method

.method private static greylist-max-o enableCountrySpecificEncodings()V
    .registers 3

    .line 1090
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 1092
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x10700b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    .line 1093
    const v1, 0x10700b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    .line 1095
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    array-length v2, v1

    if-lez v2, :cond_23

    .line 1096
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    sput v1, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    goto :goto_26

    .line 1099
    :cond_23
    const/4 v1, 0x0

    sput v1, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    .line 1101
    :goto_26
    return-void
.end method

.method public static greylist findGsmSeptetLimitIndex(Ljava/lang/String;IIII)I
    .registers 13
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "langTable"    # I
    .param p4, "langShiftTable"    # I

    .line 1008
    const/4 v0, 0x0

    .line 1009
    .local v0, "accumulator":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1011
    .local v1, "size":I
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v2, v2, p3

    .line 1012
    .local v2, "charToLangTable":Landroid/util/SparseIntArray;
    sget-object v3, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v3, v3, p4

    .line 1013
    .local v3, "charToLangShiftTable":Landroid/util/SparseIntArray;
    move v4, p1

    .local v4, "i":I
    :goto_e
    if-ge v4, v1, :cond_33

    .line 1014
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v6, -0x1

    invoke-virtual {v2, v5, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    .line 1015
    .local v5, "encodedSeptet":I
    if-ne v5, v6, :cond_2b

    .line 1016
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v3, v7, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    .line 1017
    if-ne v5, v6, :cond_28

    .line 1019
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 1021
    :cond_28
    add-int/lit8 v0, v0, 0x2

    goto :goto_2d

    .line 1024
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    .line 1026
    :goto_2d
    if-le v0, p2, :cond_30

    .line 1027
    return v4

    .line 1013
    .end local v5    # "encodedSeptet":I
    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 1030
    .end local v4    # "i":I
    :cond_33
    return v1
.end method

.method public static declared-synchronized greylist-max-o getEnabledLockingShiftTables()[I
    .registers 2

    const-class v0, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v0

    .line 1082
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    .line 1082
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized greylist-max-o getEnabledSingleShiftTables()[I
    .registers 2

    const-class v0, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v0

    .line 1071
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    .line 1071
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static greylist gsm7BitPackedToString([BII)Ljava/lang/String;
    .registers 9
    .param p0, "pdu"    # [B
    .param p1, "offset"    # I
    .param p2, "lengthSeptets"    # I

    .line 476
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist gsm7BitPackedToString([BIIIII)Ljava/lang/String;
    .registers 22
    .param p0, "pdu"    # [B
    .param p1, "offset"    # I
    .param p2, "lengthSeptets"    # I
    .param p3, "numPaddingBits"    # I
    .param p4, "languageTable"    # I
    .param p5, "shiftTable"    # I

    .line 498
    move/from16 v1, p2

    move/from16 v0, p4

    move/from16 v2, p5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 500
    .local v3, "ret":Ljava/lang/StringBuilder;
    const-string v4, ", using default"

    const-string v5, "GSM"

    if-ltz v0, :cond_19

    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    array-length v6, v6

    if-le v0, v6, :cond_17

    goto :goto_19

    :cond_17
    move v6, v0

    goto :goto_35

    .line 501
    :cond_19
    :goto_19
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown language table "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/4 v0, 0x0

    move v6, v0

    .line 504
    .end local p4    # "languageTable":I
    .local v6, "languageTable":I
    :goto_35
    if-ltz v2, :cond_3c

    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    array-length v0, v0

    if-le v2, v0, :cond_58

    .line 505
    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown single shift table "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const/4 v0, 0x0

    move v2, v0

    .line 510
    .end local p5    # "shiftTable":I
    .local v2, "shiftTable":I
    :cond_58
    const/4 v0, 0x0

    .line 511
    .local v0, "prevCharWasEscape":Z
    :try_start_59
    sget-object v7, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v8, v7, v6

    .line 512
    .local v8, "languageTableToChar":Ljava/lang/String;
    sget-object v9, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    aget-object v10, v9, v2

    .line 514
    .local v10, "shiftTableToChar":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_85

    .line 515
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "no language table for code "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    aget-object v7, v7, v12

    move-object v8, v7

    .line 518
    :cond_85
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_a8

    .line 519
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "no single shift table for code "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    aget-object v4, v9, v12

    move-object v10, v4

    .line 523
    :cond_a8
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_a9
    if-ge v4, v1, :cond_fa

    .line 524
    mul-int/lit8 v7, v4, 0x7

    add-int v7, v7, p3

    .line 526
    .local v7, "bitOffset":I
    div-int/lit8 v9, v7, 0x8

    .line 527
    .local v9, "byteOffset":I
    rem-int/lit8 v11, v7, 0x8

    .line 530
    .local v11, "shift":I
    add-int v12, p1, v9

    aget-byte v12, p0, v12

    shr-int/2addr v12, v11

    const/16 v13, 0x7f

    and-int/2addr v12, v13

    .line 533
    .local v12, "gsmVal":I
    const/4 v14, 0x1

    if-le v11, v14, :cond_cd

    .line 535
    add-int/lit8 v15, v11, -0x1

    shr-int v15, v13, v15

    and-int/2addr v12, v15

    .line 537
    add-int v15, p1, v9

    add-int/2addr v15, v14

    aget-byte v14, p0, v15

    rsub-int/lit8 v15, v11, 0x8

    shl-int/2addr v14, v15

    and-int/2addr v13, v14

    or-int/2addr v12, v13

    .line 540
    :cond_cd
    const/16 v13, 0x1b

    if-eqz v0, :cond_ec

    .line 541
    const/16 v14, 0x20

    if-ne v12, v13, :cond_d9

    .line 542
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_ea

    .line 544
    :cond_d9
    invoke-virtual {v10, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 545
    .local v13, "c":C
    if-ne v13, v14, :cond_e7

    .line 546
    invoke-virtual {v8, v12}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_ea

    .line 548
    :cond_e7
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 551
    .end local v13    # "c":C
    :goto_ea
    const/4 v0, 0x0

    goto :goto_f7

    .line 552
    :cond_ec
    if-ne v12, v13, :cond_f0

    .line 553
    const/4 v0, 0x1

    goto :goto_f7

    .line 555
    :cond_f0
    invoke-virtual {v8, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_f7
    .catch Ljava/lang/RuntimeException; {:try_start_59 .. :try_end_f7} :catch_100

    .line 523
    .end local v7    # "bitOffset":I
    .end local v9    # "byteOffset":I
    .end local v11    # "shift":I
    .end local v12    # "gsmVal":I
    :goto_f7
    add-int/lit8 v4, v4, 0x1

    goto :goto_a9

    .line 561
    .end local v0    # "prevCharWasEscape":Z
    .end local v4    # "i":I
    .end local v8    # "languageTableToChar":Ljava/lang/String;
    .end local v10    # "shiftTableToChar":Ljava/lang/String;
    :cond_fa
    nop

    .line 563
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 558
    :catch_100
    move-exception v0

    .line 559
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v4, "Error GSM 7 bit packed: "

    invoke-static {v5, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 560
    const/4 v4, 0x0

    return-object v4
.end method

.method public static greylist gsm8BitUnpackedToString([BII)Ljava/lang/String;
    .registers 4
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 582
    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-p gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;
    .registers 20
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "characterset"    # Ljava/lang/String;

    .line 598
    move-object/from16 v0, p0

    move/from16 v1, p2

    const/4 v2, 0x0

    .line 599
    .local v2, "isMbcs":Z
    const/4 v3, 0x0

    .line 600
    .local v3, "charset":Ljava/nio/charset/Charset;
    const/4 v4, 0x0

    .line 602
    .local v4, "mbcsBuffer":Ljava/nio/ByteBuffer;
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x2

    if-nez v5, :cond_28

    .line 603
    const-string v5, "us-ascii"

    move-object/from16 v7, p3

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2a

    .line 604
    invoke-static/range {p3 .. p3}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 605
    const/4 v2, 0x1

    .line 606
    invoke-static/range {p3 .. p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    .line 607
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    goto :goto_2a

    .line 602
    :cond_28
    move-object/from16 v7, p3

    .line 611
    :cond_2a
    :goto_2a
    sget-object v5, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    .line 612
    .local v5, "languageTableToChar":Ljava/lang/String;
    sget-object v9, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    aget-object v8, v9, v8

    .line 614
    .local v8, "shiftTableToChar":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 615
    .local v9, "ret":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .line 616
    .local v10, "prevWasEscape":Z
    move/from16 v11, p1

    .local v11, "i":I
    :goto_3b
    add-int v12, p1, v1

    if-ge v11, v12, :cond_b7

    .line 619
    aget-byte v12, v0, v11

    const/16 v13, 0xff

    and-int/2addr v12, v13

    .line 621
    .local v12, "c":I
    if-ne v12, v13, :cond_48

    .line 622
    goto/16 :goto_b7

    .line 623
    :cond_48
    const/16 v13, 0x1b

    const/16 v14, 0x20

    if-ne v12, v13, :cond_57

    .line 624
    if-eqz v10, :cond_55

    .line 628
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 629
    const/4 v10, 0x0

    goto :goto_b4

    .line 631
    :cond_55
    const/4 v10, 0x1

    goto :goto_b4

    .line 634
    :cond_57
    if-eqz v10, :cond_7d

    .line 636
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v12, v13, :cond_64

    invoke-virtual {v8, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    goto :goto_65

    :cond_64
    move v13, v14

    .line 637
    .local v13, "shiftChar":C
    :goto_65
    if-ne v13, v14, :cond_79

    .line 639
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v12, v15, :cond_75

    .line 640
    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7c

    .line 642
    :cond_75
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7c

    .line 645
    :cond_79
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 647
    .end local v13    # "shiftChar":C
    :goto_7c
    goto :goto_b3

    .line 648
    :cond_7d
    if-eqz v2, :cond_a2

    const/16 v13, 0x80

    if-lt v12, v13, :cond_a2

    add-int/lit8 v13, v11, 0x1

    add-int v15, p1, v1

    if-lt v13, v15, :cond_8a

    goto :goto_a2

    .line 656
    :cond_8a
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 657
    add-int/lit8 v13, v11, 0x1

    .end local v11    # "i":I
    .local v13, "i":I
    invoke-virtual {v4, v0, v11, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 658
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 659
    invoke-virtual {v3, v4}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v11, v13

    goto :goto_b3

    .line 649
    .end local v13    # "i":I
    .restart local v11    # "i":I
    :cond_a2
    :goto_a2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v12, v13, :cond_b0

    .line 650
    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b3

    .line 652
    :cond_b0
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 662
    :goto_b3
    const/4 v10, 0x0

    .line 616
    .end local v12    # "c":I
    :goto_b4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3b

    .line 666
    .end local v11    # "i":I
    :cond_b7
    :goto_b7
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static greylist-max-o gsmExtendedToChar(I)C
    .registers 4
    .param p0, "gsmChar"    # I

    .line 256
    const/16 v0, 0x20

    const/16 v1, 0x1b

    if-ne p0, v1, :cond_7

    .line 257
    return v0

    .line 258
    :cond_7
    if-ltz p0, :cond_22

    const/16 v1, 0x80

    if-ge p0, v1, :cond_22

    .line 259
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 260
    .local v1, "c":C
    if-ne v1, v0, :cond_21

    .line 261
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    .line 263
    :cond_21
    return v1

    .line 266
    .end local v1    # "c":C
    :cond_22
    return v0
.end method

.method public static greylist gsmToChar(I)C
    .registers 3
    .param p0, "gsmChar"    # I

    .line 234
    if-ltz p0, :cond_10

    const/16 v0, 0x80

    if-ge p0, v0, :cond_10

    .line 235
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    .line 237
    :cond_10
    const/16 v0, 0x20

    return v0
.end method

.method public static greylist-max-o isGsmSeptets(C)Z
    .registers 5
    .param p0, "c"    # C

    .line 783
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, -0x1

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v2, :cond_e

    .line 784
    return v3

    .line 787
    :cond_e
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v0, v0, v1

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v2, :cond_19

    .line 788
    return v3

    .line 791
    :cond_19
    return v1
.end method

.method private static greylist packSmsChar([BII)V
    .registers 8
    .param p0, "packedChars"    # [B
    .param p1, "bitOffset"    # I
    .param p2, "value"    # I

    .line 452
    div-int/lit8 v0, p1, 0x8

    .line 453
    .local v0, "byteOffset":I
    rem-int/lit8 v1, p1, 0x8

    .line 455
    .local v1, "shift":I
    const/4 v2, 0x1

    add-int/2addr v0, v2

    aget-byte v3, p0, v0

    shl-int v4, p2, v1

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p0, v0

    .line 457
    if-le v1, v2, :cond_19

    .line 458
    add-int/lit8 v0, v0, 0x1

    rsub-int/lit8 v2, v1, 0x8

    shr-int v2, p2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 460
    :cond_19
    return-void
.end method

.method public static declared-synchronized greylist-max-o setEnabledLockingShiftTables([I)V
    .registers 3
    .param p0, "tables"    # [I

    const-class v0, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v0

    .line 1059
    :try_start_3
    sput-object p0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    .line 1060
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/telephony/GsmAlphabet;->sDisableCountryEncodingCheck:Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 1061
    monitor-exit v0

    return-void

    .line 1058
    .end local p0    # "tables":[I
    :catchall_a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized greylist-max-o setEnabledSingleShiftTables([I)V
    .registers 4
    .param p0, "tables"    # [I

    const-class v0, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v0

    .line 1041
    :try_start_3
    sput-object p0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    .line 1042
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/telephony/GsmAlphabet;->sDisableCountryEncodingCheck:Z

    .line 1044
    array-length v2, p0

    if-lez v2, :cond_12

    .line 1045
    array-length v2, p0

    sub-int/2addr v2, v1

    aget v1, p0, v2

    sput v1, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    goto :goto_15

    .line 1047
    :cond_12
    const/4 v1, 0x0

    sput v1, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    .line 1049
    :goto_15
    monitor-exit v0

    return-void

    .line 1040
    .end local p0    # "tables":[I
    :catchall_17
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static greylist stringToGsm7BitPacked(Ljava/lang/String;)[B
    .registers 3
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .line 348
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0, v0}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o stringToGsm7BitPacked(Ljava/lang/String;II)[B
    .registers 5
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "languageTable"    # I
    .param p2, "languageShiftTable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .line 372
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v0

    return-object v0
.end method

.method public static greylist stringToGsm7BitPacked(Ljava/lang/String;IZII)[B
    .registers 21
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "startingSeptetOffset"    # I
    .param p2, "throwException"    # Z
    .param p3, "languageTable"    # I
    .param p4, "languageShiftTable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .line 400
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 401
    .local v3, "dataLen":I
    xor-int/lit8 v4, p2, 0x1

    invoke-static {v0, v4, v1, v2}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v4

    .line 403
    .local v4, "septetCount":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_77

    .line 406
    add-int v4, v4, p1

    .line 407
    const/16 v6, 0xff

    const/4 v7, 0x1

    if-gt v4, v6, :cond_6f

    .line 411
    mul-int/lit8 v6, v4, 0x7

    add-int/lit8 v6, v6, 0x7

    div-int/lit8 v6, v6, 0x8

    .line 412
    .local v6, "byteCount":I
    add-int/lit8 v8, v6, 0x1

    new-array v8, v8, [B

    .line 413
    .local v8, "ret":[B
    sget-object v9, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v9, v9, v1

    .line 414
    .local v9, "charToLanguageTable":Landroid/util/SparseIntArray;
    sget-object v10, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v10, v10, v2

    .line 415
    .local v10, "charToShiftTable":Landroid/util/SparseIntArray;
    const/4 v11, 0x0

    .local v11, "i":I
    move/from16 v12, p1

    .local v12, "septets":I
    mul-int/lit8 v13, p1, 0x7

    .line 416
    .local v13, "bitOffset":I
    :goto_31
    if-ge v11, v3, :cond_6a

    if-ge v12, v4, :cond_6a

    .line 418
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 419
    .local v14, "c":C
    invoke-virtual {v9, v14, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v15

    .line 420
    .local v15, "v":I
    if-ne v15, v5, :cond_5f

    .line 421
    invoke-virtual {v10, v14, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v15

    .line 422
    if-ne v15, v5, :cond_56

    .line 423
    if-nez p2, :cond_4e

    .line 426
    const/16 v5, 0x20

    invoke-virtual {v9, v5, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v15

    goto :goto_5f

    .line 424
    :cond_4e
    new-instance v5, Lcom/android/internal/telephony/EncodeException;

    const-string v7, "stringToGsm7BitPacked(): unencodable char"

    invoke-direct {v5, v7}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 429
    :cond_56
    const/16 v5, 0x1b

    invoke-static {v8, v13, v5}, Lcom/android/internal/telephony/GsmAlphabet;->packSmsChar([BII)V

    .line 430
    add-int/lit8 v13, v13, 0x7

    .line 431
    add-int/lit8 v12, v12, 0x1

    .line 434
    :cond_5f
    :goto_5f
    invoke-static {v8, v13, v15}, Lcom/android/internal/telephony/GsmAlphabet;->packSmsChar([BII)V

    .line 435
    nop

    .end local v14    # "c":C
    .end local v15    # "v":I
    add-int/2addr v12, v7

    .line 417
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v13, v13, 0x7

    const/4 v5, -0x1

    goto :goto_31

    .line 437
    .end local v11    # "i":I
    .end local v12    # "septets":I
    .end local v13    # "bitOffset":I
    :cond_6a
    const/4 v5, 0x0

    int-to-byte v7, v4

    aput-byte v7, v8, v5

    .line 438
    return-object v8

    .line 408
    .end local v6    # "byteCount":I
    .end local v8    # "ret":[B
    .end local v9    # "charToLanguageTable":Landroid/util/SparseIntArray;
    .end local v10    # "charToShiftTable":Landroid/util/SparseIntArray;
    :cond_6f
    new-instance v5, Lcom/android/internal/telephony/EncodeException;

    const-string v6, "Payload cannot exceed 255 septets"

    invoke-direct {v5, v6, v7}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 404
    :cond_77
    new-instance v5, Lcom/android/internal/telephony/EncodeException;

    const-string v6, "countGsmSeptetsUsingTables(): unencodable char"

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static greylist-max-o stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B
    .registers 3
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "header"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .line 285
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static greylist stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B
    .registers 10
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "header"    # [B
    .param p2, "languageTable"    # I
    .param p3, "languageShiftTable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .line 314
    if-eqz p1, :cond_1e

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_1e

    .line 318
    :cond_6
    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    .line 319
    .local v0, "headerBits":I
    add-int/lit8 v2, v0, 0x6

    div-int/lit8 v2, v2, 0x7

    .line 321
    .local v2, "headerSeptets":I
    invoke-static {p0, v2, v1, p2, p3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v3

    .line 325
    .local v3, "ret":[B
    array-length v4, p1

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 326
    const/4 v1, 0x0

    const/4 v4, 0x2

    array-length v5, p1

    invoke-static {p1, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 327
    return-object v3

    .line 315
    .end local v0    # "headerBits":I
    .end local v2    # "headerSeptets":I
    .end local v3    # "ret":[B
    :cond_1e
    :goto_1e
    invoke-static {p0, p2, p3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method public static greylist stringToGsm8BitPacked(Ljava/lang/String;)[B
    .registers 5
    .param p0, "s"    # Ljava/lang/String;

    .line 680
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v0

    .line 683
    .local v0, "septets":I
    new-array v2, v0, [B

    .line 685
    .local v2, "ret":[B
    array-length v3, v2

    invoke-static {p0, v2, v1, v3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V

    .line 687
    return-object v2
.end method

.method public static greylist-max-o stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V
    .registers 13
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "dest"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 702
    move v0, p2

    .line 703
    .local v0, "outByteIndex":I
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 704
    .local v1, "charToLanguageTable":Landroid/util/SparseIntArray;
    sget-object v3, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v2, v3, v2

    .line 707
    .local v2, "charToShiftTable":Landroid/util/SparseIntArray;
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 708
    .local v4, "sz":I
    :goto_f
    const/4 v5, -0x1

    if-ge v3, v4, :cond_43

    sub-int v6, v0, p2

    if-ge v6, p3, :cond_43

    .line 711
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 713
    .local v6, "c":C
    invoke-virtual {v1, v6, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 715
    .local v7, "v":I
    if-ne v7, v5, :cond_3a

    .line 716
    invoke-virtual {v2, v6, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 717
    if-ne v7, v5, :cond_2d

    .line 718
    const/16 v5, 0x20

    invoke-virtual {v1, v5, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    goto :goto_3a

    .line 721
    :cond_2d
    add-int/lit8 v8, v0, 0x1

    sub-int/2addr v8, p2

    if-lt v8, p3, :cond_33

    .line 722
    goto :goto_43

    .line 725
    :cond_33
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "outByteIndex":I
    .local v5, "outByteIndex":I
    const/16 v8, 0x1b

    aput-byte v8, p1, v0

    move v0, v5

    .line 729
    .end local v5    # "outByteIndex":I
    .restart local v0    # "outByteIndex":I
    :cond_3a
    :goto_3a
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "outByteIndex":I
    .restart local v5    # "outByteIndex":I
    int-to-byte v8, v7

    aput-byte v8, p1, v0

    .line 709
    .end local v6    # "c":C
    .end local v7    # "v":I
    add-int/lit8 v3, v3, 0x1

    move v0, v5

    goto :goto_f

    .line 733
    .end local v3    # "i":I
    .end local v4    # "sz":I
    .end local v5    # "outByteIndex":I
    .restart local v0    # "outByteIndex":I
    :cond_43
    :goto_43
    sub-int v3, v0, p2

    if-ge v3, p3, :cond_4d

    .line 734
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "outByteIndex":I
    .local v3, "outByteIndex":I
    aput-byte v5, p1, v0

    move v0, v3

    goto :goto_43

    .line 736
    .end local v3    # "outByteIndex":I
    .restart local v0    # "outByteIndex":I
    :cond_4d
    return-void
.end method
