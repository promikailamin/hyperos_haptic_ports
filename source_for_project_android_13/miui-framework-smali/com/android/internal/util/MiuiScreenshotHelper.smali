.class public Lcom/android/internal/util/MiuiScreenshotHelper;
.super Ljava/lang/Object;
.source "MiuiScreenshotHelper.java"


# static fields
.field private static final blacklist SCREENSHOT_FAST_THRESHOLD:I = 0x15e

.field public static final blacklist SCREENSHOT_MSG_PROCESS_COMPLETE:I = 0x2

.field public static final blacklist SCREENSHOT_MSG_URI:I = 0x1

.field public static final blacklist SCREENSHOT_OTHER:I = 0x5

.field private static final blacklist TAG:Ljava/lang/String; = "ScreenshotHelper"

.field public static final blacklist TAKE_PARTIAL_SCREENSHOT:I = 0x3

.field public static final blacklist TAKE_PARTIAL_SCREENSHOT_WITH_STYLUS:I = 0x5

.field public static final blacklist TAKE_SCREENSHOT:I = 0x1

.field public static final blacklist TAKE_SCREENSHOT_WITHOUT_ANIM:I = 0x4


# instance fields
.field private final blacklist SCREENSHOT_TIMEOUT_MS:I

.field private final blacklist mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mLastTakeScreenshotTime:J

.field private blacklist mScreenshotConnection:Landroid/content/ServiceConnection;

.field private final blacklist mScreenshotLock:Ljava/lang/Object;

