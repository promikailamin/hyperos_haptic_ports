.class public final Lcom/android/server/display/ExternalDisplayStatsService;
.super Ljava/lang/Object;
.source "ExternalDisplayStatsService.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mAudioPlaybackCallback:Landroid/media/AudioManager$AudioPlaybackCallback;

.field public final mExternalDisplayStates:Landroid/util/SparseIntArray;

.field public final mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

.field public mInteractiveExternalDisplays:I

.field public final mInteractivityReceiver:Landroid/content/BroadcastReceiver;

.field public mIsExternalDisplayUsedForAudio:Z

.field public mIsInitialized:Z


# direct methods
.method public static synthetic $r8$lambda$1YlsIaeL_CilqVk2xL8I-SmC8Jg(Lcom/android/server/display/ExternalDisplayStatsService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/ExternalDisplayStatsService;->lambda$scheduleInit$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$fxGax_dOEBi69D6qqHWSjsuI5zA(Lcom/android/server/display/ExternalDisplayStatsService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/ExternalDisplayStatsService;->lambda$scheduleDeinit$1()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmExternalDisplayStates(Lcom/android/server/display/ExternalDisplayStatsService;)Landroid/util/SparseIntArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/display/ExternalDisplayStatsService;)Lcom/android/server/display/ExternalDisplayStatsService$Injector;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInteractiveExternalDisplays(Lcom/android/server/display/ExternalDisplayStatsService;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInteractiveExternalDisplays:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsExternalDisplayUsedForAudio(Lcom/android/server/display/ExternalDisplayStatsService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmInteractiveExternalDisplays(Lcom/android/server/display/ExternalDisplayStatsService;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInteractiveExternalDisplays:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlogExternalDisplayIdleEnded(Lcom/android/server/display/ExternalDisplayStatsService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/ExternalDisplayStatsService;->logExternalDisplayIdleEnded()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlogExternalDisplayIdleStarted(Lcom/android/server/display/ExternalDisplayStatsService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/ExternalDisplayStatsService;->logExternalDisplayIdleStarted()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlogStateAfterAudioSinkChanged(Lcom/android/server/display/ExternalDisplayStatsService;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/ExternalDisplayStatsService;->logStateAfterAudioSinkChanged(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 55
    const-string v0, "ExternalDisplayStatsService"

    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/function/BooleanSupplier;)V
    .registers 5

    .line 207
    new-instance v0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/display/ExternalDisplayStatsService$Injector;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/function/BooleanSupplier;)V

    invoke-direct {p0, v0}, Lcom/android/server/display/ExternalDisplayStatsService;-><init>(Lcom/android/server/display/ExternalDisplayStatsService$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/ExternalDisplayStatsService$Injector;)V
    .registers 3

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 106
    new-instance v0, Lcom/android/server/display/ExternalDisplayStatsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/ExternalDisplayStatsService$1;-><init>(Lcom/android/server/display/ExternalDisplayStatsService;)V

    iput-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mAudioPlaybackCallback:Landroid/media/AudioManager$AudioPlaybackCallback;

    .line 169
    new-instance v0, Lcom/android/server/display/ExternalDisplayStatsService$2;

    invoke-direct {v0, p0}, Lcom/android/server/display/ExternalDisplayStatsService$2;-><init>(Lcom/android/server/display/ExternalDisplayStatsService;)V

    iput-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInteractivityReceiver:Landroid/content/BroadcastReceiver;

    .line 212
    iput-object p1, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    return-void
.end method


# virtual methods
.method public isExternalDisplayUsedForAudio()Z
    .registers 1

    .line 281
    iget-boolean p0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    return p0
.end method

.method public isInteractiveExternalDisplays()Z
    .registers 1

    .line 276
    iget p0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInteractiveExternalDisplays:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$scheduleDeinit$1()V
    .registers 3

    .line 321
    iget-boolean v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsInitialized:Z

    if-nez v0, :cond_d

    .line 322
    const-string p0, "ExternalDisplayStatsService"

    const-string/jumbo v0, "scheduleDeinit is called but never initialized"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    const/4 v0, 0x0

    .line 325
    iput-boolean v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsInitialized:Z

    .line 326
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInteractivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->unregisterInteractivityReceiver(Landroid/content/BroadcastReceiver;)V

    .line 327
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mAudioPlaybackCallback:Landroid/media/AudioManager$AudioPlaybackCallback;

    invoke-virtual {v0, p0}, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->unregisterAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;)V

    return-void
.end method

.method public final synthetic lambda$scheduleInit$0()V
    .registers 4

    .line 304
    iget-boolean v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsInitialized:Z

    if-eqz v0, :cond_d

    .line 305
    const-string p0, "ExternalDisplayStatsService"

    const-string/jumbo v0, "scheduleInit is called but already initialized"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    const/4 v0, 0x1

    .line 308
    iput-boolean v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsInitialized:Z

    .line 309
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 310
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 311
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 312
    iput v1, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInteractiveExternalDisplays:I

    const/4 v1, 0x0

    .line 313
    iput-boolean v1, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    .line 314
    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    iget-object v2, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInteractivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->registerInteractivityReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 315
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mAudioPlaybackCallback:Landroid/media/AudioManager$AudioPlaybackCallback;

    invoke-virtual {v0, p0}, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->registerAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;)V

    return-void
.end method

.method public final logExternalDisplayError(I)V
    .registers 6

    .line 286
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 287
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 288
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_41

    .line 290
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    const/16 v2, 0x326

    iget-boolean v3, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    invoke-virtual {v0, v2, p1, v1, v3}, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->writeLog(IIIZ)V

    .line 293
    sget-boolean v0, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    if-eqz v0, :cond_40

    .line 294
    const-string v0, "ExternalDisplayStatsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "logExternalDisplayError countOfExternalDisplays="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorType="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mIsExternalDisplayUsedForAudio="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    return-void

    :catchall_41
    move-exception p0

    .line 288
    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw p0
.end method

.method public final logExternalDisplayIdleEnded()V
    .registers 8

    .line 545
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    monitor-enter v0

    const/4 v1, 0x0

    .line 546
    :cond_4
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_64

    .line 547
    iget-object v2, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 548
    iget-object v3, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    if-eq v3, v4, :cond_62

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1f

    goto :goto_62

    .line 556
    :cond_1f
    iget-object v4, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    add-int/lit8 v1, v1, 0x1

    iget-boolean v5, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    const/16 v6, 0x326

    invoke-virtual {v4, v6, v3, v1, v5}, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->writeLog(IIIZ)V

    .line 558
    sget-boolean v4, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    if-eqz v4, :cond_4

    .line 559
    const-string v4, "ExternalDisplayStatsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "logExternalDisplayIdleEnded displayId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " state="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " countOfExternalDisplays="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mIsExternalDisplayUsedForAudio="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catchall_60
    move-exception p0

    goto :goto_66

    .line 554
    :cond_62
    :goto_62
    monitor-exit v0

    return-void

    .line 567
    :cond_64
    monitor-exit v0

    return-void

    :goto_66
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_4 .. :try_end_67} :catchall_60

    throw p0
.end method

.method public final logExternalDisplayIdleStarted()V
    .registers 10

    .line 519
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    monitor-enter v0

    const/4 v1, 0x0

    .line 520
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_6d

    .line 521
    iget-object v2, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 522
    iget-object v3, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    if-eq v3, v4, :cond_6a

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6a

    .line 528
    iget-object v4, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    add-int/lit8 v5, v1, 0x1

    iget-boolean v6, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    const/4 v7, 0x4

    const/16 v8, 0x326

    invoke-virtual {v4, v8, v7, v5, v6}, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->writeLog(IIIZ)V

    .line 530
    sget-boolean v4, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    if-eqz v4, :cond_6a

    .line 531
    const-string v4, "ExternalDisplayStatsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "logExternalDisplayIdleStarted displayId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " currentState="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " countOfExternalDisplays="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " state="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mIsExternalDisplayUsedForAudio="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    :catchall_68
    move-exception p0

    goto :goto_6f

    :cond_6a
    :goto_6a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 541
    :cond_6d
    monitor-exit v0

    return-void

    :goto_6f
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_4 .. :try_end_70} :catchall_68

    throw p0
.end method

.method public final logExternalDisplayPresentationEnded(I)V
    .registers 7

    .line 498
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 499
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-ne p1, v2, :cond_10

    .line 501
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    goto :goto_50

    .line 503
    :cond_10
    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 504
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_e

    .line 506
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    const/16 v2, 0x9

    iget-boolean v3, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    const/16 v4, 0x326

    invoke-virtual {v0, v4, v2, v1, v3}, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->writeLog(IIIZ)V

    .line 509
    sget-boolean v0, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    if-eqz v0, :cond_4f

    .line 510
    const-string v0, "ExternalDisplayStatsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "logExternalDisplayPresentationEnded state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " countOfExternalDisplays="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mIsExternalDisplayUsedForAudio="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    return-void

    .line 504
    :goto_50
    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_e

    throw p0
.end method

.method public final logExternalDisplayPresentationStarted(I)V
    .registers 7

    .line 474
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 475
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-ne p1, v2, :cond_10

    .line 477
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    goto :goto_5a

    .line 479
    :cond_10
    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 480
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_e

    .line 482
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->isExtendedDisplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v0, 0x8

    goto :goto_23

    :cond_22
    const/4 v0, 0x7

    .line 484
    :goto_23
    iget-object v2, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    const/16 v3, 0x326

    iget-boolean v4, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->writeLog(IIIZ)V

    .line 487
    sget-boolean v1, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    if-eqz v1, :cond_59

    .line 488
    const-string v1, "ExternalDisplayStatsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "logExternalDisplayPresentationStarted state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " newState="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mIsExternalDisplayUsedForAudio="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    return-void

    .line 480
    :goto_5a
    :try_start_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_e

    throw p0
.end method

.method public final logStateAfterAudioSinkChanged(Z)V
    .registers 6

    .line 574
    iget-boolean v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    if-ne v0, p1, :cond_5

    goto :goto_41

    .line 577
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    .line 579
    iget-object p1, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    monitor-enter p1

    .line 580
    :try_start_a
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 581
    monitor-exit p1
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_42

    .line 582
    iget-object p1, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    const/16 v3, 0x326

    invoke-virtual {p1, v3, v1, v0, v2}, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->writeLog(IIIZ)V

    .line 585
    sget-boolean p1, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    if-eqz p1, :cond_41

    .line 586
    const-string p1, "ExternalDisplayStatsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "logStateAfterAudioSinkChanged countOfExternalDisplays)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mIsExternalDisplayUsedForAudio="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    :goto_41
    return-void

    :catchall_42
    move-exception p0

    .line 581
    :try_start_43
    monitor-exit p1
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public final logStateConnected(I)V
    .registers 8

    .line 333
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 334
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_10

    .line 336
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    goto :goto_69

    .line 338
    :cond_10
    iget-object v3, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    const/4 v4, 0x2

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 339
    iget-object v3, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    .line 340
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_e

    if-ne v3, v2, :cond_22

    .line 343
    invoke-virtual {p0}, Lcom/android/server/display/ExternalDisplayStatsService;->scheduleInit()V

    .line 346
    :cond_22
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    const/16 v2, 0x326

    iget-boolean v5, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    invoke-virtual {v0, v2, v4, v3, v5}, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->writeLog(IIIZ)V

    .line 348
    sget-boolean v0, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    if-eqz v0, :cond_68

    .line 349
    const-string v0, "ExternalDisplayStatsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "logStateConnected displayId="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " countOfExternalDisplays="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " currentState="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " state="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mIsExternalDisplayUsedForAudio="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_68
    return-void

    .line 340
    :goto_69
    :try_start_69
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_e

    throw p0
.end method

.method public final logStateDisabled(I)V
    .registers 10

    .line 447
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 448
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_77

    const/4 v2, 0x3

    if-ne v1, v2, :cond_10

    goto :goto_77

    :cond_10
    const/4 v3, 0x0

    .line 452
    :goto_11
    iget-object v4, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_75

    .line 453
    iget-object v4, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    if-eq v4, p1, :cond_22

    goto :goto_72

    .line 456
    :cond_22
    iget-object v4, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 457
    iget-object v4, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    add-int/lit8 v5, v3, 0x1

    iget-boolean v6, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    const/16 v7, 0x326

    invoke-virtual {v4, v7, v2, v5, v6}, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->writeLog(IIIZ)V

    .line 459
    sget-boolean v4, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    if-eqz v4, :cond_72

    .line 460
    const-string v4, "ExternalDisplayStatsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "logStateDisabled displayId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " countOfExternalDisplays="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " currentState="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " state="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mIsExternalDisplayUsedForAudio="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    :catchall_70
    move-exception p0

    goto :goto_79

    :cond_72
    :goto_72
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 469
    :cond_75
    monitor-exit v0

    return-void

    .line 450
    :cond_77
    :goto_77
    monitor-exit v0

    return-void

    .line 469
    :goto_79
    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_3 .. :try_end_7a} :catchall_70

    throw p0
