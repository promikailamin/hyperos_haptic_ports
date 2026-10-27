.class public Lmiui/security/WakePathRuleInfo;
.super Ljava/lang/Object;
.source "WakePathRuleInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/security/WakePathRuleInfo$UserSettings;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/security/WakePathRuleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist EXPRESS_TYPE_WILDCARD_ALL:I = 0x2

.field private static final blacklist EXPRESS_TYPE_WILDCARD_END:I = 0x1

.field private static final blacklist EXPRESS_TYPE_WILDCARD_NONE:I = 0x0

.field private static final blacklist EXPRESS_TYPE_WILDCARD_OTHER:I = 0x3

.field private static final blacklist EXPRESS_WILDCARD:Ljava/lang/String; = "*"

.field private static final blacklist TAG:Ljava/lang/String;

.field public static final blacklist TYPE_ANALYTIC:I = 0x16

.field public static final blacklist WAKE_TYPE_ALLOW_START_ACTIVITY:I = 0x11

.field public static final blacklist WAKE_TYPE_CALLEE_ALIVE_ACTIVITY_BLACK:I = 0x1000

.field public static final blacklist WAKE_TYPE_CALLEE_ALIVE_BLACK_OFFSET:I = 0xc

.field public static final blacklist WAKE_TYPE_CALLEE_ALIVE_BROADCAST_BLACK:I = 0x2000

.field public static final blacklist WAKE_TYPE_CALLEE_ALIVE_PROVIDER_BLACK:I = 0x4000

.field public static final blacklist WAKE_TYPE_CALLEE_ALIVE_SERVICE_BLACK:I = 0x8000

.field public static final blacklist WAKE_TYPE_CALL_LIST:I = 0x10

.field public static final blacklist WAKE_TYPE_GET_CONTENT_PROVIDER:I = 0x4

.field public static final blacklist WAKE_TYPE_SEND_BROADCAST:I = 0x2

.field public static final blacklist WAKE_TYPE_SEND_SPECIFY_BROADCAST:I = 0x12

.field public static final blacklist WAKE_TYPE_START_ACTIVITY:I = 0x1

.field public static final blacklist WAKE_TYPE_START_INSTRUMENTATION:I = 0x0

.field public static final blacklist WAKE_TYPE_START_SERVICE:I = 0x8

.field public static final blacklist WAKE_TYPE_WHITE_BLACK_OFFSET:I = 0x5

.field public static final blacklist WAKE_TYPE_WHITE_GET_CONTENT_PROVIDER:I = 0x80

.field public static final blacklist WAKE_TYPE_WHITE_SEND_BROADCAST:I = 0x40

.field public static final blacklist WAKE_TYPE_WHITE_START_ACTIVITY:I = 0x20

.field public static final blacklist WAKE_TYPE_WHITE_START_SERVICE:I = 0x100


# instance fields
.field public blacklist mActionExpress:Ljava/lang/String;

.field private blacklist mActionExpressType:I

.field public blacklist mCalleeExpress:Ljava/lang/String;

.field private blacklist mCalleeExpressType:I

.field public blacklist mCallerExpress:Ljava/lang/String;

.field private blacklist mCallerExpressType:I

.field public blacklist mClassNameExpress:Ljava/lang/String;

.field private blacklist mClassNameExpressType:I

.field public blacklist mHashCode:I

.field public blacklist mUserSettings:I

