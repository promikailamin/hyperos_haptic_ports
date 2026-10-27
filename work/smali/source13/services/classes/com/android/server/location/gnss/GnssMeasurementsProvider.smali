.class public final Lcom/android/server/location/gnss/GnssMeasurementsProvider;
.super Lcom/android/server/location/gnss/GnssListenerMultiplexer;
.source "GnssMeasurementsProvider.java"

# interfaces
.implements Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;
.implements Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/gnss/GnssListenerMultiplexer<",
        "Landroid/location/GnssMeasurementRequest;",
        "Landroid/location/IGnssMeasurementsListener;",
        "Landroid/location/GnssMeasurementRequest;",
        ">;",
        "Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;",
        "Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;",
        "Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;"
    }
.end annotation


# instance fields
.field private final mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

.field private final mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

.field private final mLogger:Lcom/android/server/location/injector/LocationUsageLogger;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAppOpsHelper(Lcom/android/server/location/gnss/GnssMeasurementsProvider;)Lcom/android/server/location/injector/AppOpsHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/hal/GnssNative;)V
    .registers 4
    .param p1, "injector"    # Lcom/android/server/location/injector/Injector;
    .param p2, "gnssNative"    # Lcom/android/server/location/gnss/hal/GnssNative;

    .line 87
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;-><init>(Lcom/android/server/location/injector/Injector;)V

    .line 88
    invoke-interface {p1}, Lcom/android/server/location/injector/Injector;->getAppOpsHelper()Lcom/android/server/location/injector/AppOpsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    .line 89
    invoke-interface {p1}, Lcom/android/server/location/injector/Injector;->getLocationUsageLogger()Lcom/android/server/location/injector/LocationUsageLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    .line 90
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 92
    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addBaseCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;)V

    .line 93
    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addMeasurementCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;)V

    .line 94
    return-void
.end method

.method static synthetic lambda$onReportMeasurements$0(Landroid/location/GnssMeasurementsEvent;Landroid/location/IGnssMeasurementsListener;)V
    .registers 2
    .param p0, "event"    # Landroid/location/GnssMeasurementsEvent;
    .param p1, "listener"    # Landroid/location/IGnssMeasurementsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 233
    invoke-interface {p1, p0}, Landroid/location/IGnssMeasurementsListener;->onGnssMeasurementsReceived(Landroid/location/GnssMeasurementsEvent;)V

    return-void
.end method


# virtual methods
.method public addListener(Landroid/location/GnssMeasurementRequest;Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssMeasurementsListener;)V
    .registers 4
    .param p1, "request"    # Landroid/location/GnssMeasurementRequest;
    .param p2, "identity"    # Landroid/location/util/identity/CallerIdentity;
    .param p3, "listener"    # Landroid/location/IGnssMeasurementsListener;

    .line 104
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->addListener(Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)V

    .line 105
    return-void
.end method

.method public bridge synthetic addListener(Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)V
    .registers 4

    .line 48
    check-cast p1, Landroid/location/GnssMeasurementRequest;

    check-cast p3, Landroid/location/IGnssMeasurementsListener;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->addListener(Landroid/location/GnssMeasurementRequest;Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssMeasurementsListener;)V

    return-void
.end method

.method protected createRegistration(Landroid/location/GnssMeasurementRequest;Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssMeasurementsListener;)Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;
    .registers 5
    .param p1, "request"    # Landroid/location/GnssMeasurementRequest;
    .param p2, "callerIdentity"    # Landroid/location/util/identity/CallerIdentity;
    .param p3, "listener"    # Landroid/location/IGnssMeasurementsListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/GnssMeasurementRequest;",
            "Landroid/location/util/identity/CallerIdentity;",
            "Landroid/location/IGnssMeasurementsListener;",
            ")",
            "Lcom/android/server/location/gnss/GnssListenerMultiplexer<",
            "Landroid/location/GnssMeasurementRequest;",
            "Landroid/location/IGnssMeasurementsListener;",
            "Landroid/location/GnssMeasurementRequest;",
            ">.Gnss",
            "ListenerRegistration;"
        }
    .end annotation

    .line 110
    new-instance v0, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;-><init>(Lcom/android/server/location/gnss/GnssMeasurementsProvider;Landroid/location/GnssMeasurementRequest;Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssMeasurementsListener;)V

    return-object v0