.end method

.method public final logStateDisconnected(I)V
    .registers 8

    .line 361
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 362
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ne v1, v2, :cond_31

    .line 364
    sget-boolean p0, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    if-eqz p0, :cond_2f

    .line 365
    const-string p0, "ExternalDisplayStatsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "logStateDisconnected displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " already disconnected"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    :catchall_2d
    move-exception p0

    goto :goto_89

    .line 369
    :cond_2f
    :goto_2f
    monitor-exit v0

    return-void

    .line 371
    :cond_31
    iget-object v3, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    .line 372
    iget-object v4, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 373
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_2d

    .line 375
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    const/16 v4, 0x326

    iget-boolean v5, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    invoke-virtual {v0, v4, v2, v3, v5}, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->writeLog(IIIZ)V

    .line 379
    sget-boolean v0, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    if-eqz v0, :cond_83

    .line 380
    const-string v0, "ExternalDisplayStatsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "logStateDisconnected displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " countOfExternalDisplays="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " currentState="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " state="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mIsExternalDisplayUsedForAudio="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_83
    if-ne v3, v2, :cond_88

    .line 390
    invoke-virtual {p0}, Lcom/android/server/display/ExternalDisplayStatsService;->scheduleDeinit()V

    :cond_88
    return-void

    .line 373
    :goto_89
    :try_start_89
    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_2d

    throw p0
