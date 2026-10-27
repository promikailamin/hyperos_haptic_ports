.class public Lcom/android/internal/widget/LockPatternUtils;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;,
        Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;,
        Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;,
        Lcom/android/internal/widget/LockPatternUtils$WrappedCallback;,
        Lcom/android/internal/widget/LockPatternUtils$VerifyFlag;,
        Lcom/android/internal/widget/LockPatternUtils$CredentialType;
    }
.end annotation


# static fields
.field public static final blacklist AUTO_PIN_CONFIRM:Ljava/lang/String; = "lockscreen.auto_pin_confirm"

.field private static final blacklist CREDENTIAL_TYPE_API:Ljava/lang/String; = "getCredentialType"

.field public static final blacklist CREDENTIAL_TYPE_NONE:I = -0x1

.field public static final blacklist CREDENTIAL_TYPE_PASSWORD:I = 0x4

.field public static final blacklist CREDENTIAL_TYPE_PASSWORD_OR_PIN:I = 0x2

.field public static final blacklist CREDENTIAL_TYPE_PATTERN:I = 0x1

.field public static final blacklist CREDENTIAL_TYPE_PIN:I = 0x3

.field public static final blacklist CURRENT_LSKF_BASED_PROTECTOR_ID_KEY:Ljava/lang/String; = "sp-handle"

.field public static final blacklist DISABLE_LOCKSCREEN_KEY:Ljava/lang/String; = "lockscreen.disabled"

.field private static final blacklist ENABLED_TRUST_AGENTS:Ljava/lang/String; = "lockscreen.enabledtrustagents"

