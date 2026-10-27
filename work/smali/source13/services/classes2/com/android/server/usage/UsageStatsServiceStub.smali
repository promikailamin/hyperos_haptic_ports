.class public interface abstract Lcom/android/server/usage/UsageStatsServiceStub;
.super Ljava/lang/Object;
.source "UsageStatsServiceStub.java"


# annotations
.annotation runtime Lcom/miui/base/annotations/MiuiStubHead;
    manifestName = "com.android.server.usage.UsageStatsServiceStub$$"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/UsageStatsServiceStub$SingletonHolder;
    }
.end annotation


# direct methods
.method public static getInstance()Lcom/android/server/usage/UsageStatsServiceStub;
    .registers 1

    .line 23
    invoke-static {}, Lcom/android/server/usage/UsageStatsServiceStub$SingletonHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/usage/UsageStatsServiceStub;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract dumpCountQuotaTracker(Lcom/android/internal/util/IndentingPrintWriter;)V
.end method

.method public abstract init(Landroid/content/Context;)V
.end method

.method public isEventInQuota(Landroid/app/usage/UsageEvents$Event;I)Z
    .registers 4
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;
    .param p2, "userId"    # I

    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public abstract isLimitExceed(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract isPendingEventsTooMuch(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;)Z"
        }
    .end annotation
.end method

.method public safeLoadPendingEventsLocked(Ljava/util/List;Ljava/util/List;[Ljava/io/File;)Z
    .registers 5
    .param p3, "pendingEventsFiles"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;[",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .line 51
    .local p1, "pendingEvents":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageEvents$Event;>;"
    .local p2, "newEvents":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageEvents$Event;>;"
    const/4 v0, 0x1

    return v0
.end method
