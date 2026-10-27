.class abstract Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;
.super Ljava/lang/Object;
.source "LocationTimeZoneProviderProxy.java"

# interfaces
.implements Lcom/android/server/timezonedetector/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$Listener;
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected mListener:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$Listener;

.field protected final mSharedLock:Ljava/lang/Object;

.field protected final mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/timezonedetector/location/ThreadingDomain;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "threadingDomain"    # Lcom/android/server/timezonedetector/location/ThreadingDomain;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->mContext:Landroid/content/Context;

    .line 67
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/location/ThreadingDomain;

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    .line 68
    invoke-virtual {p2}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->mSharedLock:Ljava/lang/Object;

    .line 69
    return-void
.end method


# virtual methods
.method destroy()V
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->onDestroy()V

    .line 101
    monitor-exit v0

    .line 102
    return-void

    .line 101
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method final handleTimeZoneProviderEvent(Landroid/service/timezone/TimeZoneProviderEvent;)V
    .registers 4
    .param p1, "timeZoneProviderEvent"    # Landroid/service/timezone/TimeZoneProviderEvent;

    .line 121
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    new-instance v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;Landroid/service/timezone/TimeZoneProviderEvent;)V

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->post(Ljava/lang/Runnable;)V

    .line 122
    return-void
.end method

.method initialize(Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$Listener;)V
    .registers 5
    .param p1, "listener"    # Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$Listener;

    .line 77
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_6
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->mListener:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$Listener;

    if-nez v1, :cond_11

    .line 82
    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->mListener:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$Listener;

    .line 83
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->onInitialize()V

    .line 84
    monitor-exit v0

    .line 85
    return-void

    .line 80
    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "listener already set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;
    .end local p1    # "listener":Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$Listener;
    throw v1

    .line 84
    .restart local p0    # "this":Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;
    .restart local p1    # "listener":Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$Listener;
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method synthetic lambda$handleTimeZoneProviderEvent$0$com-android-server-timezonedetector-location-LocationTimeZoneProviderProxy(Landroid/service/timezone/TimeZoneProviderEvent;)V
    .registers 3
    .param p1, "timeZoneProviderEvent"    # Landroid/service/timezone/TimeZoneProviderEvent;

    .line 121
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->mListener:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$Listener;

    invoke-interface {v0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$Listener;->onReportTimeZoneProviderEvent(Landroid/service/timezone/TimeZoneProviderEvent;)V

    return-void
.end method

.method abstract onDestroy()V
.end method

.method abstract onInitialize()V
.end method

.method abstract setRequest(Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;)V
.end method