.field public blacklist mWakeType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 19
    const-class v0, Lmiui/security/WakePathRuleInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/security/WakePathRuleInfo;->TAG:Ljava/lang/String;

    .line 115
    new-instance v0, Lmiui/security/WakePathRuleInfo$1;

    invoke-direct {v0}, Lmiui/security/WakePathRuleInfo$1;-><init>()V

    sput-object v0, Lmiui/security/WakePathRuleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/security/WakePathRuleInfo;->mActionExpress:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/security/WakePathRuleInfo;->mActionExpressType:I

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/security/WakePathRuleInfo;->mClassNameExpress:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/security/WakePathRuleInfo;->mClassNameExpressType:I

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/security/WakePathRuleInfo;->mCallerExpress:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/security/WakePathRuleInfo;->mCallerExpressType:I

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/security/WakePathRuleInfo;->mCalleeExpress:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/security/WakePathRuleInfo;->mCalleeExpressType:I

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/security/WakePathRuleInfo;->mWakeType:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/security/WakePathRuleInfo;->mUserSettings:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/security/WakePathRuleInfo;->mHashCode:I

    .line 137
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lmiui/security/WakePathRuleInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/security/WakePathRuleInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 8
    .param p1, "actionExpress"    # Ljava/lang/String;
    .param p2, "classNameExpress"    # Ljava/lang/String;
    .param p3, "callerExpress"    # Ljava/lang/String;
    .param p4, "calleeExpress"    # Ljava/lang/String;
    .param p5, "wakeType"    # I
    .param p6, "userSettings"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lmiui/security/WakePathRuleInfo;->mActionExpress:Ljava/lang/String;

    .line 79
    invoke-static {p1}, Lmiui/security/WakePathRuleInfo;->getExpressType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmiui/security/WakePathRuleInfo;->mActionExpressType:I

    .line 80
    iput-object p2, p0, Lmiui/security/WakePathRuleInfo;->mClassNameExpress:Ljava/lang/String;

    .line 81
    invoke-static {p2}, Lmiui/security/WakePathRuleInfo;->getExpressType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmiui/security/WakePathRuleInfo;->mClassNameExpressType:I

    .line 82
    iput-object p3, p0, Lmiui/security/WakePathRuleInfo;->mCallerExpress:Ljava/lang/String;

    .line 83
    invoke-static {p3}, Lmiui/security/WakePathRuleInfo;->getExpressType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmiui/security/WakePathRuleInfo;->mCallerExpressType:I

    .line 84
    iput-object p4, p0, Lmiui/security/WakePathRuleInfo;->mCalleeExpress:Ljava/lang/String;

    .line 85
    invoke-static {p4}, Lmiui/security/WakePathRuleInfo;->getExpressType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmiui/security/WakePathRuleInfo;->mCalleeExpressType:I

    .line 86
    iput p5, p0, Lmiui/security/WakePathRuleInfo;->mWakeType:I

    .line 87
    iput p6, p0, Lmiui/security/WakePathRuleInfo;->mUserSettings:I

    .line 88
    const/16 v0, 0x10

    if-ne p5, v0, :cond_32

    .line 89
    invoke-static {p1, p2, p3, p4}, Lmiui/security/WakePathRuleInfo;->getHashCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmiui/security/WakePathRuleInfo;->mHashCode:I

    goto :goto_35

    .line 91
    :cond_32
    const/4 v0, 0x0

    iput v0, p0, Lmiui/security/WakePathRuleInfo;->mHashCode:I

    .line 93
    :goto_35
    return-void
.end method

