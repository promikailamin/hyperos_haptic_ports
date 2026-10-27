.class public Lcom/android/server/pm/verify/developer/DeveloperVerifierController;
.super Ljava/lang/Object;
.source "DeveloperVerifierController.java"


# static fields
.field public static final DEFAULT_MAX_VERIFICATION_REQUEST_EXTENDED_TIMEOUT_MILLIS:J

.field public static final DEFAULT_VERIFICATION_REQUEST_TIMEOUT_MILLIS:J

.field public static final DEFAULT_VERIFIER_CONNECTION_TIMEOUT_MILLIS:J

.field public static final DISCONNECT_TIMEOUT_MILLIS:J

.field public static sInstance:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDeveloperVerificationServiceProvider:Landroid/content/ComponentName;

.field public final mExperimentProvider:Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider;

.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector;

.field public final mRemoteServices:Landroid/util/SparseArray;

.field public final mSessionsCountPerUser:Landroid/util/SparseIntArray;

.field public final mVerificationStatusTrackers:Landroid/util/SparseArray;


# direct methods
.method public static synthetic $r8$lambda$4BJOiK371dQ3O3vWn6l1_3Prxro(ILandroid/content/pm/verify/developer/IDeveloperVerifierService;)V
    .registers 2

    .line 506
    invoke-interface {p1, p0}, Landroid/content/pm/verify/developer/IDeveloperVerifierService;->onVerificationTimeout(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$7mCOOla8rISYPs9m38zV5ryHHtI(ZILandroid/content/pm/verify/developer/DeveloperVerificationSession;Landroid/content/pm/verify/developer/IDeveloperVerifierService;)V
    .registers 4

    if-nez p0, :cond_6

    .line 423
    invoke-interface {p3, p2}, Landroid/content/pm/verify/developer/IDeveloperVerifierService;->onVerificationRequired(Landroid/content/pm/verify/developer/DeveloperVerificationSession;)V

    return-void

    .line 429
    :cond_6
    invoke-interface {p3, p2}, Landroid/content/pm/verify/developer/IDeveloperVerifierService;->onVerificationRetry(Landroid/content/pm/verify/developer/DeveloperVerificationSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$API4qKtmNVxMdjladrkxgiGokL8(Lcom/android/server/pm/verify/developer/DeveloperVerifierController;ILcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->lambda$startTimeoutCountdown$4(ILcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FVd7csmZmF7xSj2CmmW5T8S8V10(Ljava/lang/String;Landroid/content/pm/verify/developer/IDeveloperVerifierService;)V
    .registers 2

    .line 370
    invoke-interface {p1, p0}, Landroid/content/pm/verify/developer/IDeveloperVerifierService;->onVerificationCancelled(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T2RRGkB9g2OMpSAFuHGp8qxX6KY(ILjava/lang/Void;Ljava/lang/Throwable;)V
    .registers 4

    if-eqz p2, :cond_18

    .line 509
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error notifying VerificationTimeout for session "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VerifierController"

    invoke-static {p1, p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_18
    return-void
.end method

.method public static synthetic $r8$lambda$ZPq8TgyJ2FBkT8pzoD7tB5g1XBQ(Ljava/lang/String;Landroid/content/pm/verify/developer/IDeveloperVerifierService;)V
    .registers 2

    .line 346
    invoke-interface {p1, p0}, Landroid/content/pm/verify/developer/IDeveloperVerifierService;->onPackageNameAvailable(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lYoN4ViONfbnwPwH5cccQenFldM(ILcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;Ljava/lang/Void;Ljava/lang/Throwable;)V
    .registers 5

    if-eqz p3, :cond_1b

    .line 434
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error notifying verification request for session "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "VerifierController"

    invoke-static {p2, p0, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 438
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->onConnectionFailed()V

    :cond_1b
    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmVerificationStatusTrackers(Lcom/android/server/pm/verify/developer/DeveloperVerifierController;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mVerificationStatusTrackers:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdestroy(Lcom/android/server/pm/verify/developer/DeveloperVerifierController;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->destroy(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveStatusTracker(Lcom/android/server/pm/verify/developer/DeveloperVerifierController;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->removeStatusTracker(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartAutoDisconnectCountdown(Lcom/android/server/pm/verify/developer/DeveloperVerifierController;Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->startAutoDisconnectCountdown(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopAutoDisconnectCountdown(Lcom/android/server/pm/verify/developer/DeveloperVerifierController;Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->stopAutoDisconnectCountdown(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_MAX_VERIFICATION_REQUEST_EXTENDED_TIMEOUT_MILLIS()J
    .registers 2

    .line 0
    sget-wide v0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->DEFAULT_MAX_VERIFICATION_REQUEST_EXTENDED_TIMEOUT_MILLIS:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_VERIFICATION_REQUEST_TIMEOUT_MILLIS()J
    .registers 2

    .line 0
    sget-wide v0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->DEFAULT_VERIFICATION_REQUEST_TIMEOUT_MILLIS:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_VERIFIER_CONNECTION_TIMEOUT_MILLIS()J
    .registers 2

    .line 0
    sget-wide v0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->DEFAULT_VERIFIER_CONNECTION_TIMEOUT_MILLIS:J

    return-wide v0
.end method

.method static constructor <clinit>()V
    .registers 6

    .line 79
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    .line 80
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->DEFAULT_VERIFICATION_REQUEST_TIMEOUT_MILLIS:J

    .line 91
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 92
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    sput-wide v4, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->DEFAULT_MAX_VERIFICATION_REQUEST_EXTENDED_TIMEOUT_MILLIS:J

    .line 107
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    sput-wide v4, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->DEFAULT_VERIFIER_CONNECTION_TIMEOUT_MILLIS:J

    .line 114
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->DISCONNECT_TIMEOUT_MILLIS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/content/ComponentName;Lcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector;)V
    .registers 6

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mRemoteServices:Landroid/util/SparseArray;

    .line 135
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mVerificationStatusTrackers:Landroid/util/SparseArray;

    .line 140
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mSessionsCountPerUser:Landroid/util/SparseIntArray;

    .line 163
    iput-object p1, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mContext:Landroid/content/Context;

    .line 164
    iput-object p2, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mHandler:Landroid/os/Handler;

    .line 165
    iput-object p3, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mDeveloperVerificationServiceProvider:Landroid/content/ComponentName;

    .line 166
    iput-object p4, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mInjector:Lcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector;

    .line 167
    new-instance p1, Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider;

    invoke-direct {p1, p2}, Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mExperimentProvider:Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;Landroid/content/ComponentName;)Lcom/android/server/pm/verify/developer/DeveloperVerifierController;
    .registers 5

    .line 152
    sget-object v0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->sInstance:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    if-nez v0, :cond_10

    .line 153
    new-instance v0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    new-instance v1, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector;

    invoke-direct {v1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector;-><init>()V

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/content/ComponentName;Lcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector;)V

    sput-object v0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->sInstance:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    .line 156
    :cond_10
    sget-object p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->sInstance:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    return-object p0
.end method


# virtual methods
.method public addExperiment(Ljava/lang/String;ILjava/util/List;)V
    .registers 4

    .line 695
    iget-object p0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mExperimentProvider:Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider;->addExperiment(Ljava/lang/String;ILjava/util/List;)V

    return-void
.end method

.method public assertCallerIsCurrentVerifier(I)V
    .registers 5

    .line 559
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 560
    iget-object v1, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mRemoteServices:Landroid/util/SparseArray;

    monitor-enter v1

    .line 561
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mRemoteServices:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$ServiceConnectorWrapper;

    if-eqz p0, :cond_37

    .line 567
    invoke-virtual {p0}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$ServiceConnectorWrapper;->getUid()I

    move-result p0

    if-ne p1, p0, :cond_1b

    .line 571
    monitor-exit v1

    return-void

    :catchall_19
    move-exception p0

    goto :goto_4e

    .line 568
    :cond_1b
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not the current verifier."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 563
    :cond_37
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to proceed because the verifier has been disconnected for user "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 571
    :goto_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_7 .. :try_end_4f} :catchall_19

    throw p0
.end method

.method public bindToVerifierServiceIfNeeded(Ljava/util/function/Supplier;ILjava/lang/Runnable;)Z
    .registers 12

    .line 226
    invoke-virtual {p0}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->getVerifierPackageName()Ljava/lang/String;

    move-result-object v1

    .line 227
    iget-object v2, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mRemoteServices:Landroid/util/SparseArray;

    monitor-enter v2

    .line 228
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mRemoteServices:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$ServiceConnectorWrapper;

    const/4 v6, 0x1

    if-eqz v0, :cond_25

    .line 231
    invoke-virtual {v0}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$ServiceConnectorWrapper;->getVerifierPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 233
    invoke-virtual {p0, p2}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->destroy(I)V

    goto :goto_25

    :catchall_20
    move-exception v0

    move-object p0, v0

    goto :goto_6a

    .line 239
    :cond_23
    monitor-exit v2

    return v6

    .line 242
    :cond_25
    :goto_25
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_20

    const/4 v7, 0x0

    if-nez v1, :cond_2a

    return v7

    .line 248
    :cond_2a
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/server/pm/Computer;

    const-wide/16 v2, 0x0

    const/16 v5, 0x3e8

    move v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->getPackageUidInternal(Ljava/lang/String;JII)I

    move-result p1

    move v3, v4

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3f

    return v7

    .line 257
    :cond_3f
    iget-object p2, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mInjector:Lcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector;

    iget-object v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v1, v0, v3, v2}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector;->getRemoteService(Ljava/lang/String;Landroid/content/Context;ILandroid/os/Handler;)Lcom/android/internal/infra/ServiceConnector;

    move-result-object p2

    .line 259
    new-instance v5, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$ServiceConnectorWrapper;

    invoke-direct {v5, p2, p1, v1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$ServiceConnectorWrapper;-><init>(Lcom/android/internal/infra/ServiceConnector;ILjava/lang/String;)V

    .line 261
    new-instance v0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$1;

    move-object v4, p3

    move-object v2, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$1;-><init>(Lcom/android/server/pm/verify/developer/DeveloperVerifierController;Ljava/lang/String;ILjava/lang/Runnable;Lcom/android/server/pm/verify/developer/DeveloperVerifierController$ServiceConnectorWrapper;)V

    invoke-interface {p2, v0}, Lcom/android/internal/infra/ServiceConnector;->setServiceLifecycleCallbacks(Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;)V

    .line 295
    iget-object p0, v1, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mRemoteServices:Landroid/util/SparseArray;

    monitor-enter p0

    .line 296
    :try_start_5c
    iget-object p1, v1, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mRemoteServices:Landroid/util/SparseArray;

    invoke-virtual {p1, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 297
    monitor-exit p0
    :try_end_62
    .catchall {:try_start_5c .. :try_end_62} :catchall_66

    .line 302
    invoke-interface {p2}, Lcom/android/internal/infra/ServiceConnector;->connect()Lcom/android/internal/infra/AndroidFuture;

    return v6

    :catchall_66
    move-exception v0

    move-object p1, v0

    .line 297
    :try_start_68
    monitor-exit p0
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_66

    throw p1

    .line 242
    :goto_6a
    :try_start_6a
    monitor-exit v2
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_20

    throw p0
.end method

.method public clearExperiment(Ljava/lang/String;)V
    .registers 2

    .line 703
    iget-object p0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mExperimentProvider:Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider;->clearExperiment(Ljava/lang/String;)V

    return-void
.end method

.method public final destroy(I)V
    .registers 4

    .line 307
    iget-object v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mRemoteServices:Landroid/util/SparseArray;

    monitor-enter v0

    .line 308
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mRemoteServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 309
    iget-object v1, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mRemoteServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$ServiceConnectorWrapper;

    if-eqz v1, :cond_24

    .line 311
    invoke-virtual {v1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$ServiceConnectorWrapper;->getService()Lcom/android/internal/infra/ServiceConnector;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/infra/ServiceConnector;->unbind()V

    .line 312
    iget-object p0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mRemoteServices:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_24

    :catchall_22
    move-exception p0

    goto :goto_26

    .line 315
    :cond_24
    :goto_24
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_22

    throw p0
.end method

.method public getVerifierComponentName()Landroid/content/ComponentName;
    .registers 1

    .line 176
    iget-object p0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mDeveloperVerificationServiceProvider:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getVerifierPackageName()Ljava/lang/String;
    .registers 1

    .line 185
    iget-object p0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mDeveloperVerificationServiceProvider:Landroid/content/ComponentName;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 188
    :cond_6
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVerifierUidIfBound(I)I
    .registers 3

    .line 196
    iget-object v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mRemoteServices:Landroid/util/SparseArray;

    monitor-enter v0

    .line 197
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mRemoteServices:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$ServiceConnectorWrapper;

    if-nez p0, :cond_12

    const/4 p0, -0x1

    .line 199
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    goto :goto_18

    .line 201
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$ServiceConnectorWrapper;->getUid()I

    move-result p0

    monitor-exit v0

    return p0

    .line 202
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_10

    throw p0
.end method

.method public hasExperiments(Ljava/lang/String;)Z
    .registers 2

    .line 710
    iget-object p0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mExperimentProvider:Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider;->hasExperiments(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$startTimeoutCountdown$4(ILcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;)V
    .registers 11

    .line 469
    invoke-virtual {p2}, Lcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;->isTimeout()Z

    move-result v0

    if-nez v0, :cond_12

    .line 475
    invoke-virtual {p2}, Lcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;->getRemainingTime()J

    move-result-wide v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 474
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->startTimeoutCountdown(ILcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;J)V

    return-void

    :cond_12
    move-object v1, p0

    move v2, p1

    move-object v4, p3

    .line 481
    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->onTimeout()V

    .line 483
    invoke-virtual {v1, v2}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->removeStatusTracker(I)V

    return-void
.end method

.method public final maybeScheduleAutoDisconnect(I)V
    .registers 4

    .line 544
    iget-object v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mRemoteServices:Landroid/util/SparseArray;

    monitor-enter v0

    .line 545
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mRemoteServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$ServiceConnectorWrapper;

    if-nez p1, :cond_11

    .line 548
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    goto :goto_1a

    .line 551
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$ServiceConnectorWrapper;->getAutoDisconnectCallback()Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->startAutoDisconnectCountdown(Ljava/lang/Runnable;)V

    .line 552
    monitor-exit v0

    return-void

    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_f

    throw p0
.end method

.method public notifyPackageNameAvailable(Ljava/lang/String;I)V
    .registers 4

    .line 333
    iget-object v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mRemoteServices:Landroid/util/SparseArray;

    monitor-enter v0

    .line 334
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mRemoteServices:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$ServiceConnectorWrapper;

    if-nez p0, :cond_11

    .line 339
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    goto :goto_1f

    .line 342
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$ServiceConnectorWrapper;->getService()Lcom/android/internal/infra/ServiceConnector;

    move-result-object p0

    new-instance p2, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$$ExternalSyntheticLambda4;

    invoke-direct {p2, p1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p2}, Lcom/android/internal/infra/ServiceConnector;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 348
    monitor-exit v0

    return-void

    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_f

    throw p0
.end method

.method public notifyVerificationCancelled(Ljava/lang/String;I)V
    .registers 4

    .line 357
    iget-object v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mRemoteServices:Landroid/util/SparseArray;

    monitor-enter v0

    .line 358
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mRemoteServices:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$ServiceConnectorWrapper;

    if-nez p0, :cond_11

    .line 363
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    goto :goto_1f

    .line 366
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$ServiceConnectorWrapper;->getService()Lcom/android/internal/infra/ServiceConnector;

    move-result-object p0

    new-instance p2, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$$ExternalSyntheticLambda3;

    invoke-direct {p2, p1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p2}, Lcom/android/internal/infra/ServiceConnector;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 372
    monitor-exit v0

    return-void

    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_f

    throw p0
.end method

.method public notifyVerificationTimeout(II)V
    .registers 4

    .line 492
    iget-object v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mRemoteServices:Landroid/util/SparseArray;

    monitor-enter v0

    .line 493
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mRemoteServices:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$ServiceConnectorWrapper;

    if-nez p0, :cond_11

    .line 500
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    goto :goto_28

    .line 502
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$ServiceConnectorWrapper;->getService()Lcom/android/internal/infra/ServiceConnector;

    move-result-object p0

    new-instance p2, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {p0, p2}, Lcom/android/internal/infra/ServiceConnector;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    new-instance p2, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$$ExternalSyntheticLambda2;

    invoke-direct {p2, p1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$$ExternalSyntheticLambda2;-><init>(I)V

    .line 507
    invoke-virtual {p0, p2}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    .line 513
    monitor-exit v0

    return-void

    :goto_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_f

    throw p0
.end method

.method public final removeStatusTracker(I)V
    .registers 6

    .line 523
    iget-object v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mVerificationStatusTrackers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 524
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mVerificationStatusTrackers:Landroid/util/SparseArray;

    .line 525
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;

    if-eqz p1, :cond_35

    .line 528
    iget-object v1, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mInjector:Lcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector;

    iget-object v2, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector;->stopTimeoutCountdown(Landroid/os/Handler;Ljava/lang/Object;)V

    .line 529
    invoke-virtual {p1}, Lcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;->getUserId()I

    move-result p1

    .line 530
    iget-object v1, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mSessionsCountPerUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_2a

    .line 533
    iget-object v3, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mSessionsCountPerUser:Landroid/util/SparseIntArray;

    sub-int/2addr v1, v2

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_37

    .line 536
    :cond_2a
    :goto_2a
    iget-object v1, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mSessionsCountPerUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    if-nez v1, :cond_35

    .line 537
    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->maybeScheduleAutoDisconnect(I)V

    .line 540
    :cond_35
    monitor-exit v0

    return-void

    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_28

    throw p0
.end method

.method public final startAutoDisconnectCountdown(Ljava/lang/Runnable;)V
    .registers 4

    .line 320
    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->stopAutoDisconnectCountdown(Ljava/lang/Runnable;)V

    .line 321
    iget-object p0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mHandler:Landroid/os/Handler;

    sget-wide v0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->DISCONNECT_TIMEOUT_MILLIS:J

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startLocalExperiment(Ljava/lang/String;Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;)V
    .registers 3

    .line 718
    iget-object p0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mExperimentProvider:Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider;->runNextExperiment(Ljava/lang/String;Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;)Z

    return-void
.end method

.method public final startTimeoutCountdown(ILcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;J)V
    .registers 8

    .line 465
    iget-object v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/verify/developer/DeveloperVerifierController;ILcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;)V

    invoke-virtual {v0, v1, p2, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public startVerificationSession(Ljava/util/function/Supplier;IILjava/lang/String;Landroid/net/Uri;Landroid/content/pm/SigningInfo;Ljava/util/List;ILandroid/os/PersistableBundle;Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;Ljava/lang/Runnable;Z)Z
    .registers 31

    move-object/from16 v0, p0

    move/from16 v7, p2

    move-object/from16 v1, p10

    move-object/from16 v2, p1

    move-object/from16 v3, p11

    .line 396
    invoke-virtual {v0, v2, v7, v3}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->bindToVerifierServiceIfNeeded(Ljava/util/function/Supplier;ILjava/lang/Runnable;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_12

    return v3

    .line 401
    :cond_12
    iget-object v2, v0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mRemoteServices:Landroid/util/SparseArray;

    monitor-enter v2

    .line 402
    :try_start_15
    iget-object v4, v0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mRemoteServices:Landroid/util/SparseArray;

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$ServiceConnectorWrapper;

    if-nez v4, :cond_24

    .line 410
    monitor-exit v2

    return v3

    :catchall_21
    move-exception v0

    goto/16 :goto_b7

    .line 412
    :cond_24
    new-instance v8, Landroid/content/pm/verify/developer/DeveloperVerificationSession;

    new-instance v5, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$DeveloperVerificationSessionInterface;

    invoke-direct {v5, v0, v1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$DeveloperVerificationSessionInterface;-><init>(Lcom/android/server/pm/verify/developer/DeveloperVerifierController;Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;)V

    move/from16 v10, p3

    move/from16 v9, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    move/from16 v16, p8

    move-object/from16 v15, p9

    move-object/from16 v17, v5

    invoke-direct/range {v8 .. v17}, Landroid/content/pm/verify/developer/DeveloperVerificationSession;-><init>(IILjava/lang/String;Landroid/net/Uri;Landroid/content/pm/SigningInfo;Ljava/util/List;Landroid/os/PersistableBundle;ILandroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface;)V

    .line 417
    invoke-virtual {v4}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$ServiceConnectorWrapper;->getService()Lcom/android/internal/infra/ServiceConnector;

    move-result-object v5

    new-instance v6, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$$ExternalSyntheticLambda5;

    move/from16 v10, p12

    invoke-direct {v6, v10, v9, v8}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$$ExternalSyntheticLambda5;-><init>(ZILandroid/content/pm/verify/developer/DeveloperVerificationSession;)V

    invoke-interface {v5, v6}, Lcom/android/internal/infra/ServiceConnector;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mInjector:Lcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector;

    .line 431
    invoke-virtual {v6}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector;->getVerifierConnectionTimeoutMillis()J

    move-result-wide v10

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v10, v11, v6}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v5

    new-instance v6, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$$ExternalSyntheticLambda6;

    invoke-direct {v6, v9, v1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$$ExternalSyntheticLambda6;-><init>(ILcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;)V

    .line 432
    invoke-virtual {v5, v6}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    .line 442
    invoke-virtual {v4}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$ServiceConnectorWrapper;->getAutoDisconnectCallback()Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->stopAutoDisconnectCountdown(Ljava/lang/Runnable;)V

    .line 443
    monitor-exit v2
    :try_end_6b
    .catchall {:try_start_15 .. :try_end_6b} :catchall_21

    .line 445
    iget-object v2, v0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mInjector:Lcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector;

    invoke-virtual {v2}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector;->getVerificationRequestTimeoutMillis()J

    move-result-wide v4

    .line 446
    iget-object v2, v0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mInjector:Lcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector;

    invoke-virtual {v2}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector;->getMaxVerificationExtendedTimeoutMillis()J

    move-result-wide v10

    .line 448
    new-instance v1, Lcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;

    iget-object v6, v0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mInjector:Lcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector;

    move v8, v3

    move-wide v2, v4

    move-wide v4, v10

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;-><init>(JJLcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector;I)V

    .line 450
    iget-object v4, v0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mVerificationStatusTrackers:Landroid/util/SparseArray;

    monitor-enter v4

    .line 451
    :try_start_84
    iget-object v5, v0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mVerificationStatusTrackers:Landroid/util/SparseArray;

    invoke-virtual {v5, v9, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 452
    iget-object v5, v0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mSessionsCountPerUser:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v7}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v5

    if-gez v5, :cond_99

    .line 453
    iget-object v5, v0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mSessionsCountPerUser:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_99

    :catchall_97
    move-exception v0

    goto :goto_b5

    .line 455
    :cond_99
    :goto_99
    iget-object v5, v0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mSessionsCountPerUser:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    .line 456
    iget-object v6, v0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mSessionsCountPerUser:Landroid/util/SparseIntArray;

    const/4 v8, 0x1

    add-int/2addr v5, v8

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 457
    monitor-exit v4
    :try_end_a7
    .catchall {:try_start_84 .. :try_end_a7} :catchall_97

    move-object/from16 p7, p10

    move-object/from16 p4, v0

    move-object/from16 p6, v1

    move-wide/from16 p8, v2

    move/from16 p5, v9

    .line 458
    invoke-virtual/range {p4 .. p9}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->startTimeoutCountdown(ILcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;J)V

    return v8

    .line 457
    :goto_b5
    :try_start_b5
    monitor-exit v4
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_97

    throw v0

    .line 443
    :goto_b7
    :try_start_b7
    monitor-exit v2
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_21

    throw v0
.end method

.method public final stopAutoDisconnectCountdown(Ljava/lang/Runnable;)V
    .registers 3

    .line 325
    iget-object v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mInjector:Lcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector;

    iget-object p0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector;->removeCallbacks(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method
