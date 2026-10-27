.class Lcom/android/server/people/data/DataManager$Injector;
.super Ljava/lang/Object;
.source "DataManager.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createCallLogQueryHelper(Landroid/content/Context;Ljava/util/function/BiConsumer;)Lcom/android/server/people/data/CallLogQueryHelper;
    .registers 3

    .line 1454
    new-instance p0, Lcom/android/server/people/data/CallLogQueryHelper;

    invoke-direct {p0, p1, p2}, Lcom/android/server/people/data/CallLogQueryHelper;-><init>(Landroid/content/Context;Ljava/util/function/BiConsumer;)V

    return-object p0
.end method

.method public createContactsQueryHelper(Landroid/content/Context;)Lcom/android/server/people/data/ContactsQueryHelper;
    .registers 2

    .line 1449
    new-instance p0, Lcom/android/server/people/data/ContactsQueryHelper;

    invoke-direct {p0, p1}, Lcom/android/server/people/data/ContactsQueryHelper;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public createMmsQueryHelper(Landroid/content/Context;Ljava/util/function/BiConsumer;)Lcom/android/server/people/data/MmsQueryHelper;
    .registers 3

    .line 1459
    new-instance p0, Lcom/android/server/people/data/MmsQueryHelper;

    invoke-direct {p0, p1, p2}, Lcom/android/server/people/data/MmsQueryHelper;-><init>(Landroid/content/Context;Ljava/util/function/BiConsumer;)V

    return-object p0
.end method

.method public createScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    .line 1441
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public createSmsQueryHelper(Landroid/content/Context;Ljava/util/function/BiConsumer;)Lcom/android/server/people/data/SmsQueryHelper;
    .registers 3

    .line 1464
    new-instance p0, Lcom/android/server/people/data/SmsQueryHelper;

    invoke-direct {p0, p1, p2}, Lcom/android/server/people/data/SmsQueryHelper;-><init>(Landroid/content/Context;Ljava/util/function/BiConsumer;)V

    return-object p0
.end method

.method public createUsageStatsQueryHelper(ILjava/util/function/Function;Lcom/android/server/people/data/UsageStatsQueryHelper$EventListener;)Lcom/android/server/people/data/UsageStatsQueryHelper;
    .registers 4

    .line 1470
    new-instance p0, Lcom/android/server/people/data/UsageStatsQueryHelper;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/people/data/UsageStatsQueryHelper;-><init>(ILjava/util/function/Function;Lcom/android/server/people/data/UsageStatsQueryHelper$EventListener;)V

    return-object p0
.end method

.method public getBackgroundExecutor()Ljava/util/concurrent/Executor;
    .registers 1

    .line 1445
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method
