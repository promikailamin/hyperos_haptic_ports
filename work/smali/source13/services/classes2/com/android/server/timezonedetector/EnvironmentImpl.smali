.class final Lcom/android/server/timezonedetector/EnvironmentImpl;
.super Ljava/lang/Object;
.source "EnvironmentImpl.java"

# interfaces
.implements Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;


# static fields
.field private static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/ServiceConfigAccessor;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "serviceConfigAccessor"    # Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mContext:Landroid/content/Context;

    .line 44
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mHandler:Landroid/os/Handler;

    .line 45
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    iput-object v0, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 46
    return-void
.end method


# virtual methods
.method public elapsedRealtimeMillis()J
    .registers 3

    .line 87
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentUserConfigurationInternal()Lcom/android/server/timezonedetector/ConfigurationInternal;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->getCurrentUserConfigurationInternal()Lcom/android/server/timezonedetector/ConfigurationInternal;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceTimeZone()Ljava/lang/String;
    .registers 2

    .line 76
    const-string/jumbo v0, "persist.sys.timezone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDeviceTimeZoneInitialized()Z
    .registers 3

    .line 69
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/EnvironmentImpl;->getDeviceTimeZone()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "timeZoneId":Ljava/lang/String;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_16

    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method synthetic lambda$setConfigurationInternalChangeListener$0$com-android-server-timezonedetector-EnvironmentImpl(Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/android/server/timezonedetector/ConfigurationChangeListener;

    .line 52
    iget-object v0, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/timezonedetector/EnvironmentImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/timezonedetector/EnvironmentImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setConfigurationInternalChangeListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/android/server/timezonedetector/ConfigurationChangeListener;

    .line 51
    new-instance v0, Lcom/android/server/timezonedetector/EnvironmentImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/timezonedetector/EnvironmentImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/EnvironmentImpl;Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V

    .line 53
    .local v0, "configurationChangeListener":Lcom/android/server/timezonedetector/ConfigurationChangeListener;
    iget-object v1, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-interface {v1, v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->addConfigurationInternalChangeListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V

    .line 54
    return-void
.end method

.method public setDeviceTimeZone(Ljava/lang/String;)V
    .registers 4
    .param p1, "zoneId"    # Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 82
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 83
    return-void
.end method