.end method

.method public final logStateExtended(I)V
    .registers 10

    .line 421
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 422
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_77

    const/4 v2, 0x6

    if-ne v1, v2, :cond_10

    goto :goto_77

    :cond_10
    const/4 v3, 0x0

    .line 426
    :goto_11
    iget-object v4, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_75

    .line 427
    iget-object v4, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    if-eq v4, p1, :cond_22

    goto :goto_72

    .line 430
    :cond_22
    iget-object v4, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 431
    iget-object v4, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    add-int/lit8 v5, v3, 0x1

    iget-boolean v6, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    const/16 v7, 0x326

    invoke-virtual {v4, v7, v2, v5, v6}, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->writeLog(IIIZ)V

    .line 433
    sget-boolean v4, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    if-eqz v4, :cond_72

    .line 434
    const-string v4, "ExternalDisplayStatsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "logStateExtended displayId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " countOfExternalDisplays="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " currentState="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " state="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mIsExternalDisplayUsedForAudio="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    :catchall_70
    move-exception p0

    goto :goto_79

    :cond_72
    :goto_72
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 443
    :cond_75
    monitor-exit v0

    return-void

    .line 424
    :cond_77
    :goto_77
    monitor-exit v0

    return-void

    .line 443
    :goto_79
    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_3 .. :try_end_7a} :catchall_70

    throw p0
