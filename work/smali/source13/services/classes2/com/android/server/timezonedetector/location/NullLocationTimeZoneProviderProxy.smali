.class Lcom/android/server/timezonedetector/location/NullLocationTimeZoneProviderProxy;
.super Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;
.source "NullLocationTimeZoneProviderProxy.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/timezonedetector/location/ThreadingDomain;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "threadingDomain"    # Lcom/android/server/timezonedetector/location/ThreadingDomain;

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;-><init>(Landroid/content/Context;Lcom/android/server/timezonedetector/location/ThreadingDomain;)V

    .line 47
    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "ipw"    # Landroid/util/IndentingPrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/NullLocationTimeZoneProviderProxy;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 71
    :try_start_3
    const-string/jumbo v1, "{NullLocationTimeZoneProviderProxy}"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 72
    monitor-exit v0

    .line 73
    return-void

    .line 72
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method onDestroy()V
    .registers 1

    .line 57
    return-void
.end method

.method onInitialize()V
    .registers 1

    .line 52
    return-void
.end method

.method setRequest(Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;)V
    .registers 5
    .param p1, "request"    # Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;

    .line 61
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->sendUpdates()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 63
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 62
    const-string v2, "Provider is disabled"

    invoke-static {v0, v1, v2}, Landroid/service/timezone/TimeZoneProviderEvent;->createPermanentFailureEvent(JLjava/lang/String;)Landroid/service/timezone/TimeZoneProviderEvent;

    move-result-object v0

    .line 64
    .local v0, "event":Landroid/service/timezone/TimeZoneProviderEvent;
    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/location/NullLocationTimeZoneProviderProxy;->handleTimeZoneProviderEvent(Landroid/service/timezone/TimeZoneProviderEvent;)V

    .line 66
    .end local v0    # "event":Landroid/service/timezone/TimeZoneProviderEvent;
    :cond_13
    return-void
.end method
