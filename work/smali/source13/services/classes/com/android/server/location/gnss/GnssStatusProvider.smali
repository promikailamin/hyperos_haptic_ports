.class public Lcom/android/server/location/gnss/GnssStatusProvider;
.super Lcom/android/server/location/gnss/GnssListenerMultiplexer;
.source "GnssStatusProvider.java"

# interfaces
.implements Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/gnss/GnssListenerMultiplexer<",
        "Ljava/lang/Void;",
        "Landroid/location/IGnssStatusListener;",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;",
        "Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;",
        "Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;"
    }
.end annotation


# instance fields
.field private final mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

.field private final mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

.field private mIsNavigating:Z

.field private final mLogger:Lcom/android/server/location/injector/LocationUsageLogger;


# direct methods
.method public constructor <init>(Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/hal/GnssNative;)V
    .registers 4
    .param p1, "injector"    # Lcom/android/server/location/injector/Injector;
    .param p2, "gnssNative"    # Lcom/android/server/location/gnss/hal/GnssNative;

    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;-><init>(Lcom/android/server/location/injector/Injector;)V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssStatusProvider;->mIsNavigating:Z

    .line 55
    invoke-interface {p1}, Lcom/android/server/location/injector/Injector;->getAppOpsHelper()Lcom/android/server/location/injector/AppOpsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssStatusProvider;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    .line 56
    invoke-interface {p1}, Lcom/android/server/location/injector/Injector;->getLocationUsageLogger()Lcom/android/server/location/injector/LocationUsageLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssStatusProvider;->mLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    .line 57
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssStatusProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 59
    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addBaseCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;)V

    .line 60
    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addStatusCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;)V

    .line 61
    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addSvStatusCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;)V

    .line 62
    return-void
.end method

.method static synthetic lambda$onReportFirstFix$2(ILandroid/location/IGnssStatusListener;)V
    .registers 2
    .param p0, "ttff"    # I
    .param p1, "listener"    # Landroid/location/IGnssStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 165
    invoke-interface {p1, p0}, Landroid/location/IGnssStatusListener;->onFirstFix(I)V

    .line 166
    return-void
.end method

.method static synthetic lambda$onReportStatus$0(Landroid/location/IGnssStatusListener;)V
    .registers 1
    .param p0, "listener"    # Landroid/location/IGnssStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 155
    invoke-interface {p0}, Landroid/location/IGnssStatusListener;->onGnssStopped()V

    return-void
.end method

