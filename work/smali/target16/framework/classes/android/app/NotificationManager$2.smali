.class Landroid/app/NotificationManager$2;
.super Landroid/os/IpcDataCache$QueryHandler;
.source "NotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/IpcDataCache$QueryHandler<",
        "Ljava/lang/String;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Landroid/app/NotificationChannelGroup;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/NotificationManager;


# direct methods
.method constructor blacklist <init>(Landroid/app/NotificationManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1571
    iput-object p1, p0, Landroid/app/NotificationManager$2;->this$0:Landroid/app/NotificationManager;

    invoke-direct {p0}, Landroid/os/IpcDataCache$QueryHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1571
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager$2;->apply(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public blacklist apply(Ljava/lang/String;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    .line 1574
    iget-object v0, p0, Landroid/app/NotificationManager$2;->this$0:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1575
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1577
    nop

    .line 1578
    :try_start_c
    invoke-interface {v0, p1}, Landroid/app/INotificationManager;->getNotificationChannelGroupsWithoutChannels(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 1579
    if-eqz p1, :cond_2e

    .line 1580
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationChannelGroup;

    .line 1581
    invoke-virtual {v0}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_2d} :catch_30

    .line 1582
    goto :goto_1a

    .line 1586
    :cond_2e
    nop

    .line 1587
    return-object v1

    .line 1584
    :catch_30
    move-exception p1

    .line 1585
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public bridge synthetic blacklist shouldBypassCache(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1571
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager$2;->shouldBypassCache(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public blacklist shouldBypassCache(Ljava/lang/String;)Z
    .registers 3

    .line 1594
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->nmBinderPerfCacheChannels()Z

    move-result p1

    if-nez p1, :cond_12

    .line 1595
    invoke-static {}, Landroid/app/NotificationManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "shouldBypassCache called when nm_binder_perf_cache_channels off"

    invoke-static {p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    const/4 p1, 0x1

    return p1

    .line 1599
    :cond_12
    const/4 p1, 0x0

    return p1
.end method
