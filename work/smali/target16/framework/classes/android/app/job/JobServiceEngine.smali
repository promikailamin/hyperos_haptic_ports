.class public abstract Landroid/app/job/JobServiceEngine;
.super Ljava/lang/Object;
.source "JobServiceEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/JobServiceEngine$JobInterface;,
        Landroid/app/job/JobServiceEngine$JobHandler;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG_STORE_ENABLED:Z

.field private static final greylist-max-o MSG_EXECUTE_JOB:I = 0x0

.field private static final blacklist MSG_GET_TRANSFERRED_DOWNLOAD_BYTES:I = 0x3

.field private static final blacklist MSG_GET_TRANSFERRED_UPLOAD_BYTES:I = 0x4

.field private static final blacklist MSG_INFORM_OF_NETWORK_CHANGE:I = 0x8

.field private static final greylist-max-o MSG_JOB_FINISHED:I = 0x2

.field private static final blacklist MSG_SET_NOTIFICATION:I = 0x7

.field private static final greylist-max-o MSG_STOP_JOB:I = 0x1

.field private static final blacklist MSG_UPDATE_ESTIMATED_NETWORK_BYTES:I = 0x6

.field private static final blacklist MSG_UPDATE_TRANSFERRED_NETWORK_BYTES:I = 0x5

.field private static final greylist-max-o TAG:Ljava/lang/String; = "JobServiceEngine"


# instance fields
.field private final greylist-max-o mBinder:Landroid/app/job/IJobService;

.field greylist-max-o mHandler:Landroid/app/job/JobServiceEngine$JobHandler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG_STORE_ENABLED()Z
    .registers 1

    sget-boolean v0, Landroid/app/job/JobServiceEngine;->DEBUG_STORE_ENABLED:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 84
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/os/Flags;->debugStoreEnabled()Z

    move-result v0

    sput-boolean v0, Landroid/app/job/JobServiceEngine;->DEBUG_STORE_ENABLED:Z

    .line 83
    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/Service;)V
    .registers 3

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    new-instance v0, Landroid/app/job/JobServiceEngine$JobInterface;

    invoke-direct {v0, p0}, Landroid/app/job/JobServiceEngine$JobInterface;-><init>(Landroid/app/job/JobServiceEngine;)V

    iput-object v0, p0, Landroid/app/job/JobServiceEngine;->mBinder:Landroid/app/job/IJobService;

    .line 412
    new-instance v0, Landroid/app/job/JobServiceEngine$JobHandler;

    invoke-virtual {p1}, Landroid/app/Service;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroid/app/job/JobServiceEngine$JobHandler;-><init>(Landroid/app/job/JobServiceEngine;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/job/JobServiceEngine;->mHandler:Landroid/app/job/JobServiceEngine$JobHandler;

    .line 413
    return-void
.end method


# virtual methods
.method public final whitelist getBinder()Landroid/os/IBinder;
    .registers 2

    .line 420
    iget-object v0, p0, Landroid/app/job/JobServiceEngine;->mBinder:Landroid/app/job/IJobService;

    invoke-interface {v0}, Landroid/app/job/IJobService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTransferredDownloadBytes(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;)J
    .registers 3

    .line 466
    const-wide/32 p1, 0xf38aa29

    invoke-static {p1, p2}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result p1

    if-nez p1, :cond_c

    .line 469
    const-wide/16 p1, 0x0

    return-wide p1

    .line 467
    :cond_c
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented. Must override in a subclass."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist getTransferredUploadBytes(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;)J
    .registers 3

    .line 481
    const-wide/32 p1, 0xf38aa29

    invoke-static {p1, p2}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result p1

    if-nez p1, :cond_c

    .line 484
    const-wide/16 p1, 0x0

    return-wide p1

    .line 482
    :cond_c
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented. Must override in a subclass."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist jobFinished(Landroid/app/job/JobParameters;Z)V
    .registers 5

    .line 440
    if-eqz p1, :cond_f

    .line 443
    iget-object v0, p0, Landroid/app/job/JobServiceEngine;->mHandler:Landroid/app/job/JobServiceEngine$JobHandler;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 444
    iput p2, p1, Landroid/os/Message;->arg2:I

    .line 445
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 446
    return-void

    .line 441
    :cond_f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "params"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist onNetworkChanged(Landroid/app/job/JobParameters;)V
    .registers 3

    .line 454
    const-string p1, "JobServiceEngine"

    const-string/jumbo v0, "onNetworkChanged() not implemented. Must override in a subclass."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    return-void
.end method

.method public abstract whitelist onStartJob(Landroid/app/job/JobParameters;)Z
.end method

.method public abstract whitelist onStopJob(Landroid/app/job/JobParameters;)Z
.end method

.method public whitelist setNotification(Landroid/app/job/JobParameters;ILandroid/app/Notification;I)V
    .registers 6

    .line 535
    if-eqz p1, :cond_24

    .line 538
    if-eqz p3, :cond_1b

    .line 541
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 542
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 543
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 544
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 545
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 546
    iget-object p1, p0, Landroid/app/job/JobServiceEngine;->mHandler:Landroid/app/job/JobServiceEngine$JobHandler;

    const/4 p2, 0x7

    invoke-virtual {p1, p2, v0}, Landroid/app/job/JobServiceEngine$JobHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 547
    return-void

    .line 539
    :cond_1b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "notification"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 536
    :cond_24
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "params"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist updateEstimatedNetworkBytes(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;JJ)V
    .registers 8

    .line 516
    if-eqz p1, :cond_19

    .line 519
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 520
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 521
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 522
    iput-wide p3, v0, Lcom/android/internal/os/SomeArgs;->argl1:J

    .line 523
    iput-wide p5, v0, Lcom/android/internal/os/SomeArgs;->argl2:J

    .line 524
    iget-object p1, p0, Landroid/app/job/JobServiceEngine;->mHandler:Landroid/app/job/JobServiceEngine$JobHandler;

    const/4 p2, 0x6

    invoke-virtual {p1, p2, v0}, Landroid/app/job/JobServiceEngine$JobHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 525
    return-void

    .line 517
    :cond_19
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "params"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist updateTransferredNetworkBytes(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;JJ)V
    .registers 8

    .line 496
    if-eqz p1, :cond_19

    .line 499
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 500
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 501
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 502
    iput-wide p3, v0, Lcom/android/internal/os/SomeArgs;->argl1:J

    .line 503
    iput-wide p5, v0, Lcom/android/internal/os/SomeArgs;->argl2:J

    .line 504
    iget-object p1, p0, Landroid/app/job/JobServiceEngine;->mHandler:Landroid/app/job/JobServiceEngine$JobHandler;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, v0}, Landroid/app/job/JobServiceEngine$JobHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 505
    return-void

    .line 497
    :cond_19
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "params"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