.method private static blacklist byte2Hex([B)Ljava/lang/String;
    .registers 8
    .param p0, "bytes"    # [B

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    .local v0, "builder":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_23

    aget-byte v3, p0, v2

    .line 326
    .local v3, "b":B
    and-int/lit16 v4, v3, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 327
    .local v4, "temp":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1d

    .line 329
    const-string v5, "0"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    :cond_1d
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 333
    .end local v4    # "temp":Ljava/lang/String;
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist checkCompatibility(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 10
    .param p0, "actionExpress"    # Ljava/lang/String;
    .param p1, "classNameExpress"    # Ljava/lang/String;
    .param p2, "callerExpress"    # Ljava/lang/String;
    .param p3, "calleeExpress"    # Ljava/lang/String;
    .param p4, "wakeType"    # I

    .line 280
    const/4 v0, 0x1

    const/16 v1, 0x11

    if-ne p4, v1, :cond_6

    .line 281
    return v0

    .line 284
    :cond_6
    const-string v1, "*"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_22

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 285
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 286
    return v3

    .line 289
    :cond_22
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    const/16 v4, 0xa

    if-ge v2, v4, :cond_3a

    .line 290
    return v3

    .line 293
    :cond_3a
    const-string v2, "com.miui.home"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6c

    invoke-static {p3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_49

    goto :goto_6c

    .line 297
    :cond_49
    const-string v2, "android"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_57

    invoke-static {p3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 298
    :cond_57
    invoke-static {p3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 299
    return v3

    .line 301
    :cond_5e
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 302
    return v3

    .line 305
    :cond_6b
    return v0

    .line 294
    :cond_6c
    :goto_6c
    return v3
.end method

.method private static blacklist expressCompare(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 8
    .param p0, "selfExpress"    # Ljava/lang/String;
    .param p1, "selfExpressType"    # I
    .param p2, "otherExpress"    # Ljava/lang/String;

    .line 220
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_6a

    :pswitch_4
    goto :goto_67

    .line 238
    :pswitch_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_42

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_42

    .line 241
    :cond_12
    const-string v1, "*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 242
    .local v1, "index":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1c

    .line 243
    return v0

    .line 245
    :cond_1c
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, "strStart":Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 247
    .local v3, "strEnd":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_41

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_33

    goto :goto_41

    .line 251
    :cond_33
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3a

    .line 252
    return v0

    .line 255
    :cond_3a
    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_67

    .line 256
    return v0

    .line 248
    :cond_41
    :goto_41
    return v0

    .line 239
    .end local v1    # "index":I
    .end local v2    # "strStart":Ljava/lang/String;
    .end local v3    # "strEnd":Ljava/lang/String;
    :cond_42
    :goto_42
    return v0

    .line 228
    :pswitch_43
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_53

    .line 229
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 232
    :cond_53
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5f

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_67

    .line 233
    :cond_5f
    return v0

    .line 222
    :pswitch_60
    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_67

    .line 223
    return v0

    .line 263
    :cond_67
    :goto_67
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_60
        :pswitch_43
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static blacklist getExpressType(Ljava/lang/String;)I
    .registers 4
    .param p0, "express"    # Ljava/lang/String;

    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, "type":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 208
    const/4 v0, 0x0

    goto :goto_22

    .line 209
    :cond_9
    const-string v1, "*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 210
    const/4 v0, 0x2

    goto :goto_22

    .line 211
    :cond_13
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 212
    const/4 v0, 0x1

    goto :goto_22

    .line 213
    :cond_1b
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 214
    const/4 v0, 0x3

    .line 216
    :cond_22
    :goto_22
    return v0
.end method

.method public static blacklist getHashCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p0, "actionExpress"    # Ljava/lang/String;
    .param p1, "classNameExpress"    # Ljava/lang/String;
    .param p2, "callerExpress"    # Ljava/lang/String;
    .param p3, "calleeExpress"    # Ljava/lang/String;

    .line 197
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 198
    .local v0, "strBuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist equals(I)Z
    .registers 6
    .param p1, "hashCode"    # I

    .line 181
    iget v0, p0, Lmiui/security/WakePathRuleInfo;->mWakeType:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_10

    if-nez p1, :cond_a

    goto :goto_10

    .line 185
    :cond_a
    iget v0, p0, Lmiui/security/WakePathRuleInfo;->mHashCode:I

    if-ne v0, p1, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1

    .line 182
    :cond_10
    :goto_10
    sget-object v0, Lmiui/security/WakePathRuleInfo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MIUILOG-WAKEPATH equals: Invalid parameter!! mWakeType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lmiui/security/WakePathRuleInfo;->mWakeType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hashCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 142
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 143
    return v0

    .line 147
    :cond_4
    :try_start_4
    move-object v1, p1

    check-cast v1, Lmiui/security/WakePathRuleInfo;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_7} :catch_3a

    .line 151
    .local v1, "info":Lmiui/security/WakePathRuleInfo;
    nop

    .line 153
    iget-object v2, p0, Lmiui/security/WakePathRuleInfo;->mActionExpress:Ljava/lang/String;

    iget-object v3, v1, Lmiui/security/WakePathRuleInfo;->mActionExpress:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_38

    iget-object v2, p0, Lmiui/security/WakePathRuleInfo;->mClassNameExpress:Ljava/lang/String;

    iget-object v3, v1, Lmiui/security/WakePathRuleInfo;->mClassNameExpress:Ljava/lang/String;

    .line 154
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_38

    iget-object v2, p0, Lmiui/security/WakePathRuleInfo;->mCallerExpress:Ljava/lang/String;

    iget-object v3, v1, Lmiui/security/WakePathRuleInfo;->mCallerExpress:Ljava/lang/String;

    .line 155
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_38

    iget-object v2, p0, Lmiui/security/WakePathRuleInfo;->mCalleeExpress:Ljava/lang/String;

    iget-object v3, v1, Lmiui/security/WakePathRuleInfo;->mCalleeExpress:Ljava/lang/String;

    .line 156
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_38

    iget v2, p0, Lmiui/security/WakePathRuleInfo;->mWakeType:I

    iget v3, v1, Lmiui/security/WakePathRuleInfo;->mWakeType:I

    if-ne v2, v3, :cond_38

    const/4 v0, 0x1

    goto :goto_39

    :cond_38
    nop

    .line 153
    :goto_39
    return v0

    .line 148
    .end local v1    # "info":Lmiui/security/WakePathRuleInfo;
    :catch_3a
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v1}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 150
    return v0
.end method

.method public blacklist equals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 9
    .param p1, "actionExpress"    # Ljava/lang/String;
    .param p2, "classNameExpress"    # Ljava/lang/String;
    .param p3, "callerExpress"    # Ljava/lang/String;
    .param p4, "calleeExpress"    # Ljava/lang/String;
    .param p5, "wakeType"    # I

    .line 161
    iget v0, p0, Lmiui/security/WakePathRuleInfo;->mWakeType:I

    and-int/2addr v0, p5

    const/4 v1, 0x0

    if-nez v0, :cond_7

    .line 162
    return v1

    .line 165
    :cond_7
    iget-object v0, p0, Lmiui/security/WakePathRuleInfo;->mActionExpress:Ljava/lang/String;

    iget v2, p0, Lmiui/security/WakePathRuleInfo;->mActionExpressType:I

    invoke-static {v0, v2, p1}, Lmiui/security/WakePathRuleInfo;->expressCompare(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 166
    return v1

    .line 168
    :cond_12
    iget-object v0, p0, Lmiui/security/WakePathRuleInfo;->mClassNameExpress:Ljava/lang/String;

    iget v2, p0, Lmiui/security/WakePathRuleInfo;->mClassNameExpressType:I

    invoke-static {v0, v2, p2}, Lmiui/security/WakePathRuleInfo;->expressCompare(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 169
    return v1

    .line 171
    :cond_1d
    iget-object v0, p0, Lmiui/security/WakePathRuleInfo;->mCallerExpress:Ljava/lang/String;

    iget v2, p0, Lmiui/security/WakePathRuleInfo;->mCallerExpressType:I

    invoke-static {v0, v2, p3}, Lmiui/security/WakePathRuleInfo;->expressCompare(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 172
    return v1

    .line 174
    :cond_28
    iget-object v0, p0, Lmiui/security/WakePathRuleInfo;->mCalleeExpress:Ljava/lang/String;

    iget v2, p0, Lmiui/security/WakePathRuleInfo;->mCalleeExpressType:I

    invoke-static {v0, v2, p4}, Lmiui/security/WakePathRuleInfo;->expressCompare(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 175
    return v1

    .line 177
    :cond_33
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getCalleeExpress()Ljava/lang/String;
    .registers 2

    .line 267
    iget-object v0, p0, Lmiui/security/WakePathRuleInfo;->mCalleeExpress:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getCallerExpress()Ljava/lang/String;
    .registers 2

    .line 271
    iget-object v0, p0, Lmiui/security/WakePathRuleInfo;->mCallerExpress:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSHA256Rule()Ljava/lang/String;
    .registers 6

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmiui/security/WakePathRuleInfo;->mActionExpress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/security/WakePathRuleInfo;->mClassNameExpress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/security/WakePathRuleInfo;->mCallerExpress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/security/WakePathRuleInfo;->mCalleeExpress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/security/WakePathRuleInfo;->mWakeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "rule":Ljava/lang/String;
    const-string v1, ""

    .line 313
    .local v1, "encodeStr":Ljava/lang/String;
    :try_start_29
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 314
    .local v2, "messageDigest":Ljava/security/MessageDigest;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 315
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lmiui/security/WakePathRuleInfo;->byte2Hex([B)Ljava/lang/String;

    move-result-object v3
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_40} :catch_42

    move-object v1, v3

    .line 318
    goto :goto_4a

    .line 316
    .end local v2    # "messageDigest":Ljava/security/MessageDigest;
    :catch_42
    move-exception v2

    .line 317
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lmiui/security/WakePathRuleInfo;->TAG:Ljava/lang/String;

    const-string v4, "encrypt sha256 exception"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4a
    return-object v1
.end method

.method public blacklist getUserSettings()I
    .registers 2

    .line 275
    iget v0, p0, Lmiui/security/WakePathRuleInfo;->mUserSettings:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WakePathRuleInfo: mActionExpress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/security/WakePathRuleInfo;->mActionExpress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mClassNameExpress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/security/WakePathRuleInfo;->mClassNameExpress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCallerExpress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/security/WakePathRuleInfo;->mCallerExpress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCalleeExpress= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/security/WakePathRuleInfo;->mCalleeExpress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWakeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/security/WakePathRuleInfo;->mWakeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " userSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/security/WakePathRuleInfo;->mUserSettings:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 102
    iget-object v0, p0, Lmiui/security/WakePathRuleInfo;->mActionExpress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget v0, p0, Lmiui/security/WakePathRuleInfo;->mActionExpressType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget-object v0, p0, Lmiui/security/WakePathRuleInfo;->mClassNameExpress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget v0, p0, Lmiui/security/WakePathRuleInfo;->mClassNameExpressType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget-object v0, p0, Lmiui/security/WakePathRuleInfo;->mCallerExpress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget v0, p0, Lmiui/security/WakePathRuleInfo;->mCallerExpressType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-object v0, p0, Lmiui/security/WakePathRuleInfo;->mCalleeExpress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget v0, p0, Lmiui/security/WakePathRuleInfo;->mCalleeExpressType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget v0, p0, Lmiui/security/WakePathRuleInfo;->mWakeType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget v0, p0, Lmiui/security/WakePathRuleInfo;->mUserSettings:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget v0, p0, Lmiui/security/WakePathRuleInfo;->mHashCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    return-void
.end method
