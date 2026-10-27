.class public Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;
.super Ljava/lang/Object;
.source "WearableSensingSecureChannel.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final mExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .registers 2

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 2

    .line 340
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_5
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    .line 342
    :catch_6
    invoke-static {}, Lcom/android/server/wearable/WearableSensingSecureChannel;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Received new runnable after shutdown. Ignoring."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public shutdown()V
    .registers 1

    .line 348
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method
