.class public Lcom/android/internal/util/ScreenshotHelper;
.super Ljava/lang/Object;
.source "ScreenshotHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/ScreenshotHelper$HardwareBitmapBundler;,
        Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;
    }
.end annotation


# static fields
.field private static final blacklist SCREENSHOT_FAST_THRESHOLD:I = 0x15e

.field public static final blacklist SCREENSHOT_MSG_PROCESS_COMPLETE:I = 0x2

.field public static final blacklist SCREENSHOT_MSG_URI:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "ScreenshotHelper"


# instance fields
.field private final blacklist SCREENSHOT_TIMEOUT_MS:I

.field private final blacklist mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mLastTakeScreenshotTime:J

.field private blacklist mScreenshotConnection:Landroid/content/ServiceConnection;

.field private final blacklist mScreenshotLock:Ljava/lang/Object;

.field private blacklist mScreenshotService:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmScreenshotConnection(Lcom/android/internal/util/ScreenshotHelper;)Landroid/content/ServiceConnection;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScreenshotLock(Lcom/android/internal/util/ScreenshotHelper;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScreenshotService(Lcom/android/internal/util/ScreenshotHelper;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotService:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmScreenshotService(Lcom/android/internal/util/ScreenshotHelper;Landroid/os/IBinder;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotService:Landroid/os/IBinder;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyScreenshotError(Lcom/android/internal/util/ScreenshotHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/util/ScreenshotHelper;->notifyScreenshotError()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mresetConnection(Lcom/android/internal/util/ScreenshotHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/util/ScreenshotHelper;->resetConnection()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/internal/util/ScreenshotHelper;->SCREENSHOT_TIMEOUT_MS:I

    .line 241
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotLock:Ljava/lang/Object;

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotService:Landroid/os/IBinder;

    .line 243
    iput-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 248
    new-instance v0, Lcom/android/internal/util/ScreenshotHelper$1;

    invoke-direct {v0, p0}, Lcom/android/internal/util/ScreenshotHelper$1;-><init>(Lcom/android/internal/util/ScreenshotHelper;)V

    iput-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 260
    iput-object p1, p0, Lcom/android/internal/util/ScreenshotHelper;->mContext:Landroid/content/Context;

    .line 261
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 262
    .local v1, "filter":Landroid/content/IntentFilter;
    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 263
    return-void
.end method

.method private blacklist notifyScreenshotError()V
    .registers 5

    .line 512
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mContext:Landroid/content/Context;

    .line 513
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 512
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 517
    .local v0, "errorComponent":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 518
    .local v1, "errorIntent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 519
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 521
    iget-object v2, p0, Lcom/android/internal/util/ScreenshotHelper;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 522
    return-void
.end method

.method private blacklist resetConnection()V
    .registers 3

    .line 500
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_e

    .line 501
    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 502
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 503
    iput-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotService:Landroid/os/IBinder;

    .line 505
    :cond_e
    return-void
.end method

.method private blacklist takeScreenshot(IJLandroid/os/Handler;Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;Ljava/util/function/Consumer;)V
    .registers 27
    .param p1, "screenshotType"    # I
    .param p2, "timeoutMs"    # J
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "screenshotRequest"    # Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Landroid/os/Handler;",
            "Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 374
    .local p6, "completionConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    move-object/from16 v7, p0

    move-wide/from16 v8, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p6

    iget-object v12, v7, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v12

    .line 376
    :try_start_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    move-wide v13, v0

    .line 377
    .local v13, "now":J
    iget-wide v0, v7, Lcom/android/internal/util/ScreenshotHelper;->mLastTakeScreenshotTime:J

    sub-long v0, v13, v0

    const-wide/16 v2, 0x15e

    cmp-long v0, v0, v2

    if-gez v0, :cond_23

    .line 378
    const-string v0, "ScreenshotHelper"

    const-string v1, "Too close to the last screen shot origin"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    monitor-exit v12

    return-void

    .line 381
    :cond_23
    iput-wide v13, v7, Lcom/android/internal/util/ScreenshotHelper;->mLastTakeScreenshotTime:J

    .line 384
    new-instance v0, Lcom/android/internal/util/ScreenshotHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, v7, v11}, Lcom/android/internal/util/ScreenshotHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/util/ScreenshotHelper;Ljava/util/function/Consumer;)V

    move-object v15, v0

    .line 397
    .local v15, "mScreenshotTimeout":Ljava/lang/Runnable;
    const/4 v6, 0x0

    move/from16 v5, p1

    move-object/from16 v4, p5

    invoke-static {v6, v5, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    move-object v3, v0

    .line 399
    .local v3, "msg":Landroid/os/Message;
    new-instance v0, Lcom/android/internal/util/ScreenshotHelper$2;

    invoke-virtual/range {p4 .. p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v16

    move-object v1, v0

    move-object/from16 v2, p0

    move-wide/from16 v17, v13

    move-object v13, v3

    .end local v3    # "msg":Landroid/os/Message;
    .local v13, "msg":Landroid/os/Message;
    .local v17, "now":J
    move-object/from16 v3, v16

    move-object/from16 v4, p6

    move-object/from16 v5, p4

    move-object v14, v6

    move-object v6, v15

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/util/ScreenshotHelper$2;-><init>(Lcom/android/internal/util/ScreenshotHelper;Landroid/os/Looper;Ljava/util/function/Consumer;Landroid/os/Handler;Ljava/lang/Runnable;)V

    move-object v6, v0

    .line 421
    .local v6, "h":Landroid/os/Handler;
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, v6}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, v13, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 423
    iget-object v0, v7, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_8d

    iget-object v0, v7, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotService:Landroid/os/IBinder;

    if-nez v0, :cond_5d

    goto :goto_8d

    .line 481
    :cond_5d
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, v7, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotService:Landroid/os/IBinder;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V
    :try_end_64
    .catchall {:try_start_b .. :try_end_64} :catchall_cf

    move-object v1, v0

    .line 484
    .local v1, "messenger":Landroid/os/Messenger;
    :try_start_65
    invoke-virtual {v1, v13}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_68} :catch_69
    .catchall {:try_start_65 .. :try_end_68} :catchall_cf

    .line 490
    goto :goto_89

    .line 485
    :catch_69
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 486
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_6c
    const-string v2, "ScreenshotHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t take screenshot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    if-eqz v11, :cond_89

    .line 488
    invoke-interface {v11, v14}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 491
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_89
    :goto_89
    invoke-virtual {v10, v15, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_cd

    .line 424
    .end local v1    # "messenger":Landroid/os/Messenger;
    :cond_8d
    :goto_8d
    iget-object v0, v7, Lcom/android/internal/util/ScreenshotHelper;->mContext:Landroid/content/Context;

    .line 425
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 424
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 427
    .local v0, "serviceComponent":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object v14, v1

    .line 429
    .local v14, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {v14, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 430
    new-instance v16, Lcom/android/internal/util/ScreenshotHelper$3;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move-object v4, v15

    move-object v5, v13

    move-object/from16 v19, v6

    .end local v6    # "h":Landroid/os/Handler;
    .local v19, "h":Landroid/os/Handler;
    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/util/ScreenshotHelper$3;-><init>(Lcom/android/internal/util/ScreenshotHelper;Landroid/os/Handler;Ljava/lang/Runnable;Landroid/os/Message;Ljava/util/function/Consumer;)V

    move-object/from16 v1, v16

    .line 472
    .local v1, "conn":Landroid/content/ServiceConnection;
    iget-object v2, v7, Lcom/android/internal/util/ScreenshotHelper;->mContext:Landroid/content/Context;

    const v3, 0x44000001    # 512.00006f

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v14, v1, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_cc

    .line 477
    iput-object v1, v7, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 478
    invoke-virtual {v10, v15, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 480
    .end local v0    # "serviceComponent":Landroid/content/ComponentName;
    .end local v1    # "conn":Landroid/content/ServiceConnection;
    .end local v14    # "serviceIntent":Landroid/content/Intent;
    :cond_cc
    nop

    .line 493
    .end local v13    # "msg":Landroid/os/Message;
    .end local v15    # "mScreenshotTimeout":Ljava/lang/Runnable;
    .end local v17    # "now":J
    .end local v19    # "h":Landroid/os/Handler;
    :goto_cd
    monitor-exit v12

    .line 494
    return-void

    .line 493
    :catchall_cf
    move-exception v0

    monitor-exit v12
    :try_end_d1
    .catchall {:try_start_6c .. :try_end_d1} :catchall_cf

    throw v0
.end method


# virtual methods
.method synthetic blacklist lambda$takeScreenshot$0$com-android-internal-util-ScreenshotHelper(Ljava/util/function/Consumer;)V
    .registers 5
    .param p1, "completionConsumer"    # Ljava/util/function/Consumer;

    .line 385
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v0

    .line 386
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_14

    .line 387
    const-string v1, "ScreenshotHelper"

    const-string v2, "Timed out before getting screenshot capture response"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-direct {p0}, Lcom/android/internal/util/ScreenshotHelper;->resetConnection()V

    .line 389
    invoke-direct {p0}, Lcom/android/internal/util/ScreenshotHelper;->notifyScreenshotError()V

    .line 391
    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1c

    .line 392
    if-eqz p1, :cond_1b

    .line 393
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 395
    :cond_1b
    return-void

    .line 391
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public blacklist provideScreenshot(Landroid/os/Bundle;Landroid/graphics/Rect;Landroid/graphics/Insets;IILandroid/content/ComponentName;ILandroid/os/Handler;Ljava/util/function/Consumer;)V
    .registers 19
    .param p1, "screenshotBundle"    # Landroid/os/Bundle;
    .param p2, "boundsInScreen"    # Landroid/graphics/Rect;
    .param p3, "insets"    # Landroid/graphics/Insets;
    .param p4, "taskId"    # I
    .param p5, "userId"    # I
    .param p6, "topComponent"    # Landroid/content/ComponentName;
    .param p7, "source"    # I
    .param p8, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Insets;",
            "II",
            "Landroid/content/ComponentName;",
            "I",
            "Landroid/os/Handler;",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 365
    .local p9, "completionConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    new-instance v8, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;

    move-object v0, v8

    move/from16 v1, p7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;-><init>(ILandroid/os/Bundle;Landroid/graphics/Rect;Landroid/graphics/Insets;IILandroid/content/ComponentName;)V

    move-object v5, v8

    .line 368
    .local v5, "screenshotRequest":Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;
    const/4 v1, 0x3

    const-wide/16 v2, 0x2710

    move-object v0, p0

    move-object/from16 v4, p8

    move-object/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/util/ScreenshotHelper;->takeScreenshot(IJLandroid/os/Handler;Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;Ljava/util/function/Consumer;)V

    .line 370
    return-void
.end method

.method public blacklist takeScreenshot(IZZILandroid/os/Handler;Ljava/util/function/Consumer;)V
    .registers 14
    .param p1, "screenshotType"    # I
    .param p2, "hasStatus"    # Z
    .param p3, "hasNav"    # Z
    .param p4, "source"    # I
    .param p5, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZI",
            "Landroid/os/Handler;",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 289
    .local p6, "completionConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    new-instance v5, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;

    invoke-direct {v5, p4, p2, p3}, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;-><init>(IZZ)V

    .line 290
    .local v5, "screenshotRequest":Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;
    const-wide/16 v2, 0x2710

    move-object v0, p0

    move v1, p1

    move-object v4, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/util/ScreenshotHelper;->takeScreenshot(IJLandroid/os/Handler;Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;Ljava/util/function/Consumer;)V

    .line 292
    return-void
.end method

.method public blacklist takeScreenshot(IZZJLandroid/os/Handler;Ljava/util/function/Consumer;)V
    .registers 15
    .param p1, "screenshotType"    # I
    .param p2, "hasStatus"    # Z
    .param p3, "hasNav"    # Z
    .param p4, "timeoutMs"    # J
    .param p6, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZJ",
            "Landroid/os/Handler;",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 344
    .local p7, "completionConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    new-instance v5, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;

    const/4 v0, 0x5

    invoke-direct {v5, v0, p2, p3}, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;-><init>(IZZ)V

    .line 346
    .local v5, "screenshotRequest":Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;
    move-object v0, p0

    move v1, p1

    move-wide v2, p4

    move-object v4, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/util/ScreenshotHelper;->takeScreenshot(IJLandroid/os/Handler;Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;Ljava/util/function/Consumer;)V

    .line 347
    return-void
.end method

.method public blacklist takeScreenshot(IZZLandroid/os/Handler;Ljava/util/function/Consumer;)V
    .registers 13
    .param p1, "screenshotType"    # I
    .param p2, "hasStatus"    # Z
    .param p3, "hasNav"    # Z
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ",
            "Landroid/os/Handler;",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 314
    .local p5, "completionConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    const/16 v4, 0x2710

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/ScreenshotHelper;->takeScreenshot(IZZILandroid/os/Handler;Ljava/util/function/Consumer;)V

    .line 316
    return-void
.end method
