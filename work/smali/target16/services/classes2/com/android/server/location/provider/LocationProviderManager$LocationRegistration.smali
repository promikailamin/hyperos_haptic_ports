.class public abstract Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;
.super Lcom/android/server/location/provider/LocationProviderManager$Registration;
.source "LocationProviderManager.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;
.implements Landroid/location/LocationManagerInternal$ProviderEnabledListener;


# instance fields
.field public mExpirationRealtimeMs:J

.field public mNumLocationsDelivered:I

.field public volatile mProviderTransport:Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mWakeLockReleaser:Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;

.field public final synthetic this$0:Lcom/android/server/location/provider/LocationProviderManager;


# direct methods
.method public static synthetic $r8$lambda$HKlWp9d0ULfN4Uyj27WwtckCg8Y(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;ZLcom/android/server/location/provider/LocationProviderManager$ProviderTransport;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->lambda$onProviderEnabledChanged$1(ZLcom/android/server/location/provider/LocationProviderManager$ProviderTransport;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MbgOAywiWwljbCZ3_TvCtA84c4I(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;)Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->lambda$onProviderEnabledChanged$0()Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNumLocationsDelivered(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mNumLocationsDelivered:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmNumLocationsDelivered(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mNumLocationsDelivered:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;Ljava/util/concurrent/Executor;Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;I)V
    .registers 9

    .line 825
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 826
    invoke-direct/range {p0 .. p6}, Lcom/android/server/location/provider/LocationProviderManager$Registration;-><init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;Ljava/util/concurrent/Executor;Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;I)V

    const/4 p4, 0x0

    .line 815
    iput p4, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mNumLocationsDelivered:I

    const-wide v0, 0x7fffffffffffffffL

    .line 817
    iput-wide v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mExpirationRealtimeMs:J

    .line 827
    check-cast p5, Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;

    iput-object p5, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mProviderTransport:Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;

    .line 828
    iget-object p1, p1, Lcom/android/server/location/provider/LocationProviderManager;->mContext:Landroid/content/Context;

    const-class p4, Landroid/os/PowerManager;

    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p4, p1

    check-cast p4, Landroid/os/PowerManager;

    const-string p4, "*location*"

    const/4 p5, 0x1

    .line 829
    invoke-virtual {p1, p5, p4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 830
    invoke-virtual {p1, p5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 831
    invoke-virtual {p2}, Landroid/location/LocationRequest;->getWorkSource()Landroid/os/WorkSource;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 832
    new-instance p2, Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;

    invoke-direct {p2, p3, p1}, Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;-><init>(Landroid/location/util/identity/CallerIdentity;Landroid/os/PowerManager$WakeLock;)V

    iput-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mWakeLockReleaser:Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;

    return-void
.end method


# virtual methods
.method public acceptLocationChange(Landroid/location/LocationResult;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;
    .registers 8

    .line 943
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mExpirationRealtimeMs:J

    cmp-long v0, v0, v2

    const-string v1, " provider registration "

    const-string v2, "LocationManagerService"

    const/4 v3, 0x0

    if-ltz v0, :cond_42

    .line 944
    sget-boolean p1, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz p1, :cond_3e

    .line 945
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " expired at "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mExpirationRealtimeMs:J

    .line 946
    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatRealtime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 945
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    :cond_3e
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->remove()V

    return-object v3

    .line 952
    :cond_42
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 953
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getPermissionLevel()I

    move-result v4

    invoke-virtual {v0, p1, v4}, Lcom/android/server/location/provider/LocationProviderManager;->getPermittedLocationResult(Landroid/location/LocationResult;I)Landroid/location/LocationResult;

    move-result-object p1

    .line 952
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/location/LocationResult;

    .line 955
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;-><init>(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;)V

    invoke-virtual {p1, v0}, Landroid/location/LocationResult;->filter(Ljava/util/function/Predicate;)Landroid/location/LocationResult;

    move-result-object p1

    if-nez p1, :cond_5e

    return-object v3

    .line 1012
    :cond_5e
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isOnlyBypassPermitted()Z

    move-result v0

    if-eqz v0, :cond_67

    const/16 v0, 0x93

    goto :goto_6f

    .line 1014
    :cond_67
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getPermissionLevel()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/location/LocationPermissions;->asAppOp(I)I

    move-result v0

    .line 1015
    :goto_6f
    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v4, v4, Lcom/android/server/location/provider/LocationProviderManager;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/android/server/location/injector/AppOpsHelper;->noteOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result v0

    if-nez v0, :cond_a4

    .line 1016
    sget-boolean p1, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz p1, :cond_a3

    .line 1017
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " noteOp denied"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1017
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a3
    return-object v3

    .line 1025
    :cond_a4
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b7

    const/4 v0, 0x1

    goto :goto_b8

    :cond_b7
    const/4 v0, 0x0

    .line 1028
    :goto_b8
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;-><init>(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;Landroid/location/LocationResult;Z)V

    return-object v1
.end method

.method public final synthetic lambda$onProviderEnabledChanged$0()Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;
    .registers 1

    .line 1089
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mProviderTransport:Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;

    return-object p0
.end method

.method public final synthetic lambda$onProviderEnabledChanged$1(ZLcom/android/server/location/provider/LocationProviderManager$ProviderTransport;)V
    .registers 3

    .line 1090
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;->deliverOnProviderEnabledChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method public onActive()V
    .registers 9

    .line 893
    invoke-super {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onActive()V

    .line 899
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v0

    const-wide/32 v1, 0x45c18f6

    invoke-static {v1, v2, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 900
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v0

    .line 901
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getLastDeliveredLocation()Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 905
    invoke-virtual {v2}, Landroid/location/Location;->getElapsedRealtimeAgeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    .line 904
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_2d
    move-wide v6, v0

    const-wide/16 v0, 0x7530

    cmp-long v0, v6, v0

    if-lez v0, :cond_61

    .line 911
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 912
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v3

    .line 913
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getPermissionLevel()I

    move-result v4

    .line 914
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationRequest;->isBypass()Z

    move-result v5

    .line 911
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/location/provider/LocationProviderManager;->getLastLocationUnsafe(IIZJ)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_61

    const/4 v1, 0x1

    .line 917
    new-array v1, v1, [Landroid/location/Location;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Landroid/location/LocationResult;->wrap([Landroid/location/Location;)Landroid/location/LocationResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->acceptLocationChange(Landroid/location/LocationResult;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerRegistration;->executeOperation(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    :cond_61
    return-void
.end method

.method public onAlarm()V
    .registers 5

    .line 925
    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v0, :cond_33

    .line 926
    const-string v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v2, v2, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " provider registration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " expired at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mExpirationRealtimeMs:J

    .line 927
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatRealtime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 926
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    :cond_33
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    # getter for: Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/provider/LocationProviderManager;->access$1500(Lcom/android/server/location/provider/LocationProviderManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const-wide v1, 0x7fffffffffffffffL

    .line 932
    :try_start_3f
    iput-wide v1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mExpirationRealtimeMs:J

    .line 933
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->remove()V

    .line 934
    monitor-exit v0

    return-void

    :catchall_46
    move-exception p0

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3f .. :try_end_48} :catchall_46

    throw p0
.end method

.method public onListenerUnregister()V
    .registers 2

    const/4 v0, 0x0

    .line 837
    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mProviderTransport:Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;

    return-void
.end method

.method public onProviderEnabledChanged(Ljava/lang/String;IZ)V
    .registers 5

    .line 1082
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1084
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result p1

    if-eq p2, p1, :cond_16

    return-void

    .line 1089
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerRegistration;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;)V

    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p3}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;Z)V

    new-instance p3, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;)V

    invoke-interface {p0, p1, p2, v0, p3}, Lcom/android/internal/listeners/ListenerExecutor;->executeSafely(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;)V

    return-void
.end method

.method public abstract onProviderOperationFailure(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Ljava/lang/Exception;)V
.end method

.method public onRegister()V
    .registers 7

    .line 845
    invoke-super {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onRegister()V

    .line 847
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 848
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/location/LocationRequest;->getExpirationRealtimeMs(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mExpirationRealtimeMs:J

    cmp-long v4, v2, v0

    if-gtz v4, :cond_19

    .line 852
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->onAlarm()V

    goto :goto_2b

    :cond_19
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v2, v4

    if-gez v4, :cond_2b

    .line 858
    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v4, v4, Lcom/android/server/location/provider/LocationProviderManager;->mAlarmHelper:Lcom/android/server/location/injector/AlarmHelper;

    sub-long/2addr v2, v0

    const/4 v0, 0x0

    invoke-virtual {v4, v2, v3, p0, v0}, Lcom/android/server/location/injector/AlarmHelper;->setDelayedAlarm(JLandroid/app/AlarmManager$OnAlarmListener;Landroid/os/WorkSource;)V

    .line 863
    :cond_2b
    :goto_2b
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    invoke-virtual {v0, p0}, Lcom/android/server/location/provider/LocationProviderManager;->addEnabledListener(Landroid/location/LocationManagerInternal$ProviderEnabledListener;)V

    .line 866
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v0

    .line 867
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    invoke-virtual {v1, v0}, Lcom/android/server/location/provider/LocationProviderManager;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_48

    .line 868
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v1, v1, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->onProviderEnabledChanged(Ljava/lang/String;IZ)V

    :cond_48
    return-void
.end method

.method public onUnregister()V
    .registers 5

    .line 878
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    invoke-virtual {v0, p0}, Lcom/android/server/location/provider/LocationProviderManager;->removeEnabledListener(Landroid/location/LocationManagerInternal$ProviderEnabledListener;)V

    .line 881
    iget-wide v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mExpirationRealtimeMs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_17

    .line 882
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mAlarmHelper:Lcom/android/server/location/injector/AlarmHelper;

    invoke-virtual {v0, p0}, Lcom/android/server/location/injector/AlarmHelper;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 885
    :cond_17
    invoke-super {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onUnregister()V

    return-void
.end method
