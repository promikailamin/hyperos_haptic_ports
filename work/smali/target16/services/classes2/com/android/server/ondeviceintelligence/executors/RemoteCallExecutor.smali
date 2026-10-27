.class public abstract Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor;
.super Ljava/lang/Object;
.source "RemoteCallExecutor.java"


# instance fields
.field public final mFailureConsumer:Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureConsumer;

.field public final mRemoteCallExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$Builder;)V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p1}, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$Builder;->-$$Nest$fgetmFailureConsumer(Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$Builder;)Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureConsumer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor;->mFailureConsumer:Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureConsumer;

    .line 47
    const-string/jumbo p1, "odi-remote-call-executor"

    .line 48
    invoke-static {p1}, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$Builder;->getThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object p1

    .line 47
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor;->mRemoteCallExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public executeOnRemoteExecutor(Ljava/lang/Runnable;)V
    .registers 2

    .line 56
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor;->mRemoteCallExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
