.class public Lmiui/telephony/PhoneNumberUtils;
.super Landroid/telephony/PhoneNumberUtils;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;,
        Lmiui/telephony/PhoneNumberUtils$TelocationAndOperatorQueryListener;,
        Lmiui/telephony/PhoneNumberUtils$OperatorQueryListener;,
        Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;,
        Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    }
.end annotation


# static fields
.field private static final blacklist CHINA_COUNTRY_CODE:Ljava/lang/String; = "86"

.field private static final blacklist CHINA_IOT_MOBILE_NUMBER_LENGTH:I = 0xd

.field public static final whitelist CHINA_MCC:Ljava/lang/String; = "460"

.field private static final blacklist CHINA_MOBILE_NUMBER_LENGTH:I = 0xb

.field private static final blacklist CHINA_MOBILE_NUMBER_PREFIX:Ljava/lang/String; = "1"

.field private static final blacklist CHINA_REGION_CODE1:Ljava/lang/String; = "+86"

.field private static final blacklist CHINA_REGION_CODE2:Ljava/lang/String; = "0086"

.field private static final blacklist EMERGENCY_NUMBERS:[Ljava/lang/String;

.field static final blacklist LOG_TAG:Ljava/lang/String; = "PhoneNumberUtils"

.field public static final whitelist MASK_PHONE_NUMBER_MODE_HEAD:I = 0x0

.field public static final whitelist MASK_PHONE_NUMBER_MODE_MIDDLE:I = 0x2

.field public static final whitelist MASK_PHONE_NUMBER_MODE_TAIL:I = 0x1

.field private static final blacklist MIN_QUERY_LOCATION_EFFECTIVE_IOT_NUMBER_LENGTH:I = 0x9

.field private static final blacklist MIN_QUERY_LOCATION_EFFECTIVE_NUMBER_LENGTH:I = 0x7

.field public static final whitelist PAYPHONE_NUMBER:Ljava/lang/String; = "-3"

.field public static final whitelist PRIVATE_NUMBER:Ljava/lang/String; = "-2"

.field public static final whitelist UNKNOWN_NUMBER:Ljava/lang/String; = "-1"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 12

    .line 1268
    const-string v0, "110"

    const-string v1, "112"

    const-string v2, "119"

    const-string v3, "120"

    const-string v4, "122"

    const-string v5, "911"

    const-string v6, "999"

    const-string v7, "995"

    const-string v8, "100"

    const-string v9, "101"

    const-string v10, "102"

    const-string v11, "190"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/telephony/PhoneNumberUtils;->EMERGENCY_NUMBERS:[Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Landroid/telephony/PhoneNumberUtils;-><init>()V

    return-void
.end method

.method public static whitelist cancelAsyncTelocationQuery(I)V
    .registers 2
    .param p0, "token"    # I

    .line 1198
    invoke-static {}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->getInstance()Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->cancelOperation(I)V

    .line 1199
    return-void
.end method

.method public static whitelist extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 94
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist extractNetworkPortion(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "phoneType"    # I

    .line 98
    if-nez p0, :cond_4

    .line 99
    const/4 v0, 0x0

    return-object v0

    .line 101
    :cond_4
    const/4 v0, 0x3

    if-eq p1, v0, :cond_13

    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->invokeIsUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_13

    .line 104
    :cond_e
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 102
    :cond_13
    :goto_13
    const/4 v0, 0x0

    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 119
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist extractNetworkPortionAlt(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "phoneType"    # I

    .line 123
    if-nez p0, :cond_4

    .line 124
    const/4 v0, 0x0

    return-object v0

    .line 127
    :cond_4
    const/4 v0, 0x3

    if-eq p1, v0, :cond_13

    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->invokeIsUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_13

    .line 130
    :cond_e
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->invokeExtractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 128
    :cond_13
    :goto_13
    const/4 v0, 0x0

    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getDefaultIpBySim(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 1217
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v0

    .line 1218
    .local v0, "slotId":I
    invoke-static {p0, v0}, Lmiui/telephony/PhoneNumberUtils;->getDefaultIpBySim(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist getDefaultIpBySim(Landroid/content/Context;I)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .line 1225
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    .line 1226
    .local v0, "telephonyManager":Lmiui/telephony/TelephonyManager;
    invoke-virtual {v0, p1}, Lmiui/telephony/TelephonyManager;->getSimOperatorForSlot(I)Ljava/lang/String;

    move-result-object v1

    .line 1227
    .local v1, "simOperator":Ljava/lang/String;
    const-string v2, "46000"

    invoke-virtual {v0, v1, v2}, Lmiui/telephony/TelephonyManager;->isSameOperator(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1228
    const-string v2, "17951"

    return-object v2

    .line 1229
    :cond_13
    const-string v2, "46001"

    invoke-virtual {v0, v1, v2}, Lmiui/telephony/TelephonyManager;->isSameOperator(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1230
    const-string v2, "17911"

    return-object v2

    .line 1231
    :cond_1e
    const-string v2, "46003"

    invoke-virtual {v0, v1, v2}, Lmiui/telephony/TelephonyManager;->isSameOperator(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1232
    const-string v2, "17901"

    return-object v2

    .line 1234
    :cond_29
    const-string v2, ""

    return-object v2
.end method

.method public static whitelist getPresentation(Ljava/lang/CharSequence;)I
    .registers 2
    .param p0, "number"    # Ljava/lang/CharSequence;

    .line 1431
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 1432
    const-string v0, "-1"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_25

    .line 1434
    :cond_f
    const-string v0, "-2"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1435
    const/4 v0, 0x2

    return v0

    .line 1436
    :cond_19
    const-string v0, "-3"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1437
    const/4 v0, 0x4

    return v0

    .line 1439
    :cond_23
    const/4 v0, 0x1

    return v0

    .line 1433
    :cond_25
    :goto_25
    const/4 v0, 0x3

    return v0
.end method

.method public static whitelist getPresentationString(I)Ljava/lang/String;
    .registers 4
    .param p0, "presentation"    # I

    .line 1443
    const-string v0, ""

    .line 1444
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x2

    if-ne p0, v1, :cond_11

    .line 1445
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110f02ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    .line 1446
    :cond_11
    const/4 v1, 0x4

    if-ne p0, v1, :cond_20

    .line 1447
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110f02eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    .line 1448
    :cond_20
    const/4 v1, 0x3

    if-ne p0, v1, :cond_2e

    .line 1449
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110f02ed

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1451
    :cond_2e
    :goto_2e
    return-object v0
.end method

.method private static blacklist indexOfLastNetworkChar(Ljava/lang/String;)I
    .registers 6
    .param p0, "a"    # Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 81
    .local v0, "origLength":I
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 82
    .local v1, "pIndex":I
    const/16 v2, 0x3b

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 84
    .local v2, "wIndex":I
    invoke-static {v1, v2}, Lmiui/telephony/PhoneNumberUtils;->minPositive(II)I

    move-result v3

    .line 86
    .local v3, "trimIndex":I
    if-gez v3, :cond_19

    .line 87
    add-int/lit8 v4, v0, -0x1

    return v4

    .line 89
    :cond_19
    add-int/lit8 v4, v3, -0x1

    return v4
.end method

.method private static blacklist invokeExtractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 135
    const/4 v0, 0x0

    :try_start_1
    const-class v1, Landroid/telephony/PhoneNumberUtils;

    const-string v2, "extractNetworkPortionAlt"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 136
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 137
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_1f

    return-object v2

    .line 138
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_1f
    move-exception v1

    .line 139
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PhoneNumberUtils"

    const-string v3, "invoke extractNetworkPortionAlt failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method private static blacklist invokeIsLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 1309
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "miui.telephony.TelephonyManagerEx"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1310
    .local v1, "clazz":Ljava/lang/Class;
    const-string v2, "isLocalEmergencyNumber"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1311
    .local v2, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v2, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1312
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v0

    aput-object p1, v3, v6

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2c} :catch_2d

    return v0

    .line 1313
    .end local v1    # "clazz":Ljava/lang/Class;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_2d
    move-exception v1

    .line 1314
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PhoneNumberUtils"

    const-string v3, "invokeIsLocalEmergencyNumber failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1316
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method private static blacklist invokeIsUriNumber(Ljava/lang/String;)Z
    .registers 7
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 109
    const/4 v0, 0x0

    :try_start_1
    const-class v1, Landroid/telephony/PhoneNumberUtils;

    const-string v2, "isUriNumber"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 110
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 111
    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_23

    return v0

    .line 112
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_23
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PhoneNumberUtils"

    const-string v3, "invoke isUriNumber failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method private static blacklist isAlnum(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 1394
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_18

    :cond_8
    const/16 v0, 0x61

    if-lt p0, v0, :cond_10

    const/16 v0, 0x7a

    if-le p0, v0, :cond_18

    :cond_10
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1a

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public static whitelist isChinaMobileNumber(Ljava/lang/String;)Z
    .registers 7
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 161
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xb

    if-ge v0, v2, :cond_10

    goto :goto_4d

    .line 165
    :cond_10
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "number":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "86"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    if-lt v3, v5, :cond_36

    .line 168
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 169
    const-string v2, "861"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 168
    return v1

    .line 170
    :cond_36
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v2, :cond_4c

    .line 171
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 175
    :cond_4c
    return v1

    .line 162
    .end local v0    # "number":Ljava/lang/String;
    :cond_4d
    :goto_4d
    return v1
.end method

.method public static whitelist isChineseOperator(Ljava/lang/String;)Z
    .registers 2
    .param p0, "operator"    # Ljava/lang/String;

    .line 202
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "460"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static whitelist isDialable(Ljava/lang/String;)Z
    .registers 5
    .param p0, "address"    # Ljava/lang/String;

    .line 145
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 147
    :cond_8
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "count":I
    :goto_d
    if-ge v0, v2, :cond_1d

    .line 148
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lmiui/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 149
    return v1

    .line 147
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 152
    .end local v0    # "i":I
    .end local v2    # "count":I
    :cond_1d
    const/4 v0, 0x1

    return v0
.end method

.method public static whitelist isEmergencyNumber(Ljava/lang/String;)Z
    .registers 3
    .param p0, "number"    # Ljava/lang/String;

    .line 1300
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_13

    sget-boolean v0, Lmiui/os/Build;->IS_MIUI:Z

    if-eqz v0, :cond_13

    .line 1301
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p0}, Lmiui/telephony/PhoneNumberUtils;->invokeIsLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1303
    :cond_13
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lmiui/telephony/PhoneNumberUtils;->isMiuiEmergencyNumber(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_22

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :cond_22
    :goto_22
    return v0
.end method

.method public static whitelist isMiuiEmergencyNumber(Ljava/lang/String;Z)Z
    .registers 9
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "useExactMatch"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1281
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1284
    :cond_4
    sget-object v1, Lmiui/telephony/PhoneNumberUtils;->EMERGENCY_NUMBERS:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_8
    if-ge v3, v2, :cond_20

    aget-object v4, v1, v3

    .line 1285
    .local v4, "emergencyNum":Ljava/lang/String;
    const/4 v5, 0x1

    if-eqz p1, :cond_16

    .line 1286
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 1287
    return v5

    .line 1290
    :cond_16
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 1291
    return v5

    .line 1284
    .end local v4    # "emergencyNum":Ljava/lang/String;
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1296
    :cond_20
    return v0
.end method

.method public static whitelist isServiceNumber(Ljava/lang/String;)Z
    .registers 3
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 197
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    .line 198
    .local v0, "pn":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isServiceNumber()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public static whitelist maskPhoneNumber(Ljava/lang/String;I)Ljava/lang/String;
    .registers 9
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "cutMode"    # I

    .line 1341
    if-nez p0, :cond_5

    .line 1342
    const-string v0, ""

    return-object v0

    .line 1344
    :cond_5
    const/4 v0, 0x0

    .line 1345
    .local v0, "alnumCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 1346
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lmiui/telephony/PhoneNumberUtils;->isAlnum(C)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1347
    add-int/lit8 v0, v0, 0x1

    .line 1345
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1351
    .end local v1    # "i":I
    :cond_1c
    const/4 v1, 0x0

    .line 1352
    .local v1, "cutLength":I
    const/4 v2, 0x7

    if-ge v0, v2, :cond_26

    .line 1353
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 1354
    :cond_26
    const/16 v2, 0xb

    if-ge v0, v2, :cond_2c

    .line 1355
    const/4 v1, 0x2

    goto :goto_2d

    .line 1357
    :cond_2c
    const/4 v1, 0x3

    .line 1360
    :goto_2d
    packed-switch p1, :pswitch_data_80

    .line 1371
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid cut mode"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1368
    :pswitch_38
    sub-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    .line 1369
    .local v2, "cutStart":I
    goto :goto_42

    .line 1365
    .end local v2    # "cutStart":I
    :pswitch_3d
    sub-int v2, v0, v1

    .line 1366
    .restart local v2    # "cutStart":I
    goto :goto_42

    .line 1362
    .end local v2    # "cutStart":I
    :pswitch_40
    const/4 v2, 0x0

    .line 1363
    .restart local v2    # "cutStart":I
    nop

    .line 1374
    :goto_42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1375
    .local v3, "result":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 1376
    .local v4, "addedAlnumCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_49
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_7a

    .line 1377
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lmiui/telephony/PhoneNumberUtils;->isAlnum(C)Z

    move-result v6

    if-eqz v6, :cond_70

    .line 1378
    if-lt v4, v2, :cond_66

    if-gtz v1, :cond_5e

    goto :goto_66

    .line 1381
    :cond_5e
    const/16 v6, 0x3f

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1382
    add-int/lit8 v1, v1, -0x1

    goto :goto_6d

    .line 1379
    :cond_66
    :goto_66
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1384
    :goto_6d
    add-int/lit8 v4, v4, 0x1

    goto :goto_77

    .line 1386
    :cond_70
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1376
    :goto_77
    add-int/lit8 v5, v5, 0x1

    goto :goto_49

    .line 1390
    .end local v5    # "i":I
    :cond_7a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    nop

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_40
        :pswitch_3d
        :pswitch_38
    .end packed-switch
.end method

.method private static blacklist minPositive(II)I
    .registers 3
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 57
    if-ltz p0, :cond_a

    if-ltz p1, :cond_a

    .line 58
    if-ge p0, p1, :cond_8

    move v0, p0

    goto :goto_9

    :cond_8
    move v0, p1

    :goto_9
    return v0

    .line 59
    :cond_a
    if-ltz p0, :cond_d

    .line 60
    return p0

    .line 61
    :cond_d
    if-ltz p1, :cond_10

    .line 62
    return p1

    .line 64
    :cond_10
    const/4 v0, -0x1

    return v0
.end method

.method public static whitelist miuiFormatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "phoneNumberE164"    # Ljava/lang/String;
    .param p2, "defaultCountryIso"    # Ljava/lang/String;

    .line 1405
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1406
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    .line 1407
    .local v0, "pn":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    if-eqz v0, :cond_46

    .line 1408
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 1409
    .local v1, "prefix":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_46

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 1410
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1411
    .local v2, "number":Ljava/lang/String;
    invoke-static {v2, p1, p2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1413
    .local v3, "formatedNumber":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1418
    .end local v0    # "pn":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    .end local v1    # "prefix":Ljava/lang/String;
    .end local v2    # "number":Ljava/lang/String;
    .end local v3    # "formatedNumber":Ljava/lang/String;
    :cond_46
    invoke-static {p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist parseNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "number"    # Ljava/lang/String;

    .line 1320
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_15

    .line 1321
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    .line 1322
    .local v0, "pn":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    if-eqz v0, :cond_15

    .line 1323
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getEffectiveNumber()Ljava/lang/String;

    move-result-object p0

    .line 1326
    .end local v0    # "pn":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    :cond_15
    return-object p0
.end method

.method public static whitelist parseTelocationString(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/CharSequence;

    .line 1210
    invoke-static {p0, p1}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->queryTelocation(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist queryOperatorStringAsync(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$OperatorQueryListener;Landroid/content/Context;Ljava/lang/String;)V
    .registers 18
    .param p0, "token"    # I
    .param p1, "cookie1"    # Ljava/lang/Object;
    .param p2, "cookie2"    # Ljava/lang/Object;
    .param p3, "cookie3"    # Ljava/lang/Object;
    .param p4, "cookie4"    # Ljava/lang/Object;
    .param p5, "listener"    # Lmiui/telephony/PhoneNumberUtils$OperatorQueryListener;
    .param p6, "context"    # Landroid/content/Context;
    .param p7, "phoneNumber"    # Ljava/lang/String;

    .line 1085
    invoke-virtual/range {p6 .. p6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->isTelocationEnable(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1086
    invoke-static {}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->getInstance()Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;

    move-result-object v1

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->startQueryOperatorString(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$OperatorQueryListener;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_25

    .line 1089
    :cond_1c
    const/4 v7, 0x0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v2 .. v7}, Lmiui/telephony/PhoneNumberUtils$OperatorQueryListener;->onComplete(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1091
    :goto_25
    return-void
.end method

.method public static whitelist queryOperatorStringAsync(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$OperatorQueryListener;Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 18
    .param p0, "token"    # I
    .param p1, "cookie1"    # Ljava/lang/Object;
    .param p2, "cookie2"    # Ljava/lang/Object;
    .param p3, "cookie3"    # Ljava/lang/Object;
    .param p4, "cookie4"    # Ljava/lang/Object;
    .param p5, "listener"    # Lmiui/telephony/PhoneNumberUtils$OperatorQueryListener;
    .param p6, "context"    # Landroid/content/Context;
    .param p7, "phoneNumber"    # Ljava/lang/String;
    .param p8, "enableTelocation"    # Z

    .line 1158
    if-eqz p8, :cond_13

    .line 1159
    invoke-static {}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->getInstance()Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;

    move-result-object v0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->startQueryOperatorString(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$OperatorQueryListener;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1c

    .line 1162
    :cond_13
    const/4 v6, 0x0

    move-object v1, p5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v1 .. v6}, Lmiui/telephony/PhoneNumberUtils$OperatorQueryListener;->onComplete(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1164
    :goto_1c
    return-void
.end method

.method public static whitelist queryTelocationAndOperatorStringAsync(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$TelocationAndOperatorQueryListener;Landroid/content/Context;Ljava/lang/String;)V
    .registers 18
    .param p0, "token"    # I
    .param p1, "cookie1"    # Ljava/lang/Object;
    .param p2, "cookie2"    # Ljava/lang/Object;
    .param p3, "cookie3"    # Ljava/lang/Object;
    .param p4, "cookie4"    # Ljava/lang/Object;
    .param p5, "listener"    # Lmiui/telephony/PhoneNumberUtils$TelocationAndOperatorQueryListener;
    .param p6, "context"    # Landroid/content/Context;
    .param p7, "phoneNumber"    # Ljava/lang/String;

    .line 1108
    invoke-virtual/range {p6 .. p6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->isTelocationEnable(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1109
    invoke-static {}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->getInstance()Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;

    move-result-object v1

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->startQueryTelocationAndOperatorString(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$TelocationAndOperatorQueryListener;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_26

    .line 1112
    :cond_1c
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v2 .. v8}, Lmiui/telephony/PhoneNumberUtils$TelocationAndOperatorQueryListener;->onComplete(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    :goto_26
    return-void
.end method

.method public static whitelist queryTelocationAndOperatorStringAsync(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$TelocationAndOperatorQueryListener;Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 18
    .param p0, "token"    # I
    .param p1, "cookie1"    # Ljava/lang/Object;
    .param p2, "cookie2"    # Ljava/lang/Object;
    .param p3, "cookie3"    # Ljava/lang/Object;
    .param p4, "cookie4"    # Ljava/lang/Object;
    .param p5, "listener"    # Lmiui/telephony/PhoneNumberUtils$TelocationAndOperatorQueryListener;
    .param p6, "context"    # Landroid/content/Context;
    .param p7, "phoneNumber"    # Ljava/lang/String;
    .param p8, "enableTelocation"    # Z

    .line 1183
    if-eqz p8, :cond_13

    .line 1184
    invoke-static {}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->getInstance()Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;

    move-result-object v0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->startQueryTelocationAndOperatorString(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$TelocationAndOperatorQueryListener;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1d

    .line 1187
    :cond_13
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v1 .. v7}, Lmiui/telephony/PhoneNumberUtils$TelocationAndOperatorQueryListener;->onComplete(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    :goto_1d
    return-void
.end method

.method public static whitelist queryTelocationStringAsync(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;Landroid/content/Context;Ljava/lang/String;)V
    .registers 18
    .param p0, "token"    # I
    .param p1, "cookie1"    # Ljava/lang/Object;
    .param p2, "cookie2"    # Ljava/lang/Object;
    .param p3, "cookie3"    # Ljava/lang/Object;
    .param p4, "cookie4"    # Ljava/lang/Object;
    .param p5, "listener"    # Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;
    .param p6, "context"    # Landroid/content/Context;
    .param p7, "phoneNumber"    # Ljava/lang/String;

    .line 1062
    invoke-virtual/range {p6 .. p6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->isTelocationEnable(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1063
    invoke-static {}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->getInstance()Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;

    move-result-object v1

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->startQueryTelocationString(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_25

    .line 1066
    :cond_1c
    const/4 v7, 0x0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v2 .. v7}, Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;->onComplete(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1068
    :goto_25
    return-void
.end method

.method public static whitelist queryTelocationStringAsync(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 18
    .param p0, "token"    # I
    .param p1, "cookie1"    # Ljava/lang/Object;
    .param p2, "cookie2"    # Ljava/lang/Object;
    .param p3, "cookie3"    # Ljava/lang/Object;
    .param p4, "cookie4"    # Ljava/lang/Object;
    .param p5, "listener"    # Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;
    .param p6, "context"    # Landroid/content/Context;
    .param p7, "phoneNumber"    # Ljava/lang/String;
    .param p8, "enableTelocation"    # Z

    .line 1133
    if-eqz p8, :cond_13

    .line 1134
    invoke-static {}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->getInstance()Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;

    move-result-object v0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->startQueryTelocationString(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1c

    .line 1137
    :cond_13
    const/4 v6, 0x0

    move-object v1, p5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v1 .. v6}, Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;->onComplete(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1139
    :goto_1c
    return-void
.end method

.method public static whitelist removeDashesAndBlanks(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 1243
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1244
    return-object p0

    .line 1247
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1248
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 1249
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1250
    .local v2, "c":C
    const/16 v3, 0x20

    if-eq v2, v3, :cond_22

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_22

    .line 1251
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1248
    .end local v2    # "c":C
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1254
    .end local v1    # "i":I
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist splitNetworkAndPostDialPortion(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 179
    if-nez p0, :cond_4

    .line 180
    const/4 v0, 0x0

    return-object v0

    .line 183
    :cond_4
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 184
    .local v0, "networkEnd":I
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 185
    .local v2, "ret":[Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 186
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v0, v3, :cond_1d

    const-string v3, ""

    goto :goto_21

    :cond_1d
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :goto_21
    aput-object v3, v2, v1

    .line 187
    return-object v2
.end method

.method public static whitelist stripSeparatorsAndCountryCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 39
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "number":Ljava/lang/String;
    if-eqz v0, :cond_27

    .line 42
    const-string v1, "+86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 43
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    .line 44
    :cond_17
    const-string v1, "0086"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 45
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 48
    :cond_27
    :goto_27
    return-object v0
.end method

.method public static whitelist toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "number"    # Ljava/lang/String;

    .line 1455
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/telephony/PhoneNumberUtils;->toLogSafePhoneNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist toLogSafePhoneNumber(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "originalCount"    # I

    .line 1464
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1465
    .local v0, "length":I
    :goto_8
    if-nez v0, :cond_d

    .line 1466
    const-string v1, ""

    return-object v1

    .line 1471
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1472
    .local v1, "builder":Ljava/lang/StringBuilder;
    if-le v0, p1, :cond_17

    sub-int v2, v0, p1

    goto :goto_18

    :cond_17
    move v2, v0

    .line 1473
    .local v2, "originalIndex":I
    :goto_18
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_19
    if-ge v3, v0, :cond_3a

    .line 1474
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1475
    .local v4, "c":C
    if-ge v3, v2, :cond_34

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_34

    const/16 v5, 0x40

    if-eq v4, v5, :cond_34

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_2e

    goto :goto_34

    .line 1478
    :cond_2e
    const/16 v5, 0x78

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 1476
    :cond_34
    :goto_34
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1473
    .end local v4    # "c":C
    :goto_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 1481
    .end local v3    # "i":I
    :cond_3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
