.class Landroid/companion/virtual/computercontrol/ComputerControlSession$StabilityListenerProxy;
.super Landroid/companion/virtual/computercontrol/IComputerControlStabilityListener$Stub;
.source "ComputerControlSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/computercontrol/ComputerControlSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StabilityListenerProxy"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mListener:Landroid/companion/virtual/computercontrol/ComputerControlSession$StabilityListener;


# direct methods
.method public static synthetic blacklist $r8$lambda$yHhEoiwbc2Hn56H5MZdECEqqMO4(Landroid/companion/virtual/computercontrol/ComputerControlSession$StabilityListenerProxy;)V
    .registers 1

    invoke-direct {p0}, Landroid/companion/virtual/computercontrol/ComputerControlSession$StabilityListenerProxy;->lambda$onSessionStable$0()V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/companion/virtual/computercontrol/ComputerControlSession$StabilityListener;)V
    .registers 3

    .line 481
    invoke-direct {p0}, Landroid/companion/virtual/computercontrol/IComputerControlStabilityListener$Stub;-><init>()V

    .line 482
    iput-object p1, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession$StabilityListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 483
    iput-object p2, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession$StabilityListenerProxy;->mListener:Landroid/companion/virtual/computercontrol/ComputerControlSession$StabilityListener;

    .line 484
    return-void
.end method

.method private synthetic blacklist lambda$onSessionStable$0()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 488
    iget-object v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession$StabilityListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession$StabilityListenerProxy;->mListener:Landroid/companion/virtual/computercontrol/ComputerControlSession$StabilityListener;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/companion/virtual/computercontrol/ComputerControlSession$StabilityListenerProxy$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroid/companion/virtual/computercontrol/ComputerControlSession$StabilityListenerProxy$$ExternalSyntheticLambda0;-><init>(Landroid/companion/virtual/computercontrol/ComputerControlSession$StabilityListener;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public blacklist onSessionStable()V
    .registers 2

    .line 488
    new-instance v0, Landroid/companion/virtual/computercontrol/ComputerControlSession$StabilityListenerProxy$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/companion/virtual/computercontrol/ComputerControlSession$StabilityListenerProxy$$ExternalSyntheticLambda1;-><init>(Landroid/companion/virtual/computercontrol/ComputerControlSession$StabilityListenerProxy;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 489
    return-void
.end method
