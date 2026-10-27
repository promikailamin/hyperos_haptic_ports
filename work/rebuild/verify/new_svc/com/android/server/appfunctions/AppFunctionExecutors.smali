.class public abstract Lcom/android/server/appfunctions/AppFunctionExecutors;
.super Ljava/lang/Object;
.source "AppFunctionExecutors.java"


# static fields
.field public static final LOGGING_THREAD_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field public static final SCHEDULED_EXECUTOR_SERVICE:Ljava/util/concurrent/ScheduledExecutorService;

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static final sConcurrency:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 29
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    sput v2, Lcom/android/server/appfunctions/AppFunctionExecutors;->sConcurrency:I

    .line 32
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/android/server/appfunctions/NamedThreadFactory;

    const-string v0, "AppFunctionExecutors"

    invoke-direct {v8, v0}, Lcom/android/server/appfunctions/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x1

    move v3, v2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/android/server/appfunctions/AppFunctionExecutors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 42
    new-instance v0, Lcom/android/server/appfunctions/NamedThreadFactory;

    const-string v2, "AppFunctionsLoggingExecutors"

    invoke-direct {v0, v2}, Lcom/android/server/appfunctions/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/android/server/appfunctions/AppFunctionExecutors;->LOGGING_THREAD_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 47
    new-instance v0, Lcom/android/server/appfunctions/NamedThreadFactory;

    const-string v2, "AppFunctionScheduledExecutors"

    invoke-direct {v0, v2}, Lcom/android/server/appfunctions/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/android/server/appfunctions/AppFunctionExecutors;->SCHEDULED_EXECUTOR_SERVICE:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v0, 0x1

    .line 52
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-void
.end method
