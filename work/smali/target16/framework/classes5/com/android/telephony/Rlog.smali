.class public final Lcom/android/telephony/Rlog;
.super Ljava/lang/Object;
.source "Rlog.java"


# static fields
.field private static final blacklist USER_BUILD:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 38
    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_USER:Z

    sput-boolean v0, Lcom/android/telephony/Rlog;->USER_BUILD:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static blacklist d(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 57
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/android/telephony/Rlog;->log(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static blacklist d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 62
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 61
    const/4 p2, 0x3

    invoke-static {p2, p0, p1}, Lcom/android/telephony/Rlog;->log(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static blacklist e(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 88
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/android/telephony/Rlog;->log(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static blacklist e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 93
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 92
    const/4 p2, 0x6

    invoke-static {p2, p0, p1}, Lcom/android/telephony/Rlog;->log(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static blacklist getDialableCount(Ljava/lang/String;)I
    .registers 5

    .line 197
    nop

    .line 198
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v1, v0, :cond_17

    aget-char v3, p0, v1

    .line 199
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 200
    add-int/lit8 v2, v2, 0x1

    .line 198
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 203
    :cond_17
    return v2
.end method

.method public static blacklist i(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 66
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/android/telephony/Rlog;->log(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static blacklist i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 71
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 70
    const/4 p2, 0x4

    invoke-static {p2, p0, p1}, Lcom/android/telephony/Rlog;->log(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static blacklist isLoggable(Ljava/lang/String;I)Z
    .registers 2

    .line 101
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private static blacklist log(ILjava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 44
    invoke-static {p0, p1, p2}, Landroid/util/Log;->logToRadioBuffer(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static blacklist obfuscatePhoneNumber(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 6

    .line 179
    sget-boolean v0, Lcom/android/telephony/Rlog;->USER_BUILD:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_8

    :cond_7
    const/4 v0, 0x2

    .line 180
    :goto_8
    invoke-static {p1}, Lcom/android/telephony/Rlog;->getDialableCount(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v2, v0

    .line 181
    nop

    :goto_e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_31

    .line 182
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 183
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v3

    .line 184
    if-eqz v3, :cond_20

    .line 185
    add-int/lit8 v2, v2, -0x1

    .line 187
    :cond_20
    if-eqz v3, :cond_27

    if-ltz v2, :cond_27

    const-string v0, "*"

    goto :goto_2b

    :cond_27
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    :goto_2b
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 189
    :cond_31
    return-void
.end method

.method public static blacklist pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 112
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 113
    if-eqz p1, :cond_36

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_36

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_14

    goto :goto_36

    .line 116
    :cond_14
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/android/telephony/Rlog;->secureHash([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 114
    :cond_36
    :goto_36
    return-object v0
.end method

.method public static blacklist pii(ZLjava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 127
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 128
    if-eqz p1, :cond_31

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_31

    if-eqz p0, :cond_f

    goto :goto_31

    .line 131
    :cond_f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/android/telephony/Rlog;->secureHash([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 129
    :cond_31
    :goto_31
    return-object v0
.end method

.method public static blacklist piiHandle(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    instance-of v1, p0, Landroid/net/Uri;

    if-eqz v1, :cond_59

    .line 143
    check-cast p0, Landroid/net/Uri;

    .line 144
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :cond_1e
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    .line 151
    const-string/jumbo v2, "tel"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 152
    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->obfuscatePhoneNumber(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_63

    .line 153
    :cond_2f
    const-string/jumbo v2, "sip"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 154
    const/4 v1, 0x0

    :goto_39
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_63

    .line 155
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 156
    const/16 v3, 0x40

    if-eq v2, v3, :cond_4d

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_4d

    .line 157
    const/16 v2, 0x2a

    .line 159
    :cond_4d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 162
    :cond_53
    const-string p0, "***"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_63

    .line 164
    :cond_59
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_63

    .line 165
    check-cast p0, Ljava/lang/String;

    .line 166
    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->obfuscatePhoneNumber(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_64

    .line 164
    :cond_63
    :goto_63
    nop

    .line 169
    :goto_64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist println(ILjava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 97
    invoke-static {p0, p1, p2}, Lcom/android/telephony/Rlog;->log(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static blacklist secureHash([B)Ljava/lang/String;
    .registers 2

    .line 214
    sget-boolean v0, Lcom/android/telephony/Rlog;->USER_BUILD:Z

    if-eqz v0, :cond_7

    .line 215
    const-string p0, "****"

    return-object p0

    .line 221
    :cond_7
    :try_start_7
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_d} :catch_19

    .line 224
    nop

    .line 226
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 227
    const/16 v0, 0xb

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 222
    :catch_19
    move-exception p0

    .line 223
    const-string p0, "####"

    return-object p0
.end method

.method public static blacklist v(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 48
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/android/telephony/Rlog;->log(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static blacklist v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 53
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 52
    const/4 p2, 0x2

    invoke-static {p2, p0, p1}, Lcom/android/telephony/Rlog;->log(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static blacklist w(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 75
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/android/telephony/Rlog;->log(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static blacklist w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 80
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 79
    const/4 p2, 0x5

    invoke-static {p2, p0, p1}, Lcom/android/telephony/Rlog;->log(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static blacklist w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3

    .line 84
    const/4 v0, 0x5

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/android/telephony/Rlog;->log(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