.end method

.method protected bridge synthetic createRegistration(Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;
    .registers 4

    .line 48
    check-cast p1, Landroid/location/GnssMeasurementRequest;

    check-cast p3, Landroid/location/IGnssMeasurementsListener;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->createRegistration(Landroid/location/GnssMeasurementRequest;Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssMeasurementsListener;)Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    move-result-object p1

    return-object p1
.end method

.method public isSupported()Z
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->isMeasurementSupported()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$onReportMeasurements$1$com-android-server-location-gnss-GnssMeasurementsProvider(Landroid/location/GnssMeasurementsEvent;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;
    .registers 6
    .param p1, "event"    # Landroid/location/GnssMeasurementsEvent;
    .param p2, "registration"    # Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    .line 231
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    .line 232
    invoke-virtual {p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    .line 231
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/location/injector/AppOpsHelper;->noteOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 233
    new-instance v0, Lcom/android/server/location/gnss/GnssMeasurementsProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/location/gnss/GnssMeasurementsProvider$$ExternalSyntheticLambda0;-><init>(Landroid/location/GnssMeasurementsEvent;)V

    return-object v0

    .line 235
    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method protected mergeRegistrations(Ljava/util/Collection;)Landroid/location/GnssMeasurementRequest;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/location/gnss/GnssListenerMultiplexer<",
            "Landroid/location/GnssMeasurementRequest;",
            "Landroid/location/IGnssMeasurementsListener;",
            "Landroid/location/GnssMeasurementRequest;",
            ">.Gnss",
            "ListenerRegistration;",
            ">;)",
            "Landroid/location/GnssMeasurementRequest;"
        }
    .end annotation

    .line 169
    .local p1, "registrations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/location/gnss/GnssListenerMultiplexer<Landroid/location/GnssMeasurementRequest;Landroid/location/IGnssMeasurementsListener;Landroid/location/GnssMeasurementRequest;>.GnssListenerRegistration;>;"
    const/4 v0, 0x0

    .line 170
    .local v0, "fullTracking":Z
    const/4 v1, 0x0

    .line 171
    .local v1, "enableCorrVecOutputs":Z
    const v2, 0x7fffffff

    .line 173
    .local v2, "intervalMillis":I
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    invoke-virtual {v3}, Lcom/android/server/location/injector/SettingsHelper;->isGnssMeasurementsFullTrackingEnabled()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 174
    const/4 v0, 0x1

    .line 177
    :cond_e
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    .line 178
    .local v4, "registration":Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;, "Lcom/android/server/location/gnss/GnssListenerMultiplexer<Landroid/location/GnssMeasurementRequest;Landroid/location/IGnssMeasurementsListener;Landroid/location/GnssMeasurementRequest;>.GnssListenerRegistration;"
    invoke-virtual {v4}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getRequest()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/GnssMeasurementRequest;

    .line 179
    .local v5, "request":Landroid/location/GnssMeasurementRequest;
    invoke-virtual {v5}, Landroid/location/GnssMeasurementRequest;->isFullTracking()Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 180
    const/4 v0, 0x1

    .line 182
    :cond_2b
    invoke-virtual {v5}, Landroid/location/GnssMeasurementRequest;->isCorrelationVectorOutputsEnabled()Z

    move-result v6

    if-eqz v6, :cond_32

    .line 183
    const/4 v1, 0x1

    .line 185
    :cond_32
    invoke-virtual {v5}, Landroid/location/GnssMeasurementRequest;->getIntervalMillis()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 186
    .end local v4    # "registration":Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;, "Lcom/android/server/location/gnss/GnssListenerMultiplexer<Landroid/location/GnssMeasurementRequest;Landroid/location/IGnssMeasurementsListener;Landroid/location/GnssMeasurementRequest;>.GnssListenerRegistration;"
    .end local v5    # "request":Landroid/location/GnssMeasurementRequest;
    goto :goto_12

    .line 188
    :cond_3b
    new-instance v3, Landroid/location/GnssMeasurementRequest$Builder;

    invoke-direct {v3}, Landroid/location/GnssMeasurementRequest$Builder;-><init>()V

    .line 189
    invoke-virtual {v3, v0}, Landroid/location/GnssMeasurementRequest$Builder;->setFullTracking(Z)Landroid/location/GnssMeasurementRequest$Builder;

    move-result-object v3

    .line 190
    invoke-virtual {v3, v1}, Landroid/location/GnssMeasurementRequest$Builder;->setCorrelationVectorOutputsEnabled(Z)Landroid/location/GnssMeasurementRequest$Builder;

    move-result-object v3

    .line 191
    invoke-virtual {v3, v2}, Landroid/location/GnssMeasurementRequest$Builder;->setIntervalMillis(I)Landroid/location/GnssMeasurementRequest$Builder;

    move-result-object v3

    .line 192
    invoke-virtual {v3}, Landroid/location/GnssMeasurementRequest$Builder;->build()Landroid/location/GnssMeasurementRequest;

    move-result-object v3

    .line 188
    return-object v3
.end method

.method protected bridge synthetic mergeRegistrations(Ljava/util/Collection;)Ljava/lang/Object;
    .registers 2

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mergeRegistrations(Ljava/util/Collection;)Landroid/location/GnssMeasurementRequest;

    move-result-object p1

    return-object p1
.end method

.method protected onActive()V
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    invoke-virtual {v0, p0}, Lcom/android/server/location/injector/SettingsHelper;->addOnGnssMeasurementsFullTrackingEnabledChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    .line 153
    return-void
.end method

.method public onHalRestarted()V
    .registers 1

    .line 225
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->resetService()V

    .line 226
    return-void
.end method

.method protected onInactive()V
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    invoke-virtual {v0, p0}, Lcom/android/server/location/injector/SettingsHelper;->removeOnGnssMeasurementsFullTrackingEnabledChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    .line 158
    return-void
.end method

.method protected onRegistrationAdded(Landroid/os/IBinder;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)V
    .registers 14
    .param p1, "key"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Lcom/android/server/location/gnss/GnssListenerMultiplexer<",
            "Landroid/location/GnssMeasurementRequest;",
            "Landroid/location/IGnssMeasurementsListener;",
            "Landroid/location/GnssMeasurementRequest;",
            ">.Gnss",
            "ListenerRegistration;",
            ")V"
        }
    .end annotation

    .line 197
    .local p2, "registration":Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;, "Lcom/android/server/location/gnss/GnssListenerMultiplexer<Landroid/location/GnssMeasurementRequest;Landroid/location/IGnssMeasurementsListener;Landroid/location/GnssMeasurementRequest;>.GnssListenerRegistration;"
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    .line 200
    invoke-virtual {p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 201
    invoke-virtual {p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 206
    invoke-virtual {p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->isForeground()Z

    move-result v10

    .line 197
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/location/injector/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;Z)V

    .line 207
    return-void
.end method

.method protected bridge synthetic onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 3

    .line 48
    check-cast p1, Landroid/os/IBinder;

    check-cast p2, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->onRegistrationAdded(Landroid/os/IBinder;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)V

    return-void
.end method

.method protected onRegistrationRemoved(Landroid/os/IBinder;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)V
    .registers 14
    .param p1, "key"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Lcom/android/server/location/gnss/GnssListenerMultiplexer<",
            "Landroid/location/GnssMeasurementRequest;",
            "Landroid/location/IGnssMeasurementsListener;",
            "Landroid/location/GnssMeasurementRequest;",
            ">.Gnss",
            "ListenerRegistration;",
            ")V"
        }
    .end annotation

    .line 211
    .local p2, "registration":Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;, "Lcom/android/server/location/gnss/GnssListenerMultiplexer<Landroid/location/GnssMeasurementRequest;Landroid/location/IGnssMeasurementsListener;Landroid/location/GnssMeasurementRequest;>.GnssListenerRegistration;"
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    .line 214
    invoke-virtual {p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 215
    invoke-virtual {p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 220
    invoke-virtual {p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->isForeground()Z

    move-result v10

    .line 211
    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/location/injector/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;Z)V

    .line 221
    return-void
.end method

.method protected bridge synthetic onRegistrationRemoved(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 3

    .line 48
    check-cast p1, Landroid/os/IBinder;

    check-cast p2, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->onRegistrationRemoved(Landroid/os/IBinder;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)V

    return-void
.end method

.method public onReportMeasurements(Landroid/location/GnssMeasurementsEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/location/GnssMeasurementsEvent;

    .line 230
    new-instance v0, Lcom/android/server/location/gnss/GnssMeasurementsProvider$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/GnssMeasurementsProvider$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/gnss/GnssMeasurementsProvider;Landroid/location/GnssMeasurementsEvent;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->deliverToListeners(Ljava/util/function/Function;)V

    .line 238
    return-void
.end method

.method public onSettingChanged()V
    .registers 1

    .line 163
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->updateService()V

    .line 164
    return-void
.end method

.method protected registerWithService(Landroid/location/GnssMeasurementRequest;Ljava/util/Collection;)Z
    .registers 8
    .param p1, "request"    # Landroid/location/GnssMeasurementRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/GnssMeasurementRequest;",
            "Ljava/util/Collection<",
            "Lcom/android/server/location/gnss/GnssListenerMultiplexer<",
            "Landroid/location/GnssMeasurementRequest;",
            "Landroid/location/IGnssMeasurementsListener;",
            "Landroid/location/GnssMeasurementRequest;",
            ">.Gnss",
            "ListenerRegistration;",
            ">;)Z"
        }
    .end annotation

    .line 119
    .local p2, "registrations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/location/gnss/GnssListenerMultiplexer<Landroid/location/GnssMeasurementRequest;Landroid/location/IGnssMeasurementsListener;Landroid/location/GnssMeasurementRequest;>.GnssListenerRegistration;>;"
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->stopMeasurementCollection()Z

    move-result v0

    const-string v1, "GnssManager"

    if-eqz v0, :cond_15

    .line 120
    sget-boolean v0, Lcom/android/server/location/gnss/GnssManagerService;->D:Z

    if-eqz v0, :cond_1a

    .line 121
    const-string/jumbo v0, "stopping gnss measurements"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 124
    :cond_15
    const-string v0, "error stopping gnss measurements"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p1}, Landroid/location/GnssMeasurementRequest;->isFullTracking()Z

    move-result v2

    .line 127
    invoke-virtual {p1}, Landroid/location/GnssMeasurementRequest;->isCorrelationVectorOutputsEnabled()Z

    move-result v3

    .line 128
    invoke-virtual {p1}, Landroid/location/GnssMeasurementRequest;->getIntervalMillis()I

    move-result v4

    .line 126
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/location/gnss/hal/GnssNative;->startMeasurementCollection(ZZI)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 129
    sget-boolean v0, Lcom/android/server/location/gnss/GnssManagerService;->D:Z

    if-eqz v0, :cond_4f

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "starting gnss measurements ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_4f
    const/4 v0, 0x1

    return v0

    .line 134
    :cond_51
    const-string v0, "error starting gnss measurements"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic registerWithService(Ljava/lang/Object;Ljava/util/Collection;)Z
    .registers 3

    .line 48
    check-cast p1, Landroid/location/GnssMeasurementRequest;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->registerWithService(Landroid/location/GnssMeasurementRequest;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method protected unregisterWithService()V
    .registers 3

    .line 141
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->stopMeasurementCollection()Z

    move-result v0

    const-string v1, "GnssManager"

    if-eqz v0, :cond_15

    .line 142
    sget-boolean v0, Lcom/android/server/location/gnss/GnssManagerService;->D:Z

    if-eqz v0, :cond_1a

    .line 143
    const-string/jumbo v0, "stopping gnss measurements"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 146
    :cond_15
    const-string v0, "error stopping gnss measurements"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_1a
    :goto_1a
    return-void
.end method
