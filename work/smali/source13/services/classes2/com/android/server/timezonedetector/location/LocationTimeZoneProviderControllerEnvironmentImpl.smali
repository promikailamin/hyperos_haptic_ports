.class Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;
.super Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;
.source "LocationTimeZoneProviderControllerEnvironmentImpl.java"


# instance fields
.field private final mConfigurationInternalChangeListener:Lcom/android/server/timezonedetector/ConfigurationChangeListener;

.field private final mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;


# direct methods
.method constructor <init>(Lcom/android/server/timezonedetector/location/ThreadingDomain;Lcom/android/server/timezonedetector/ServiceConfigAccessor;Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;)V
    .registers 6
    .param p1, "threadingDomain"    # Lcom/android/server/timezonedetector/location/ThreadingDomain;
    .param p2, "serviceConfigAccessor"    # Lcom/android/server/timezonedetector/ServiceConfigAccessor;
    .param p3, "controller"    # Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;

    .line 43
    invoke-direct {p0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;-><init>(Lcom/android/server/timezonedetector/location/ThreadingDomain;)V

    .line 44
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 47
    new-instance v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;)V

    iput-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;->mConfigurationInternalChangeListener:Lcom/android/server/timezonedetector/ConfigurationChangeListener;

    .line 49
    invoke-interface {v0, v1}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->addConfigurationInternalChangeListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V

    .line 51
    return-void
.end method


# virtual methods
.method destroy()V
    .registers 3

    .line 55
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;->mConfigurationInternalChangeListener:Lcom/android/server/timezonedetector/ConfigurationChangeListener;

    invoke-interface {v0, v1}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->removeConfigurationInternalChangeListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V

    .line 57
    return-void
.end method

.method elapsedRealtimeMillis()J
    .registers 3

    .line 90
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method getCurrentUserConfigurationInternal()Lcom/android/server/timezonedetector/ConfigurationInternal;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->getCurrentUserConfigurationInternal()Lcom/android/server/timezonedetector/ConfigurationInternal;

    move-result-object v0

    return-object v0
.end method

.method getProviderEventFilteringAgeThreshold()Ljava/time/Duration;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->getLocationTimeZoneProviderEventFilteringAgeThreshold()Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method getProviderInitializationTimeout()Ljava/time/Duration;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->getLocationTimeZoneProviderInitializationTimeout()Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method getProviderInitializationTimeoutFuzz()Ljava/time/Duration;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->getLocationTimeZoneProviderInitializationTimeoutFuzz()Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method getUncertaintyDelay()Ljava/time/Duration;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->getLocationTimeZoneUncertaintyDelay()Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$new$0$com-android-server-timezonedetector-location-LocationTimeZoneProviderControllerEnvironmentImpl(Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;)V
    .registers 4
    .param p1, "controller"    # Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;

    .line 48
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;)V

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->post(Ljava/lang/Runnable;)V

    return-void
.end method
