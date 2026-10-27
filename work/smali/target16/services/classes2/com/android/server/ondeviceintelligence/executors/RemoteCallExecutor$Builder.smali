.class public abstract Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$Builder;
.super Ljava/lang/Object;
.source "RemoteCallExecutor.java"


# static fields
.field public static final threadCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public mFailureConsumer:Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureConsumer;


# direct methods
.method public static synthetic $r8$lambda$CnIuHKFLY7shLv_m6LhcjGIOthg(Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;)V
    .registers 1

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$WB2-2UjiL2l1UG37wI7Oleo_K2U(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 5

    .line 82
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$Builder;->threadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 83
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 84
    new-instance p1, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$Builder$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$Builder$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$futB60gJ0eY7TFG69LYcX2-Pm8A(Ljava/lang/String;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 5

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uncaught exception in thread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmFailureConsumer(Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$Builder;)Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureConsumer;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$Builder;->mFailureConsumer:Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureConsumer;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$Builder;->threadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$Builder$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$Builder;->mFailureConsumer:Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureConsumer;

    return-void
.end method

.method public static getThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;
    .registers 2

    .line 81
    new-instance v0, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$Builder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$Builder$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public onFailure(Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureConsumer;)Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$Builder;
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$Builder;->mFailureConsumer:Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureConsumer;

    return-object p0
.end method
