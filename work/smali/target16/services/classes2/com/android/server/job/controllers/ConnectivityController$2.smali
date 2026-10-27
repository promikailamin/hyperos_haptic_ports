.class public Lcom/android/server/job/controllers/ConnectivityController$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "ConnectivityController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/ConnectivityController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/ConnectivityController;)V
    .registers 2

    .line 1680
    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final maybeRegisterSignalStrengthCallbackLocked(Landroid/net/NetworkCapabilities;)V
    .registers 8

    const/4 v0, 0x0

    .line 1745
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_62

    .line 1748
    :cond_8
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1749
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getSubscriptionIds()Ljava/util/Set;

    move-result-object p1

    .line 1750
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1c
    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1751
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {v2}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$fgetmSignalStrengths(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_39

    goto :goto_1c

    .line 1754
    :cond_39
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 1755
    new-instance v3, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;

    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;-><init>(Lcom/android/server/job/controllers/ConnectivityController;Lcom/android/server/job/controllers/ConnectivityController-IA;)V

    .line 1757
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    .line 1756
    invoke-virtual {v2, v4, v3}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 1758
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {v4}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$fgetmSignalStrengths(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1760
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 1762
    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v1

    iput v1, v3, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;->signalStrength:I

    goto :goto_1c

    :cond_62
    :goto_62
    return-void
.end method

.method public final maybeUnregisterSignalStrengthCallbackLocked(Landroid/net/NetworkCapabilities;)V
    .registers 8

    const/4 v0, 0x0

    .line 1770
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_b7

    .line 1773
    :cond_9
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1774
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {v2}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$fgetmAvailableNetworks(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    move v3, v0

    :goto_19
    if-ge v3, v2, :cond_40

    .line 1775
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {v4}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$fgetmAvailableNetworks(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;

    if-eqz v4, :cond_3d

    .line 1776
    iget-object v5, v4, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->networkCapabilities:Landroid/net/NetworkCapabilities;

    if-nez v5, :cond_2e

    goto :goto_3d

    .line 1779
    :cond_2e
    invoke-virtual {v5, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 1780
    iget-object v4, v4, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v4}, Landroid/net/NetworkCapabilities;->getSubscriptionIds()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    :cond_3d
    :goto_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 1783
    :cond_40
    invoke-static {}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    const-string v2, "JobScheduler.Connectivity"

    if-eqz v0, :cond_5c

    .line 1784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Active subscription IDs: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    :cond_5c
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1787
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getSubscriptionIds()Ljava/util/Set;

    move-result-object p1

    .line 1788
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_70
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1789
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_87

    goto :goto_70

    .line 1792
    :cond_87
    invoke-virtual {v0, v4}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 1793
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {v5}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$fgetmSignalStrengths(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;

    if-eqz v5, :cond_9d

    .line 1795
    invoke-virtual {v3, v5}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    goto :goto_70

    .line 1797
    :cond_9d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Callback for sub "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " didn\'t exist?!?!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70

    :cond_b7
    :goto_b7
    return-void
.end method

.method public final maybeUpdateFlexConstraintLocked(Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;)V
    .registers 6

    const/4 v0, 0x1

    const/high16 v1, 0x10000000

    if-eqz p1, :cond_19

    .line 1809
    iget-boolean p1, p1, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->satisfiesTransportAffinities:Z

    if-eqz p1, :cond_19

    .line 1811
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {p0}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$fgetmFlexibilityController(Lcom/android/server/job/controllers/ConnectivityController;)Lcom/android/server/job/controllers/FlexibilityController;

    move-result-object p0

    sget-object p1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 1812
    invoke-virtual {p1}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    .line 1811
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/server/job/controllers/FlexibilityController;->setConstraintSatisfied(IZJ)V

    return-void

    .line 1818
    :cond_19
    iget-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {p1}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$fgetmAvailableNetworks(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    sub-int/2addr p1, v0

    :goto_24
    if-ltz p1, :cond_3c

    .line 1819
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {v0}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$fgetmAvailableNetworks(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;

    if-eqz v0, :cond_39

    .line 1820
    iget-boolean v0, v0, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->satisfiesTransportAffinities:Z

    if-eqz v0, :cond_39

    return-void

    :cond_39
    add-int/lit8 p1, p1, -0x1

    goto :goto_24

    .line 1826
    :cond_3c
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {p0}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$fgetmFlexibilityController(Lcom/android/server/job/controllers/ConnectivityController;)Lcom/android/server/job/controllers/FlexibilityController;

    move-result-object p0

    sget-object p1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 1828
    invoke-virtual {p1}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    const/4 p1, 0x0

    .line 1826
    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/android/server/job/controllers/FlexibilityController;->setConstraintSatisfied(IZJ)V

    return-void
.end method

.method public onAvailable(Landroid/net/Network;)V
    .registers 3

    .line 1683
    invoke-static {}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$sfgetDEBUG()Z

    move-result p0

    if-eqz p0, :cond_1d

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onAvailable: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JobScheduler.Connectivity"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 7

    .line 1691
    invoke-static {}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1692
    const-string v0, "JobScheduler.Connectivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCapabilitiesChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    :cond_1d
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1695
    :try_start_22
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {v1}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$fgetmAvailableNetworks(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;

    if-nez v1, :cond_4a

    .line 1697
    new-instance v1, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;-><init>(Lcom/android/server/job/controllers/ConnectivityController-IA;)V

    .line 1698
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->capabilitiesFirstAcquiredTimeElapsed:J

    .line 1699
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {v2}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$fgetmAvailableNetworks(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_51

    :catchall_48
    move-exception p0

    goto :goto_6e

    .line 1701
    :cond_4a
    iget-object v2, v1, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->networkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v2, :cond_51

    .line 1703
    invoke-virtual {p0, v2}, Lcom/android/server/job/controllers/ConnectivityController$2;->maybeUnregisterSignalStrengthCallbackLocked(Landroid/net/NetworkCapabilities;)V

    .line 1706
    :cond_51
    :goto_51
    iput-object p2, v1, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 1707
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {v2, v1}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$mupdateTransportAffinitySatisfaction(Lcom/android/server/job/controllers/ConnectivityController;Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 1708
    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/ConnectivityController$2;->maybeUpdateFlexConstraintLocked(Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;)V

    .line 1710
    :cond_5e
    invoke-virtual {p0, p2}, Lcom/android/server/job/controllers/ConnectivityController$2;->maybeRegisterSignalStrengthCallbackLocked(Landroid/net/NetworkCapabilities;)V

    .line 1711
    iget-object p2, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    const/4 v1, -0x1

    invoke-static {p2, v1, p1}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$mupdateTrackedJobsLocked(Lcom/android/server/job/controllers/ConnectivityController;ILandroid/net/Network;)V

    .line 1712
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {p0}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$mpostAdjustCallbacks(Lcom/android/server/job/controllers/ConnectivityController;)V

    .line 1713
    monitor-exit v0

    return-void

    :goto_6e
    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_22 .. :try_end_6f} :catchall_48

    throw p0
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 7

    .line 1718
    invoke-static {}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1719
    const-string v0, "JobScheduler.Connectivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLost: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    :cond_1d
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1722
    :try_start_22
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {v1}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$fgetmAvailableNetworks(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;

    const/4 v2, 0x0

    if-eqz v1, :cond_42

    .line 1724
    iget-object v3, v1, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->networkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v3, :cond_3b

    .line 1725
    invoke-virtual {p0, v3}, Lcom/android/server/job/controllers/ConnectivityController$2;->maybeUnregisterSignalStrengthCallbackLocked(Landroid/net/NetworkCapabilities;)V

    goto :goto_3b

    :catchall_39
    move-exception p0

    goto :goto_78

    .line 1727
    :cond_3b
    :goto_3b
    iget-boolean v1, v1, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->satisfiesTransportAffinities:Z

    if-eqz v1, :cond_42

    .line 1728
    invoke-virtual {p0, v2}, Lcom/android/server/job/controllers/ConnectivityController$2;->maybeUpdateFlexConstraintLocked(Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;)V

    :cond_42
    const/4 v1, 0x0

    .line 1731
    :goto_43
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {v3}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$fgetmCurrentDefaultNetworkCallbacks(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_6b

    .line 1732
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {v3}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$fgetmCurrentDefaultNetworkCallbacks(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    .line 1733
    invoke-static {v3}, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->-$$Nest$fgetmDefaultNetwork(Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;)Landroid/net/Network;

    move-result-object v4

    invoke-static {v4, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 1734
    invoke-static {v3, v2}, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->-$$Nest$fputmDefaultNetwork(Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;Landroid/net/Network;)V

    :cond_68
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    .line 1737
    :cond_6b
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    const/4 v2, -0x1

    invoke-static {v1, v2, p1}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$mupdateTrackedJobsLocked(Lcom/android/server/job/controllers/ConnectivityController;ILandroid/net/Network;)V

    .line 1738
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {p0}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$mpostAdjustCallbacks(Lcom/android/server/job/controllers/ConnectivityController;)V

    .line 1739
    monitor-exit v0

    return-void

    :goto_78
    monitor-exit v0
    :try_end_79
    .catchall {:try_start_22 .. :try_end_79} :catchall_39

    throw p0
.end method
