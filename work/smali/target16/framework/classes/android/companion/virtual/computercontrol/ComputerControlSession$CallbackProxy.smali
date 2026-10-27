.class public Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy;
.super Landroid/companion/virtual/computercontrol/IComputerControlSessionCallback$Stub;
.source "ComputerControlSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/computercontrol/ComputerControlSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallbackProxy"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/companion/virtual/computercontrol/ComputerControlSession$Callback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mSession:Landroid/companion/virtual/computercontrol/ComputerControlSession;


# direct methods
.method public static synthetic blacklist $r8$lambda$6GfgUzBu2hCbMIS6mBtIlvGhZv8(Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy;)V
    .registers 1

    invoke-direct {p0}, Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy;->lambda$onSessionCreated$2()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$C85xAG3oUXugQnJV7wqVHvDLBys(Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy;->lambda$onSessionCreationFailed$4(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$NBtYVpVb20tfjgXWvLYUx9Z7mwc(Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy;Landroid/app/PendingIntent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy;->lambda$onSessionPending$0(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$RnvSsALbUkmwawmmvL74FRkClds(Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy;)V
    .registers 1

    invoke-direct {p0}, Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy;->lambda$onSessionClosed$7()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$SosK-aIILEloEVibaWDKre7PRmI(Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy;)V
    .registers 1

    invoke-direct {p0}, Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy;->lambda$onSessionCreated$3()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$WDTkmfDu1UodS71w7_lIqXmwjP8(Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy;->lambda$onSessionCreationFailed$5(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$rLJRxwFvgBw7WYYOCyQ83M5yu_U(Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy;Landroid/app/PendingIntent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy;->lambda$onSessionPending$1(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$zR02Gz89lRGFIS0P6LRhSGDDsA8(Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy;)V
    .registers 1

    invoke-direct {p0}, Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy;->lambda$onSessionClosed$6()V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/companion/virtual/computercontrol/ComputerControlSession$Callback;)V
    .registers 3

    .line 441
    invoke-direct {p0}, Landroid/companion/virtual/computercontrol/IComputerControlSessionCallback$Stub;-><init>()V

    .line 442
    iput-object p1, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 443
    iput-object p2, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy;->mCallback:Landroid/companion/virtual/computercontrol/ComputerControlSession$Callback;

    .line 444
    return-void
.end method

.method private synthetic blacklist lambda$onSessionClosed$6()V
    .registers 2

    .line 471
    iget-object v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy;->mCallback:Landroid/companion/virtual/computercontrol/ComputerControlSession$Callback;

    invoke-interface {v0}, Landroid/companion/virtual/computercontrol/ComputerControlSession$Callback;->onSessionClosed()V

    return-void
.end method

.method private synthetic blacklist lambda$onSessionClosed$7()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 471
    iget-object v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy$$ExternalSyntheticLambda1;-><init>(Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onSessionCreated$2()V
    .registers 3

    .line 458
    iget-object v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy;->mCallback:Landroid/companion/virtual/computercontrol/ComputerControlSession$Callback;

    iget-object v1, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy;->mSession:Landroid/companion/virtual/computercontrol/ComputerControlSession;

    invoke-interface {v0, v1}, Landroid/companion/virtual/computercontrol/ComputerControlSession$Callback;->onSessionCreated(Landroid/companion/virtual/computercontrol/ComputerControlSession;)V

    return-void
.end method

.method private synthetic blacklist lambda$onSessionCreated$3()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 458
    iget-object v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy$$ExternalSyntheticLambda4;-><init>(Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onSessionCreationFailed$4(I)V
    .registers 3

    .line 464
    iget-object v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy;->mCallback:Landroid/companion/virtual/computercontrol/ComputerControlSession$Callback;

    invoke-interface {v0, p1}, Landroid/companion/virtual/computercontrol/ComputerControlSession$Callback;->onSessionCreationFailed(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onSessionCreationFailed$5(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 464
    iget-object v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy$$ExternalSyntheticLambda6;-><init>(Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onSessionPending$0(Landroid/app/PendingIntent;)V
    .registers 3

    .line 450
    iget-object v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy;->mCallback:Landroid/companion/virtual/computercontrol/ComputerControlSession$Callback;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/companion/virtual/computercontrol/ComputerControlSession$Callback;->onSessionPending(Landroid/content/IntentSender;)V

    return-void
.end method

.method private synthetic blacklist lambda$onSessionPending$1(Landroid/app/PendingIntent;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 449
    iget-object v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy$$ExternalSyntheticLambda0;-><init>(Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy;Landroid/app/PendingIntent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public blacklist onSessionClosed()V
    .registers 2

    .line 469
    iget-object v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy;->mSession:Landroid/companion/virtual/computercontrol/ComputerControlSession;

    invoke-static {v0}, Landroid/companion/virtual/computercontrol/ComputerControlSession;->-$$Nest$mcloseImageReader(Landroid/companion/virtual/computercontrol/ComputerControlSession;)V

    .line 470
    new-instance v0, Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy$$ExternalSyntheticLambda3;-><init>(Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 472
    return-void
.end method

.method public blacklist onSessionCreated(ILandroid/hardware/display/IVirtualDisplayCallback;Landroid/companion/virtual/computercontrol/IComputerControlSession;)V
    .registers 5

    .line 456
    new-instance v0, Landroid/companion/virtual/computercontrol/ComputerControlSession;

    invoke-direct {v0, p1, p2, p3}, Landroid/companion/virtual/computercontrol/ComputerControlSession;-><init>(ILandroid/hardware/display/IVirtualDisplayCallback;Landroid/companion/virtual/computercontrol/IComputerControlSession;)V

    iput-object v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy;->mSession:Landroid/companion/virtual/computercontrol/ComputerControlSession;

    .line 457
    new-instance p1, Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy$$ExternalSyntheticLambda2;-><init>(Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy;)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 459
    return-void
.end method

.method public blacklist onSessionCreationFailed(I)V
    .registers 3

    .line 463
    new-instance v0, Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy$$ExternalSyntheticLambda7;-><init>(Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 465
    return-void
.end method

.method public blacklist onSessionPending(Landroid/app/PendingIntent;)V
    .registers 3

    .line 448
    new-instance v0, Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy$$ExternalSyntheticLambda5;-><init>(Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy;Landroid/app/PendingIntent;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 451
    return-void
.end method
