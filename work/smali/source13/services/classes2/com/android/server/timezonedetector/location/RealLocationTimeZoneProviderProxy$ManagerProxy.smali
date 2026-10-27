.class Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;
.super Landroid/service/timezone/ITimeZoneProviderManager$Stub;
.source "RealLocationTimeZoneProviderProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ManagerProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;


# direct methods
.method private constructor <init>(Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;)V
    .registers 2

    .line 178
    iput-object p1, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;->this$0:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;

    invoke-direct {p0}, Landroid/service/timezone/ITimeZoneProviderManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;-><init>(Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;)V

    return-void
.end method


# virtual methods
.method public onTimeZoneProviderEvent(Landroid/service/timezone/TimeZoneProviderEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/service/timezone/TimeZoneProviderEvent;

    .line 183
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;->this$0:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;

    iget-object v0, v0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_5
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;->this$0:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;

    invoke-static {v1}, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->-$$Nest$fgetmManagerProxy(Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;)Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;

    move-result-object v1

    if-eq v1, p0, :cond_f

    .line 187
    monitor-exit v0

    return-void

    .line 189
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_16

    .line 190
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;->this$0:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;

    invoke-virtual {v0, p1}, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->handleTimeZoneProviderEvent(Landroid/service/timezone/TimeZoneProviderEvent;)V

    .line 191
    return-void

    .line 189
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method