.end method

.method public final logStateMirroring(I)V
    .registers 10

    .line 395
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 396
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_77

    const/4 v2, 0x5

    if-ne v1, v2, :cond_10

    goto :goto_77

    :cond_10
    const/4 v3, 0x0

    .line 400
    :goto_11
    iget-object v4, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_75

    .line 401
    iget-object v4, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    if-eq v4, p1, :cond_22

    goto :goto_72

    .line 404
    :cond_22
    iget-object v4, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 405
    iget-object v4, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    add-int/lit8 v5, v3, 0x1

    iget-boolean v6, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    const/16 v7, 0x326

    invoke-virtual {v4, v7, v2, v5, v6}, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->writeLog(IIIZ)V

    .line 407
    sget-boolean v4, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    if-eqz v4, :cond_72

    .line 408
    const-string v4, "ExternalDisplayStatsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "logStateMirroring displayId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " countOfExternalDisplays="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " currentState="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " state="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mIsExternalDisplayUsedForAudio="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    :catchall_70
    move-exception p0

    goto :goto_79

    :cond_72
    :goto_72
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 417
    :cond_75
    monitor-exit v0

    return-void

    .line 398
    :cond_77
    :goto_77
    monitor-exit v0

    return-void

    .line 417
    :goto_79
    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_3 .. :try_end_7a} :catchall_70

    throw p0
