.class public final Lcom/android/server/vibrator/VibratorControlService;
.super Landroid/frameworks/vibrator/IVibratorControlService$Stub;
.source "VibratorControlService.java"


# static fields
.field public static final DEBUG_DATE_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mRequestVibrationParamsForUsages:[I

.field public final mStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

.field public mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

.field public final mVibrationParamsRecords:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords;

.field public final mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

.field public final mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEBUG_DATE_TIME_FORMATTER()Ljava/time/format/DateTimeFormatter;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/vibrator/VibratorControlService;->DEBUG_DATE_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smmapFromAdaptiveVibrationTypeToVibrationUsages(I)[I
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/vibrator/VibratorControlService;->mapFromAdaptiveVibrationTypeToVibrationUsages(I)[I

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 70
    const-string v0, "MM-dd HH:mm:ss.SSS"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/server/vibrator/VibratorControlService;->DEBUG_DATE_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/vibrator/VibratorControllerHolder;Lcom/android/server/vibrator/VibrationScaler;Lcom/android/server/vibrator/VibrationSettings;Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;Ljava/lang/Object;)V
    .registers 8

    .line 87
    invoke-direct {p0}, Landroid/frameworks/vibrator/IVibratorControlService$Stub;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    .line 88
    iput-object p2, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;

    .line 89
    iput-object p3, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    .line 90
    iput-object p5, p0, Lcom/android/server/vibrator/VibratorControlService;->mStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    .line 91
    iput-object p6, p0, Lcom/android/server/vibrator/VibratorControlService;->mLock:Ljava/lang/Object;

    .line 92
    invoke-virtual {p4}, Lcom/android/server/vibrator/VibrationSettings;->getRequestVibrationParamsForUsages()[I

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/vibrator/VibratorControlService;->mRequestVibrationParamsForUsages:[I

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x10e012f

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x10e012e

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 99
    new-instance p3, Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords;

    invoke-direct {p3, p2, p1}, Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords;-><init>(II)V

    iput-object p3, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamsRecords:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords;

    return-void
.end method

.method public static mapFromAdaptiveVibrationTypeToVibrationUsages(I)[I
    .registers 3

    .line 395
    new-instance v0, Landroid/util/IntArray;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_10

    const/16 v1, 0x11

    .line 397
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    :cond_10
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1e

    const/16 v1, 0x31

    .line 401
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    const/16 v1, 0x41

    .line 402
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    :cond_1e
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_27

    const/16 v1, 0x21

    .line 406
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    :cond_27
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_34

    const/16 v1, 0x13

    .line 410
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    const/4 v1, 0x0

    .line 411
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    :cond_34
    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_42

    const/16 p0, 0x12

    .line 415
    invoke-virtual {v0, p0}, Landroid/util/IntArray;->add(I)V

    const/16 p0, 0x32

    .line 416
    invoke-virtual {v0, p0}, Landroid/util/IntArray;->add(I)V

    .line 418
    :cond_42
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    return-object p0
.end method

.method public static mapToAdaptiveVibrationType(I)I
    .registers 3

    if-eqz p0, :cond_3e

    const/16 v0, 0x21

    if-eq p0, v0, :cond_3c

    const/16 v0, 0x22

    if-eq p0, v0, :cond_39

    const/16 v0, 0x31

    if-eq p0, v0, :cond_37

    const/16 v0, 0x32

    if-eq p0, v0, :cond_39

    const/16 v0, 0x41

    if-eq p0, v0, :cond_37

    const/16 v0, 0x42

    if-eq p0, v0, :cond_39

    packed-switch p0, :pswitch_data_42

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized vibration usage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VibratorControlService"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :pswitch_35
    const/4 p0, 0x1

    return p0

    :cond_37
    const/4 p0, 0x2

    return p0

    :cond_39
    :pswitch_39
    const/16 p0, 0x8

    return p0

    :cond_3c
    const/4 p0, 0x4

    return p0

    :cond_3e
    :pswitch_3e
    const/16 p0, 0x10

    return p0

    nop

    :pswitch_data_42
    .packed-switch 0x11
        :pswitch_35
        :pswitch_39
        :pswitch_3e
    .end packed-switch
.end method


# virtual methods
.method public clearVibrationParams(ILandroid/frameworks/vibrator/IVibratorController;)V
    .registers 5

    .line 169
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 172
    :try_start_6
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibratorControllerHolder;->getVibratorController()Landroid/frameworks/vibrator/IVibratorController;

    move-result-object v1

    if-nez v1, :cond_2d

    .line 173
    const-string p0, "VibratorControlService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received request to clear VibrationParams for IVibratorController = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", but no controller was previously registered. Request Ignored."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception p0

    goto :goto_63

    .line 178
    :cond_2d
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibratorControllerHolder;->getVibratorController()Landroid/frameworks/vibrator/IVibratorController;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 179
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 178
    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_59

    .line 180
    const-string p1, "VibratorControlService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to clear VibrationParams. The provided controller doesn\'t match the registered one. "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    monitor-exit v0

    return-void

    :cond_59
    const/high16 p2, -0x40800000    # -1.0f

    .line 185
    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibratorControlService;->updateAdaptiveHapticsScales(IF)V

    .line 186
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorControlService;->recordClearVibrationParams(I)V

    .line 187
    monitor-exit v0

    return-void

    :goto_63
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_6 .. :try_end_64} :catchall_2b

    throw p0
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 7

    .line 324
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 325
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;

    .line 326
    invoke-virtual {v1}, Lcom/android/server/vibrator/VibratorControllerHolder;->getVibratorController()Landroid/frameworks/vibrator/IVibratorController;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_f

    move v1, v3

    goto :goto_10

    :cond_f
    move v1, v2

    .line 327
    :goto_10
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    if-eqz v4, :cond_15

    move v2, v3

    .line 328
    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_5e

    .line 330
    const-string v0, "VibratorControlService:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isVibratorControllerRegistered = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasPendingVibrationParamsRequest = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 336
    const-string v0, "Vibration parameters update history:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 338
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamsRecords:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 339
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 341
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    :catchall_5e
    move-exception p0

    .line 328
    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw p0
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;)V
    .registers 6

    .line 347
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 348
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;

    .line 349
    invoke-virtual {v1}, Lcom/android/server/vibrator/VibratorControllerHolder;->getVibratorController()Landroid/frameworks/vibrator/IVibratorController;

    move-result-object v1

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 350
    :goto_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1d

    const-wide v2, 0x1050000001bL

    .line 351
    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 353
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamsRecords:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->dump(Landroid/util/proto/ProtoOutputStream;)V

    return-void

    :catchall_1d
    move-exception p0

    .line 350
    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public final endOngoingRequestVibrationParamsLocked(Z)V
    .registers 3

    .line 363
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    if-eqz v0, :cond_7

    .line 364
    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->endRequest(Z)V

    :cond_7
    const/4 p1, 0x0

    .line 366
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .registers 1

    .line 236
    const-string p0, "eb095ed3034973273898ca9e37bbc72566392b8a"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public getRequestVibrationParamsToken()Landroid/os/IBinder;
    .registers 2

    .line 315
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 316
    :try_start_3
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    if-nez p0, :cond_9

    const/4 p0, 0x0

    goto :goto_b

    :cond_9
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->token:Landroid/os/IBinder;

    :goto_b
    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 317
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public onRequestVibrationParamsComplete(Landroid/os/IBinder;[Landroid/frameworks/vibrator/VibrationParam;)V
    .registers 8

    .line 193
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-virtual {p0, p2}, Lcom/android/server/vibrator/VibratorControlService;->requireContainsNoNullElement([Landroid/frameworks/vibrator/VibrationParam;)V

    .line 196
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 197
    :try_start_9
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    if-nez v1, :cond_1d

    .line 198
    const-string p1, "VibratorControlService"

    const-string p2, "New vibration params received but no token was cached in the service. New vibration params ignored."

    invoke-static {p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorControlService;->mStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->logVibrationParamResponseIgnored()V

    .line 202
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    goto :goto_5b

    .line 205
    :cond_1d
    iget-object v1, v1, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_33

    .line 206
    const-string p1, "VibratorControlService"

    const-string p2, "New vibration params received but the provided token does not match the cached one. New vibration params ignored."

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorControlService;->mStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->logVibrationParamResponseIgnored()V

    .line 210
    monitor-exit v0

    return-void

    .line 213
    :cond_33
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object p1, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    iget-wide v3, p1, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->uptimeMs:J

    sub-long/2addr v1, v3

    .line 214
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorControlService;->mStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    iget p1, p1, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->uid:I

    invoke-virtual {v3, p1, v1, v2}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->logVibrationParamRequestLatency(IJ)V

    if-nez p2, :cond_4e

    .line 217
    const-string p0, "VibratorControlService"

    const-string p1, "New vibration params received but are null. New vibration params ignored."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    monitor-exit v0

    return-void

    .line 223
    :cond_4e
    invoke-virtual {p0, p2}, Lcom/android/server/vibrator/VibratorControlService;->updateAdaptiveHapticsScales([Landroid/frameworks/vibrator/VibrationParam;)V

    const/4 p1, 0x0

    .line 224
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorControlService;->endOngoingRequestVibrationParamsLocked(Z)V

    const/4 p1, 0x1

    .line 225
    invoke-virtual {p0, p2, p1}, Lcom/android/server/vibrator/VibratorControlService;->recordUpdateVibrationParams([Landroid/frameworks/vibrator/VibrationParam;Z)V

    .line 226
    monitor-exit v0

    return-void

    :goto_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_9 .. :try_end_5c} :catchall_1b

    throw p0
.end method

.method public final recordClearVibrationParams(I)V
    .registers 8

    .line 493
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 494
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamsRecords:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords;

    new-instance v0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;

    sget-object v1, Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;->CLEAR:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    const/high16 v5, -0x40800000    # -1.0f

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;-><init>(Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;JIF)V

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->add(Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;)Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;

    return-void
.end method

.method public final recordUpdateVibrationParams([Landroid/frameworks/vibrator/VibrationParam;Z)V
    .registers 11

    .line 475
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_9

    .line 478
    sget-object p2, Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;->PULL:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    :goto_7
    move-object v1, p2

    goto :goto_c

    .line 479
    :cond_9
    sget-object p2, Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;->PUSH:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    goto :goto_7

    .line 480
    :goto_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 481
    array-length p2, p1

    const/4 v0, 0x0

    move v6, v0

    :goto_13
    if-ge v6, p2, :cond_4b

    aget-object v0, p1, v6

    .line 482
    invoke-virtual {v0}, Landroid/frameworks/vibrator/VibrationParam;->getTag()I

    move-result v4

    if-eqz v4, :cond_34

    .line 483
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported vibration param ignored from dumpsys records: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "VibratorControlService"

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .line 486
    :cond_34
    invoke-virtual {v0}, Landroid/frameworks/vibrator/VibrationParam;->getScale()Landroid/frameworks/vibrator/ScaleParam;

    move-result-object v0

    .line 487
    iget-object v7, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamsRecords:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords;

    move-object v4, v0

    new-instance v0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;

    move-object v5, v4

    iget v4, v5, Landroid/frameworks/vibrator/ScaleParam;->typesMask:I

    iget v5, v5, Landroid/frameworks/vibrator/ScaleParam;->scale:F

    invoke-direct/range {v0 .. v5}, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;-><init>(Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;JIF)V

    invoke-virtual {v7, v0}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->add(Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;)Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;

    :goto_48
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_4b
    return-void
.end method

.method public registerVibratorController(Landroid/frameworks/vibrator/IVibratorController;)V
    .registers 3

    .line 105
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_6
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorControllerHolder;->setVibratorController(Landroid/frameworks/vibrator/IVibratorController;)V

    .line 109
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final requireContainsNoNullElement([Landroid/frameworks/vibrator/VibrationParam;)V
    .registers 2

    const/4 p0, 0x0

    .line 499
    invoke-static {p1, p0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return-void

    .line 500
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid vibration params received: null values are not permitted."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setVibrationParams([Landroid/frameworks/vibrator/VibrationParam;Landroid/frameworks/vibrator/IVibratorController;)V
    .registers 5

    .line 138
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorControlService;->requireContainsNoNullElement([Landroid/frameworks/vibrator/VibrationParam;)V

    .line 141
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_9
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibratorControllerHolder;->getVibratorController()Landroid/frameworks/vibrator/IVibratorController;

    move-result-object v1

    if-nez v1, :cond_30

    .line 143
    const-string p0, "VibratorControlService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received request to set VibrationParams for IVibratorController = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", but no controller was previously registered. Request Ignored."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception p0

    goto :goto_70

    .line 148
    :cond_30
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibratorControllerHolder;->getVibratorController()Landroid/frameworks/vibrator/IVibratorController;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 149
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 148
    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5c

    .line 150
    const-string p1, "VibratorControlService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to set new VibrationParams. The provided controller doesn\'t match the registered one. "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    monitor-exit v0

    return-void

    :cond_5c
    if-nez p1, :cond_67

    .line 156
    const-string p0, "VibratorControlService"

    const-string p1, "New vibration params received but are null. New vibration params ignored."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    monitor-exit v0

    return-void

    .line 162
    :cond_67
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorControlService;->updateAdaptiveHapticsScales([Landroid/frameworks/vibrator/VibrationParam;)V

    const/4 p2, 0x0

    .line 163
    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibratorControlService;->recordUpdateVibrationParams([Landroid/frameworks/vibrator/VibrationParam;Z)V

    .line 164
    monitor-exit v0

    return-void

    :goto_70
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_9 .. :try_end_71} :catchall_2e

    throw p0
.end method

.method public shouldRequestVibrationParams(I)Z
    .registers 4

    .line 298
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;

    .line 300
    invoke-virtual {v1}, Lcom/android/server/vibrator/VibratorControllerHolder;->getVibratorController()Landroid/frameworks/vibrator/IVibratorController;

    move-result-object v1

    if-nez v1, :cond_10

    const/4 p0, 0x0

    .line 302
    monitor-exit v0

    return p0

    :catchall_e
    move-exception p0

    goto :goto_18

    .line 305
    :cond_10
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorControlService;->mRequestVibrationParamsForUsages:[I

    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 306
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_e

    throw p0
.end method

.method public triggerVibrationParamsRequest(III)Ljava/util/concurrent/CompletableFuture;
    .registers 10

    .line 252
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 253
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;

    .line 254
    invoke-virtual {v1}, Lcom/android/server/vibrator/VibratorControllerHolder;->getVibratorController()Landroid/frameworks/vibrator/IVibratorController;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_17

    .line 256
    const-string p0, "VibratorControlService"

    const-string p1, "Unable to request vibration params. There is no registered IVibrationController."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    monitor-exit v0

    return-object v2

    :catchall_15
    move-exception p0

    goto :goto_6b

    .line 261
    :cond_17
    invoke-static {p2}, Lcom/android/server/vibrator/VibratorControlService;->mapToAdaptiveVibrationType(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3b

    .line 263
    const-string p0, "VibratorControlService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to request vibration params. The provided usage "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is unrecognized."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    monitor-exit v0

    return-object v2

    .line 268
    :cond_3b
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    if-eqz v4, :cond_47

    iget v5, v4, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->usage:I

    if-ne v5, p2, :cond_47

    .line 270
    iget-object p0, v4, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->future:Ljava/util/concurrent/CompletableFuture;

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_15

    return-object p0

    :cond_47
    const/4 v4, 0x1

    .line 274
    :try_start_48
    invoke-virtual {p0, v4}, Lcom/android/server/vibrator/VibratorControlService;->endOngoingRequestVibrationParamsLocked(Z)V

    .line 275
    new-instance v5, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    invoke-direct {v5, p1, p2}, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;-><init>(II)V

    iput-object v5, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    int-to-long p1, p3

    .line 276
    iget-object p3, v5, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->token:Landroid/os/IBinder;

    invoke-interface {v1, v3, p1, p2, p3}, Landroid/frameworks/vibrator/IVibratorController;->requestVibrationParams(IJLandroid/os/IBinder;)V

    .line 278
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    iget-object p0, p1, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->future:Ljava/util/concurrent/CompletableFuture;
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_5c} :catch_5e
    .catchall {:try_start_48 .. :try_end_5c} :catchall_15

    :try_start_5c
    monitor-exit v0

    return-object p0

    :catch_5e
    move-exception p1

    .line 280
    const-string p2, "VibratorControlService"

    const-string p3, "Failed to request vibration params."

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    invoke-virtual {p0, v4}, Lcom/android/server/vibrator/VibratorControlService;->endOngoingRequestVibrationParamsLocked(Z)V

    .line 284
    monitor-exit v0

    return-object v2

    .line 285
    :goto_6b
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_5c .. :try_end_6c} :catchall_15

    throw p0
.end method

.method public unregisterVibratorController(Landroid/frameworks/vibrator/IVibratorController;)V
    .registers 5

    .line 114
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_6
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibratorControllerHolder;->getVibratorController()Landroid/frameworks/vibrator/IVibratorController;

    move-result-object v1

    if-nez v1, :cond_2d

    .line 118
    const-string p0, "VibratorControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received request to unregister IVibratorController = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", but no controller was previously registered. Request Ignored."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception p0

    goto :goto_6a

    .line 123
    :cond_2d
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibratorControllerHolder;->getVibratorController()Landroid/frameworks/vibrator/IVibratorController;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 124
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 123
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_59

    .line 125
    const-string p1, "VibratorControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to unregister IVibratorController. The provided controller doesn\'t match the registered one. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    monitor-exit v0

    return-void

    .line 129
    :cond_59
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    invoke-virtual {p1}, Lcom/android/server/vibrator/VibrationScaler;->clearAdaptiveHapticsScales()V

    .line 130
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/server/vibrator/VibratorControllerHolder;->setVibratorController(Landroid/frameworks/vibrator/IVibratorController;)V

    const/4 p1, 0x1

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorControlService;->endOngoingRequestVibrationParamsLocked(Z)V

    .line 132
    monitor-exit v0

    return-void

    :goto_6a
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_6 .. :try_end_6b} :catchall_2b

    throw p0
.end method

.method public final updateAdaptiveHapticsScales(IF)V
    .registers 6

    .line 448
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorControlService;->mStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    invoke-virtual {v0, p2}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->logVibrationParamScale(F)V

    .line 449
    invoke-static {p1}, Lcom/android/server/vibrator/VibratorControlService;->mapFromAdaptiveVibrationTypeToVibrationUsages(I)[I

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_15

    aget v2, p1, v1

    .line 450
    invoke-virtual {p0, v2, p2}, Lcom/android/server/vibrator/VibratorControlService;->updateOrRemoveAdaptiveHapticsScale(IF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_15
    return-void
.end method

.method public final updateAdaptiveHapticsScales([Landroid/frameworks/vibrator/VibrationParam;)V
    .registers 7

    .line 428
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    array-length v0, p1

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_34

    aget-object v2, p1, v1

    .line 431
    invoke-virtual {v2}, Landroid/frameworks/vibrator/VibrationParam;->getTag()I

    move-result v3

    if-eqz v3, :cond_26

    .line 432
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported vibration param: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VibratorControlService"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 435
    :cond_26
    invoke-virtual {v2}, Landroid/frameworks/vibrator/VibrationParam;->getScale()Landroid/frameworks/vibrator/ScaleParam;

    move-result-object v2

    .line 436
    iget v3, v2, Landroid/frameworks/vibrator/ScaleParam;->typesMask:I

    iget v2, v2, Landroid/frameworks/vibrator/ScaleParam;->scale:F

    invoke-virtual {p0, v3, v2}, Lcom/android/server/vibrator/VibratorControlService;->updateAdaptiveHapticsScales(IF)V

    :goto_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_34
    return-void
.end method

.method public final updateOrRemoveAdaptiveHapticsScale(IF)V
    .registers 4

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_c

    .line 466
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationScaler;->removeAdaptiveHapticsScale(I)V

    return-void

    .line 470
    :cond_c
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibrationScaler;->updateAdaptiveHapticsScale(IF)V

    return-void
.end method
