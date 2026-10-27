.class public abstract Lcom/android/server/location/provider/LocationProviderManager$Registration;
.super Lcom/android/server/location/listeners/RemovableListenerRegistration;
.source "LocationProviderManager.java"


# instance fields
.field public final mBaseRequest:Landroid/location/LocationRequest;

.field public mBypassPermitted:Z

.field public mForeground:Z

.field public final mIdentity:Landroid/location/util/identity/CallerIdentity;

.field public mIsInEmergency:Z

.field public mIsUsingHighPower:Z

.field public mLastLocation:Landroid/location/Location;

.field public final mPermissionLevel:I

.field public mPermitted:Z

.field public mProviderLocationRequest:Landroid/location/LocationRequest;

.field public final synthetic this$0:Lcom/android/server/location/provider/LocationProviderManager;


# direct methods
.method public static synthetic $r8$lambda$8BrL0bYcdddbxH8FhcjM4iSczjc(ILcom/android/server/location/provider/LocationProviderManager$LocationTransport;)V
    .registers 2

    .line 543
    invoke-interface {p1, p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;->deliverOnFlushComplete(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$NzjnRYkoQ2fYT4ZS7vARkAYegW0(Lcom/android/server/location/provider/LocationProviderManager$Registration;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->lambda$flush$1(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;Ljava/util/concurrent/Executor;Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;I)V
    .registers 7

    .line 404
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 405
    invoke-direct {p0, p4, p5}, Lcom/android/server/location/listeners/RemovableListenerRegistration;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 401
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mLastLocation:Landroid/location/Location;

    .line 407
    invoke-virtual {p3}, Landroid/location/util/identity/CallerIdentity;->getListenerId()Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x0

    const/4 p5, 0x1

    if-eqz p1, :cond_12

    move p1, p5

    goto :goto_13

    :cond_12
    move p1, p4

    :goto_13
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    if-lez p6, :cond_19

    move p4, p5

    .line 408
    :cond_19
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 409
    invoke-virtual {p2}, Landroid/location/LocationRequest;->getWorkSource()Landroid/os/WorkSource;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/WorkSource;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, p5

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 411
    iput-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mBaseRequest:Landroid/location/LocationRequest;

    .line 412
    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 413
    iput p6, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mPermissionLevel:I

    .line 414
    iput-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mProviderLocationRequest:Landroid/location/LocationRequest;

    return-void
.end method

.method private onLocationPermissionsChanged()Z
    .registers 4

    .line 634
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPermissionsHelper:Lcom/android/server/location/injector/LocationPermissionsHelper;

    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mPermissionLevel:I

    .line 635
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v2

    .line 634
    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/injector/LocationPermissionsHelper;->hasLocationPermissions(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result v0

    .line 636
    iget-boolean v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mPermitted:Z

    if-eq v0, v1, :cond_64

    .line 637
    sget-boolean v1, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v1, :cond_43

    .line 638
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v2, v2, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " provider package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " permitted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocationManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_43
    iput-boolean v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mPermitted:Z

    if-eqz v0, :cond_55

    .line 645
    sget-object v0, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v1, v1, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/server/location/eventlog/LocationEventLog;->logProviderClientPermitted(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)V

    goto :goto_62

    .line 647
    :cond_55
    sget-object v0, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v1, v1, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/server/location/eventlog/LocationEventLog;->logProviderClientUnpermitted(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)V

    :goto_62
    const/4 p0, 0x1

    return p0

    :cond_64
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public abstract acceptLocationChange(Landroid/location/LocationResult;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;
.end method

.method public final calculateProviderLocationRequest()Landroid/location/LocationRequest;
    .registers 8

    .line 710
    new-instance v0, Landroid/location/LocationRequest$Builder;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mBaseRequest:Landroid/location/LocationRequest;

    invoke-direct {v0, v1}, Landroid/location/LocationRequest$Builder;-><init>(Landroid/location/LocationRequest;)V

    .line 712
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mPermissionLevel:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2e

    const/16 v1, 0x68

    .line 713
    invoke-virtual {v0, v1}, Landroid/location/LocationRequest$Builder;->setQuality(I)Landroid/location/LocationRequest$Builder;

    .line 714
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mBaseRequest:Landroid/location/LocationRequest;

    invoke-virtual {v1}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x927c0

    cmp-long v1, v1, v3

    if-gez v1, :cond_21

    .line 715
    invoke-virtual {v0, v3, v4}, Landroid/location/LocationRequest$Builder;->setIntervalMillis(J)Landroid/location/LocationRequest$Builder;

    .line 717
    :cond_21
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mBaseRequest:Landroid/location/LocationRequest;

    invoke-virtual {v1}, Landroid/location/LocationRequest;->getMinUpdateIntervalMillis()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-gez v1, :cond_2e

    .line 718
    invoke-virtual {v0, v3, v4}, Landroid/location/LocationRequest$Builder;->setMinUpdateIntervalMillis(J)Landroid/location/LocationRequest$Builder;

    .line 722
    :cond_2e
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mBaseRequest:Landroid/location/LocationRequest;

    invoke-virtual {v1}, Landroid/location/LocationRequest;->isLocationSettingsIgnored()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_68

    .line 725
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v3, v3, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    invoke-virtual {v3}, Lcom/android/server/location/injector/SettingsHelper;->getIgnoreSettingsAllowlist()Landroid/os/PackageTagsList;

    move-result-object v3

    .line 726
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 725
    invoke-virtual {v3, v4, v5}, Landroid/os/PackageTagsList;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_65

    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v3, v3, Lcom/android/server/location/provider/LocationProviderManager;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    const/4 v4, 0x0

    .line 727
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/location/LocationManagerInternal;->isProvider(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Z

    move-result v3

    if-nez v3, :cond_65

    move v1, v2

    .line 731
    :cond_65
    invoke-virtual {v0, v1}, Landroid/location/LocationRequest$Builder;->setLocationSettingsIgnored(Z)Landroid/location/LocationRequest$Builder;

    .line 734
    :cond_68
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mBaseRequest:Landroid/location/LocationRequest;

    invoke-virtual {v3}, Landroid/location/LocationRequest;->isAdasGnssBypass()Z

    move-result v3

    if-eqz v3, :cond_d1

    .line 737
    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v4, v4, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    const-string v5, "gps"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_84

    .line 738
    const-string v3, "LocationManagerService"

    const-string v4, "adas gnss bypass request received in non-gps provider"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ce

    .line 740
    :cond_84
    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v4, v4, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/injector/UserInfoHelper;

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/location/injector/UserInfoHelper;->isCurrentUserId(I)Z

    move-result v4

    if-nez v4, :cond_97

    goto :goto_ce

    .line 742
    :cond_97
    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v4, v4, Lcom/android/server/location/provider/LocationProviderManager;->mLocationSettings:Lcom/android/server/location/settings/LocationSettings;

    .line 743
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v5

    .line 742
    invoke-virtual {v4, v5}, Lcom/android/server/location/settings/LocationSettings;->getUserSettings(I)Lcom/android/server/location/settings/LocationUserSettings;

    move-result-object v4

    .line 743
    invoke-virtual {v4}, Lcom/android/server/location/settings/LocationUserSettings;->isAdasGnssLocationEnabled()Z

    move-result v4

    if-nez v4, :cond_ae

    goto :goto_ce

    .line 745
    :cond_ae
    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v4, v4, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    invoke-virtual {v4}, Lcom/android/server/location/injector/SettingsHelper;->getAdasAllowlist()Landroid/os/PackageTagsList;

    move-result-object v4

    .line 746
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    .line 745
    invoke-virtual {v4, v5, v6}, Landroid/os/PackageTagsList;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_cd

    goto :goto_ce

    :cond_cd
    move v2, v3

    .line 750
    :goto_ce
    invoke-virtual {v0, v2}, Landroid/location/LocationRequest$Builder;->setAdasGnssBypass(Z)Landroid/location/LocationRequest$Builder;

    :cond_d1
    if-nez v1, :cond_f2

    .line 753
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isThrottlingExempt()Z

    move-result v1

    if-nez v1, :cond_f2

    .line 755
    iget-boolean v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mForeground:Z

    if-nez v1, :cond_f2

    .line 756
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mBaseRequest:Landroid/location/LocationRequest;

    invoke-virtual {v1}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v1

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    .line 757
    invoke-virtual {p0}, Lcom/android/server/location/injector/SettingsHelper;->getBackgroundThrottleIntervalMs()J

    move-result-wide v3

    .line 756
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationRequest$Builder;->setIntervalMillis(J)Landroid/location/LocationRequest$Builder;

    .line 761
    :cond_f2
    invoke-virtual {v0}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object p0

    return-object p0
.end method

.method public final flush(I)V
    .registers 4

    .line 542
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$Registration$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/provider/LocationProviderManager$Registration;I)V

    invoke-interface {v0, v1}, Lcom/android/server/location/provider/LocationProviderController;->flush(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getIdentity()Landroid/location/util/identity/CallerIdentity;
    .registers 1

    .line 418
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    return-object p0
.end method

.method public final getLastDeliveredLocation()Landroid/location/Location;
    .registers 2

    .line 509
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    # getter for: Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/provider/LocationProviderManager;->access$200(Lcom/android/server/location/provider/LocationProviderManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 510
    :try_start_7
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mLastLocation:Landroid/location/Location;

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 511
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public bridge synthetic getOwner()Lcom/android/server/location/listeners/ListenerMultiplexer;
    .registers 1

    .line 376
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getOwner()Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object p0

    return-object p0
.end method

.method public final getOwner()Lcom/android/server/location/provider/LocationProviderManager;
    .registers 1

    .line 548
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    return-object p0
.end method

.method public getPermissionLevel()I
    .registers 2

    .line 515
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    # getter for: Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/provider/LocationProviderManager;->access$300(Lcom/android/server/location/provider/LocationProviderManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 516
    :try_start_7
    iget p0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mPermissionLevel:I

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 517
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final getRequest()Landroid/location/LocationRequest;
    .registers 2

    .line 422
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    # getter for: Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/provider/LocationProviderManager;->access$000(Lcom/android/server/location/provider/LocationProviderManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 423
    :try_start_7
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mProviderLocationRequest:Landroid/location/LocationRequest;

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 424
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final isForeground()Z
    .registers 2

    .line 521
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    # getter for: Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/provider/LocationProviderManager;->access$400(Lcom/android/server/location/provider/LocationProviderManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 522
    :try_start_7
    iget-boolean p0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mForeground:Z

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 523
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final isOnlyBypassPermitted()Z
    .registers 3

    .line 533
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    # getter for: Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/provider/LocationProviderManager;->access$600(Lcom/android/server/location/provider/LocationProviderManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 534
    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mBypassPermitted:Z

    if-eqz v1, :cond_13

    iget-boolean p0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mPermitted:Z

    if-nez p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :catchall_11
    move-exception p0

    goto :goto_16

    :cond_13
    const/4 p0, 0x0

    :goto_14
    monitor-exit v0

    return p0

    .line 535
    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_11

    throw p0
.end method

.method public final isPermitted()Z
    .registers 3

    .line 527
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    # getter for: Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/provider/LocationProviderManager;->access$500(Lcom/android/server/location/provider/LocationProviderManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 528
    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mPermitted:Z

    if-nez v1, :cond_14

    iget-boolean p0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mBypassPermitted:Z

    if-eqz p0, :cond_10

    goto :goto_14

    :cond_10
    const/4 p0, 0x0

    goto :goto_15

    :catchall_12
    move-exception p0

    goto :goto_17

    :cond_14
    :goto_14
    const/4 p0, 0x1

    :goto_15
    monitor-exit v0

    return p0

    .line 529
    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_12

    throw p0
.end method

.method public final isThrottlingExempt()Z
    .registers 3

    .line 765
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SettingsHelper;->getBackgroundThrottlePackageWhitelist()Ljava/util/Set;

    move-result-object v0

    .line 766
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 765
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 p0, 0x1

    return p0

    .line 770
    :cond_18
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/location/LocationManagerInternal;->isProvider(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Z

    move-result p0

    return p0
.end method

.method public final isUsingHighPower()Z
    .registers 7

    .line 575
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    invoke-virtual {v0}, Lcom/android/server/location/provider/LocationProviderManager;->getProperties()Landroid/location/provider/ProviderProperties;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 580
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerRegistration;->isActive()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 581
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object p0

    invoke-virtual {p0}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    cmp-long p0, v2, v4

    if-gez p0, :cond_28

    .line 582
    invoke-virtual {v0}, Landroid/location/provider/ProviderProperties;->getPowerUsage()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_28

    const/4 p0, 0x1

    return p0

    :cond_28
    return v1
.end method

.method public final synthetic lambda$flush$1(I)V
    .registers 3

    .line 542
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$Registration$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerRegistration;->executeOperation(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    return-void
.end method

.method public onActive()V
    .registers 4

    .line 484
    sget-object v0, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v1, v1, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/eventlog/LocationEventLog;->logProviderClientActive(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)V

    .line 486
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationRequest;->isHiddenFromAppOps()Z

    move-result v0

    if-nez v0, :cond_24

    .line 487
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    const/16 v1, 0x29

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/injector/AppOpsHelper;->startOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)Z

    .line 489
    :cond_24
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onHighPowerUsageChanged()V

    return-void
.end method

.method public final onAdasGnssLocationEnabledChanged(I)Z
    .registers 4

    .line 657
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    # getter for: Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/provider/LocationProviderManager;->access$1100(Lcom/android/server/location/provider/LocationProviderManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 658
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v1

    if-ne v1, p1, :cond_19

    .line 659
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onProviderLocationRequestChanged()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_17
    move-exception p0

    goto :goto_1c

    :cond_19
    const/4 p0, 0x0

    .line 662
    monitor-exit v0

    return p0

    .line 663
    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_17

    throw p0
.end method

.method public onBypassLocationPermissionsChanged(Z)Z
    .registers 8

    .line 606
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    # getter for: Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/provider/LocationProviderManager;->access$1000(Lcom/android/server/location/provider/LocationProviderManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_27

    .line 608
    :try_start_b
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object p1, p1, Lcom/android/server/location/provider/LocationProviderManager;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.LOCATION_BYPASS"

    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 610
    invoke-virtual {v4}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v5}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v5

    .line 609
    invoke-virtual {p1, v3, v4, v5}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_27

    move p1, v2

    goto :goto_28

    :catchall_25
    move-exception p0

    goto :goto_63

    :cond_27
    move p1, v1

    .line 612
    :goto_28
    iget-boolean v3, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mBypassPermitted:Z

    if-eq v3, p1, :cond_61

    .line 613
    sget-boolean v1, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v1, :cond_5d

    .line 614
    const-string v1, "LocationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v4, v4, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " provider package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " bypass permitted = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 614
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_5d
    iput-boolean p1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mBypassPermitted:Z

    .line 625
    monitor-exit v0

    return v2

    .line 628
    :cond_61
    monitor-exit v0

    return v1

    .line 629
    :goto_63
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_b .. :try_end_64} :catchall_25

    throw p0
.end method

.method public final onForegroundChanged(IZ)Z
    .registers 8

    .line 667
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    # getter for: Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/provider/LocationProviderManager;->access$1200(Lcom/android/server/location/provider/LocationProviderManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 668
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, p1, :cond_75

    iget-boolean v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mForeground:Z

    if-eq p2, v1, :cond_75

    .line 669
    sget-boolean v1, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v1, :cond_42

    .line 670
    const-string v1, "LocationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v4, v4, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " provider uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " foreground = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    :catchall_40
    move-exception p0

    goto :goto_77

    .line 673
    :cond_42
    :goto_42
    iput-boolean p2, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mForeground:Z

    if-eqz p2, :cond_54

    .line 676
    sget-object p1, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    iget-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object p2, p2, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/android/server/location/eventlog/LocationEventLog;->logProviderClientForeground(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)V

    goto :goto_61

    .line 678
    :cond_54
    sget-object p1, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    iget-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object p2, p2, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/android/server/location/eventlog/LocationEventLog;->logProviderClientBackground(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)V

    .line 682
    :goto_61
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onProviderLocationRequestChanged()Z

    move-result p1

    if-nez p1, :cond_72

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/LocationPowerSaveModeHelper;

    .line 683
    invoke-virtual {p0}, Lcom/android/server/location/injector/LocationPowerSaveModeHelper;->getLocationPowerSaveMode()I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_73

    :cond_72
    const/4 v2, 0x1

    :cond_73
    monitor-exit v0

    return v2

    .line 687
    :cond_75
    monitor-exit v0

    return v2

    .line 688
    :goto_77
    monitor-exit v0
    :try_end_78
    .catchall {:try_start_7 .. :try_end_78} :catchall_40

    throw p0
.end method

.method public final onHighPowerUsageChanged()V
    .registers 3

    .line 560
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isUsingHighPower()Z

    move-result v0

    .line 561
    iget-boolean v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIsUsingHighPower:Z

    if-eq v0, v1, :cond_31

    .line 562
    iput-boolean v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIsUsingHighPower:Z

    .line 564
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationRequest;->isHiddenFromAppOps()Z

    move-result v0

    if-nez v0, :cond_31

    .line 565
    iget-boolean v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIsUsingHighPower:Z

    const/16 v1, 0x2a

    if-eqz v0, :cond_26

    .line 566
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/server/location/injector/AppOpsHelper;->startOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)Z

    return-void

    .line 568
    :cond_26
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/server/location/injector/AppOpsHelper;->finishOp(ILandroid/location/util/identity/CallerIdentity;)V

    :cond_31
    return-void
.end method

.method public onInactive()V
    .registers 4

    .line 495
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onHighPowerUsageChanged()V

    .line 496
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationRequest;->isHiddenFromAppOps()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 497
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    const/16 v1, 0x29

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/injector/AppOpsHelper;->finishOp(ILandroid/location/util/identity/CallerIdentity;)V

    .line 500
    :cond_1a
    sget-object v0, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v1, v1, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/server/location/eventlog/LocationEventLog;->logProviderClientInactive(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)V

    return-void
.end method

.method public final onLocationPermissionsChanged(I)Z
    .registers 4

    .line 596
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    # getter for: Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/provider/LocationProviderManager;->access$900(Lcom/android/server/location/provider/LocationProviderManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 597
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v1

    if-ne v1, p1, :cond_19

    .line 598
    invoke-direct {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onLocationPermissionsChanged()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_17
    move-exception p0

    goto :goto_1c

    :cond_19
    const/4 p0, 0x0

    .line 601
    monitor-exit v0

    return p0

    .line 602
    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_17

    throw p0
.end method

.method public final onLocationPermissionsChanged(Ljava/lang/String;)Z
    .registers 4

    .line 586
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    # getter for: Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/provider/LocationProviderManager;->access$800(Lcom/android/server/location/provider/LocationProviderManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-eqz p1, :cond_1d

    .line 587
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    goto :goto_1d

    :cond_18
    const/4 p0, 0x0

    .line 591
    monitor-exit v0

    return p0

    :catchall_1b
    move-exception p0

    goto :goto_23

    .line 588
    :cond_1d
    :goto_1d
    invoke-direct {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onLocationPermissionsChanged()Z

    move-result p0

    monitor-exit v0

    return p0

    .line 592
    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_1b

    throw p0
.end method

.method public final onProviderLocationRequestChanged()Z
    .registers 5

    .line 692
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    # getter for: Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/provider/LocationProviderManager;->access$1300(Lcom/android/server/location/provider/LocationProviderManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 693
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->calculateProviderLocationRequest()Landroid/location/LocationRequest;

    move-result-object v1

    .line 694
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mProviderLocationRequest:Landroid/location/LocationRequest;

    invoke-virtual {v2, v1}, Landroid/location/LocationRequest;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_18

    .line 695
    monitor-exit v0

    return v3

    :catchall_16
    move-exception p0

    goto :goto_31

    .line 698
    :cond_18
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mProviderLocationRequest:Landroid/location/LocationRequest;

    .line 699
    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mProviderLocationRequest:Landroid/location/LocationRequest;

    .line 700
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onHighPowerUsageChanged()V

    .line 701
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    # invokes: Lcom/android/server/location/listeners/ListenerMultiplexer;->updateService()V
    invoke-static {p0}, Lcom/android/server/location/provider/LocationProviderManager;->access$1400(Lcom/android/server/location/provider/LocationProviderManager;)V

    .line 704
    invoke-virtual {v2}, Landroid/location/LocationRequest;->isBypass()Z

    move-result p0

    invoke-virtual {v1}, Landroid/location/LocationRequest;->isBypass()Z

    move-result v1

    if-eq p0, v1, :cond_2f

    const/4 v3, 0x1

    :cond_2f
    monitor-exit v0

    return v3

    .line 705
    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_16

    throw p0
.end method

.method public final onProviderPropertiesChanged()Z
    .registers 2

    .line 552
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    # getter for: Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/provider/LocationProviderManager;->access$700(Lcom/android/server/location/provider/LocationProviderManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 553
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onHighPowerUsageChanged()V

    const/4 p0, 0x0

    .line 554
    monitor-exit v0

    return p0

    :catchall_d
    move-exception p0

    .line 555
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public onRegister()V
    .registers 5

    .line 448
    invoke-super {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->onRegister()V

    .line 450
    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v0, :cond_34

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v1, v1, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " provider added registration from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 451
    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_34
    sget-object v0, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v1, v1, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mBaseRequest:Landroid/location/LocationRequest;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/location/eventlog/LocationEventLog;->logProviderClientRegistered(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;Landroid/location/LocationRequest;)V

    .line 458
    invoke-direct {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onLocationPermissionsChanged()Z

    .line 459
    iget-boolean v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIsInEmergency:Z

    invoke-virtual {p0, v1}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onBypassLocationPermissionsChanged(Z)Z

    .line 460
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v1, v1, Lcom/android/server/location/provider/LocationProviderManager;->mAppForegroundHelper:Lcom/android/server/location/injector/AppForegroundHelper;

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/location/injector/AppForegroundHelper;->isAppForeground(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mForeground:Z

    .line 461
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->calculateProviderLocationRequest()Landroid/location/LocationRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mProviderLocationRequest:Landroid/location/LocationRequest;

    .line 462
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isUsingHighPower()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIsUsingHighPower:Z

    .line 464
    iget-boolean v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mForeground:Z

    if-eqz v1, :cond_78

    .line 465
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v1, v1, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/server/location/eventlog/LocationEventLog;->logProviderClientForeground(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)V

    :cond_78
    return-void
.end method

.method public onUnregister()V
    .registers 4

    .line 472
    sget-object v0, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v1, v1, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/eventlog/LocationEventLog;->logProviderClientUnregistered(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)V

    .line 474
    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v0, :cond_32

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v1, v1, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " provider removed registration from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_32
    invoke-super {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->onUnregister()V

    return-void
.end method

.method public final setLastDeliveredLocation(Landroid/location/Location;)V
    .registers 2

    .line 505
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mLastLocation:Landroid/location/Location;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 779
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 781
    new-instance v1, Landroid/util/ArraySet;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 782
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isForeground()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 783
    const-string v2, "bg"

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 785
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isPermitted()Z

    move-result v2

    if-nez v2, :cond_29

    .line 786
    const-string/jumbo v2, "na"

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 788
    :cond_29
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    const-string v3, " "

    if-nez v2, :cond_37

    .line 789
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 792
    :cond_37
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mPermissionLevel:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_41

    .line 793
    const-string v1, " (COARSE)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    :cond_41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 797
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateIsInEmergency()V
    .registers 4

    .line 429
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mEmergencyHelper:Lcom/android/server/location/injector/EmergencyHelper;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/injector/EmergencyHelper;->isInEmergency(J)Z

    move-result v0

    .line 430
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    # getter for: Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/location/provider/LocationProviderManager;->access$100(Lcom/android/server/location/provider/LocationProviderManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 431
    :try_start_11
    iput-boolean v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIsInEmergency:Z

    .line 432
    monitor-exit v1

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_15

    throw p0
.end method
