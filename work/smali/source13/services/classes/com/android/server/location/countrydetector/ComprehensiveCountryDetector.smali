.class public Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;
.super Lcom/android/server/location/countrydetector/CountryDetectorBase;
.source "ComprehensiveCountryDetector.java"


# static fields
.field static final DEBUG:Z = false

.field private static final LOCATION_REFRESH_INTERVAL:J = 0x5265c00L

.field private static final MAX_LENGTH_DEBUG_LOGS:I = 0x14

.field private static final TAG:Ljava/lang/String; = "CountryDetector"


# instance fields
.field private mCountServiceStateChanges:I

.field private mCountry:Landroid/location/Country;

.field private mCountryFromLocation:Landroid/location/Country;

.field private final mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Landroid/location/Country;",
            ">;"
        }
    .end annotation
.end field

.field private mLastCountryAddedToLogs:Landroid/location/Country;

.field private mLocationBasedCountryDetectionListener:Landroid/location/CountryListener;

.field protected mLocationBasedCountryDetector:Lcom/android/server/location/countrydetector/CountryDetectorBase;

.field protected mLocationRefreshTimer:Ljava/util/Timer;

.field private final mObject:Ljava/lang/Object;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mStartTime:J

.field private mStopTime:J

.field private mStopped:Z

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTotalCountServiceStateChanges:I

.field private mTotalTime:J