.field public static final blacklist ENCRYPTED_REMOTE_CREDENTIALS_HEADER:[B

.field public static final blacklist FAILED_ATTEMPTS_BEFORE_WIPE_GRACE:I = 0x5

.field public static final blacklist FAILED_ATTEMPT_COUNTDOWN_INTERVAL_MS:J = 0x3e8L

.field private static final blacklist FRP_CREDENTIAL_ENABLED:Z = true

.field private static final blacklist GSI_RUNNING_PROP:Ljava/lang/String; = "ro.gsid.image_running"

.field private static final blacklist IS_TRUST_USUALLY_MANAGED:Ljava/lang/String; = "lockscreen.istrustusuallymanaged"

.field private static final blacklist KNOWN_TRUST_AGENTS:Ljava/lang/String; = "lockscreen.knowntrustagents"

.field static final blacklist LOCKOUT_END_TIME_API:Ljava/lang/String; = "getLockoutEndTime"

.field public static final blacklist LOCKSCREEN_POWER_BUTTON_INSTANTLY_LOCKS:Ljava/lang/String; = "lockscreen.power_button_instantly_locks"

.field public static final blacklist LOCK_PASSWORD_SALT_KEY:Ljava/lang/String; = "lockscreen.password_salt"

.field private static final blacklist LOCK_PIN_ENHANCED_PRIVACY:Ljava/lang/String; = "pin_enhanced_privacy"

.field private static final blacklist LOCK_SCREEN_DEVICE_OWNER_INFO:Ljava/lang/String; = "lockscreen.device_owner_info"

.field private static final blacklist LOCK_SCREEN_OWNER_INFO:Ljava/lang/String; = "lock_screen_owner_info"

.field private static final blacklist LOCK_SCREEN_OWNER_INFO_ENABLED:Ljava/lang/String; = "lock_screen_owner_info_enabled"

.field public static final blacklist MIN_AUTO_PIN_REQUIREMENT_LENGTH:I = 0x6

.field public static final blacklist MIN_LOCK_PASSWORD_SIZE:I = 0x4

.field public static final blacklist MIN_LOCK_PATTERN_SIZE:I = 0x4

.field public static final blacklist MIN_PATTERN_REGISTER_FAIL:I = 0x4

.field public static final blacklist PASSWORD_HISTORY_DELIMITER:Ljava/lang/String; = ","

.field public static final blacklist PASSWORD_HISTORY_KEY:Ljava/lang/String; = "lockscreen.passwordhistory"

.field public static final blacklist PASSWORD_TYPE_KEY:Ljava/lang/String; = "lockscreen.password_type"

.field public static final blacklist PATTERN_SIZE_DEFAULT:B = 0x3t

.field public static final blacklist PIN_LENGTH_UNAVAILABLE:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "LockPatternUtils"

.field public static final blacklist USER_FRP:I = -0x270f

.field public static final blacklist USER_REPAIR_MODE:I = -0x270e

.field public static final blacklist VERIFY_FLAG_REQUEST_GK_PW_HANDLE:I = 0x1

.field public static final blacklist VERIFY_FLAG_WRITE_REPAIR_MODE_PW:I = 0x2


# instance fields
.field private final greylist mContentResolver:Landroid/content/ContentResolver;

.field private final greylist mContext:Landroid/content/Context;

.field private final blacklist mCredentialTypeCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCredentialTypeQuery:Landroid/app/PropertyInvalidatedCache$QueryHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache$QueryHandler<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mHasSecureLockScreen:Ljava/lang/Boolean;

.field private blacklist mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private final blacklist mLockoutDeadlines:Landroid/util/SparseLongArray;

.field private final blacklist mLockoutEndTimeCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            "Ljava/time/Duration;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLockoutEndTimeQuery:Landroid/app/PropertyInvalidatedCache$QueryHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache$QueryHandler<",
            "Ljava/lang/Integer;",
            "Ljava/time/Duration;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTimeSinceBootSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/time/Duration;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$-Kqr3DIBlNt9I-ZYZ6l_uXcMz3A()Ljava/time/Duration;
    .registers 1

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->systemTimeSinceBoot()Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 137
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 138
    const-string v1, "encrypted_remote_credentials"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->ENCRYPTED_REMOTE_CREDENTIALS_HEADER:[B

    .line 137
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;)V
    .registers 4

    .line 317
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/widget/LockPatternUtils$$ExternalSyntheticLambda0;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;Lcom/android/internal/widget/ILockSettings;Ljava/util/function/Supplier;)V

    .line 318
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/widget/ILockSettings;Ljava/util/function/Supplier;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/internal/widget/ILockSettings;",
            "Ljava/util/function/Supplier<",
            "Ljava/time/Duration;",
            ">;)V"
        }
    .end annotation

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockoutDeadlines:Landroid/util/SparseLongArray;

    .line 1016
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils$1;-><init>(Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mCredentialTypeQuery:Landroid/app/PropertyInvalidatedCache$QueryHandler;

    .line 1041
    new-instance v1, Landroid/app/PropertyInvalidatedCache;

    const-string v5, "getCredentialType"

    iget-object v6, p0, Lcom/android/internal/widget/LockPatternUtils;->mCredentialTypeQuery:Landroid/app/PropertyInvalidatedCache$QueryHandler;

    const/4 v2, 0x4

    const-string/jumbo v3, "system_server"

    const-string v4, "getCredentialType"

    invoke-direct/range {v1 .. v6}, Landroid/app/PropertyInvalidatedCache;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V

    iput-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mCredentialTypeCache:Landroid/app/PropertyInvalidatedCache;

    .line 1178
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils$2;-><init>(Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockoutEndTimeQuery:Landroid/app/PropertyInvalidatedCache$QueryHandler;

    .line 1195
    new-instance v1, Landroid/app/PropertyInvalidatedCache;

    const-string v5, "getLockoutEndTime"

    iget-object v6, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockoutEndTimeQuery:Landroid/app/PropertyInvalidatedCache$QueryHandler;

    const-string/jumbo v3, "system_server"

    const-string v4, "getLockoutEndTime"

    invoke-direct/range {v1 .. v6}, Landroid/app/PropertyInvalidatedCache;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V

    iput-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockoutEndTimeCache:Landroid/app/PropertyInvalidatedCache;

    .line 327
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    .line 328
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    .line 330
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    .line 331
    if-eqz p1, :cond_4d

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_4e

    :cond_4d
    const/4 v0, 0x0

    :goto_4e
    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mHandler:Landroid/os/Handler;

    .line 332
    iput-object p2, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 333
    iput-object p3, p0, Lcom/android/internal/widget/LockPatternUtils;->mTimeSinceBootSupplier:Ljava/util/function/Supplier;

    .line 334
    return-void
.end method

.method public static blacklist byteArrayToPattern([BB)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BB)",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation

    .line 964
    if-nez p0, :cond_4

    .line 965
    const/4 p0, 0x0

    return-object p0

    .line 968
    :cond_4
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 970
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->updateSize(B)V

    .line 972
    const/4 v1, 0x0

    :goto_c
    array-length v2, p0

    if-ge v1, v2, :cond_21

    .line 973
    aget-byte v2, p0, v1

    add-int/lit8 v2, v2, -0x31

    int-to-byte v2, v2

    .line 974
    div-int v3, v2, p1

    rem-int/2addr v2, p1

    invoke-static {v3, v2, p1}, Lcom/android/internal/widget/LockPatternView$Cell;->of(IIB)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 972
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 976
    :cond_21
    return-object v0
.end method

.method public static blacklist canUserEnterRepairMode(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z
    .registers 2

    .line 1950
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->isRepairModeSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public static blacklist credentialTypeToPasswordQuality(I)I
    .registers 4

    .line 752
    packed-switch p0, :pswitch_data_28

    .line 762
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 760
    :pswitch_1c
    const/high16 p0, 0x40000

    return p0

    .line 758
    :pswitch_1f
    const/high16 p0, 0x20000

    return p0

    .line 756
    :pswitch_22
    const/high16 p0, 0x10000

    return p0

    .line 754
    :pswitch_25
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_28
    .packed-switch -0x1
        :pswitch_25
        :pswitch_3
        :pswitch_22
        :pswitch_3
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method public static blacklist credentialTypeToString(I)Ljava/lang/String;
    .registers 3

    .line 151
    packed-switch p0, :pswitch_data_24

    .line 161
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 159
    :pswitch_17
    const-string p0, "PASSWORD"

    return-object p0

    .line 157
    :pswitch_1a
    const-string p0, "PIN"

    return-object p0

    .line 155
    :pswitch_1d
    const-string p0, "PATTERN"

    return-object p0

    .line 153
    :pswitch_20
    const-string p0, "NONE"

    return-object p0

    nop

    :pswitch_data_24
    .packed-switch -0x1
        :pswitch_20
        :pswitch_3
        :pswitch_1d
        :pswitch_3
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method

.method private blacklist deserializeTrustAgents(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 1371
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1372
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 1374
    :cond_c
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1375
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1376
    array-length v1, p1

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v1, :cond_2e

    aget-object v3, p1, v2

    .line 1377
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2b

    .line 1378
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1376
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 1381
    :cond_2e
    return-object v0
.end method

.method public static blacklist frpCredentialEnabled(Landroid/content/Context;)Z
    .registers 2

    .line 1925
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1110184

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method private blacklist getBoolean(Ljava/lang/String;ZI)Z
    .registers 5

    .line 1273
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->getBoolean(Ljava/lang/String;ZI)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 1274
    :catch_9
    move-exception p1

    .line 1275
    return p2
.end method

.method private blacklist getLong(Ljava/lang/String;JI)J
    .registers 6

    .line 1290
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J

    move-result-wide p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-wide p1

    .line 1291
    :catch_9
    move-exception p1

    .line 1292
    return-wide p2
.end method

.method private blacklist getRequestedPasswordHistoryLength(I)I
    .registers 4

    .line 372
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;I)I

    move-result p1

    return p1
.end method

.method private blacklist getSalt(I)Ljava/lang/String;
    .registers 7

    .line 999
    const-string v0, "lockscreen.password_salt"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v3

    .line 1000
    cmp-long v1, v3, v1

    if-nez v1, :cond_3b

    .line 1002
    :try_start_c
    const-string v1, "SHA1PRNG"

    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v3

    .line 1003
    invoke-direct {p0, v0, v3, v4, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1004
    const-string v0, "LockPatternUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initialized lock password salt for user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_31} :catch_32

    .line 1008
    goto :goto_3b

    .line 1005
    :catch_32
    move-exception p1

    .line 1007
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Couldn\'t get SecureRandom number"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1010
    :cond_3b
    :goto_3b
    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private greylist getString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    .line 1309
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, v0, p2}, Lcom/android/internal/widget/ILockSettings;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_a

    return-object p1

    .line 1310
    :catch_a
    move-exception p1

    .line 1311
    return-object v0
.end method

.method private blacklist getTrustManager()Landroid/app/trust/TrustManager;
    .registers 5

    .line 307
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "trust"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/TrustManager;

    .line 308
    if-nez v0, :cond_1b

    .line 309
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Stack trace:"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v2, "LockPatternUtils"

    const-string v3, "Can\'t get TrustManagerService: is it running?"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 312
    :cond_1b
    return-object v0
.end method

.method private blacklist getUserManager()Landroid/os/UserManager;
    .registers 2

    .line 300
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_c

    .line 301
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mUserManager:Landroid/os/UserManager;

    .line 303
    :cond_c
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method private blacklist hasSeparateChallenge(I)Z
    .registers 3

    .line 936
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->getSeparateProfileChallengeEnabled(I)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 937
    :catch_9
    move-exception p1

    .line 938
    const-string p1, "LockPatternUtils"

    const-string v0, "Couldn\'t get separate profile challenge enabled"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    const/4 p1, 0x0

    return p1
.end method

.method public static final blacklist invalidateCredentialTypeCache()V
    .registers 2

    .line 1050
    const-string/jumbo v0, "system_server"

    const-string v1, "getCredentialType"

    invoke-static {v0, v1}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    return-void
.end method

.method public static final blacklist invalidateLockoutEndTimeCache()V
    .registers 2

    .line 1209
    const-string/jumbo v0, "system_server"

    const-string v1, "getLockoutEndTime"

    invoke-static {v0, v1}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    return-void
.end method

.method private blacklist isCredentialShareableWithParent(I)Z
    .registers 3

    .line 951
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserProperties(Landroid/os/UserHandle;)Landroid/content/pm/UserProperties;

    move-result-object p1

    .line 952
    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->isCredentialShareableWithParent()Z

    move-result p1
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_10} :catch_11

    .line 951
    return p1

    .line 953
    :catch_11
    move-exception p1

    .line 954
    const/4 p1, 0x0

    return p1
.end method

.method public static greylist isDeviceEncryptionEnabled()Z
    .registers 1

    .line 859
    invoke-static {}, Landroid/os/storage/StorageManager;->isEncrypted()Z

    move-result v0

    return v0
.end method

.method public static blacklist isFileEncryptionEnabled()Z
    .registers 1

    .line 867
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    move-result v0

    return v0
.end method

.method public static blacklist isGsiRunning()Z
    .registers 2

    .line 1957
    const-string/jumbo v0, "ro.gsid.image_running"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_b

    const/4 v1, 0x1

    :cond_b
    return v1
.end method

.method private blacklist isManagedProfile(I)Z
    .registers 3

    .line 945
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 946
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public static blacklist isQualityAlphabeticPassword(I)Z
    .registers 2

    .line 742
    const/high16 v0, 0x40000

    if-lt p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static blacklist isQualityNumericPin(I)Z
    .registers 2

    .line 747
    const/high16 v0, 0x20000

    if-eq p0, v0, :cond_b

    const/high16 v0, 0x30000

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public static blacklist isRepairModeActive(Landroid/content/Context;)Z
    .registers 3

    .line 1941
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "repair_mode_active"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method public static blacklist isRepairModeSupported(Landroid/content/Context;)Z
    .registers 2

    .line 1933
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1110240

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static blacklist isSpecialUserId(I)Z
    .registers 3

    .line 1964
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSpecialUserId(Landroid/content/Context;IZ)Z

    move-result p0

    return p0
.end method

.method private static blacklist isSpecialUserId(Landroid/content/Context;IZ)Z
    .registers 4

    .line 1975
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_16

    .line 1984
    const/4 p0, 0x0

    return p0

    .line 1981
    :pswitch_6
    if-eqz p2, :cond_d

    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->isRepairModeSupported(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 1982
    :cond_d
    return v0

    .line 1977
    :pswitch_e
    if-eqz p2, :cond_15

    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->frpCredentialEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 1978
    :cond_15
    return v0

    :pswitch_data_16
    .packed-switch -0x270f
        :pswitch_e
        :pswitch_6
    .end packed-switch
.end method

.method public static blacklist patternToByteArray(Ljava/util/List;B)[B
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;B)[B"
        }
    .end annotation

    .line 985
    const/4 v0, 0x0

    if-nez p0, :cond_6

    .line 986
    new-array p0, v0, [B

    return-object p0

    .line 988
    :cond_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 990
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newNonMovableByteArray(I)[B

    move-result-object v2

    .line 991
    nop

    :goto_f
    if-ge v0, v1, :cond_29

    .line 992
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 993
    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    mul-int/2addr v4, p1

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v3

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x31

    int-to-byte v3, v4

    aput-byte v3, v2, v0

    .line 991
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 995
    :cond_29
    return-object v2
.end method

.method public static blacklist pinOrPasswordQualityToCredentialType(I)I
    .registers 4

    .line 768
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->isQualityAlphabeticPassword(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 769
    const/4 p0, 0x4

    return p0

    .line 771
    :cond_8
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->isQualityNumericPin(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 772
    const/4 p0, 0x3

    return p0

    .line 774
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Quality is neither Pin nor password: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist reportEnabledTrustAgentsChanged(I)V
    .registers 3

    .line 1414
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/trust/TrustManager;->reportEnabledTrustAgentsChanged(I)V

    .line 1415
    return-void
.end method

.method private blacklist serializeTrustAgents(Ljava/util/Collection;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1361
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1362
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_20

    .line 1363
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1365
    :cond_20
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1366
    goto :goto_9

    .line 1367
    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private blacklist setBoolean(Ljava/lang/String;ZI)V
    .registers 5

    .line 1281
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setBoolean(Ljava/lang/String;ZI)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1285
    goto :goto_25

    .line 1282
    :catch_8
    move-exception p2

    .line 1284
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t write boolean "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LockPatternUtils"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    :goto_25
    return-void
.end method

.method private greylist setLong(Ljava/lang/String;JI)V
    .registers 6

    .line 1299
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1303
    goto :goto_25

    .line 1300
    :catch_8
    move-exception p2

    .line 1302
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Couldn\'t write long "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LockPatternUtils"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    :goto_25
    return-void
.end method

.method private greylist setString(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 1318
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1322
    goto :goto_25

    .line 1319
    :catch_8
    move-exception p2

    .line 1321
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t write string "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LockPatternUtils"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    :goto_25
    return-void
.end method

.method private static blacklist systemTimeSinceBoot()Ljava/time/Duration;
    .registers 2

    .line 321
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method private blacklist throwIfCalledOnMainThread()V
    .registers 3

    .line 1418
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1421
    return-void

    .line 1419
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "should not be called from the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z
    .registers 3

    .line 1921
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isMain()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->frpCredentialEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method private blacklist wrapCallback(Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .registers 4

    .line 1544
    if-nez p1, :cond_4

    .line 1545
    const/4 p1, 0x0

    return-object p1

    .line 1547
    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_10

    .line 1551
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$WrappedCallback;

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils$WrappedCallback;-><init>(Landroid/os/Handler;Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)V

    return-object v0

    .line 1548
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must construct LockPatternUtils on a looper thread to use progress callbacks."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public blacklist addWeakEscrowToken([BILcom/android/internal/widget/IWeakEscrowTokenActivatedListener;)J
    .registers 5

    .line 1571
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->addWeakEscrowToken([BILcom/android/internal/widget/IWeakEscrowTokenActivatedListener;)J

    move-result-wide p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-wide p1

    .line 1572
    :catch_9
    move-exception p1

    .line 1573
    const-string p2, "LockPatternUtils"

    const-string p3, "Could not add weak token."

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist checkCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .line 527
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->throwIfCalledOnMainThread()V

    .line 529
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    .line 530
    invoke-direct {p0, p3}, Lcom/android/internal/widget/LockPatternUtils;->wrapCallback(Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)Lcom/android/internal/widget/ICheckCredentialProgressCallback;

    move-result-object p3

    .line 529
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->checkCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p1

    .line 531
    if-nez p1, :cond_13

    .line 532
    return v0

    .line 533
    :cond_13
    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 534
    const/4 p1, 0x1

    return p1

    .line 535
    :cond_1b
    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->hasTimeout()Z

    move-result p2

    if-nez p2, :cond_22

    .line 538
    return v0

    .line 536
    :cond_22
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result p1

    invoke-direct {p2, p1}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    throw p2
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_2c} :catch_2c

    .line 540
    :catch_2c
    move-exception p1

    .line 541
    const-string p2, "LockPatternUtils"

    const-string p3, "failed to check credential"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 542
    return v0
.end method

.method public blacklist checkPasswordHistory([B[BI)Z
    .registers 9

    .line 600
    const/4 v0, 0x0

    if-eqz p1, :cond_5f

    array-length v1, p1

    if-nez v1, :cond_7

    goto :goto_5f

    .line 604
    :cond_7
    const-string v1, "lockscreen.passwordhistory"

    invoke-direct {p0, v1, p3}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 605
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 606
    return v0

    .line 608
    :cond_14
    invoke-direct {p0, p3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordHistoryLength(I)I

    move-result v2

    .line 609
    if-nez v2, :cond_1b

    .line 610
    return v0

    .line 612
    :cond_1b
    invoke-direct {p0, p3}, Lcom/android/internal/widget/LockPatternUtils;->getSalt(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    .line 613
    invoke-static {p1, p3}, Lcom/android/internal/widget/LockscreenCredential;->legacyPasswordToHash([B[B)Ljava/lang/String;

    move-result-object v3

    .line 614
    invoke-static {p1, p3, p2}, Lcom/android/internal/widget/LockscreenCredential;->passwordToHistoryHash([B[B[B)Ljava/lang/String;

    move-result-object p1

    .line 616
    const-string p2, ","

    invoke-virtual {v1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 618
    move p3, v0

    :goto_32
    array-length v1, p2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge p3, v1, :cond_5e

    .line 619
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->stopRecognizingLegacyPasswordHashes()Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_49

    .line 620
    aget-object v1, p2, p3

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 621
    return v4

    .line 624
    :cond_49
    aget-object v1, p2, p3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5d

    aget-object v1, p2, p3

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    goto :goto_5d

    .line 618
    :cond_5a
    add-int/lit8 p3, p3, 0x1

    goto :goto_32

    .line 625
    :cond_5d
    :goto_5d
    return v4

    .line 629
    :cond_5e
    return v0

    .line 601
    :cond_5f
    :goto_5f
    const-string p1, "LockPatternUtils"

    const-string p2, "checkPasswordHistory: empty password"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    return v0
.end method

.method public greylist getActivePasswordQuality(I)I
    .registers 2

    .line 673
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p1

    return p1
.end method

.method public blacklist getCredentialTypeForUser(I)I
    .registers 3

    .line 1060
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mCredentialTypeCache:Landroid/app/PropertyInvalidatedCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public blacklist getCurrentFailedPasswordAttempts(I)I
    .registers 4

    .line 428
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSpecialUserId(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 429
    const/4 p1, 0x0

    return p1

    .line 431
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts(I)I

    move-result p1

    return p1
.end method

.method public blacklist getDeviceOwnerInfo()Ljava/lang/String;
    .registers 3

    .line 844
    const-string v0, "lockscreen.device_owner_info"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .registers 4

    .line 288
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_22

    .line 289
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    .line 290
    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 291
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_22

    .line 292
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stack trace:"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v1, "LockPatternUtils"

    const-string v2, "Can\'t get DevicePolicyManagerService: is it running?"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    :cond_22
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public blacklist getEnabledTrustAgents(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 1346
    const-string v0, "lockscreen.enabledtrustagents"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->deserializeTrustAgents(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public greylist getKeyguardStoredPasswordQuality(I)I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 880
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->credentialTypeToPasswordQuality(I)I

    move-result p1

    return p1
.end method

.method public blacklist getKnownTrustAgents(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 1356
    const-string v0, "lockscreen.knowntrustagents"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->deserializeTrustAgents(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getLockPatternSize(I)B
    .registers 6

    .line 1067
    const-string v0, "lock_pattern_size"

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    .line 1068
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_17

    const-wide/16 v2, 0x80

    cmp-long p1, v0, v2

    if-gez p1, :cond_17

    .line 1069
    long-to-int p1, v0

    int-to-byte p1, p1

    return p1

    .line 1071
    :cond_17
    const/4 p1, 0x3

    return p1
.end method

.method public greylist getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .registers 2

    .line 339
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_11

    .line 340
    nop

    .line 341
    const-string v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 340
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    .line 342
    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 344
    :cond_11
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v0
.end method

.method public blacklist getLockoutAttemptDeadline(I)J
    .registers 9

    .line 1257
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->softwareRatelimiter()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1258
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->manageLockoutEndTimeInService()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1259
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutEndTime(I)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    return-wide v0

    .line 1261
    :cond_15
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockoutDeadlines:Landroid/util/SparseLongArray;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v3

    .line 1262
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mTimeSinceBootSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/Duration;

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v5

    .line 1263
    cmp-long v0, v3, v5

    if-gez v0, :cond_37

    cmp-long v0, v3, v1

    if-eqz v0, :cond_37

    .line 1265
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockoutDeadlines:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1266
    return-wide v1

    .line 1268
    :cond_37
    return-wide v3
.end method

.method public blacklist getLockoutEndTime(I)Ljava/time/Duration;
    .registers 4

    .line 1244
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockoutEndTimeCache:Landroid/app/PropertyInvalidatedCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/Duration;

    .line 1245
    invoke-virtual {v0}, Ljava/time/Duration;->isZero()Z

    move-result v1

    if-nez v1, :cond_2d

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mTimeSinceBootSupplier:Ljava/util/function/Supplier;

    .line 1246
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/Duration;

    invoke-virtual {v0, v1}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v1

    if-gtz v1, :cond_2d

    .line 1247
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockoutEndTimeCache:Landroid/app/PropertyInvalidatedCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/PropertyInvalidatedCache;->recompute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/time/Duration;

    return-object p1

    .line 1249
    :cond_2d
    return-object v0
.end method

.method public blacklist getMaximumFailedPasswordsForWipe(I)I
    .registers 4

    .line 435
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSpecialUserId(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 436
    const/4 p1, 0x0

    return p1

    .line 438
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result p1

    return p1
.end method

.method public blacklist getMaximumPasswordLength(I)I
    .registers 3

    .line 352
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result p1

    return p1
.end method

.method public greylist getOwnerInfo(I)Ljava/lang/String;
    .registers 3

    .line 821
    const-string v0, "lock_screen_owner_info"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getPasswordHistoryHashFactor(Lcom/android/internal/widget/LockscreenCredential;I)[B
    .registers 4

    .line 583
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->getHashFactor(Lcom/android/internal/widget/LockscreenCredential;I)[B

    move-result-object p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    .line 584
    :catch_9
    move-exception p1

    .line 585
    const-string p2, "LockPatternUtils"

    const-string v0, "failed to get hash factor"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 586
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist getPinLength(I)I
    .registers 4

    .line 641
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->getPinLength(I)I

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 642
    :catch_9
    move-exception p1

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not fetch PIN length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LockPatternUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const/4 p1, -0x1

    return p1
.end method

.method public greylist getPowerButtonInstantlyLocks(I)Z
    .registers 4

    .line 1331
    const-string v0, "lockscreen.power_button_instantly_locks"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result p1

    return p1
.end method

.method public blacklist getRequestedMinimumPasswordLength(I)I
    .registers 4

    .line 348
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result p1

    return p1
.end method

.method public blacklist getRequestedPasswordComplexity(I)I
    .registers 3

    .line 381
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordComplexity(IZ)I

    move-result p1

    return p1
.end method

.method public blacklist getRequestedPasswordComplexity(IZ)I
    .registers 4

    .line 394
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->getAggregatedPasswordComplexityForUser(IZ)I

    move-result p1

    return p1
.end method

.method public blacklist getRequestedPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;
    .registers 3

    .line 359
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMetrics(IZ)Landroid/app/admin/PasswordMetrics;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getRequestedPasswordMetrics(IZ)Landroid/app/admin/PasswordMetrics;
    .registers 4

    .line 368
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumMetrics(IZ)Landroid/app/admin/PasswordMetrics;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getStrongAuthForUser(I)I
    .registers 4

    .line 1482
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->getStrongAuthForUser(I)I

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 1483
    :catch_9
    move-exception p1

    .line 1484
    const-string v0, "LockPatternUtils"

    const-string v1, "Could not get StrongAuth"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1485
    iget-object p1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getDefaultFlags(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public blacklist hasPendingEscrowToken(I)Z
    .registers 3

    .line 1899
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->hasPendingEscrowToken(I)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 1900
    :catch_9
    move-exception p1

    .line 1901
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1903
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist hasSecureLockScreen()Z
    .registers 2

    .line 1910
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mHasSecureLockScreen:Ljava/lang/Boolean;

    if-nez v0, :cond_17

    .line 1912
    :try_start_4
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/widget/ILockSettings;->hasSecureLockScreen()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mHasSecureLockScreen:Ljava/lang/Boolean;
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_12} :catch_13

    .line 1915
    goto :goto_17

    .line 1913
    :catch_13
    move-exception v0

    .line 1914
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1917
    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mHasSecureLockScreen:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist isAutoPinConfirmEnabled(I)Z
    .registers 4

    .line 737
    const-string v0, "lockscreen.auto_pin_confirm"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result p1

    return p1
.end method

.method public blacklist isBiometricAllowedForUser(I)Z
    .registers 2

    .line 1508
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result p1

    and-int/lit16 p1, p1, -0x1705

    if-nez p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public blacklist isCredentialsDisabledForUser(I)Z
    .registers 4

    .line 1493
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result p1

    const/high16 v0, 0x80000

    if-ne p1, v0, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    return p1
.end method

.method public blacklist isDeviceOwnerInfoEnabled()Z
    .registers 2

    .line 848
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist-max-r isLockPasswordEnabled(I)Z
    .registers 3

    .line 1109
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result p1

    .line 1110
    const/4 v0, 0x4

    if-eq p1, v0, :cond_d

    const/4 v0, 0x3

    if-ne p1, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p1, 0x1

    :goto_e
    return p1
.end method

.method public greylist isLockPatternEnabled(I)Z
    .registers 3

    .line 1118
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result p1

    .line 1119
    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist isLockScreenDisabled(I)Z
    .registers 7

    .line 707
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 708
    return v1

    .line 710
    :cond_8
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x111014a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 712
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getUserManager()Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 713
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_30

    if-eqz v2, :cond_30

    .line 714
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v2

    if-eqz v2, :cond_30

    move v2, v4

    goto :goto_31

    :cond_30
    move v2, v1

    .line 715
    :goto_31
    const-string v3, "lockscreen.disabled"

    invoke-direct {p0, v3, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result p1

    if-nez p1, :cond_3d

    if-nez v0, :cond_3d

    if-eqz v2, :cond_3e

    :cond_3d
    move v1, v4

    :cond_3e
    return v1
.end method

.method public blacklist isManagedProfileWithUnifiedChallenge(I)Z
    .registers 3

    .line 931
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->hasSeparateChallenge(I)Z

    move-result p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public blacklist isOwnerInfoEnabled(I)Z
    .registers 4

    .line 825
    const-string v0, "lock_screen_owner_info_enabled"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result p1

    return p1
.end method

.method public blacklist isPinEnhancedPrivacyEnabled(I)Z
    .registers 4

    .line 1152
    nop

    .line 1153
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/widget/flags/Flags;->enableDefaultVisibilityForSensitiveInputs()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1154
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    .line 1155
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1156
    const v1, 0x1110204

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_16

    .line 1153
    :cond_15
    const/4 v0, 0x0

    .line 1160
    :goto_16
    const-string/jumbo v1, "pin_enhanced_privacy"

    invoke-direct {p0, v1, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result p1

    return p1
.end method

.method public blacklist isPinEnhancedPrivacyEverChosen(I)Z
    .registers 3

    .line 1174
    const-string/jumbo v0, "pin_enhanced_privacy"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method

.method public blacklist isPowerButtonInstantlyLocksEverChosen(I)Z
    .registers 3

    .line 1335
    const-string v0, "lockscreen.power_button_instantly_locks"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public blacklist isProfileWithUnifiedChallenge(I)Z
    .registers 3

    .line 924
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialShareableWithParent(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->hasSeparateChallenge(I)Z

    move-result p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public greylist isSecure(I)Z
    .registers 3

    .line 1103
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result p1

    .line 1104
    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public blacklist isSeparateProfileChallengeEnabled(I)Z
    .registers 3

    .line 914
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialShareableWithParent(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->hasSeparateChallenge(I)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public blacklist isShowErrorPath(I)Z
    .registers 4

    .line 1094
    const-string v0, "lock_pattern_show_error_path"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result p1

    return p1
.end method

.method public blacklist isTrustAllowedForUser(I)Z
    .registers 2

    .line 1501
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result p1

    if-nez p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public blacklist isTrustUsuallyManaged(I)Z
    .registers 5

    .line 241
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    instance-of v0, v0, Lcom/android/internal/widget/ILockSettings$Stub;

    if-eqz v0, :cond_14

    .line 246
    const/4 v0, 0x0

    :try_start_7
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const-string v2, "lockscreen.istrustusuallymanaged"

    invoke-interface {v1, v2, v0, p1}, Lcom/android/internal/widget/ILockSettings;->getBoolean(Ljava/lang/String;ZI)Z

    move-result p1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_12

    return p1

    .line 247
    :catch_12
    move-exception p1

    .line 248
    return v0

    .line 242
    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "May only be called by TrustManagerService. Use TrustManager.isTrustUsuallyManaged()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist isUserInLockdown(I)Z
    .registers 2

    .line 1512
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result p1

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public blacklist isVisibleDotsEnabled(I)Z
    .registers 4

    .line 1086
    const-string v0, "lock_pattern_dotsvisible"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result p1

    return p1
.end method

.method public greylist isVisiblePatternEnabled(I)Z
    .registers 4

    .line 1127
    nop

    .line 1128
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/widget/flags/Flags;->enableDefaultVisibilityForSensitiveInputs()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1129
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    .line 1130
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1131
    const v1, 0x1110203

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_16

    .line 1128
    :cond_15
    const/4 v0, 0x1

    .line 1134
    :goto_16
    const-string v1, "lock_pattern_visible_pattern"

    invoke-direct {p0, v1, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result p1

    return p1
.end method

.method public blacklist isVisiblePatternEverChosen(I)Z
    .registers 3

    .line 1145
    const-string v0, "lock_pattern_visible_pattern"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public blacklist isWeakEscrowTokenActive(JI)Z
    .registers 5

    .line 1599
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->isWeakEscrowTokenActive(JI)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 1600
    :catch_9
    move-exception p1

    .line 1601
    const-string p2, "LockPatternUtils"

    const-string p3, "Could not check the weak token."

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist isWeakEscrowTokenValid(J[BI)Z
    .registers 6

    .line 1609
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->isWeakEscrowTokenValid(J[BI)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 1610
    :catch_9
    move-exception p1

    .line 1611
    const-string p2, "LockPatternUtils"

    const-string p3, "Could not validate the weak token."

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist refreshStoredPinLength(I)Z
    .registers 4

    .line 659
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->refreshStoredPinLength(I)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 660
    :catch_9
    move-exception p1

    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not store PIN length on disk "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LockPatternUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist registerStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V
    .registers 3

    .line 1425
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStub()Landroid/app/trust/IStrongAuthTracker$Stub;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 1428
    goto :goto_10

    .line 1426
    :catch_c
    move-exception p1

    .line 1427
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1429
    :goto_10
    return-void
.end method

.method public blacklist registerWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z
    .registers 4

    .line 1443
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->registerWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 1444
    :catch_9
    move-exception p1

    .line 1445
    const-string v0, "LockPatternUtils"

    const-string v1, "Could not register WeakEscrowTokenRemovedListener."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist removeCachedUnifiedChallenge(I)V
    .registers 3

    .line 2010
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->removeCachedUnifiedChallenge(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 2013
    goto :goto_c

    .line 2011
    :catch_8
    move-exception p1

    .line 2012
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2014
    :goto_c
    return-void
.end method

.method public blacklist removeGatekeeperPasswordHandle(J)V
    .registers 4

    .line 507
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->removeGatekeeperPasswordHandle(J)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 510
    goto :goto_10

    .line 508
    :catch_8
    move-exception p1

    .line 509
    const-string p2, "LockPatternUtils"

    const-string v0, "failed to remove gatekeeper password handle"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 511
    :goto_10
    return-void
.end method

.method public blacklist removeWeakEscrowToken(JI)Z
    .registers 5

    .line 1586
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->removeWeakEscrowToken(JI)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 1587
    :catch_9
    move-exception p1

    .line 1588
    const-string p2, "LockPatternUtils"

    const-string p3, "Could not remove the weak token."

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist reportFailedPasswordAttempt(I)V
    .registers 4

    .line 400
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSpecialUserId(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 401
    return-void

    .line 403
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reportFailedPasswordAttempt(I)V

    .line 404
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->shouldTrustManagerListenForPrimaryAuth()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 405
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/trust/TrustManager;->reportUnlockAttempt(ZI)V

    .line 407
    :cond_1f
    return-void
.end method

.method public blacklist reportPasswordLockout(II)V
    .registers 5

    .line 421
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSpecialUserId(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 422
    return-void

    .line 424
    :cond_a
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/trust/TrustManager;->reportUnlockLockout(II)V

    .line 425
    return-void
.end method

.method public blacklist reportSuccessfulBiometricUnlock(ZI)V
    .registers 4

    .line 1463
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->reportSuccessfulBiometricUnlock(ZI)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1466
    goto :goto_10

    .line 1464
    :catch_8
    move-exception p1

    .line 1465
    const-string p2, "LockPatternUtils"

    const-string v0, "Could not report successful biometric unlock"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1467
    :goto_10
    return-void
.end method

.method public greylist reportSuccessfulPasswordAttempt(I)V
    .registers 4

    .line 411
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSpecialUserId(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 412
    return-void

    .line 414
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulPasswordAttempt(I)V

    .line 415
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->shouldTrustManagerListenForPrimaryAuth()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 416
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Landroid/app/trust/TrustManager;->reportUnlockAttempt(ZI)V

    .line 418
    :cond_1e
    return-void
.end method

.method public blacklist requireCredentialEntry(I)V
    .registers 3

    .line 1392
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 1393
    return-void
.end method

.method public blacklist requireStrongAuth(II)V
    .registers 4

    .line 1407
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->requireStrongAuth(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1410
    goto :goto_21

    .line 1408
    :catch_8
    move-exception p1

    .line 1409
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error while requesting strong auth: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LockPatternUtils"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    :goto_21
    return-void
.end method

.method public blacklist resetKeyStore(I)V
    .registers 4

    .line 681
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->resetKeyStore(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 685
    goto :goto_21

    .line 682
    :catch_8
    move-exception p1

    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t reset keystore "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LockPatternUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :goto_21
    return-void
.end method

.method public blacklist scheduleNonStrongBiometricIdleTimeout(I)V
    .registers 4

    .line 1471
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->scheduleNonStrongBiometricIdleTimeout(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1474
    goto :goto_10

    .line 1472
    :catch_8
    move-exception p1

    .line 1473
    const-string v0, "LockPatternUtils"

    const-string v1, "Could not schedule non-strong biometric idle timeout"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1475
    :goto_10
    return-void
.end method

.method public blacklist setAutoPinConfirm(ZI)V
    .registers 4

    .line 726
    const-string v0, "lockscreen.auto_pin_confirm"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 727
    return-void
.end method

.method public blacklist setDeviceOwnerInfo(Ljava/lang/String;)V
    .registers 4

    .line 836
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 837
    const/4 p1, 0x0

    .line 840
    :cond_9
    const-string v0, "lockscreen.device_owner_info"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 841
    return-void
.end method

.method public blacklist setEnabledTrustAgents(Ljava/util/Collection;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/content/ComponentName;",
            ">;I)V"
        }
    .end annotation

    .line 1340
    const-string v0, "lockscreen.enabledtrustagents"

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->serializeTrustAgents(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1341
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/trust/TrustManager;->reportEnabledTrustAgentsChanged(I)V

    .line 1342
    return-void
.end method

.method public blacklist setKnownTrustAgents(Ljava/util/Collection;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/content/ComponentName;",
            ">;I)V"
        }
    .end annotation

    .line 1351
    const-string v0, "lockscreen.knowntrustagents"

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->serializeTrustAgents(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1352
    return-void
.end method

.method public blacklist setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z
    .registers 6

    .line 794
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->hasSecureLockScreen()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    goto :goto_16

    .line 795
    :cond_e
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This operation requires the lock screen feature."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 800
    :cond_16
    :goto_16
    :try_start_16
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z

    move-result p1
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1e} :catch_25

    if-nez p1, :cond_22

    .line 801
    const/4 p1, 0x0

    return p1

    .line 805
    :cond_22
    nop

    .line 806
    const/4 p1, 0x1

    return p1

    .line 803
    :catch_25
    move-exception p1

    .line 804
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Unable to save lock password"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public blacklist setLockPatternSize(JI)V
    .registers 5

    .line 1078
    const-string v0, "lock_pattern_size"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1079
    return-void
.end method

.method public blacklist setLockScreenDisabled(ZI)V
    .registers 4

    .line 696
    const-string v0, "lockscreen.disabled"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 697
    return-void
.end method

.method public greylist setLockoutAttemptDeadline(II)J
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1225
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mTimeSinceBootSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/Duration;

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    int-to-long v2, p2

    add-long/2addr v0, v2

    .line 1226
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->manageLockoutEndTimeInService()Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 1227
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide p1

    .line 1228
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1

    .line 1230
    :cond_1d
    const/16 p2, -0x270f

    if-ne p1, p2, :cond_22

    .line 1233
    return-wide v0

    .line 1235
    :cond_22
    iget-object p2, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockoutDeadlines:Landroid/util/SparseLongArray;

    invoke-virtual {p2, p1, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1236
    return-wide v0
.end method

.method public greylist-max-r setOwnerInfo(Ljava/lang/String;I)V
    .registers 4

    .line 811
    const-string v0, "lock_screen_owner_info"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 812
    return-void
.end method

.method public greylist-max-r setOwnerInfoEnabled(ZI)V
    .registers 4

    .line 816
    const-string v0, "lock_screen_owner_info_enabled"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 817
    return-void
.end method

.method public blacklist setPinEnhancedPrivacyEnabled(ZI)V
    .registers 4

    .line 1167
    const-string/jumbo v0, "pin_enhanced_privacy"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 1168
    return-void
.end method

.method public blacklist setPowerButtonInstantlyLocks(ZI)V
    .registers 4

    .line 1326
    const-string v0, "lockscreen.power_button_instantly_locks"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 1327
    return-void
.end method

.method public blacklist setSeparateProfileChallengeEnabled(IZLcom/android/internal/widget/LockscreenCredential;)V
    .registers 5

    .line 895
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialShareableWithParent(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 896
    return-void

    .line 899
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setSeparateProfileChallengeEnabled(IZLcom/android/internal/widget/LockscreenCredential;)V

    .line 901
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->reportEnabledTrustAgentsChanged(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_12

    .line 904
    goto :goto_1a

    .line 902
    :catch_12
    move-exception p1

    .line 903
    const-string p1, "LockPatternUtils"

    const-string p2, "Couldn\'t update work profile challenge enabled"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :goto_1a
    return-void
.end method

.method public blacklist setShowErrorPath(ZI)V
    .registers 4

    .line 1090
    const-string v0, "lock_pattern_show_error_path"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 1091
    return-void
.end method

.method public blacklist setTrustUsuallyManaged(ZI)V
    .registers 5

    .line 254
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const-string v1, "lockscreen.istrustusuallymanaged"

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setBoolean(Ljava/lang/String;ZI)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 257
    goto :goto_b

    .line 255
    :catch_a
    move-exception p1

    .line 258
    :goto_b
    return-void
.end method

.method public blacklist setVisibleDotsEnabled(ZI)V
    .registers 4

    .line 1082
    const-string v0, "lock_pattern_dotsvisible"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 1083
    return-void
.end method

.method public blacklist setVisiblePatternEnabled(ZI)V
    .registers 4

    .line 1141
    const-string v0, "lock_pattern_visible_pattern"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 1142
    return-void
.end method

.method public blacklist startRemoteLockscreenValidation()Landroid/app/RemoteLockscreenValidationSession;
    .registers 2

    .line 2048
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/widget/ILockSettings;->startRemoteLockscreenValidation()Landroid/app/RemoteLockscreenValidationSession;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 2049
    :catch_9
    move-exception v0

    .line 2050
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist tryUnlockWithCachedUnifiedChallenge(I)Z
    .registers 3

    .line 2001
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->tryUnlockWithCachedUnifiedChallenge(I)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 2002
    :catch_9
    move-exception p1

    .line 2003
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist unlockUserKeyIfUnsecured(I)V
    .registers 3

    .line 2036
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->unlockUserKeyIfUnsecured(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 2039
    goto :goto_c

    .line 2037
    :catch_8
    move-exception p1

    .line 2038
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2040
    :goto_c
    return-void
.end method

.method public blacklist unregisterStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V
    .registers 4

    .line 1433
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStub()Landroid/app/trust/IStrongAuthTracker$Stub;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 1436
    goto :goto_14

    .line 1434
    :catch_c
    move-exception p1

    .line 1435
    const-string v0, "LockPatternUtils"

    const-string v1, "Could not unregister StrongAuthTracker"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1437
    :goto_14
    return-void
.end method

.method public blacklist unregisterWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z
    .registers 4

    .line 1454
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->unregisterWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 1455
    :catch_9
    move-exception p1

    .line 1456
    const-string v0, "LockPatternUtils"

    const-string v1, "Could not register WeakEscrowTokenRemovedListener."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist userPresent(I)V
    .registers 3

    .line 262
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->userPresent(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 265
    nop

    .line 266
    return-void

    .line 263
    :catch_9
    move-exception p1

    .line 264
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist validateRemoteLockscreen([B)Landroid/app/RemoteLockscreenValidationResult;
    .registers 3

    .line 2061
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->validateRemoteLockscreen([B)Landroid/app/RemoteLockscreenValidationResult;

    move-result-object p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    .line 2062
    :catch_9
    move-exception p1

    .line 2063
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist verifyCredential(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 5

    .line 469
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->throwIfCalledOnMainThread()V

    .line 471
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->verifyCredential(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p1

    .line 473
    if-nez p1, :cond_10

    .line 474
    sget-object p1, Lcom/android/internal/widget/VerifyCredentialResponse;->OTHER_ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_f} :catch_11

    return-object p1

    .line 476
    :cond_10
    return-object p1

    .line 478
    :catch_11
    move-exception p1

    .line 479
    const-string p2, "LockPatternUtils"

    const-string p3, "failed to verify credential"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 480
    sget-object p1, Lcom/android/internal/widget/VerifyCredentialResponse;->OTHER_ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object p1
.end method

.method public blacklist verifyGatekeeperPasswordHandle(JJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 7

    .line 493
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    .line 494
    move-object p0, v0

    invoke-interface/range {p0 .. p5}, Lcom/android/internal/widget/ILockSettings;->verifyGatekeeperPasswordHandle(JJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p1

    .line 495
    if-nez p1, :cond_e

    .line 496
    sget-object p1, Lcom/android/internal/widget/VerifyCredentialResponse;->OTHER_ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    return-object p1

    .line 498
    :cond_e
    return-object p1

    .line 499
    :catch_f
    move-exception v0

    move-object p1, v0

    .line 500
    const-string p2, "LockPatternUtils"

    const-string p3, "failed to verify gatekeeper password"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 501
    sget-object p1, Lcom/android/internal/widget/VerifyCredentialResponse;->OTHER_ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object p1
.end method

.method public blacklist verifyTiedProfileChallenge(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 5

    .line 561
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->throwIfCalledOnMainThread()V

    .line 563
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    .line 564
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->verifyTiedProfileChallenge(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p1

    .line 565
    if-nez p1, :cond_10

    .line 566
    sget-object p1, Lcom/android/internal/widget/VerifyCredentialResponse;->OTHER_ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_f} :catch_11

    return-object p1

    .line 568
    :cond_10
    return-object p1

    .line 570
    :catch_11
    move-exception p1

    .line 571
    const-string p2, "LockPatternUtils"

    const-string p3, "failed to verify tied profile credential"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 572
    sget-object p1, Lcom/android/internal/widget/VerifyCredentialResponse;->OTHER_ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object p1
.end method

.method public blacklist writeRepairModeCredential(I)Z
    .registers 4

    .line 448
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->throwIfCalledOnMainThread()V

    .line 450
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->writeRepairModeCredential(I)Z

    move-result p1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_c

    return p1

    .line 451
    :catch_c
    move-exception p1

    .line 452
    const-string v0, "LockPatternUtils"

    const-string v1, "Failed to write repair mode credential"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 453
    const/4 p1, 0x0

    return p1
.end method
