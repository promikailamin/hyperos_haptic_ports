.class public Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;
.super Ljava/lang/Object;
.source "FlexibilityController.java"


# instance fields
.field public final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public final mCarrierPrivilegedApps:Landroid/util/SparseSetArray;

.field public final mCarrierPrivilegedCallbacks:Landroid/util/SparseArray;

.field public mDeviceIdleInternal:Lcom/android/server/DeviceIdleInternal;

.field public final mHasFeatureTelephonySubscription:Z

.field public final mPowerAllowlistedApps:Landroid/util/ArraySet;

.field public final mSatLock:Ljava/lang/Object;

.field public final mSpecialApps:Landroid/util/SparseSetArray;

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public final synthetic this$0:Lcom/android/server/job/controllers/FlexibilityController;


# direct methods
.method public static synthetic $r8$lambda$Hgjj75vw81McR-idN_pmXrZVdXg(Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->updatePowerAllowlistCache()V

    return-void
.end method

.method public static synthetic $r8$lambda$ua4qG40yzc13AARwXkAlGGgPDk0(Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->updateCarrierPrivilegedCallbackRegistration()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCarrierPrivilegedApps(Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;)Landroid/util/SparseSetArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedApps:Landroid/util/SparseSetArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSatLock(Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSatLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$monAppRemoved(Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;ILjava/lang/String;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->onAppRemoved(ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monSystemServicesReady(Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->onSystemServicesReady()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserRemoved(Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->onUserRemoved(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartTracking(Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->startTracking()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopTracking(Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->stopTracking()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateCarrierPrivilegedCallbackRegistration(Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->updateCarrierPrivilegedCallbackRegistration()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdatePowerAllowlistCache(Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->updatePowerAllowlistCache()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateSpecialAppSetUnlocked(Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;ILandroid/util/ArraySet;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->updateSpecialAppSetUnlocked(ILandroid/util/ArraySet;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/controllers/FlexibilityController;)V
    .registers 3

    .line 1664
    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1628
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSatLock:Ljava/lang/Object;

    .line 1636
    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSpecialApps:Landroid/util/SparseSetArray;

    .line 1641
    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedApps:Landroid/util/SparseSetArray;

    .line 1643
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedCallbacks:Landroid/util/SparseArray;

    .line 1646
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mPowerAllowlistedApps:Landroid/util/ArraySet;

    .line 1649
    new-instance v0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$1;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$1;-><init>(Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1665
    iget-object p1, p1, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.telephony.subscription"

    .line 1666
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mHasFeatureTelephonySubscription:Z

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 6

    .line 1905
    const-string v0, "Special apps:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1906
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1908
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSatLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 1909
    :goto_d
    :try_start_d
    iget-object v3, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSpecialApps:Landroid/util/SparseSetArray;

    invoke-virtual {v3}, Landroid/util/SparseSetArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_36

    .line 1910
    const-string v3, "User "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1911
    iget-object v3, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSpecialApps:Landroid/util/SparseSetArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1912
    const-string v3, ": "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1913
    iget-object v3, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSpecialApps:Landroid/util/SparseSetArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseSetArray;->valuesAt(I)Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :catchall_34
    move-exception p0

    goto :goto_78

    .line 1916
    :cond_36
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1917
    const-string v2, "Carrier privileged packages:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1918
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1919
    :goto_41
    iget-object v2, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedApps:Landroid/util/SparseSetArray;

    invoke-virtual {v2}, Landroid/util/SparseSetArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_63

    .line 1920
    iget-object v2, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedApps:Landroid/util/SparseSetArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1921
    const-string v2, ": "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1922
    iget-object v2, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedApps:Landroid/util/SparseSetArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseSetArray;->valuesAt(I)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 1924
    :cond_63
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1926
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1927
    const-string v1, "Power allowlisted packages: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1928
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mPowerAllowlistedApps:Landroid/util/ArraySet;

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1929
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_d .. :try_end_74} :catchall_34

    .line 1931
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    .line 1929
    :goto_78
    :try_start_78
    monitor-exit v0
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_34

    throw p0
.end method

.method public isSpecialApp(ILjava/lang/String;)Z
    .registers 6

    .line 1670
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSatLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1671
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSpecialApps:Landroid/util/SparseSetArray;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, p2}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_11

    .line 1672
    monitor-exit v0

    return v2

    :catchall_f
    move-exception p0

    goto :goto_1e

    .line 1674
    :cond_11
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSpecialApps:Landroid/util/SparseSetArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    .line 1675
    monitor-exit v0

    return v2

    .line 1677
    :cond_1b
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_f

    throw p0
.end method

.method public final isSpecialAppInternal(ILjava/lang/String;)Z
    .registers 7

    .line 1682
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSatLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1683
    :try_start_3
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mPowerAllowlistedApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    .line 1684
    monitor-exit p1

    return v1

    :catchall_e
    move-exception p0

    goto :goto_2d

    .line 1686
    :cond_10
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedApps:Landroid/util/SparseSetArray;

    invoke-virtual {v0}, Landroid/util/SparseSetArray;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_17
    if-ltz v0, :cond_2a

    .line 1687
    iget-object v2, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedApps:Landroid/util/SparseSetArray;

    .line 1688
    invoke-virtual {v2, v0}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v3

    .line 1687
    invoke-virtual {v2, v3, p2}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1689
    monitor-exit p1

    return v1

    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 1692
    :cond_2a
    monitor-exit p1

    const/4 p0, 0x0

    return p0

    :goto_2d
    monitor-exit p1
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_e

    throw p0
.end method

.method public final onAppRemoved(ILjava/lang/String;)V
    .registers 4

    .line 1697
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSatLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1701
    :try_start_3
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSpecialApps:Landroid/util/SparseSetArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    .line 1702
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final onSystemServicesReady()V
    .registers 4

    .line 1706
    const-class v0, Lcom/android/server/DeviceIdleInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceIdleInternal;

    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mDeviceIdleInternal:Lcom/android/server/DeviceIdleInternal;

    .line 1707
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1709
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1710
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {v1}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fgetmFlexibilityEnabled(Lcom/android/server/job/controllers/FlexibilityController;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 1711
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {v1}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fgetmHandler(Lcom/android/server/job/controllers/FlexibilityController;)Lcom/android/server/job/controllers/FlexibilityController$FcHandler;

    move-result-object v1

    new-instance v2, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1713
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {v1}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fgetmHandler(Lcom/android/server/job/controllers/FlexibilityController;)Lcom/android/server/job/controllers/FlexibilityController$FcHandler;

    move-result-object v1

    new-instance v2, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_44

    :catchall_42
    move-exception p0

    goto :goto_46

    .line 1715
    :cond_44
    :goto_44
    monitor-exit v0

    return-void

    :goto_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_1d .. :try_end_47} :catchall_42

    throw p0
.end method

.method public final onUserRemoved(I)V
    .registers 3

    .line 1719
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSatLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1720
    :try_start_3
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSpecialApps:Landroid/util/SparseSetArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseSetArray;->remove(I)V

    .line 1721
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final startTracking()V
    .registers 4

    .line 1725
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1728
    iget-boolean v1, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mHasFeatureTelephonySubscription:Z

    if-eqz v1, :cond_13

    .line 1729
    const-string v1, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1731
    invoke-virtual {p0}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->updateCarrierPrivilegedCallbackRegistration()V

    .line 1734
    :cond_13
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object v1, v1, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1736
    invoke-virtual {p0}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->updatePowerAllowlistCache()V

    return-void
.end method

.method public final stopTracking()V
    .registers 5

    .line 1740
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1742
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSatLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1743
    :try_start_c
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedApps:Landroid/util/SparseSetArray;

    invoke-virtual {v1}, Landroid/util/SparseSetArray;->clear()V

    .line 1744
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mPowerAllowlistedApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 1745
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSpecialApps:Landroid/util/SparseSetArray;

    invoke-virtual {v1}, Landroid/util/SparseSetArray;->clear()V

    .line 1747
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_23
    if-ltz v1, :cond_37

    .line 1748
    iget-object v2, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedCallbacks:Landroid/util/SparseArray;

    .line 1749
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;

    .line 1748
    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->unregisterCarrierPrivilegesCallback(Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_23

    :catchall_35
    move-exception p0

    goto :goto_3e

    .line 1751
    :cond_37
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 1752
    monitor-exit v0

    return-void

    :goto_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_c .. :try_end_3f} :catchall_35

    throw p0
.end method

.method public final updateCarrierPrivilegedCallbackRegistration()V
    .registers 9

    .line 1756
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_5

    goto :goto_9

    .line 1759
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mHasFeatureTelephonySubscription:Z

    if-nez v1, :cond_a

    :goto_9
    return-void

    .line 1763
    :cond_a
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSlotMapping()Ljava/util/Collection;

    move-result-object v0

    .line 1764
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1765
    iget-object v2, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSatLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1766
    :try_start_16
    new-instance v3, Landroid/util/IntArray;

    invoke-direct {v3}, Landroid/util/IntArray;-><init>()V

    .line 1767
    iget-object v4, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_23
    if-ltz v4, :cond_34

    .line 1768
    iget-object v5, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/util/IntArray;->add(I)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_23

    :catchall_31
    move-exception p0

    goto/16 :goto_ae

    .line 1770
    :cond_34
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_38
    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_79

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/UiccSlotMapping;

    .line 1771
    invoke-virtual {v4}, Landroid/telephony/UiccSlotMapping;->getLogicalSlotIndex()I

    move-result v4

    .line 1772
    iget-object v5, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->contains(I)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 1774
    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_56
    if-ltz v5, :cond_38

    .line 1775
    invoke-virtual {v3, v5}, Landroid/util/IntArray;->get(I)I

    move-result v6

    if-ne v6, v4, :cond_62

    .line 1776
    invoke-virtual {v3, v5}, Landroid/util/IntArray;->remove(I)V

    goto :goto_38

    :cond_62
    add-int/lit8 v5, v5, -0x1

    goto :goto_56

    .line 1783
    :cond_65
    new-instance v5, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$LogicalIndexCarrierPrivilegesCallback;

    invoke-direct {v5, p0, v4}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$LogicalIndexCarrierPrivilegesCallback;-><init>(Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;I)V

    .line 1785
    iget-object v6, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1788
    iget-object v6, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1789
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v7

    .line 1788
    invoke-virtual {v6, v4, v7, v5}, Landroid/telephony/TelephonyManager;->registerCarrierPrivilegesCallback(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V

    goto :goto_38

    .line 1792
    :cond_79
    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_7f
    if-ltz v0, :cond_a8

    .line 1793
    invoke-virtual {v3, v0}, Landroid/util/IntArray;->get(I)I

    move-result v4

    .line 1794
    iget-object v5, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedCallbacks:Landroid/util/SparseArray;

    .line 1795
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$LogicalIndexCarrierPrivilegesCallback;

    .line 1796
    iget-object v6, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6, v5}, Landroid/telephony/TelephonyManager;->unregisterCarrierPrivilegesCallback(Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V

    .line 1797
    iget-object v5, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 1798
    iget-object v5, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedApps:Landroid/util/SparseSetArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 1799
    iget-object v5, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedApps:Landroid/util/SparseSetArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseSetArray;->remove(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_7f

    .line 1801
    :cond_a8
    monitor-exit v2
    :try_end_a9
    .catchall {:try_start_16 .. :try_end_a9} :catchall_31

    const/4 v0, -0x1

    .line 1803
    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->updateSpecialAppSetUnlocked(ILandroid/util/ArraySet;)V

    return-void

    .line 1801
    :goto_ae
    :try_start_ae
    monitor-exit v2
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_31

    throw p0
.end method

.method public final updatePowerAllowlistCache()V
    .registers 8

    .line 1844
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mDeviceIdleInternal:Lcom/android/server/DeviceIdleInternal;

    if-nez v0, :cond_5

    return-void

    .line 1849
    :cond_5
    invoke-interface {v0}, Lcom/android/server/DeviceIdleInternal;->getFullPowerWhitelistExceptIdle()[Ljava/lang/String;

    move-result-object v0

    .line 1850
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1851
    iget-object v2, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSatLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1852
    :try_start_11
    iget-object v3, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mPowerAllowlistedApps:Landroid/util/ArraySet;

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 1853
    iget-object v3, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mPowerAllowlistedApps:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    .line 1854
    array-length v3, v0

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v3, :cond_35

    aget-object v5, v0, v4

    .line 1855
    iget-object v6, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mPowerAllowlistedApps:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1856
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_32

    .line 1859
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_32

    :catchall_30
    move-exception p0

    goto :goto_3b

    :cond_32
    :goto_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 1862
    :cond_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_11 .. :try_end_36} :catchall_30

    const/4 v0, -0x1

    .line 1865
    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->updateSpecialAppSetUnlocked(ILandroid/util/ArraySet;)V

    return-void

    .line 1862
    :goto_3b
    :try_start_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_30

    throw p0
.end method

.method public final updateSpecialAppSetUnlocked(ILandroid/util/ArraySet;)V
    .registers 8

    .line 1814
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSatLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    .line 1817
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_6b

    .line 1820
    :cond_f
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1822
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSatLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1823
    :try_start_17
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1d
    if-ltz v2, :cond_47

    .line 1824
    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1825
    invoke-virtual {p0, p1, v3}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->isSpecialAppInternal(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 1826
    iget-object v4, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSpecialApps:Landroid/util/SparseSetArray;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 1827
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_44

    :catchall_37
    move-exception p0

    goto :goto_6c

    .line 1829
    :cond_39
    iget-object v4, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSpecialApps:Landroid/util/SparseSetArray;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 1830
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_44
    :goto_44
    add-int/lit8 v2, v2, -0x1

    goto :goto_1d

    .line 1833
    :cond_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_17 .. :try_end_48} :catchall_37

    .line 1835
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-lez p1, :cond_6b

    .line 1836
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object p1, p1, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1837
    :try_start_53
    iget-object p2, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {p2}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fgetmPackagesToCheck(Lcom/android/server/job/controllers/FlexibilityController;)Landroid/util/ArraySet;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 1838
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {p0}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fgetmHandler(Lcom/android/server/job/controllers/FlexibilityController;)Lcom/android/server/job/controllers/FlexibilityController$FcHandler;

    move-result-object p0

    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1839
    monitor-exit p1

    return-void

    :catchall_68
    move-exception p0

    monitor-exit p1
    :try_end_6a
    .catchall {:try_start_53 .. :try_end_6a} :catchall_68

    throw p0

    :cond_6b
    :goto_6b
    return-void

    .line 1833
    :goto_6c
    :try_start_6c
    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_37

    throw p0

    .line 1815
    :cond_6e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must never hold local mSatLock"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