# direct methods
.method static bridge synthetic -$$Nest$fgetmCountServiceStateChanges(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;)I
    .registers 1

    iget p0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mCountServiceStateChanges:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTotalCountServiceStateChanges(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;)I
    .registers 1

    iget p0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mTotalCountServiceStateChanges:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCountServiceStateChanges(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mCountServiceStateChanges:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCountryFromLocation(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;Landroid/location/Country;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mCountryFromLocation:Landroid/location/Country;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTotalCountServiceStateChanges(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mTotalCountServiceStateChanges:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mdetectCountry(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;ZZ)Landroid/location/Country;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->detectCountry(ZZ)Landroid/location/Country;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misNetworkCountryCodeAvailable(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->isNetworkCountryCodeAvailable()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mstopLocationBasedDetector(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->stopLocationBasedDetector()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/location/countrydetector/CountryDetectorBase;-><init>(Landroid/content/Context;)V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mStopped:Z

    .line 87
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mObject:Ljava/lang/Object;

    .line 132
    new-instance v0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$1;-><init>(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;)V

    iput-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLocationBasedCountryDetectionListener:Landroid/location/CountryListener;

    .line 145
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 146
    return-void
.end method

.method private addToLogs(Landroid/location/Country;)V
    .registers 4
    .param p1, "country"    # Landroid/location/Country;

    .line 188
    if-nez p1, :cond_3

    .line 189
    return-void

    .line 194
    :cond_3
    iget-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mObject:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_6
    iget-object v1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLastCountryAddedToLogs:Landroid/location/Country;

    if-eqz v1, :cond_12

    invoke-virtual {v1, p1}, Landroid/location/Country;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 196
    monitor-exit v0

    return-void

    .line 198
    :cond_12
    iput-object p1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLastCountryAddedToLogs:Landroid/location/Country;

    .line 199
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_2a

    .line 201
    iget-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_24

    .line 202
    iget-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 207
    :cond_24
    iget-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 208
    return-void

    .line 199
    :catchall_2a
    move-exception v1

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method private declared-synchronized cancelLocationRefresh()V
    .registers 2

    monitor-enter p0

    .line 436
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;

    if-eqz v0, :cond_b

    .line 437
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 438
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 440
    .end local p0    # "this":Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;
    :cond_b
    monitor-exit p0

    return-void

    .line 435
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private detectCountry(ZZ)Landroid/location/Country;
    .registers 6
    .param p1, "notifyChange"    # Z
    .param p2, "startLocationBasedDetection"    # Z

    .line 271
    invoke-direct {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->getCountry()Landroid/location/Country;

    move-result-object v0

    .line 272
    .local v0, "country":Landroid/location/Country;
    iget-object v1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mCountry:Landroid/location/Country;

    if-eqz v1, :cond_f

    new-instance v1, Landroid/location/Country;

    iget-object v2, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mCountry:Landroid/location/Country;

    invoke-direct {v1, v2}, Landroid/location/Country;-><init>(Landroid/location/Country;)V

    :cond_f
    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->runAfterDetectionAsync(Landroid/location/Country;Landroid/location/Country;ZZ)V

    .line 274
    iput-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mCountry:Landroid/location/Country;

    .line 275
    return-object v0
.end method

.method private getCountry()Landroid/location/Country;
    .registers 2

    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "result":Landroid/location/Country;
    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->getNetworkBasedCountry()Landroid/location/Country;

    move-result-object v0

    .line 171
    if-nez v0, :cond_b

    .line 172
    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->getLastKnownLocationBasedCountry()Landroid/location/Country;

    move-result-object v0

    .line 174
    :cond_b
    if-nez v0, :cond_11

    .line 175
    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->getSimBasedCountry()Landroid/location/Country;

    move-result-object v0

    .line 177
    :cond_11
    if-nez v0, :cond_17

    .line 178
    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->getLocaleCountry()Landroid/location/Country;

    move-result-object v0

    .line 180
    :cond_17
    invoke-direct {p0, v0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->addToLogs(Landroid/location/Country;)V

    .line 181
    return-object v0
.end method

.method private isNetworkCountryCodeAvailable()Z
    .registers 3

    .line 213
    iget-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 215
    .local v0, "phoneType":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method private notifyIfCountryChanged(Landroid/location/Country;Landroid/location/Country;)V
    .registers 4
    .param p1, "country"    # Landroid/location/Country;
    .param p2, "detectedCountry"    # Landroid/location/Country;

    .line 401
    if-eqz p2, :cond_11

    iget-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mListener:Landroid/location/CountryListener;

    if-eqz v0, :cond_11

    if-eqz p1, :cond_e

    .line 402
    invoke-virtual {p1, p2}, Landroid/location/Country;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 406
    :cond_e
    invoke-virtual {p0, p2}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->notifyListener(Landroid/location/Country;)V

    .line 408
    :cond_11
    return-void
.end method

.method private declared-synchronized scheduleLocationRefresh()V
    .registers 5

    monitor-enter p0

    .line 414
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1b

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 419
    :cond_7
    :try_start_7
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;

    .line 420
    new-instance v1, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$3;

    invoke-direct {v1, p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$3;-><init>(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;)V

    const-wide/32 v2, 0x5265c00

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_1b

    .line 430
    monitor-exit p0

    return-void

    .line 413
    .end local p0    # "this":Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized startLocationBasedDetector(Landroid/location/CountryListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/location/CountryListener;

    monitor-enter p0

    .line 360
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/countrydetector/CountryDetectorBase;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_17

    if-eqz v0, :cond_7

    .line 361
    monitor-exit p0

    return-void

    .line 367
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->createLocationBasedCountryDetector()Lcom/android/server/location/countrydetector/CountryDetectorBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/countrydetector/CountryDetectorBase;

    .line 368
    invoke-virtual {v0, p1}, Lcom/android/server/location/countrydetector/CountryDetectorBase;->setCountryListener(Landroid/location/CountryListener;)V

    .line 369
    iget-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/countrydetector/CountryDetectorBase;

    invoke-virtual {v0}, Lcom/android/server/location/countrydetector/CountryDetectorBase;->detectCountry()Landroid/location/Country;
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_17

    .line 370
    monitor-exit p0

    return-void

    .line 359
    .end local p0    # "this":Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;
    .end local p1    # "listener":Landroid/location/CountryListener;
    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized stopLocationBasedDetector()V
    .registers 2

    monitor-enter p0

    .line 377
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/countrydetector/CountryDetectorBase;

    if-eqz v0, :cond_b

    .line 378
    invoke-virtual {v0}, Lcom/android/server/location/countrydetector/CountryDetectorBase;->stop()V

    .line 379
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/countrydetector/CountryDetectorBase;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 381
    .end local p0    # "this":Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;
    :cond_b
    monitor-exit p0

    return-void

    .line 376
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected declared-synchronized addPhoneStateListener()V
    .registers 4

    monitor-enter p0

    .line 443
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_12

    .line 444
    new-instance v0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$4;

    invoke-direct {v0, p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$4;-><init>(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;)V

    iput-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 458
    iget-object v1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 460
    .end local p0    # "this":Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;
    :cond_12
    monitor-exit p0

    return-void

    .line 442
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected createLocationBasedCountryDetector()Lcom/android/server/location/countrydetector/CountryDetectorBase;
    .registers 3

    .line 384
    new-instance v0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;

    iget-object v1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public detectCountry()Landroid/location/Country;
    .registers 3

    .line 151
    iget-boolean v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mStopped:Z

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->detectCountry(ZZ)Landroid/location/Country;

    move-result-object v0

    return-object v0
.end method

.method protected getLastKnownLocationBasedCountry()Landroid/location/Country;
    .registers 2

    .line 236
    iget-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mCountryFromLocation:Landroid/location/Country;

    return-object v0
.end method

.method protected getLocaleCountry()Landroid/location/Country;
    .registers 5

    .line 255
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 256
    .local v0, "defaultLocale":Ljava/util/Locale;
    if-eqz v0, :cond_11

    .line 257
    new-instance v1, Landroid/location/Country;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/location/Country;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 259
    :cond_11
    const/4 v1, 0x0

    return-object v1
.end method

.method protected getNetworkBasedCountry()Landroid/location/Country;
    .registers 4

    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, "countryIso":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->isNetworkCountryCodeAvailable()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 224
    iget-object v1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 226
    new-instance v1, Landroid/location/Country;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/location/Country;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 229
    :cond_1a
    const/4 v1, 0x0

    return-object v1
.end method

.method protected getSimBasedCountry()Landroid/location/Country;
    .registers 4

    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, "countryIso":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 246
    new-instance v1, Landroid/location/Country;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Landroid/location/Country;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 248
    :cond_14
    const/4 v1, 0x0

    return-object v1
.end method

.method protected isAirplaneModeOff()Z
    .registers 4

    .line 388
    iget-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mContext:Landroid/content/Context;

    .line 389
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 388
    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v2, 0x1

    :cond_10
    return v2
.end method

.method protected isGeoCoderImplemented()Z
    .registers 2

    .line 470
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v0

    return v0
.end method

.method protected isWifiOn()Z
    .registers 4

    .line 393
    iget-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mContext:Landroid/content/Context;

    .line 394
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 393
    const-string/jumbo v1, "wifi_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v2, 0x1

    :cond_11
    return v2
.end method

.method protected declared-synchronized removePhoneStateListener()V
    .registers 4

    monitor-enter p0

    .line 463
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_e

    .line 464
    iget-object v1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 465
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 467
    .end local p0    # "this":Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;
    :cond_e
    monitor-exit p0

    return-void

    .line 462
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method runAfterDetection(Landroid/location/Country;Landroid/location/Country;ZZ)V
    .registers 7
    .param p1, "country"    # Landroid/location/Country;
    .param p2, "detectedCountry"    # Landroid/location/Country;
    .param p3, "notifyChange"    # Z
    .param p4, "startLocationBasedDetection"    # Z

    .line 314
    if-eqz p3, :cond_5

    .line 315
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->notifyIfCountryChanged(Landroid/location/Country;Landroid/location/Country;)V

    .line 328
    :cond_5
    const/4 v0, 0x1

    if-eqz p4, :cond_2b

    if-eqz p2, :cond_10

    .line 329
    invoke-virtual {p2}, Landroid/location/Country;->getSource()I

    move-result v1

    if-le v1, v0, :cond_2b

    .line 330
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->isAirplaneModeOff()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->isWifiOn()Z

    move-result v1

    if-eqz v1, :cond_2b

    :cond_1c
    iget-object v1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mListener:Landroid/location/CountryListener;

    if-eqz v1, :cond_2b

    .line 331
    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->isGeoCoderImplemented()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 338
    iget-object v1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLocationBasedCountryDetectionListener:Landroid/location/CountryListener;

    invoke-direct {p0, v1}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->startLocationBasedDetector(Landroid/location/CountryListener;)V

    .line 340
    :cond_2b
    if-eqz p2, :cond_3b

    .line 341
    invoke-virtual {p2}, Landroid/location/Country;->getSource()I

    move-result v1

    if-lt v1, v0, :cond_34

    goto :goto_3b

    .line 351
    :cond_34
    invoke-direct {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->cancelLocationRefresh()V

    .line 352
    invoke-direct {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->stopLocationBasedDetector()V

    goto :goto_3e

    .line 347
    :cond_3b
    :goto_3b
    invoke-direct {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->scheduleLocationRefresh()V

    .line 354
    :goto_3e
    return-void
.end method

.method protected runAfterDetectionAsync(Landroid/location/Country;Landroid/location/Country;ZZ)V
    .registers 13
    .param p1, "country"    # Landroid/location/Country;
    .param p2, "detectedCountry"    # Landroid/location/Country;
    .param p3, "notifyChange"    # Z
    .param p4, "startLocationBasedDetection"    # Z

    .line 283
    iget-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;-><init>(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;Landroid/location/Country;Landroid/location/Country;ZZ)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 290
    return-void
.end method

.method public setCountryListener(Landroid/location/CountryListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/location/CountryListener;

    .line 294
    iget-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mListener:Landroid/location/CountryListener;

    .line 295
    .local v0, "prevListener":Landroid/location/CountryListener;
    iput-object p1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mListener:Landroid/location/CountryListener;

    .line 296
    iget-object v1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mListener:Landroid/location/CountryListener;

    if-nez v1, :cond_1d

    .line 298
    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->removePhoneStateListener()V

    .line 299
    invoke-direct {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->stopLocationBasedDetector()V

    .line 300
    invoke-direct {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->cancelLocationRefresh()V

    .line 301
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mStopTime:J

    .line 302
    iget-wide v3, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mTotalTime:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mTotalTime:J

    goto :goto_33

    .line 303
    :cond_1d
    if-nez v0, :cond_33

    .line 304
    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->addPhoneStateListener()V

    .line 305
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->detectCountry(ZZ)Landroid/location/Country;

    .line 306
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mStartTime:J

    .line 307
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mStopTime:J

    .line 308
    iput v2, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mCountServiceStateChanges:I

    .line 310
    :cond_33
    :goto_33
    return-void
.end method

.method public stop()V
    .registers 3

    .line 157
    const-string v0, "CountryDetector"

    const-string v1, "Stop the detector."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-direct {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->cancelLocationRefresh()V

    .line 159
    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->removePhoneStateListener()V

    .line 160
    invoke-direct {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->stopLocationBasedDetector()V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mListener:Landroid/location/CountryListener;

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mStopped:Z

    .line 163
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    .line 475
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 476
    .local v0, "currentTime":J
    const-wide/16 v2, 0x0

    .line 477
    .local v2, "currentSessionLength":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 478
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v5, "ComprehensiveCountryDetector{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    iget-wide v5, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mStopTime:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    const-string v6, ", "

    if-nez v5, :cond_3a

    .line 481
    iget-wide v7, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mStartTime:J

    sub-long v2, v0, v7

    .line 482
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "timeRunning="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5a

    .line 485
    :cond_3a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "lastRunTimeLength="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v7, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mStopTime:J

    iget-wide v9, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mStartTime:J

    sub-long/2addr v7, v9

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    :goto_5a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "totalCountServiceStateChanges="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mTotalCountServiceStateChanges:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "currentCountServiceStateChanges="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mCountServiceStateChanges:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "totalTime="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v7, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mTotalTime:J

    add-long/2addr v7, v2

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "currentTime="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    const-string v5, "countries="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    iget-object v5, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_d6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_fd

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Country;

    .line 493
    .local v6, "country":Landroid/location/Country;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\n   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Landroid/location/Country;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .end local v6    # "country":Landroid/location/Country;
    goto :goto_d6

    .line 495
    :cond_fd
    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
