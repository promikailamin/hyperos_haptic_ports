.class Landroid/app/NotificationManager$1;
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
        "Landroid/app/NotificationManager$NotificationChannelQuery;",
        "Ljava/util/List<",
        "Landroid/app/NotificationChannel;",
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

    .line 1534
    iput-object p1, p0, Landroid/app/NotificationManager$1;->this$0:Landroid/app/NotificationManager;

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

    .line 1534
    check-cast p1, Landroid/app/NotificationManager$NotificationChannelQuery;

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager$1;->apply(Landroid/app/NotificationManager$NotificationChannelQuery;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public blacklist apply(Landroid/app/NotificationManager$NotificationChannelQuery;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/NotificationManager$NotificationChannelQuery;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .line 1537
    iget-object v0, p0, Landroid/app/NotificationManager$1;->this$0:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1539
    :try_start_6
    invoke-static {p1}, Landroid/app/NotificationManager$NotificationChannelQuery;->-$$Nest$fgetcallingPkg(Landroid/app/NotificationManager$NotificationChannelQuery;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/app/NotificationManager$NotificationChannelQuery;->-$$Nest$fgettargetPkg(Landroid/app/NotificationManager$NotificationChannelQuery;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Landroid/app/NotificationManager$NotificationChannelQuery;->-$$Nest$fgetuserId(Landroid/app/NotificationManager$NotificationChannelQuery;)I

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Landroid/app/INotificationManager;->getNotificationChannels(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 1540
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1a} :catch_1b

    .line 1539
    return-object p1

    .line 1541
    :catch_1b
    move-exception p1

    .line 1542
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist shouldBypassCache(Landroid/app/NotificationManager$NotificationChannelQuery;)Z
    .registers 3

    .line 1550
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->nmBinderPerfCacheChannels()Z

    move-result p1

    if-nez p1, :cond_12

    .line 1551
    invoke-static {}, Landroid/app/NotificationManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "shouldBypassCache called when nm_binder_perf_cache_channels off"

    invoke-static {p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    const/4 p1, 0x1

    return p1

    .line 1555
    :cond_12
    const/4 p1, 0x0

    return p1
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

    .line 1534
    check-cast p1, Landroid/app/NotificationManager$NotificationChannelQuery;

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager$1;->shouldBypassCache(Landroid/app/NotificationManager$NotificationChannelQuery;)Z

    move-result p1

    return p1
.end method