.method static synthetic lambda$onReportStatus$1(Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;
    .registers 3
    .param p0, "registration"    # Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    .line 152
    invoke-static {}, Lcom/android/server/location/MiuiBlurLocationManagerStub;->get()Lcom/android/server/location/MiuiBlurLocationManagerStub;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/location/MiuiBlurLocationManagerStub;->isBlurLocationMode(Landroid/location/util/identity/CallerIdentity;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 153
    const/4 v0, 0x0

    return-object v0

    .line 155
    :cond_10
    new-instance v0, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda6;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$onReportSvStatus$3(Lmiui/security/SvStatusData;Landroid/location/IGnssStatusListener;)V
    .registers 9
    .param p0, "data"    # Lmiui/security/SvStatusData;
    .param p1, "listener"    # Landroid/location/IGnssStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 178
    nop

    .line 179
    invoke-virtual {p0}, Lmiui/security/SvStatusData;->getSvCount()I

    move-result v0

    invoke-virtual {p0}, Lmiui/security/SvStatusData;->getSvidWithFlags()[I

    move-result-object v1

    invoke-virtual {p0}, Lmiui/security/SvStatusData;->getCn0s()[F

    move-result-object v2

    .line 180
    invoke-virtual {p0}, Lmiui/security/SvStatusData;->getSvElevations()[F

    move-result-object v3

    invoke-virtual {p0}, Lmiui/security/SvStatusData;->getSvAzimuths()[F

    move-result-object v4

    .line 181
    invoke-virtual {p0}, Lmiui/security/SvStatusData;->getSvCarrierFreqs()[F

    move-result-object v5

    invoke-virtual {p0}, Lmiui/security/SvStatusData;->getBasebandCn0s()[F

    move-result-object v6

    .line 178
    invoke-static/range {v0 .. v6}, Landroid/location/GnssStatus;->wrap(I[I[F[F[F[F[F)Landroid/location/GnssStatus;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/location/IGnssStatusListener;->onSvStatusChanged(Landroid/location/GnssStatus;)V

    return-void
.end method

.method static synthetic lambda$onReportSvStatus$4(Landroid/location/GnssStatus;Landroid/location/IGnssStatusListener;)V
    .registers 2
    .param p0, "gnssStatus"    # Landroid/location/GnssStatus;
    .param p1, "listener"    # Landroid/location/IGnssStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 185
    invoke-interface {p1, p0}, Landroid/location/IGnssStatusListener;->onSvStatusChanged(Landroid/location/GnssStatus;)V

    return-void
.end method


# virtual methods
.method public addListener(Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssStatusListener;)V
    .registers 3
    .param p1, "identity"    # Landroid/location/util/identity/CallerIdentity;
    .param p2, "listener"    # Landroid/location/IGnssStatusListener;

    .line 66
    invoke-super {p0, p1, p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->addListener(Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)V

    .line 67
    return-void
.end method

.method public bridge synthetic addListener(Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)V
    .registers 3

    .line 43
    check-cast p2, Landroid/location/IGnssStatusListener;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssStatusProvider;->addListener(Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssStatusListener;)V

    return-void
.end method

.method synthetic lambda$onReportSvStatus$5$com-android-server-location-gnss-GnssStatusProvider(Landroid/location/GnssStatus;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;
    .registers 6
    .param p1, "gnssStatus"    # Landroid/location/GnssStatus;
    .param p2, "registration"    # Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    .line 172
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssStatusProvider;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    .line 173
    invoke-virtual {p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    .line 172
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/location/injector/AppOpsHelper;->noteOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 175
    invoke-static {}, Lcom/android/server/location/MiuiBlurLocationManagerStub;->get()Lcom/android/server/location/MiuiBlurLocationManagerStub;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/location/MiuiBlurLocationManagerStub;->isBlurLocationMode(Landroid/location/util/identity/CallerIdentity;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 176
    invoke-static {}, Lcom/android/server/location/MiuiBlurLocationManagerStub;->get()Lcom/android/server/location/MiuiBlurLocationManagerStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/location/MiuiBlurLocationManagerStub;->getSvStatusData()Lmiui/security/SvStatusData;

    move-result-object v0

    .line 177
    .local v0, "data":Lmiui/security/SvStatusData;
    if-eqz v0, :cond_2b

    .line 178
    new-instance v1, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda0;-><init>(Lmiui/security/SvStatusData;)V

    return-object v1

    .line 185
    .end local v0    # "data":Lmiui/security/SvStatusData;
    :cond_2b
    new-instance v0, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda1;-><init>(Landroid/location/GnssStatus;)V

    return-object v0

    .line 187
    :cond_31
    const/4 v0, 0x0

    return-object v0
.end method

.method public onHalRestarted()V
    .registers 1

    .line 125
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssStatusProvider;->resetService()V

    .line 126
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
            "Ljava/lang/Void;",
            "Landroid/location/IGnssStatusListener;",
            "Ljava/lang/Void;",
            ">.Gnss",
            "ListenerRegistration;",
            ")V"
        }
    .end annotation

    .line 96
    .local p2, "registration":Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;, "Lcom/android/server/location/gnss/GnssListenerMultiplexer<Ljava/lang/Void;Landroid/location/IGnssStatusListener;Ljava/lang/Void;>.GnssListenerRegistration;"
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssStatusProvider;->mLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    .line 99
    invoke-virtual {p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-virtual {p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 105
    invoke-virtual {p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->isForeground()Z

    move-result v10

    .line 96
    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/location/injector/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;Z)V

    .line 106
    return-void
.end method

.method protected bridge synthetic onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 3

    .line 43
    check-cast p1, Landroid/os/IBinder;

    check-cast p2, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssStatusProvider;->onRegistrationAdded(Landroid/os/IBinder;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)V

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
            "Ljava/lang/Void;",
            "Landroid/location/IGnssStatusListener;",
            "Ljava/lang/Void;",
            ">.Gnss",
            "ListenerRegistration;",
            ")V"
        }
    .end annotation

    .line 110
    .local p2, "registration":Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;, "Lcom/android/server/location/gnss/GnssListenerMultiplexer<Ljava/lang/Void;Landroid/location/IGnssStatusListener;Ljava/lang/Void;>.GnssListenerRegistration;"
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssStatusProvider;->mLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    .line 113
    invoke-virtual {p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-virtual {p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 120
    invoke-virtual {p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->isForeground()Z

    move-result v10

    .line 110
    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/location/injector/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;Z)V

    .line 121
    return-void
.end method

.method protected bridge synthetic onRegistrationRemoved(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 3

    .line 43
    check-cast p1, Landroid/os/IBinder;

    check-cast p2, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssStatusProvider;->onRegistrationRemoved(Landroid/os/IBinder;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)V

    return-void
.end method

.method public onReportFirstFix(I)V
    .registers 3
    .param p1, "ttff"    # I

    .line 164
    new-instance v0, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssStatusProvider;->deliverToListeners(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    .line 167
    return-void
.end method

.method public onReportStatus(I)V
    .registers 4
    .param p1, "gnssStatus"    # I

    .line 131
    packed-switch p1, :pswitch_data_24

    .line 141
    :pswitch_3
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssStatusProvider;->mIsNavigating:Z

    .local v0, "isNavigating":Z
    goto :goto_a

    .line 138
    .end local v0    # "isNavigating":Z
    :pswitch_6
    const/4 v0, 0x0

    .line 139
    .restart local v0    # "isNavigating":Z
    goto :goto_a

    .line 133
    .end local v0    # "isNavigating":Z
    :pswitch_8
    const/4 v0, 0x1

    .line 134
    .restart local v0    # "isNavigating":Z
    nop

    .line 144
    :goto_a
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssStatusProvider;->mIsNavigating:Z

    if-eq v0, v1, :cond_23

    .line 145
    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssStatusProvider;->mIsNavigating:Z

    .line 146
    if-eqz v0, :cond_1b

    .line 147
    new-instance v1, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/location/gnss/GnssStatusProvider;->deliverToListeners(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    goto :goto_23

    .line 151
    :cond_1b
    new-instance v1, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/location/gnss/GnssStatusProvider;->deliverToListeners(Ljava/util/function/Function;)V

    .line 160
    :cond_23
    :goto_23
    return-void

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_8
        :pswitch_6
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method public onReportSvStatus(Landroid/location/GnssStatus;)V
    .registers 3
    .param p1, "gnssStatus"    # Landroid/location/GnssStatus;

    .line 171
    new-instance v0, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/location/gnss/GnssStatusProvider;Landroid/location/GnssStatus;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssStatusProvider;->deliverToListeners(Ljava/util/function/Function;)V

    .line 190
    return-void
.end method

.method protected bridge synthetic registerWithService(Ljava/lang/Object;Ljava/util/Collection;)Z
    .registers 3

    .line 43
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssStatusProvider;->registerWithService(Ljava/lang/Void;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method protected registerWithService(Ljava/lang/Void;Ljava/util/Collection;)Z
    .registers 5
    .param p1, "ignored"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Void;",
            "Ljava/util/Collection<",
            "Lcom/android/server/location/gnss/GnssListenerMultiplexer<",
            "Ljava/lang/Void;",
            "Landroid/location/IGnssStatusListener;",
            "Ljava/lang/Void;",
            ">.Gnss",
            "ListenerRegistration;",
            ">;)Z"
        }
    .end annotation

    .line 72
    .local p2, "registrations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/location/gnss/GnssListenerMultiplexer<Ljava/lang/Void;Landroid/location/IGnssStatusListener;Ljava/lang/Void;>.GnssListenerRegistration;>;"
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssStatusProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->startSvStatusCollection()Z

    move-result v0

    const-string v1, "GnssManager"

    if-eqz v0, :cond_16

    .line 73
    sget-boolean v0, Lcom/android/server/location/gnss/GnssManagerService;->D:Z

    if-eqz v0, :cond_14

    .line 74
    const-string/jumbo v0, "starting gnss sv status"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_14
    const/4 v0, 0x1

    return v0

    .line 78
    :cond_16
    const-string v0, "error starting gnss sv status"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method protected unregisterWithService()V
    .registers 3

    .line 85
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssStatusProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->stopSvStatusCollection()Z

    move-result v0

    const-string v1, "GnssManager"

    if-eqz v0, :cond_15

    .line 86
    sget-boolean v0, Lcom/android/server/location/gnss/GnssManagerService;->D:Z

    if-eqz v0, :cond_1a

    .line 87
    const-string/jumbo v0, "stopping gnss sv status"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 90
    :cond_15
    const-string v0, "error stopping gnss sv status"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_1a
    :goto_1a
    return-void
.end method
