.class public Lcom/android/server/Smart5gService;
.super Lcom/android/server/SystemService;
.source "Smart5gService.java"


# static fields
.field public static final INTERNET_NETWORK_REQUEST:Landroid/net/NetworkRequest;


# instance fields
.field public mActiveSubIds:[I

.field public mConnectivityManager:Landroid/net/ConnectivityManager;

.field public final mContext:Landroid/content/Context;

.field public mDefaultDataSubId:I

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mHandler:Landroid/os/Handler;

.field public final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mIsOnMobileData:Z

.field public mIsPowerSaveMode:Z

.field public final mLock:Ljava/lang/Object;

.field public final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field public mPowerManager:Landroid/os/PowerManager;

.field public final mSettingObserver:Landroid/database/ContentObserver;

.field public final mSubListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field public mSubManager:Landroid/telephony/SubscriptionManager;

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmActiveSubIds(Lcom/android/server/Smart5gService;)[I
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/Smart5gService;->mActiveSubIds:[I

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/Smart5gService;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/Smart5gService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDefaultDataSubId(Lcom/android/server/Smart5gService;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/Smart5gService;->mDefaultDataSubId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsOnMobileData(Lcom/android/server/Smart5gService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/Smart5gService;->mIsOnMobileData:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsPowerSaveMode(Lcom/android/server/Smart5gService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/Smart5gService;->mIsPowerSaveMode:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerManager(Lcom/android/server/Smart5gService;)Landroid/os/PowerManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/Smart5gService;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSettingObserver(Lcom/android/server/Smart5gService;)Landroid/database/ContentObserver;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/Smart5gService;->mSettingObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSubManager(Lcom/android/server/Smart5gService;)Landroid/telephony/SubscriptionManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/Smart5gService;->mSubManager:Landroid/telephony/SubscriptionManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmActiveSubIds(Lcom/android/server/Smart5gService;[I)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/Smart5gService;->mActiveSubIds:[I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDefaultDataSubId(Lcom/android/server/Smart5gService;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/Smart5gService;->mDefaultDataSubId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsOnMobileData(Lcom/android/server/Smart5gService;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/Smart5gService;->mIsOnMobileData:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsPowerSaveMode(Lcom/android/server/Smart5gService;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/Smart5gService;->mIsPowerSaveMode:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdate(Lcom/android/server/Smart5gService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/Smart5gService;->update()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smdlog(Ljava/lang/String;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/Smart5gService;->dlog(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 66
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    .line 68
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0x13

    .line 69
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xd

    .line 70
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    sput-object v0, Lcom/android/server/Smart5gService;->INTERNET_NETWORK_REQUEST:Landroid/net/NetworkRequest;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 180
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/Smart5gService;->mLock:Ljava/lang/Object;

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/Smart5gService;->mHandler:Landroid/os/Handler;

    .line 76
    new-instance v1, Landroid/os/HandlerExecutor;

    invoke-direct {v1, v0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/Smart5gService;->mExecutor:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    .line 84
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/Smart5gService;->mActiveSubIds:[I

    const/4 v1, -0x1

    .line 85
    iput v1, p0, Lcom/android/server/Smart5gService;->mDefaultDataSubId:I

    .line 87
    new-instance v1, Lcom/android/server/Smart5gService$1;

    invoke-direct {v1, p0, v0}, Lcom/android/server/Smart5gService$1;-><init>(Lcom/android/server/Smart5gService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/Smart5gService;->mSettingObserver:Landroid/database/ContentObserver;

    .line 95
    new-instance v0, Lcom/android/server/Smart5gService$2;

    invoke-direct {v0, p0}, Lcom/android/server/Smart5gService$2;-><init>(Lcom/android/server/Smart5gService;)V

    iput-object v0, p0, Lcom/android/server/Smart5gService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 123
    new-instance v0, Lcom/android/server/Smart5gService$3;

    invoke-direct {v0, p0}, Lcom/android/server/Smart5gService$3;-><init>(Lcom/android/server/Smart5gService;)V

    iput-object v0, p0, Lcom/android/server/Smart5gService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 155
    new-instance v0, Lcom/android/server/Smart5gService$4;

    invoke-direct {v0, p0}, Lcom/android/server/Smart5gService$4;-><init>(Lcom/android/server/Smart5gService;)V

    iput-object v0, p0, Lcom/android/server/Smart5gService;->mSubListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 181
    iput-object p1, p0, Lcom/android/server/Smart5gService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static dlog(Ljava/lang/String;)V
    .registers 2

    .line 277
    const-string v0, "Smart5gService"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getSupportedNrBitmask(Landroid/telephony/TelephonyManager;I)J
    .registers 10

    .line 220
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSupportedRadioAccessFamily()J

    move-result-wide v0

    const-wide/32 v2, 0x180000

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    const-string/jumbo v1, "subId "

    if-eqz v0, :cond_29

    .line 221
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " supports 5g EnhancedRadioCapability"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/Smart5gService;->dlog(Ljava/lang/String;)V

    return-wide v2

    .line 223
    :cond_29
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSupportedRadioAccessFamily()J

    move-result-wide v2

    const-wide/32 v6, 0x80000

    and-long/2addr v2, v6

    cmp-long p0, v2, v4

    if-eqz p0, :cond_4d

    .line 224
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " supports 5g AOSP"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/Smart5gService;->dlog(Ljava/lang/String;)V

    return-wide v6

    .line 227
    :cond_4d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not support 5g!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/Smart5gService;->dlog(Ljava/lang/String;)V

    return-wide v4
.end method


# virtual methods
.method public final isEnabled(I)Z
    .registers 4

    .line 211
    iget-object p0, p0, Lcom/android/server/Smart5gService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "smart_5g"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_22

    return p1

    :cond_22
    return v1
.end method

.method public final isMobileDataEnabled(I)Z
    .registers 4

    .line 216
    iget-object p0, p0, Lcom/android/server/Smart5gService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mobile_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_20

    return v0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public onBootPhase(I)V
    .registers 4

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_3b

    .line 193
    const-string/jumbo p1, "onBootPhase PHASE_SYSTEM_SERVICES_READY"

    invoke-static {p1}, Lcom/android/server/Smart5gService;->dlog(Ljava/lang/String;)V

    .line 194
    iget-object p1, p0, Lcom/android/server/Smart5gService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/server/Smart5gService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 195
    iget-object p1, p0, Lcom/android/server/Smart5gService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    iput-object p1, p0, Lcom/android/server/Smart5gService;->mSubManager:Landroid/telephony/SubscriptionManager;

    .line 196
    iget-object p1, p0, Lcom/android/server/Smart5gService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/server/Smart5gService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 197
    iget-object p1, p0, Lcom/android/server/Smart5gService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/server/Smart5gService;->mPowerManager:Landroid/os/PowerManager;

    return-void

    :cond_3b
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_78

    .line 199
    const-string/jumbo p1, "onBootPhase PHASE_BOOT_COMPLETED"

    invoke-static {p1}, Lcom/android/server/Smart5gService;->dlog(Ljava/lang/String;)V

    .line 200
    iget-object p1, p0, Lcom/android/server/Smart5gService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/Smart5gService;->mIsPowerSaveMode:Z

    .line 201
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p1

    iput p1, p0, Lcom/android/server/Smart5gService;->mDefaultDataSubId:I

    .line 202
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 203
    const-string v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/android/server/Smart5gService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/Smart5gService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 205
    iget-object p1, p0, Lcom/android/server/Smart5gService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    sget-object v0, Lcom/android/server/Smart5gService;->INTERNET_NETWORK_REQUEST:Landroid/net/NetworkRequest;

    iget-object v1, p0, Lcom/android/server/Smart5gService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p1, v0, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 206
    iget-object p1, p0, Lcom/android/server/Smart5gService;->mSubManager:Landroid/telephony/SubscriptionManager;

    iget-object v0, p0, Lcom/android/server/Smart5gService;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/Smart5gService;->mSubListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {p1, v0, p0}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    :cond_78
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 186
    const-string v0, "Smart5gService"

    const-string v1, "Starting Smart5gService"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-class v0, Lcom/android/server/Smart5gService;

    invoke-virtual {p0, v0, p0}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public final shouldDisable5g(I)Z
    .registers 6

    .line 260
    invoke-virtual {p0, p1}, Lcom/android/server/Smart5gService;->isEnabled(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1d

    .line 261
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "shouldDisable5g: smart 5g is disabled for subId "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/Smart5gService;->dlog(Ljava/lang/String;)V

    return v1

    .line 263
    :cond_1d
    invoke-virtual {p0, p1}, Lcom/android/server/Smart5gService;->isMobileDataEnabled(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3a

    .line 264
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "shouldDisable5g: mobile data is disabled for subId "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/Smart5gService;->dlog(Ljava/lang/String;)V

    return v2

    .line 267
    :cond_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shouldDisable5g: subId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mIsPowerSaveMode="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/Smart5gService;->mIsPowerSaveMode:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mIsOnMobileData="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/Smart5gService;->mIsOnMobileData:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mDefaultDataSubId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/Smart5gService;->mDefaultDataSubId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/Smart5gService;->dlog(Ljava/lang/String;)V

    .line 270
    iget-boolean v0, p0, Lcom/android/server/Smart5gService;->mIsPowerSaveMode:Z

    if-nez v0, :cond_7e

    iget-boolean v0, p0, Lcom/android/server/Smart5gService;->mIsOnMobileData:Z

    if-eqz v0, :cond_7e

    iget p0, p0, Lcom/android/server/Smart5gService;->mDefaultDataSubId:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_7d

    if-eq p1, p0, :cond_7d

    goto :goto_7e

    :cond_7d
    return v1

    :cond_7e
    :goto_7e
    return v2
.end method

.method public final declared-synchronized update()V
    .registers 16

    monitor-enter p0

    .line 233
    :try_start_1
    iget-object v0, p0, Lcom/android/server/Smart5gService;->mActiveSubIds:[I

    if-eqz v0, :cond_70

    array-length v1, v0

    if-nez v1, :cond_a

    goto/16 :goto_70

    .line 237
    :cond_a
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    if-ge v3, v1, :cond_6e

    aget v4, v0, v3

    .line 238
    iget-object v5, p0, Lcom/android/server/Smart5gService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5, v4}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v5

    .line 239
    invoke-static {v5, v4}, Lcom/android/server/Smart5gService;->getSupportedNrBitmask(Landroid/telephony/TelephonyManager;I)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-nez v10, :cond_22

    goto :goto_6b

    :cond_22
    const/4 v10, 0x1

    .line 241
    invoke-virtual {v5, v10}, Landroid/telephony/TelephonyManager;->getAllowedNetworkTypesForReason(I)J

    move-result-wide v11

    and-long v13, v11, v6

    cmp-long v8, v13, v8

    if-eqz v8, :cond_2f

    move v8, v10

    goto :goto_30

    :cond_2f
    move v8, v2

    .line 244
    :goto_30
    invoke-virtual {p0, v4}, Lcom/android/server/Smart5gService;->shouldDisable5g(I)Z

    move-result v9

    .line 245
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "update: subId="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is5gAllowed="

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " shouldDisable="

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/Smart5gService;->dlog(Ljava/lang/String;)V

    if-eqz v9, :cond_60

    if-eqz v8, :cond_60

    not-long v6, v6

    and-long/2addr v6, v11

    goto :goto_65

    :cond_60
    if-nez v9, :cond_6b

    if-nez v8, :cond_6b

    or-long/2addr v6, v11

    .line 254
    :goto_65
    invoke-virtual {v5, v10, v6, v7}, Landroid/telephony/TelephonyManager;->setAllowedNetworkTypesForReason(IJ)V
    :try_end_68
    .catchall {:try_start_1 .. :try_end_68} :catchall_69

    goto :goto_6b

    :catchall_69
    move-exception v0

    goto :goto_78

    :cond_6b
    :goto_6b
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 257
    :cond_6e
    monitor-exit p0

    return-void

    .line 234
    :cond_70
    :goto_70
    :try_start_70
    const-string/jumbo v0, "update: return, no active subs!"

    invoke-static {v0}, Lcom/android/server/Smart5gService;->dlog(Ljava/lang/String;)V
    :try_end_76
    .catchall {:try_start_70 .. :try_end_76} :catchall_69

    .line 235
    monitor-exit p0

    return-void

    :goto_78
    :try_start_78
    monitor-exit p0
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_69

    throw v0
.end method
