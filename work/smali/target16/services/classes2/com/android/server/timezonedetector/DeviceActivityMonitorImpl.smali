.class public Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;
.super Ljava/lang/Object;
.source "DeviceActivityMonitorImpl.java"

# interfaces
.implements Lcom/android/server/timezonedetector/DeviceActivityMonitor;


# instance fields
.field public final mListeners:Ljava/util/List;


# direct methods
.method public static bridge synthetic -$$Nest$mnotifyFlightComplete(Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;->notifyFlightComplete()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyFlightStart(Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;->notifyFlightStart()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;->mListeners:Ljava/util/List;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 55
    new-instance v0, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl$1;-><init>(Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 71
    const-string p0, "airplane_mode_on"

    .line 72
    invoke-static {p0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const/4 p2, 0x1

    .line 71
    invoke-virtual {p1, p0, p2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/server/timezonedetector/DeviceActivityMonitor;
    .registers 3

    .line 44
    new-instance v0, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/android/server/timezonedetector/DeviceActivityMonitor$Listener;)V
    .registers 3

    monitor-enter p0

    .line 79
    :try_start_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 81
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .registers 3

    .line 0
    return-void
.end method

.method public final notify(Ljava/lang/String;Ljava/util/function/Consumer;)V
    .registers 5

    .line 99
    monitor-enter p0

    .line 100
    :try_start_1
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;->mListeners:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 101
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_1d

    .line 102
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_e
    if-ge v0, p0, :cond_1c

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Lcom/android/server/timezonedetector/DeviceActivityMonitor$Listener;

    .line 103
    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_e

    :cond_1c
    return-void

    :catchall_1d
    move-exception p1

    .line 101
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public final notifyFlightComplete()V
    .registers 3

    .line 88
    new-instance v0, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl$$ExternalSyntheticLambda0;-><init>()V

    const-string/jumbo v1, "notifyFlightComplete"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;->notify(Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final notifyFlightStart()V
    .registers 3

    .line 84
    new-instance v0, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl$$ExternalSyntheticLambda1;-><init>()V

    const-string/jumbo v1, "notifyFlightStart"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;->notify(Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method