.field private blacklist mScreenshotService:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmScreenshotConnection(Lcom/android/internal/util/MiuiScreenshotHelper;)Landroid/content/ServiceConnection;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/MiuiScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScreenshotLock(Lcom/android/internal/util/MiuiScreenshotHelper;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/MiuiScreenshotHelper;->mScreenshotLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScreenshotService(Lcom/android/internal/util/MiuiScreenshotHelper;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/MiuiScreenshotHelper;->mScreenshotService:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmScreenshotService(Lcom/android/internal/util/MiuiScreenshotHelper;Landroid/os/IBinder;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/util/MiuiScreenshotHelper;->mScreenshotService:Landroid/os/IBinder;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyScreenshotError(Lcom/android/internal/util/MiuiScreenshotHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/util/MiuiScreenshotHelper;->notifyScreenshotError()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mresetConnection(Lcom/android/internal/util/MiuiScreenshotHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/util/MiuiScreenshotHelper;->resetConnection()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/internal/util/MiuiScreenshotHelper;->SCREENSHOT_TIMEOUT_MS:I

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/MiuiScreenshotHelper;->mScreenshotLock:Ljava/lang/Object;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/MiuiScreenshotHelper;->mScreenshotService:Landroid/os/IBinder;

    .line 56
    iput-object v0, p0, Lcom/android/internal/util/MiuiScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 60
    new-instance v0, Lcom/android/internal/util/MiuiScreenshotHelper$1;

    invoke-direct {v0, p0}, Lcom/android/internal/util/MiuiScreenshotHelper$1;-><init>(Lcom/android/internal/util/MiuiScreenshotHelper;)V

    iput-object v0, p0, Lcom/android/internal/util/MiuiScreenshotHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    iput-object p1, p0, Lcom/android/internal/util/MiuiScreenshotHelper;->mContext:Landroid/content/Context;

    .line 73
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 74
    .local v1, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 75
    return-void
.end method

.method private blacklist notifyScreenshotError()V
    .registers 5

    .line 442
    iget-object v0, p0, Lcom/android/internal/util/MiuiScreenshotHelper;->mContext:Landroid/content/Context;

    .line 443
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 442
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 447
    .local v0, "errorComponent":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 448
    .local v1, "errorIntent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 449
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 451
    iget-object v2, p0, Lcom/android/internal/util/MiuiScreenshotHelper;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 452
    return-void
.end method

.method private blacklist resetConnection()V
    .registers 3

    .line 430
    iget-object v0, p0, Lcom/android/internal/util/MiuiScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_e

    .line 431
    iget-object v1, p0, Lcom/android/internal/util/MiuiScreenshotHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 432
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/MiuiScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 433
    iput-object v0, p0, Lcom/android/internal/util/MiuiScreenshotHelper;->mScreenshotService:Landroid/os/IBinder;

    .line 435
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

    .line 188
    .local p6, "completionConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-wide/from16 v9, p2

    move-object/from16 v11, p4

    move-object/from16 v12, p6

    iget-object v13, v7, Lcom/android/internal/util/MiuiScreenshotHelper;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v13

    .line 191
    :try_start_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    move-wide v14, v0

    .line 192
    .local v14, "now":J
    iget-wide v0, v7, Lcom/android/internal/util/MiuiScreenshotHelper;->mLastTakeScreenshotTime:J

    sub-long v0, v14, v0

    const-wide/16 v2, 0x15e

    cmp-long v0, v0, v2

    if-gez v0, :cond_25

    .line 193
    const-string v0, "ScreenshotHelper"

    const-string v1, "Too close to the last screen shot"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    monitor-exit v13

    return-void

    .line 196
    :cond_25
    iput-wide v14, v7, Lcom/android/internal/util/MiuiScreenshotHelper;->mLastTakeScreenshotTime:J

    .line 199
    new-instance v0, Lcom/android/internal/util/MiuiScreenshotHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, v7, v8, v12}, Lcom/android/internal/util/MiuiScreenshotHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/util/MiuiScreenshotHelper;ILjava/util/function/Consumer;)V

    move-object v6, v0

    .line 216
    .local v6, "mScreenshotTimeout":Ljava/lang/Runnable;
    const/4 v5, 0x0

    move-object/from16 v4, p5

    invoke-static {v5, v8, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    move-object v3, v0

    .line 218
    .local v3, "msg":Landroid/os/Message;
    new-instance v0, Lcom/android/internal/util/MiuiScreenshotHelper$2;

    invoke-virtual/range {p4 .. p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v16

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v8, v3

    .end local v3    # "msg":Landroid/os/Message;
    .local v8, "msg":Landroid/os/Message;
    move-object/from16 v3, v16

    move-object/from16 v4, p6

    move-wide/from16 v16, v14

    move-object v14, v5

    .end local v14    # "now":J
    .local v16, "now":J
    move-object/from16 v5, p4

    move-object v15, v6

    .end local v6    # "mScreenshotTimeout":Ljava/lang/Runnable;
    .local v15, "mScreenshotTimeout":Ljava/lang/Runnable;
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/util/MiuiScreenshotHelper$2;-><init>(Lcom/android/internal/util/MiuiScreenshotHelper;Landroid/os/Looper;Ljava/util/function/Consumer;Landroid/os/Handler;Ljava/lang/Runnable;)V

    move-object v6, v0

    .line 238
    .local v6, "h":Landroid/os/Handler;
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, v6}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, v8, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 240
    iget-object v0, v7, Lcom/android/internal/util/MiuiScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_8d

    iget-object v0, v7, Lcom/android/internal/util/MiuiScreenshotHelper;->mScreenshotService:Landroid/os/IBinder;

    if-nez v0, :cond_5d

    goto :goto_8d

    .line 294
    :cond_5d
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, v7, Lcom/android/internal/util/MiuiScreenshotHelper;->mScreenshotService:Landroid/os/IBinder;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V
    :try_end_64
    .catchall {:try_start_d .. :try_end_64} :catchall_cf

    move-object v1, v0

    .line 297
    .local v1, "messenger":Landroid/os/Messenger;
    :try_start_65
    invoke-virtual {v1, v8}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_68} :catch_69
    .catchall {:try_start_65 .. :try_end_68} :catchall_cf

    .line 303
    goto :goto_89

    .line 298
    :catch_69
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 299
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

    .line 300
    if-eqz v12, :cond_89

    .line 301
    invoke-interface {v12, v14}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 304
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_89
    :goto_89
    invoke-virtual {v11, v15, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_cd

    .line 241
    .end local v1    # "messenger":Landroid/os/Messenger;
    :cond_8d
    :goto_8d
    iget-object v0, v7, Lcom/android/internal/util/MiuiScreenshotHelper;->mContext:Landroid/content/Context;

    .line 242
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 244
    .local v0, "serviceComponent":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object v14, v1

    .line 246
    .local v14, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {v14, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 247
    new-instance v18, Lcom/android/internal/util/MiuiScreenshotHelper$3;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move-object v4, v15

    move-object v5, v8

    move-object/from16 v19, v6

    .end local v6    # "h":Landroid/os/Handler;
    .local v19, "h":Landroid/os/Handler;
    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/util/MiuiScreenshotHelper$3;-><init>(Lcom/android/internal/util/MiuiScreenshotHelper;Landroid/os/Handler;Ljava/lang/Runnable;Landroid/os/Message;Ljava/util/function/Consumer;)V

    move-object/from16 v1, v18

    .line 287
    .local v1, "conn":Landroid/content/ServiceConnection;
    iget-object v2, v7, Lcom/android/internal/util/MiuiScreenshotHelper;->mContext:Landroid/content/Context;

    const v3, 0x44000001    # 512.00006f

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v14, v1, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_cc

    .line 290
    iput-object v1, v7, Lcom/android/internal/util/MiuiScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 291
    invoke-virtual {v11, v15, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 293
    .end local v0    # "serviceComponent":Landroid/content/ComponentName;
    .end local v1    # "conn":Landroid/content/ServiceConnection;
    .end local v14    # "serviceIntent":Landroid/content/Intent;
    :cond_cc
    nop

    .line 306
    .end local v8    # "msg":Landroid/os/Message;
    .end local v15    # "mScreenshotTimeout":Ljava/lang/Runnable;
    .end local v16    # "now":J
    .end local v19    # "h":Landroid/os/Handler;
    :goto_cd
    monitor-exit v13

    .line 307
    return-void

    .line 306
    :catchall_cf
    move-exception v0

    monitor-exit v13
    :try_end_d1
    .catchall {:try_start_6c .. :try_end_d1} :catchall_cf

    throw v0
.end method

.method private blacklist takeScreenshotPartial(I[FJLandroid/os/Handler;Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;Ljava/util/function/Consumer;)V
    .registers 28
    .param p1, "screenshotType"    # I
    .param p2, "pathList"    # [F
    .param p3, "timeoutMs"    # J
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "screenshotRequest"    # Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[FJ",
            "Landroid/os/Handler;",
            "Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 319
    .local p7, "completionConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    move-object/from16 v8, p0

    move-wide/from16 v9, p3

    move-object/from16 v11, p5

    move-object/from16 v12, p7

    iget-object v13, v8, Lcom/android/internal/util/MiuiScreenshotHelper;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v13

    .line 321
    :try_start_b
    new-instance v0, Lcom/android/internal/util/MiuiScreenshotHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, v8, v12}, Lcom/android/internal/util/MiuiScreenshotHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/util/MiuiScreenshotHelper;Ljava/util/function/Consumer;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_d1

    move-object v14, v0

    .line 333
    .local v14, "mScreenshotTimeout":Ljava/lang/Runnable;
    const/4 v7, 0x0

    move/from16 v15, p1

    move-object/from16 v6, p6

    :try_start_16
    invoke-static {v7, v15, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    move-object v5, v0

    .line 335
    .local v5, "msg":Landroid/os/Message;
    new-instance v0, Lcom/android/internal/util/MiuiScreenshotHelper$4;

    invoke-virtual/range {p5 .. p5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v4, p7

    move-object v7, v5

    .end local v5    # "msg":Landroid/os/Message;
    .local v7, "msg":Landroid/os/Message;
    move-object/from16 v5, p5

    move-object v6, v14

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/util/MiuiScreenshotHelper$4;-><init>(Lcom/android/internal/util/MiuiScreenshotHelper;Landroid/os/Looper;Ljava/util/function/Consumer;Landroid/os/Handler;Ljava/lang/Runnable;)V

    move-object v6, v0

    .line 353
    .local v6, "h":Landroid/os/Handler;
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, v6}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, v7, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 355
    iget-object v0, v8, Lcom/android/internal/util/MiuiScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;
    :try_end_37
    .catchall {:try_start_16 .. :try_end_37} :catchall_d6

    if-eqz v0, :cond_86

    :try_start_39
    iget-object v0, v8, Lcom/android/internal/util/MiuiScreenshotHelper;->mScreenshotService:Landroid/os/IBinder;

    if-nez v0, :cond_40

    move-object/from16 v5, p2

    goto :goto_88

    .line 408
    :cond_40
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, v8, Lcom/android/internal/util/MiuiScreenshotHelper;->mScreenshotService:Landroid/os/IBinder;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V
    :try_end_47
    .catchall {:try_start_39 .. :try_end_47} :catchall_82

    move-object v1, v0

    .line 411
    .local v1, "messenger":Landroid/os/Messenger;
    :try_start_48
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 412
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "partial.screenshot.points"
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_4f} :catch_5d
    .catchall {:try_start_48 .. :try_end_4f} :catchall_82

    move-object/from16 v5, p2

    :try_start_51
    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 413
    invoke-virtual {v7, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 414
    invoke-virtual {v1, v7}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_5a} :catch_5b
    .catchall {:try_start_51 .. :try_end_5a} :catchall_d6

    .line 420
    .end local v0    # "bundle":Landroid/os/Bundle;
    goto :goto_7e

    .line 415
    :catch_5b
    move-exception v0

    goto :goto_60

    :catch_5d
    move-exception v0

    move-object/from16 v5, p2

    .line 416
    .local v0, "e":Landroid/os/RemoteException;
    :goto_60
    :try_start_60
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

    .line 417
    if-eqz v12, :cond_7e

    .line 418
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 421
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_7e
    :goto_7e
    invoke-virtual {v11, v14, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_cf

    .line 423
    .end local v1    # "messenger":Landroid/os/Messenger;
    .end local v6    # "h":Landroid/os/Handler;
    .end local v7    # "msg":Landroid/os/Message;
    .end local v14    # "mScreenshotTimeout":Ljava/lang/Runnable;
    :catchall_82
    move-exception v0

    move-object/from16 v5, p2

    goto :goto_d4

    .line 355
    .restart local v6    # "h":Landroid/os/Handler;
    .restart local v7    # "msg":Landroid/os/Message;
    .restart local v14    # "mScreenshotTimeout":Ljava/lang/Runnable;
    :cond_86
    move-object/from16 v5, p2

    .line 356
    :goto_88
    iget-object v0, v8, Lcom/android/internal/util/MiuiScreenshotHelper;->mContext:Landroid/content/Context;

    .line 357
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 356
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 359
    .local v0, "serviceComponent":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object v4, v1

    .line 361
    .local v4, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 362
    new-instance v16, Lcom/android/internal/util/MiuiScreenshotHelper$5;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v17, v0

    move-object v0, v4

    .end local v4    # "serviceIntent":Landroid/content/Intent;
    .local v0, "serviceIntent":Landroid/content/Intent;
    .local v17, "serviceComponent":Landroid/content/ComponentName;
    move-object v4, v7

    move-object/from16 v5, p7

    move-object/from16 v18, v6

    .end local v6    # "h":Landroid/os/Handler;
    .local v18, "h":Landroid/os/Handler;
    move-object/from16 v6, p5

    move-object/from16 v19, v7

    .end local v7    # "msg":Landroid/os/Message;
    .local v19, "msg":Landroid/os/Message;
    move-object v7, v14

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/util/MiuiScreenshotHelper$5;-><init>(Lcom/android/internal/util/MiuiScreenshotHelper;[FLandroid/os/Message;Ljava/util/function/Consumer;Landroid/os/Handler;Ljava/lang/Runnable;)V

    move-object/from16 v1, v16

    .line 401
    .local v1, "conn":Landroid/content/ServiceConnection;
    iget-object v2, v8, Lcom/android/internal/util/MiuiScreenshotHelper;->mContext:Landroid/content/Context;

    const v3, 0x44000001    # 512.00006f

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_ce

    .line 404
    iput-object v1, v8, Lcom/android/internal/util/MiuiScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 405
    invoke-virtual {v11, v14, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 407
    .end local v0    # "serviceIntent":Landroid/content/Intent;
    .end local v1    # "conn":Landroid/content/ServiceConnection;
    .end local v17    # "serviceComponent":Landroid/content/ComponentName;
    :cond_ce
    nop

    .line 423
    .end local v14    # "mScreenshotTimeout":Ljava/lang/Runnable;
    .end local v18    # "h":Landroid/os/Handler;
    .end local v19    # "msg":Landroid/os/Message;
    :goto_cf
    monitor-exit v13

    .line 424
    return-void

    .line 423
    :catchall_d1
    move-exception v0

    move/from16 v15, p1

    :goto_d4
    monitor-exit v13
    :try_end_d5
    .catchall {:try_start_60 .. :try_end_d5} :catchall_d6

    throw v0

    :catchall_d6
    move-exception v0

    goto :goto_d4
.end method


# virtual methods
.method synthetic blacklist lambda$takeScreenshot$0$com-android-internal-util-MiuiScreenshotHelper(ILjava/util/function/Consumer;)V
    .registers 6
    .param p1, "screenshotType"    # I
    .param p2, "completionConsumer"    # Ljava/util/function/Consumer;

    .line 200
    iget-object v0, p0, Lcom/android/internal/util/MiuiScreenshotHelper;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/util/MiuiScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_1a

    .line 202
    const-string v1, "ScreenshotHelper"

    const-string v2, "Timed out before getting screenshot capture response"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-direct {p0}, Lcom/android/internal/util/MiuiScreenshotHelper;->resetConnection()V

    .line 205
    const/4 v1, 0x3

    if-eq p1, v1, :cond_1a

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1a

    .line 207
    invoke-direct {p0}, Lcom/android/internal/util/MiuiScreenshotHelper;->notifyScreenshotError()V

    .line 210
    :cond_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_22

    .line 211
    if-eqz p2, :cond_21

    .line 212
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 214
    :cond_21
    return-void

    .line 210
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method synthetic blacklist lambda$takeScreenshotPartial$1$com-android-internal-util-MiuiScreenshotHelper(Ljava/util/function/Consumer;)V
    .registers 5
    .param p1, "completionConsumer"    # Ljava/util/function/Consumer;

    .line 322
    iget-object v0, p0, Lcom/android/internal/util/MiuiScreenshotHelper;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v0

    .line 323
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/util/MiuiScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_11

    .line 324
    const-string v1, "ScreenshotHelper"

    const-string v2, "Timed out before getting screenshot capture response"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-direct {p0}, Lcom/android/internal/util/MiuiScreenshotHelper;->resetConnection()V

    .line 327
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_19

    .line 328
    if-eqz p1, :cond_18

    .line 329
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 331
    :cond_18
    return-void

    .line 327
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

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

    .line 179
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

    .line 182
    .local v5, "screenshotRequest":Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;
    const/4 v1, 0x3

    const-wide/16 v2, 0x2710

    move-object v0, p0

    move-object/from16 v4, p8

    move-object/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/util/MiuiScreenshotHelper;->takeScreenshot(IJLandroid/os/Handler;Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;Ljava/util/function/Consumer;)V

    .line 184
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

    .line 101
    .local p6, "completionConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    new-instance v5, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;

    invoke-direct {v5, p4, p2, p3}, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;-><init>(IZZ)V

    .line 103
    .local v5, "screenshotRequest":Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;
    const-wide/16 v2, 0x2710

    move-object v0, p0

    move v1, p1

    move-object v4, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/util/MiuiScreenshotHelper;->takeScreenshot(IJLandroid/os/Handler;Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;Ljava/util/function/Consumer;)V

    .line 105
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

    .line 157
    .local p7, "completionConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    new-instance v5, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;

    const/4 v0, 0x5

    invoke-direct {v5, v0, p2, p3}, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;-><init>(IZZ)V

    .line 160
    .local v5, "screenshotRequest":Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;
    move-object v0, p0

    move v1, p1

    move-wide v2, p4

    move-object v4, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/util/MiuiScreenshotHelper;->takeScreenshot(IJLandroid/os/Handler;Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;Ljava/util/function/Consumer;)V

    .line 161
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

    .line 127
    .local p5, "completionConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    const/16 v4, 0x2710

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/MiuiScreenshotHelper;->takeScreenshot(IZZILandroid/os/Handler;Ljava/util/function/Consumer;)V

    .line 129
    return-void
.end method

.method public blacklist takeScreenshotPartial(IZZ[FILandroid/os/Handler;Ljava/util/function/Consumer;)V
    .registers 16
    .param p1, "screenshotType"    # I
    .param p2, "hasStatus"    # Z
    .param p3, "hasNav"    # Z
    .param p4, "pathList"    # [F
    .param p5, "source"    # I
    .param p6, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ[FI",
            "Landroid/os/Handler;",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 312
    .local p7, "completionConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    new-instance v6, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;

    invoke-direct {v6, p5, p2, p3}, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;-><init>(IZZ)V

    .line 313
    .local v6, "screenshotRequest":Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;
    const-wide/16 v3, 0x2710

    move-object v0, p0

    move v1, p1

    move-object v2, p4

    move-object v5, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/util/MiuiScreenshotHelper;->takeScreenshotPartial(I[FJLandroid/os/Handler;Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;Ljava/util/function/Consumer;)V

    .line 315
    return-void
.end method