.end method

.method public onCableNotCapableDisplayPort()V
    .registers 2

    const/16 v0, 0xd

    .line 233
    invoke-virtual {p0, v0}, Lcom/android/server/display/ExternalDisplayStatsService;->logExternalDisplayError(I)V

    return-void
.end method

.method public onDisplayConnected(Lcom/android/server/display/LogicalDisplay;)V
    .registers 4

    .line 237
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 238
    iget v0, v0, Landroid/view/DisplayInfo;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    goto :goto_13

    .line 241
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/display/ExternalDisplayStatsService;->logStateConnected(I)V

    :cond_13
    :goto_13
    return-void
.end method

.method public onDisplayContentModeChange(I)V
    .registers 3

    .line 245
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->isExtendedDisplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 246
    invoke-virtual {p0, p1}, Lcom/android/server/display/ExternalDisplayStatsService;->logStateExtended(I)V

    return-void

    .line 248
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/display/ExternalDisplayStatsService;->logStateMirroring(I)V

    return-void
.end method

.method public onDisplayDisabled(I)V
    .registers 2

    .line 253
    invoke-virtual {p0, p1}, Lcom/android/server/display/ExternalDisplayStatsService;->logStateDisabled(I)V

    return-void
.end method

.method public onDisplayDisconnected(I)V
    .registers 2

    .line 257
    invoke-virtual {p0, p1}, Lcom/android/server/display/ExternalDisplayStatsService;->logStateDisconnected(I)V

    return-void
.end method

.method public onDisplayPortLinkTrainingFailure()V
    .registers 2

    const/16 v0, 0xc

    .line 226
    invoke-virtual {p0, v0}, Lcom/android/server/display/ExternalDisplayStatsService;->logExternalDisplayError(I)V

    return-void
.end method

.method public onHotplugConnectionError()V
    .registers 2

    const/16 v0, 0xb

    .line 219
    invoke-virtual {p0, v0}, Lcom/android/server/display/ExternalDisplayStatsService;->logExternalDisplayError(I)V

    return-void
.end method

.method public onPresentationWindowAdded(I)V
    .registers 2

    .line 264
    invoke-virtual {p0, p1}, Lcom/android/server/display/ExternalDisplayStatsService;->logExternalDisplayPresentationStarted(I)V

    return-void
.end method

.method public onPresentationWindowRemoved(I)V
    .registers 2

    .line 271
    invoke-virtual {p0, p1}, Lcom/android/server/display/ExternalDisplayStatsService;->logExternalDisplayPresentationEnded(I)V

    return-void
.end method

.method public final scheduleDeinit()V
    .registers 3

    .line 320
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/ExternalDisplayStatsService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/display/ExternalDisplayStatsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/ExternalDisplayStatsService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final scheduleInit()V
    .registers 3

    .line 303
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/ExternalDisplayStatsService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/display/ExternalDisplayStatsService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/ExternalDisplayStatsService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
