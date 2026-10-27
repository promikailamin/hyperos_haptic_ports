.class public Lcom/android/server/appop/AppOpsService;
.super Lcom/android/internal/app/IAppOpsService$Stub;
.source "AppOpsService.java"


# static fields
.field public static final NON_PACKAGE_UIDS:[I

.field public static final OPS_RESTRICTED_ON_SUSPEND:[I

.field public static final RATE_LIMITER_WINDOW:Ljava/time/Duration;


# instance fields
.field public final dpmi:Landroid/app/admin/DevicePolicyManagerInternal;

.field public mAcceptableLeftDistance:I

.field public final mActiveWatchers:Landroid/util/ArrayMap;

.field mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

.field public final mAppOpsManagerInternal:Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;

.field mAppOpsRestrictions:Lcom/android/server/appop/AppOpsRestrictions;

.field public final mAsyncOpWatchers:Landroid/util/ArrayMap;

.field public final mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

.field public volatile mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

.field public mCollectedRuntimePermissionMessage:Landroid/app/RuntimeAppOpAccessMessage;

.field final mConstants:Lcom/android/server/appop/AppOpsService$Constants;

.field public final mContext:Landroid/content/Context;

.field public mFastWriteScheduled:Z

.field public final mHandler:Landroid/os/Handler;

.field public volatile mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

.field public mIgnoredCallback:Lcom/android/internal/app/IAppOpsCallback;

.field public final mInProgressStartOpEventPool:Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;

.field public final mKnownDeviceIds:Landroid/util/SparseArray;

.field public mMessagesCollectedCount:F

.field public final mModeWatchers:Landroid/util/ArrayMap;

.field public final mNoteOpCallerStacktraces:Landroid/util/ArraySet;

.field public final mNoteOpCallerStacktracesFile:Ljava/io/File;

.field public final mNotedWatchers:Landroid/util/ArrayMap;

.field public mOnPackageUpdatedReceiver:Landroid/content/BroadcastReceiver;

.field public final mOpEventProxyInfoPool:Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;

.field public final mOpGlobalRestrictions:Landroid/util/ArrayMap;

.field public final mOpModeWatchers:Landroid/util/SparseArray;

.field public final mOpUserRestrictions:Landroid/util/ArrayMap;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public mPackageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

.field public final mPackageModeWatchers:Landroid/util/ArrayMap;

.field public final mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

.field public mProfileOwners:Landroid/util/SparseIntArray;

.field public mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

.field public mRarelyUsedPackages:Landroid/util/ArraySet;

.field public mRarelyUsedPackagesInitialized:Z

.field public final mRateLimiter:Lcom/android/server/selinux/RateLimiter;

.field public final mRecentAccessPersistence:Lcom/android/server/appop/AppOpsRecentAccessPersistence;

.field public final mRecentAccessesFile:Landroid/util/AtomicFile;

.field public mSampledAppOpCode:I

.field public mSampledPackage:Ljava/lang/String;

.field public mSamplingStrategy:I

.field public mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

.field public final mStartedWatchers:Landroid/util/ArrayMap;

.field public final mSwitchedOps:Landroid/util/SparseArray;

.field public mUidStateTracker:Lcom/android/server/appop/AppOpsUidStateTracker;

.field final mUidStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/appop/AppOpsService$UidState;",
            ">;"
        }
    .end annotation
.end field

.field public final mUnforwardedAsyncNotedOps:Landroid/util/ArrayMap;

.field public mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

.field public final mWriteRunner:Ljava/lang/Runnable;

.field public mWriteScheduled:Z


# direct methods
.method public static synthetic $r8$lambda$4QeldWBMj6YlbZhhSHdkBipazyw(Landroid/util/SparseLongArray;Lcom/android/server/appop/AttributedOp;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;)V
    .registers 8

    .line 1659
    invoke-virtual {p2}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v0

    const-wide v1, 0x7fffffffffffffffL

    .line 1662
    invoke-virtual {p0, v0, v1, v2}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v1

    const/4 p0, -0x1

    if-eq v0, p0, :cond_1f

    .line 1664
    invoke-virtual {p2}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getStartTime()J

    move-result-wide v3

    cmp-long p0, v3, v1

    if-ltz p0, :cond_1f

    .line 1665
    invoke-virtual {p2}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getClientId()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/appop/AttributedOp;->finished(Landroid/os/IBinder;)V

    :cond_1f
    return-void
.end method

.method public static synthetic $r8$lambda$6UFdJMlVEdApX-_k1ZXaih_y7hc(Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;)Z
    .registers 3

    .line 4496
    invoke-virtual {p1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getClientId()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p0, :cond_10

    .line 4497
    invoke-virtual {p1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$6k_N9hZ8kvjX_OAIx8qy1xpZV_s(Lcom/android/server/appop/AppOpsService;Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->lambda$getUidStateTracker$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$71LMZ7JKcTz2Del8VraOPLH95C8(Landroid/os/RemoteCallback;)V
    .registers 2

    .line 1989
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8-LvphSu5hQo1Pm8R22O3seI00E(Lcom/android/server/appop/AppOpsService;Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;Landroid/os/RemoteCallbackList;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;Ljava/lang/Object;)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->lambda$startWatchingAsyncNoted$8(Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;Landroid/os/RemoteCallbackList;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$88KncsbhH2kd-HDYOv6wbK3as_E(Lcom/android/server/appop/AppOpsService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->lambda$new$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Cs6vN-igHXngWbyuQPObjqfNiNg(Landroid/util/SparseLongArray;Lcom/android/server/appop/AttributedOp;)V
    .registers 3

    .line 1658
    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0, p1}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda24;-><init>(Landroid/util/SparseLongArray;Lcom/android/server/appop/AttributedOp;)V

    invoke-virtual {p1, v0}, Lcom/android/server/appop/AttributedOp;->doForAllInProgressStartOpEvents(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H_OtNgiiXWUlQZA6FKtIStkV4xE(Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;)Z
    .registers 3

    .line 4509
    invoke-virtual {p1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getClientId()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p0, :cond_10

    .line 4510
    invoke-virtual {p1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$KZ8csPYjnHRgqtsqPZIdzSZk2M0(Lcom/android/server/appop/AppOpsService;IZI)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/appop/AppOpsService;->updateStartedOpModeForUserForDefaultDevice(IZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$V27VMlXcq0A5RHEdccFS2jyDRxk(Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;)Z
    .registers 3

    .line 4479
    invoke-virtual {p1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getClientId()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p0, :cond_10

    .line 4480
    invoke-virtual {p1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x10

    if-nez p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$_3mKgx97gA3YgX5RtEESYaD_JvY(Lcom/android/server/appop/AppOpsService;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->notifyWatchersOnDefaultDevice(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$dY2bz9MdZpnfSsD9a6i_blsrnnU(Lcom/android/server/appop/AppOpsService;)Ljava/util/List;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getPackageListAndResample()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gTPk1MOGd-_YuXFccxYAVQp0m20(Landroid/util/SparseLongArray;Lcom/android/server/appop/AttributedOp;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;)V
    .registers 8

    if-nez p2, :cond_3

    return-void

    .line 1638
    :cond_3
    invoke-virtual {p2}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_22

    const-wide v1, 0x7fffffffffffffffL

    .line 1641
    invoke-virtual {p0, v0, v1, v2}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v1

    .line 1642
    invoke-virtual {p2}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getStartTime()J

    move-result-wide v3

    cmp-long v1, v3, v1

    if-gez v1, :cond_22

    .line 1645
    invoke-virtual {p2}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getStartTime()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1648
    :cond_22
    invoke-virtual {p2}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getClientId()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/appop/AttributedOp;->finished(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$goph2rcKC3ZkblAuNqSuM_8dDAo(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;IIIIII)V
    .registers 12

    .line 0
    invoke-virtual/range {p0 .. p11}, Lcom/android/server/appop/AppOpsService;->notifyOpStarted(Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;IIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$iBEgFaVmWH6RsWQk8E__bKKARGk(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ivy8byvsjd3SaSvT4UqsaMoeNyY(Lcom/android/server/appop/AppOpsService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->lambda$removeUser$12(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$laMlKOOi6dw8cUrr4g6FMdAeID8(Landroid/app/AsyncNotedAppOp;[ZILjava/lang/String;ILjava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V
    .registers 7

    .line 3741
    :try_start_0
    invoke-interface {p6, p0}, Lcom/android/internal/app/IAppOpsAsyncNotedCallback;->opNoted(Landroid/app/AsyncNotedAppOp;)V

    const/4 p0, 0x0

    const/4 p6, 0x1

    .line 3742
    aput-boolean p6, p1, p0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 3744
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Could not forward noteOp of "

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppOps"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static synthetic $r8$lambda$mwzhma31ieiNEIMs5kEanG9uYik(Landroid/util/SparseLongArray;Lcom/android/server/appop/AttributedOp;)V
    .registers 3

    .line 1634
    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0, p1}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda22;-><init>(Landroid/util/SparseLongArray;Lcom/android/server/appop/AttributedOp;)V

    invoke-virtual {p1, v0}, Lcom/android/server/appop/AttributedOp;->doForAllInProgressStartOpEvents(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tCrK7GHyC4CL9PmON8WCNADuzSQ(Lcom/android/server/appop/AppOpsService;IIZLjava/lang/String;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->notifyOpChangedForAllPkgsInUid(IIZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uCCOXFJxz3bCZJrsIAuF17lDZks(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;III)V
    .registers 9

    .line 0
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/appop/AppOpsService;->notifyOpChecked(Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;III)V

    return-void
.end method

.method public static synthetic $r8$lambda$vGfeEw9xZxujs2PjNSTjusJ_yRE(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;IZII)V
    .registers 10

    .line 0
    invoke-virtual/range {p0 .. p9}, Lcom/android/server/appop/AppOpsService;->notifyOpActiveChanged(Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;IZII)V

    return-void
.end method

.method public static synthetic $r8$lambda$xAhQeGPgXGiSjmtMzzdf_avZ1GE(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/OnOpModeChangedListener;IILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Lcom/android/server/appop/OnOpModeChangedListener;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmOpGlobalRestrictions(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArrayMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mOpGlobalRestrictions:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOpModeWatchers(Lcom/android/server/appop/AppOpsService;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOpUserRestrictions(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArrayMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUidStateTracker(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/appop/AppOpsUidStateTracker;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mUidStateTracker:Lcom/android/server/appop/AppOpsUidStateTracker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVirtualDeviceManagerInternal(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcheckAudioOperationImpl(Lcom/android/server/appop/AppOpsService;IIILjava/lang/String;)I
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->checkAudioOperationImpl(IIILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcheckOperationImpl(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;IZ)I
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/appop/AppOpsService;->checkOperationImpl(IILjava/lang/String;Ljava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mfinishOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/appop/AppOpsService;->finishOperationImpl(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfinishProxyOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)Ljava/lang/Void;
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->finishProxyOperationImpl(Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetPackageListAndResample(Lcom/android/server/appop/AppOpsService;)Ljava/util/List;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getPackageListAndResample()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetUidStateTracker(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/appop/AppOpsUidStateTracker;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getUidStateTracker()Lcom/android/server/appop/AppOpsUidStateTracker;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetUserManagerInternal(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/pm/UserManagerInternal;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$minitializeRarelyUsedPackagesListSQLite(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->initializeRarelyUsedPackagesListSQLite(Landroid/util/ArraySet;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minitializeUserUidStates(Lcom/android/server/appop/AppOpsService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->initializeUserUidStates(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnoteOperationImpl(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZI)Landroid/app/SyncNotedAppOp;
    .registers 10

    .line 0
    invoke-virtual/range {p0 .. p9}, Lcom/android/server/appop/AppOpsService;->noteOperationImpl(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZI)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mnoteProxyOperationImpl(Lcom/android/server/appop/AppOpsService;ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/appop/AppOpsService;->noteProxyOperationImpl(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mnotifyOpChanged(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyOpChangedForAllPkgsInUid(Lcom/android/server/appop/AppOpsService;IIZLjava/lang/String;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->notifyOpChangedForAllPkgsInUid(IIZLjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyOpChangedForPkg(Lcom/android/server/appop/AppOpsService;Ljava/lang/String;III)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->notifyOpChangedForPkg(Ljava/lang/String;III)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyWatchersOnDefaultDevice(Lcom/android/server/appop/AppOpsService;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->notifyWatchersOnDefaultDevice(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monPackageAdded(Lcom/android/server/appop/AppOpsService;Ljava/lang/String;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->onPackageAdded(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monPackageRemoved(Lcom/android/server/appop/AppOpsService;Ljava/lang/String;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->onPackageRemoved(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monPackageReplaced(Lcom/android/server/appop/AppOpsService;Ljava/lang/String;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->onPackageReplaced(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUidProcessDeath(Lcom/android/server/appop/AppOpsService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->onUidProcessDeath(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUidStateChanged(Lcom/android/server/appop/AppOpsService;IIZ)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/appop/AppOpsService;->onUidStateChanged(IIZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetUidMode(Lcom/android/server/appop/AppOpsService;IIILcom/android/internal/app/IAppOpsCallback;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->setUidMode(IIILcom/android/internal/app/IAppOpsCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;
    .registers 13

    .line 0
    invoke-virtual/range {p0 .. p12}, Lcom/android/server/appop/AppOpsService;->startOperationImpl(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mstartProxyOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;
    .registers 12

    .line 0
    invoke-virtual/range {p0 .. p11}, Lcom/android/server/appop/AppOpsService;->startProxyOperationImpl(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateAppWidgetVisibility(Lcom/android/server/appop/AppOpsService;Landroid/util/SparseArray;Z)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->updateAppWidgetVisibility(Landroid/util/SparseArray;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateStartedOpModeForUserForDefaultDevice(Lcom/android/server/appop/AppOpsService;IZI)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/appop/AppOpsService;->updateStartedOpModeForUserForDefaultDevice(IZI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetOPS_RESTRICTED_ON_SUSPEND()[I
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/appop/AppOpsService;->OPS_RESTRICTED_ON_SUSPEND:[I

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smresolveNonAppUid(Ljava/lang/String;)I
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/appop/AppOpsService;->resolveNonAppUid(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x3

    const/16 v1, 0x8d

    const/16 v2, 0x1c

    const/16 v3, 0x1b

    const/16 v4, 0x1a

    .line 259
    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/appop/AppOpsService;->OPS_RESTRICTED_ON_SUSPEND:[I

    const/4 v0, 0x7

    .line 272
    new-array v0, v0, [I

    fill-array-data v0, :array_20

    sput-object v0, Lcom/android/server/appop/AppOpsService;->NON_PACKAGE_UIDS:[I

    const-wide/16 v0, 0xa

    .line 372
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/appop/AppOpsService;->RATE_LIMITER_WINDOW:Ljava/time/Duration;

    return-void

    :array_20
    .array-data 4
        0x0
        0x3e9
        0x3ea
        0x411
        0x403
        0x431
        0x7d0
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .registers 6

    .line 1012
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "appops_accesses.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/appop/AppOpsService;-><init>(Ljava/io/File;Landroid/os/Handler;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroid/os/Handler;Landroid/content/Context;)V
    .registers 10

    .line 1017
    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsService$Stub;-><init>()V

    .line 236
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mNoteOpCallerStacktraces:Landroid/util/ArraySet;

    .line 292
    new-instance v0, Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpEventProxyInfoPool:Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;

    .line 300
    new-instance v2, Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;

    invoke-direct {v2, v0, v1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;-><init>(Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;I)V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mInProgressStartOpEventPool:Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;

    .line 305
    new-instance v0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService-IA;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsManagerInternal:Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;

    .line 307
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 308
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->dpmi:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 312
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mKnownDeviceIds:Landroid/util/SparseArray;

    .line 314
    const-string/jumbo v2, "platform_compat"

    .line 315
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 314
    invoke-static {v2}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 326
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    .line 338
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mUnforwardedAsyncNotedOps:Landroid/util/ArrayMap;

    .line 342
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 344
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 351
    new-instance v2, Lcom/android/server/appop/AppOpsService$1;

    invoke-direct {v2, p0}, Lcom/android/server/appop/AppOpsService$1;-><init>(Lcom/android/server/appop/AppOpsService;)V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    .line 367
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 373
    new-instance v2, Lcom/android/server/selinux/RateLimiter;

    sget-object v3, Lcom/android/server/appop/AppOpsService;->RATE_LIMITER_WINDOW:Ljava/time/Duration;

    invoke-direct {v2, v3}, Lcom/android/server/selinux/RateLimiter;-><init>(Ljava/time/Duration;)V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mRateLimiter:Lcom/android/server/selinux/RateLimiter;

    .line 380
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    .line 386
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mOpGlobalRestrictions:Landroid/util/ArrayMap;

    .line 391
    new-instance v2, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-direct {v2, p0, v1, v1}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    .line 398
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mSwitchedOps:Landroid/util/SparseArray;

    .line 401
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mSampledPackage:Ljava/lang/String;

    const/4 v2, -0x1

    .line 405
    iput v2, p0, Lcom/android/server/appop/AppOpsService;->mSampledAppOpCode:I

    const/4 v2, 0x0

    .line 409
    iput v2, p0, Lcom/android/server/appop/AppOpsService;->mAcceptableLeftDistance:I

    .line 417
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackages:Landroid/util/ArraySet;

    .line 451
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mIgnoredCallback:Lcom/android/internal/app/IAppOpsCallback;

    .line 770
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    .line 771
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 772
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    .line 773
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    .line 774
    new-instance v3, Lcom/android/server/appop/AudioRestrictionManager;

    invoke-direct {v3}, Lcom/android/server/appop/AudioRestrictionManager;-><init>()V

    iput-object v3, p0, Lcom/android/server/appop/AppOpsService;->mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

    .line 1088
    new-instance v3, Lcom/android/server/appop/AppOpsService$4;

    invoke-direct {v3, p0}, Lcom/android/server/appop/AppOpsService$4;-><init>(Lcom/android/server/appop/AppOpsService;)V

    iput-object v3, p0, Lcom/android/server/appop/AppOpsService;->mOnPackageUpdatedReceiver:Landroid/content/BroadcastReceiver;

    .line 1018
    iput-object p3, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 1019
    const-string v3, "default:0"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v0, v2

    :goto_d1
    const/16 v3, 0xaa

    if-ge v0, v3, :cond_eb

    .line 1022
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v3

    .line 1023
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mSwitchedOps:Landroid/util/SparseArray;

    .line 1024
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    invoke-static {v5, v0}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v5

    .line 1023
    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d1

    .line 1026
    :cond_eb
    const-class v0, Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 1028
    new-instance v3, Lcom/android/server/appop/AppOpsService$3;

    invoke-direct {v3, p0}, Lcom/android/server/appop/AppOpsService$3;-><init>(Lcom/android/server/appop/AppOpsService;)V

    invoke-interface {v0, v3}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->addAppOpsModeChangedListener(Lcom/android/server/appop/AppOpsCheckingServiceInterface$AppOpsModeChangedListener;)Z

    .line 1049
    new-instance v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;

    new-instance v3, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/appop/AppOpsService;)V

    invoke-direct {v0, p3, p2, v3}, Lcom/android/server/appop/AppOpsRestrictionsImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/appop/AppOpsRestrictions$AppOpsRestrictionRemovedListener;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsRestrictions:Lcom/android/server/appop/AppOpsRestrictions;

    .line 1052
    invoke-static {p0, v2}, Lcom/android/server/LockGuard;->installLock(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 1053
    new-instance v0, Landroid/util/AtomicFile;

    const-string v2, "appops_accesses"

    invoke-direct {v0, p1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mRecentAccessesFile:Landroid/util/AtomicFile;

    .line 1054
    new-instance p1, Lcom/android/server/appop/AppOpsRecentAccessPersistence;

    invoke-direct {p1, v0, p0}, Lcom/android/server/appop/AppOpsRecentAccessPersistence;-><init>(Landroid/util/AtomicFile;Lcom/android/server/appop/AppOpsService;)V

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService;->mRecentAccessPersistence:Lcom/android/server/appop/AppOpsRecentAccessPersistence;

    .line 1061
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mNoteOpCallerStacktracesFile:Ljava/io/File;

    .line 1063
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 1064
    new-instance p1, Lcom/android/server/appop/AppOpsService$Constants;

    invoke-direct {p1, p0, p2}, Lcom/android/server/appop/AppOpsService$Constants;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    .line 1066
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->readRecentAccesses()V

    .line 1067
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p1}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->readState()V

    .line 1071
    invoke-static {}, Landroid/app/AppOpsManager;->invalidateAppOpModeCache()V

    .line 1072
    invoke-static {}, Landroid/app/AppOpsManager;->disableAppOpModeCache()V

    .line 1075
    new-instance p1, Lcom/android/server/appop/HistoricalRegistry;

    invoke-direct {p1, p3}, Lcom/android/server/appop/HistoricalRegistry;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    return-void
.end method

.method public static addCallbacks(Ljava/util/HashMap;IILjava/lang/String;ILandroid/util/ArraySet;)Ljava/util/HashMap;
    .registers 11

    if-nez p5, :cond_3

    return-object p0

    :cond_3
    if-nez p0, :cond_a

    .line 2600
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 2602
    :cond_a
    invoke-virtual {p5}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_29

    .line 2604
    invoke-virtual {p5, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/OnOpModeChangedListener;

    .line 2605
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 2606
    invoke-static {v3, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->addChange(Ljava/util/ArrayList;IILjava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    if-eq v4, v3, :cond_26

    .line 2608
    invoke-virtual {p0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_29
    return-object p0
.end method

.method public static addChange(Ljava/util/ArrayList;IILjava/lang/String;I)Ljava/util/ArrayList;
    .registers 10

    const/4 v0, 0x0

    if-nez p0, :cond_9

    .line 2574
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_27

    .line 2576
    :cond_9
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :goto_e
    if-ge v2, v1, :cond_27

    .line 2578
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$ChangeRec;

    .line 2579
    iget v4, v3, Lcom/android/server/appop/AppOpsService$ChangeRec;->op:I

    if-ne v4, p1, :cond_24

    iget-object v3, v3, Lcom/android/server/appop/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    invoke-virtual {v3, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    const/4 v0, 0x1

    goto :goto_27

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_27
    :goto_27
    if-nez v0, :cond_31

    .line 2586
    new-instance v0, Lcom/android/server/appop/AppOpsService$ChangeRec;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService$ChangeRec;-><init>(IILjava/lang/String;I)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    return-object p0
.end method

.method public static dumpCommandHelp(Ljava/io/PrintWriter;)V
    .registers 2

    .line 5894
    const-string v0, "AppOps service (appops) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5895
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5896
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5897
    const-string v0, "  start [--user <USER_ID>] [--attribution <ATTRIBUTION_TAG>] <PACKAGE | UID> <OP> "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5899
    const-string v0, "    Starts a given operation for a particular application."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5900
    const-string v0, "  stop [--user <USER_ID>] [--attribution <ATTRIBUTION_TAG>] <PACKAGE | UID> <OP> "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5902
    const-string v0, "    Stops a given operation for a particular application."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5903
    const-string v0, "  set [--user <USER_ID>] <[--uid] PACKAGE | UID> <OP> <MODE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5904
    const-string v0, "    Set the mode for a particular application and operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5905
    const-string v0, "  get [--user <USER_ID>] [--attribution <ATTRIBUTION_TAG>] <PACKAGE | UID> [<OP>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5907
    const-string v0, "    Return the mode for a particular application and optional operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5908
    const-string v0, "  query-op [--user <USER_ID>] <OP> [<MODE>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5909
    const-string v0, "    Print all packages that currently have the given op in the given mode."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5910
    const-string v0, "  reset [--user <USER_ID>] [<PACKAGE>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5911
    const-string v0, "    Reset the given application or all applications to default modes."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5912
    const-string v0, "  write-settings"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5913
    const-string v0, "    Immediately write pending changes to storage."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5914
    const-string v0, "  read-settings"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5915
    const-string v0, "    Read the last written settings, replacing current state in RAM."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5916
    const-string v0, "  options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5917
    const-string v0, "    <PACKAGE> an Android package name or its UID if prefixed by --uid"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5918
    const-string v0, "    <OP>      an AppOps operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5919
    const-string v0, "    <MODE>    one of allow, ignore, deny, or default"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5920
    const-string v0, "    <USER_ID> the user id under which the package is installed. If --user is"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5921
    const-string v0, "              not specified, the current user is assumed."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static getOpEntryForResult(Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)Landroid/app/AppOpsManager$OpEntry;
    .registers 2

    .line 1826
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService$Op;->createEntryLocked(Ljava/lang/String;)Landroid/app/AppOpsManager$OpEntry;

    move-result-object p0

    return-object p0
.end method

.method public static getPackagesForUid(I)[Ljava/lang/String;
    .registers 2

    .line 7547
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 7549
    :try_start_6
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    goto :goto_10

    :catch_f
    :cond_f
    const/4 p0, 0x0

    :goto_10
    if-nez p0, :cond_14

    .line 7555
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :cond_14
    return-object p0
.end method

.method public static isOpAllowedForUid(I)Z
    .registers 2

    .line 2936
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    if-eqz p0, :cond_d

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public static onClientDeath(Lcom/android/server/appop/AttributedOp;Landroid/os/IBinder;)V
    .registers 2

    .line 984
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AttributedOp;->onClientDeath(Landroid/os/IBinder;)V

    return-void
.end method

.method public static onShellCommand(Lcom/android/server/appop/AppOpsService$Shell;Ljava/lang/String;)I
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_b

    .line 5926
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 5928
    :cond_b
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 5929
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const/4 v4, -0x1

    .line 5931
    :try_start_14
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    sparse-switch v5, :sswitch_data_426

    goto/16 :goto_40b

    :sswitch_20
    const-string/jumbo v3, "read-settings"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40b

    .line 6144
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 6145
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 6144
    invoke-virtual {v1, v3, v5, v4}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 6146
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_3a} :catch_4f

    .line 6148
    :try_start_3a
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService;->readRecentAccesses()V

    .line 6149
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {v0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->readState()V

    .line 6150
    const-string v0, "Last settings read."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_3a .. :try_end_4b} :catchall_52

    .line 6152
    :try_start_4b
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v8

    :catch_4f
    move-exception v0

    goto/16 :goto_410

    :catchall_52
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6153
    throw v0

    .line 5931
    :sswitch_57
    const-string/jumbo v5, "start"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40b

    .line 6171
    invoke-virtual {v0, v7, v3}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v1

    if-gez v1, :cond_67

    return v1

    .line 6176
    :cond_67
    iget-object v13, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v13, :cond_84

    .line 6177
    iget-object v9, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget-object v10, v0, Lcom/android/server/appop/AppOpsService$Shell;->mToken:Landroid/os/IBinder;

    iget v11, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    iget v12, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    iget-object v14, v0, Lcom/android/server/appop/AppOpsService$Shell;->attributionTag:Ljava/lang/String;

    const-string v17, "appops start shell command"

    const/16 v19, 0x1

    const/16 v20, -0x1

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v18, 0x1

    invoke-interface/range {v9 .. v20}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    return v8

    :cond_84
    return v4

    .line 5931
    :sswitch_85
    const-string/jumbo v5, "reset"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40b

    const/4 v1, -0x2

    move v5, v1

    .line 6093
    :goto_90
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_c0

    .line 6094
    const-string v9, "--user"

    invoke-virtual {v9, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a7

    .line 6095
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    .line 6096
    invoke-static {v5}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v5

    goto :goto_90

    :cond_a7
    if-nez v6, :cond_ab

    move-object v6, v7

    goto :goto_90

    .line 6101
    :cond_ab
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unsupported argument: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_c0
    if-ne v5, v1, :cond_c6

    .line 6108
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 6111
    :cond_c6
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, v5, v6}, Lcom/android/internal/app/IAppOpsService;->resetAllModes(ILjava/lang/String;)V

    .line 6112
    const-string v0, "Reset all modes for: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-ne v5, v4, :cond_d8

    .line 6114
    const-string v0, "all users"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_e1

    .line 6116
    :cond_d8
    const-string/jumbo v0, "user "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 6118
    :goto_e1
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez v6, :cond_ee

    .line 6120
    const-string v0, "all packages"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f7

    .line 6122
    :cond_ee
    const-string/jumbo v0, "package "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_f7
    return v8

    .line 5931
    :sswitch_f8
    const-string/jumbo v5, "stop"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40b

    .line 6187
    invoke-virtual {v0, v7, v3}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v1

    if-gez v1, :cond_108

    return v1

    .line 6192
    :cond_108
    iget-object v13, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v13, :cond_11a

    .line 6193
    iget-object v9, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget-object v10, v0, Lcom/android/server/appop/AppOpsService$Shell;->mToken:Landroid/os/IBinder;

    iget v11, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    iget v12, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    iget-object v14, v0, Lcom/android/server/appop/AppOpsService$Shell;->attributionTag:Ljava/lang/String;

    invoke-interface/range {v9 .. v14}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_11a
    return v4

    .line 5931
    :sswitch_11b
    const-string/jumbo v5, "note"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40b

    .line 6157
    invoke-virtual {v0, v7, v3}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v1

    if-gez v1, :cond_12b

    return v1

    .line 6161
    :cond_12b
    iget-object v12, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v12, :cond_140

    .line 6162
    iget-object v9, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v10, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    iget v11, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    iget-object v13, v0, Lcom/android/server/appop/AppOpsService$Shell;->attributionTag:Ljava/lang/String;

    const-string v15, "appops note shell command"

    const/16 v16, 0x1

    const/4 v14, 0x1

    invoke-interface/range {v9 .. v16}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    return v8

    :cond_140
    return v4

    .line 5931
    :sswitch_141
    const-string/jumbo v5, "set"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40b

    .line 5933
    invoke-virtual {v0, v7, v3}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v1

    if-gez v1, :cond_151

    return v1

    .line 5937
    :cond_151
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_15d

    .line 5939
    const-string v0, "Error: Mode not specified."

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    .line 5943
    :cond_15d
    invoke-static {v1, v3}, Lcom/android/server/appop/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v1

    if-gez v1, :cond_164

    return v4

    .line 5948
    :cond_164
    iget-boolean v3, v0, Lcom/android/server/appop/AppOpsService$Shell;->targetsUid:Z

    if-nez v3, :cond_176

    iget-object v5, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_176

    .line 5949
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v6, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    iget v0, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    invoke-interface {v3, v6, v0, v5, v1}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V

    goto :goto_19e

    :cond_176
    if-eqz v3, :cond_195

    .line 5951
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;
    :try_end_17a
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_17a} :catch_4f

    if-eqz v3, :cond_195

    .line 5953
    :try_start_17c
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    iget-object v3, v3, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v5, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    iget v6, v0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    .line 5954
    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v3

    .line 5955
    iget-object v5, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v0, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    invoke-interface {v5, v0, v3, v1}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_193
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17c .. :try_end_193} :catch_194
    .catch Landroid/os/RemoteException; {:try_start_17c .. :try_end_193} :catch_4f

    goto :goto_19e

    :catch_194
    return v4

    .line 5960
    :cond_195
    :try_start_195
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v5, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    iget v0, v0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    invoke-interface {v3, v5, v0, v1}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V

    :goto_19e
    return v8

    .line 5931
    :sswitch_19f
    const-string v5, "get"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40b

    .line 5965
    invoke-virtual {v0, v8, v3}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v1

    if-gez v1, :cond_1ae

    return v1

    .line 5970
    :cond_1ae
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5971
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_1e6

    .line 5973
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v5, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    .line 5975
    iget v7, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-eq v7, v4, :cond_1c4

    filled-new-array {v7}, [I

    move-result-object v7

    goto :goto_1c5

    :cond_1c4
    move-object v7, v6

    .line 5973
    :goto_1c5
    invoke-interface {v3, v5, v7}, Lcom/android/internal/app/IAppOpsService;->getUidOps(I[I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1ce

    .line 5977
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5979
    :cond_1ce
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v5, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    iget-object v7, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 5981
    iget v9, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-eq v9, v4, :cond_1dc

    filled-new-array {v9}, [I

    move-result-object v6

    .line 5979
    :cond_1dc
    invoke-interface {v3, v5, v7, v6}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1f6

    .line 5983
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1f6

    .line 5986
    :cond_1e6
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v3, v0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    .line 5988
    iget v5, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-eq v5, v4, :cond_1f2

    filled-new-array {v5}, [I

    move-result-object v6

    .line 5986
    :cond_1f2
    invoke-interface {v1, v3, v6}, Lcom/android/internal/app/IAppOpsService;->getUidOps(I[I)Ljava/util/List;

    move-result-object v1

    :cond_1f6
    :goto_1f6
    if-eqz v1, :cond_1fe

    .line 5990
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_201

    :cond_1fe
    move v11, v8

    goto/16 :goto_326

    .line 5998
    :cond_201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move v3, v8

    .line 5999
    :goto_206
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_324

    .line 6000
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$PackageOps;

    .line 6001
    invoke-virtual {v7}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_21d

    .line 6002
    const-string v9, "Uid mode: "

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6004
    :cond_21d
    invoke-virtual {v7}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v7

    move v9, v8

    .line 6005
    :goto_222
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_31f

    .line 6006
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AppOpsManager$OpEntry;

    .line 6007
    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v11

    invoke-static {v11}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6008
    const-string v11, ": "

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6009
    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v11

    invoke-static {v11}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6010
    iget-object v11, v0, Lcom/android/server/appop/AppOpsService$Shell;->attributionTag:Ljava/lang/String;

    const-wide/16 v12, -0x1

    const/16 v14, 0x1f

    if-nez v11, :cond_2b0

    .line 6011
    invoke-virtual {v10, v14}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(I)J

    move-result-wide v15

    cmp-long v11, v15, v12

    if-eqz v11, :cond_270

    .line 6012
    const-string v11, "; time="

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6014
    invoke-virtual {v10, v14}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(I)J

    move-result-wide v15

    move v11, v8

    move/from16 v17, v9

    sub-long v8, v5, v15

    .line 6013
    invoke-static {v8, v9, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 6015
    const-string v8, " ago"

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_273

    :cond_270
    move v11, v8

    move/from16 v17, v9

    .line 6017
    :goto_273
    invoke-virtual {v10, v14}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectTime(I)J

    move-result-wide v8

    cmp-long v8, v8, v12

    if-eqz v8, :cond_28e

    .line 6018
    const-string v8, "; rejectTime="

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6020
    invoke-virtual {v10, v14}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectTime(I)J

    move-result-wide v8

    sub-long v8, v5, v8

    .line 6019
    invoke-static {v8, v9, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 6021
    const-string v8, " ago"

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6023
    :cond_28e
    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_29b

    .line 6024
    const-string v8, " (running)"

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_317

    .line 6025
    :cond_29b
    invoke-virtual {v10, v14}, Landroid/app/AppOpsManager$OpEntry;->getLastDuration(I)J

    move-result-wide v8

    cmp-long v8, v8, v12

    if-eqz v8, :cond_317

    .line 6026
    const-string v8, "; duration="

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6027
    invoke-virtual {v10, v14}, Landroid/app/AppOpsManager$OpEntry;->getLastDuration(I)J

    move-result-wide v8

    invoke-static {v8, v9, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    goto :goto_317

    :cond_2b0
    move v11, v8

    move/from16 v17, v9

    .line 6031
    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/appop/AppOpsService$Shell;->attributionTag:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$AttributedOpEntry;

    if-eqz v8, :cond_317

    .line 6033
    invoke-virtual {v8, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    move-result-wide v9

    cmp-long v9, v9, v12

    if-eqz v9, :cond_2dc

    .line 6034
    const-string v9, "; time="

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6036
    invoke-virtual {v8, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    move-result-wide v9

    sub-long v9, v5, v9

    .line 6035
    invoke-static {v9, v10, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 6038
    const-string v9, " ago"

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6040
    :cond_2dc
    invoke-virtual {v8, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastRejectTime(I)J

    move-result-wide v9

    cmp-long v9, v9, v12

    if-eqz v9, :cond_2f7

    .line 6041
    const-string v9, "; rejectTime="

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6043
    invoke-virtual {v8, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastRejectTime(I)J

    move-result-wide v9

    sub-long v9, v5, v9

    .line 6042
    invoke-static {v9, v10, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 6045
    const-string v9, " ago"

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6047
    :cond_2f7
    invoke-virtual {v8}, Landroid/app/AppOpsManager$AttributedOpEntry;->isRunning()Z

    move-result v9

    if-eqz v9, :cond_303

    .line 6048
    const-string v8, " (running)"

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_317

    .line 6049
    :cond_303
    invoke-virtual {v8, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastDuration(I)J

    move-result-wide v9

    cmp-long v9, v9, v12

    if-eqz v9, :cond_317

    .line 6051
    const-string v9, "; duration="

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6053
    invoke-virtual {v8, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastDuration(I)J

    move-result-wide v8

    .line 6052
    invoke-static {v8, v9, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 6057
    :cond_317
    :goto_317
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v9, v17, 0x1

    move v8, v11

    goto/16 :goto_222

    :cond_31f
    move v11, v8

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_206

    :cond_324
    move v11, v8

    return v11

    .line 5991
    :goto_326
    const-string v1, "No operations."

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5992
    iget v1, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-le v1, v4, :cond_351

    const/16 v3, 0xaa

    if-ge v1, v3, :cond_351

    .line 5993
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default mode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 5994
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    .line 5993
    invoke-static {v0}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_351
    return v11

    :sswitch_352
    move v11, v8

    .line 5931
    const-string/jumbo v5, "query-op"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40b

    .line 6063
    invoke-virtual {v0, v7, v3}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserOpMode(ILjava/io/PrintWriter;)I

    move-result v1

    if-gez v1, :cond_363

    return v1

    .line 6067
    :cond_363
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v3, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/internal/app/IAppOpsService;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3bb

    .line 6069
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_378

    goto :goto_3bb

    :cond_378
    move v3, v11

    .line 6073
    :goto_379
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3ba

    .line 6074
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$PackageOps;

    .line 6076
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v6

    move v7, v11

    .line 6077
    :goto_390
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_3b7

    .line 6078
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$OpEntry;

    .line 6079
    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v9

    iget v10, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-ne v9, v10, :cond_3b4

    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v8

    iget v9, v0, Lcom/android/server/appop/AppOpsService$Shell;->mode:I

    if-ne v8, v9, :cond_3b4

    .line 6085
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3b7

    :cond_3b4
    add-int/lit8 v7, v7, 0x1

    goto :goto_390

    :cond_3b7
    :goto_3b7
    add-int/lit8 v3, v3, 0x1

    goto :goto_379

    :cond_3ba
    return v11

    .line 6070
    :cond_3bb
    :goto_3bb
    const-string v0, "No operations."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v11

    :sswitch_3c1
    move v11, v8

    .line 5931
    const-string/jumbo v3, "write-settings"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40b

    .line 6127
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 6128
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 6127
    invoke-virtual {v1, v3, v5, v4}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 6129
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_3dc
    .catch Landroid/os/RemoteException; {:try_start_195 .. :try_end_3dc} :catch_4f

    .line 6131
    :try_start_3dc
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    monitor-enter v1
    :try_end_3df
    .catchall {:try_start_3dc .. :try_end_3df} :catchall_402

    .line 6132
    :try_start_3df
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {v3}, Lcom/android/server/appop/AppOpsService;->getIoHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v7, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    iget-object v7, v7, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6134
    monitor-exit v1
    :try_end_3ed
    .catchall {:try_start_3df .. :try_end_3ed} :catchall_404

    .line 6135
    :try_start_3ed
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService;->writeRecentAccesses()V

    .line 6136
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {v0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->writeState()V

    .line 6137
    const-string v0, "Current settings written."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3fe
    .catchall {:try_start_3ed .. :try_end_3fe} :catchall_402

    .line 6139
    :try_start_3fe
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_401
    .catch Landroid/os/RemoteException; {:try_start_3fe .. :try_end_401} :catch_4f

    return v11

    :catchall_402
    move-exception v0

    goto :goto_407

    :catchall_404
    move-exception v0

    .line 6134
    :try_start_405
    monitor-exit v1
    :try_end_406
    .catchall {:try_start_405 .. :try_end_406} :catchall_404

    :try_start_406
    throw v0
    :try_end_407
    .catchall {:try_start_406 .. :try_end_407} :catchall_402

    .line 6139
    :goto_407
    :try_start_407
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6140
    throw v0

    .line 6201
    :cond_40b
    :goto_40b
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0
    :try_end_40f
    .catch Landroid/os/RemoteException; {:try_start_407 .. :try_end_40f} :catch_4f

    return v0

    .line 6204
    :goto_410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    nop

    :sswitch_data_426
    .sparse-switch
        -0x658cadaf -> :sswitch_3c1
        -0x458a76fa -> :sswitch_352
        0x18f56 -> :sswitch_19f
        0x1bc62 -> :sswitch_141
        0x33aff2 -> :sswitch_11b
        0x360802 -> :sswitch_f8
        0x6761d4f -> :sswitch_85
        0x68ac462 -> :sswitch_57
        0x7c514e7a -> :sswitch_20
    .end sparse-switch
.end method

.method public static resolveNonAppUid(Ljava/lang/String;)I
    .registers 4

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    .line 7526
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_66

    :goto_f
    move p0, v0

    goto :goto_55

    :sswitch_11
    const-string v1, "audioserver"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto :goto_f

    :cond_1a
    const/4 p0, 0x5

    goto :goto_55

    :sswitch_1c
    const-string/jumbo v1, "shell"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    goto :goto_f

    :cond_26
    const/4 p0, 0x4

    goto :goto_55

    :sswitch_28
    const-string/jumbo v1, "media"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32

    goto :goto_f

    :cond_32
    const/4 p0, 0x3

    goto :goto_55

    :sswitch_34
    const-string/jumbo v1, "root"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3e

    goto :goto_f

    :cond_3e
    const/4 p0, 0x2

    goto :goto_55

    :sswitch_40
    const-string v1, "cameraserver"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_49

    goto :goto_f

    :cond_49
    const/4 p0, 0x1

    goto :goto_55

    :sswitch_4b
    const-string v1, "dumpstate"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_54

    goto :goto_f

    :cond_54
    move p0, v2

    :goto_55
    packed-switch p0, :pswitch_data_80

    return v0

    :pswitch_59
    const/16 p0, 0x411

    return p0

    :pswitch_5c
    const/16 p0, 0x3f5

    return p0

    :pswitch_5f
    return v2

    :pswitch_60
    const/16 p0, 0x417

    return p0

    :pswitch_63
    const/16 p0, 0x7d0

    return p0

    :sswitch_data_66
    .sparse-switch
        -0x4faa5ce3 -> :sswitch_4b
        -0x1dbbd58 -> :sswitch_40
        0x3580e2 -> :sswitch_34
        0x62f6fe4 -> :sswitch_28
        0x6855e30 -> :sswitch_1c
        0x50251299 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_63
        :pswitch_60
        :pswitch_5f
        :pswitch_5c
        :pswitch_63
        :pswitch_59
    .end packed-switch
.end method


# virtual methods
.method public addHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V
    .registers 2

    .line 7177
    invoke-virtual {p0}, Lcom/android/internal/app/IAppOpsService$Stub;->addHistoricalOps_enforcePermission()V

    .line 7179
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    invoke-interface {p0, p1}, Lcom/android/server/appop/HistoricalRegistryInterface;->addHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V

    return-void
.end method

.method public checkAudioOperation(IIILjava/lang/String;)I
    .registers 5

    .line 3145
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->checkAudioOperation(IIILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final checkAudioOperationImpl(IIILjava/lang/String;)I
    .registers 6

    .line 3149
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/appop/AudioRestrictionManager;->checkAudioOperation(IIILjava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_9

    return p2

    .line 3154
    :cond_9
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/appop/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public checkOperation(IILjava/lang/String;)I
    .registers 11

    .line 2970
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 2977
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->checkOperation(IILjava/lang/String;Ljava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method public checkOperationForDevice(IILjava/lang/String;Ljava/lang/String;I)I
    .registers 13

    .line 2984
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 2991
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    const/4 v6, 0x0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->checkOperation(IILjava/lang/String;Ljava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method public final checkOperationImpl(IILjava/lang/String;Ljava/lang/String;IZ)I
    .registers 15

    .line 2998
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->shouldUseNewCheckOp()Z

    move-result v1

    const/4 v7, 0x1

    if-nez v1, :cond_44

    .line 2999
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 3000
    invoke-virtual {p0, p5}, Lcom/android/server/appop/AppOpsService;->isValidVirtualDeviceId(I)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 3001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkOperationImpl returned MODE_IGNORED as virtualDeviceId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppOps"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 3005
    :cond_2c
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {p0, p3, v1}, Lcom/android/server/appop/AppOpsService;->isIncomingPackageValid(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 3006
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    return v0

    .line 3009
    :cond_3b
    invoke-static/range {p2 .. p3}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_42

    return v7

    :cond_42
    move-object v3, v1

    goto :goto_53

    :cond_44
    const/4 v5, 0x0

    .line 3016
    const-string v6, "checkOperation"

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService;->validateOpRequest(IILjava/lang/String;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_53

    return v7

    :cond_53
    :goto_53
    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 3024
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/appop/AppOpsService;->getAppOpMode(IILjava/lang/String;Ljava/lang/String;IZZ)I

    move-result v0

    return v0
.end method

.method public checkOperationRaw(IILjava/lang/String;Ljava/lang/String;)I
    .registers 12

    .line 2943
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 2950
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->checkOperation(IILjava/lang/String;Ljava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method public checkOperationRawForDevice(IILjava/lang/String;Ljava/lang/String;I)I
    .registers 13

    .line 2957
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 2964
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    const/4 v6, 0x1

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->checkOperation(IILjava/lang/String;Ljava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method public checkPackage(ILjava/lang/String;)I
    .registers 12

    .line 3191
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .line 3193
    :try_start_c
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZ)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    .line 3196
    invoke-static {v2}, Lcom/android/server/appop/AppOpsService;->resolveNonAppUid(Ljava/lang/String;)I

    move-result p0

    if-eq p0, v1, :cond_27

    .line 3197
    invoke-virtual {v0, v2}, Lcom/android/server/appop/AppOpsService;->isPackageExisted(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 3198
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-virtual {v0, v2, p0}, Lcom/android/server/appop/AppOpsService;->filterAppAccessUnlocked(Ljava/lang/String;I)Z

    move-result p0
    :try_end_23
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_23} :catch_29

    if-nez p0, :cond_26

    goto :goto_27

    :cond_26
    return v8

    :cond_27
    :goto_27
    const/4 p0, 0x0

    return p0

    :catch_29
    return v8
.end method

.method public final checkSystemUid(Ljava/lang/String;)V
    .registers 3

    .line 7516
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_9

    return-void

    .line 7518
    :cond_9
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must by called by the system"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clearHistory()V
    .registers 1

    .line 7193
    invoke-virtual {p0}, Lcom/android/internal/app/IAppOpsService$Stub;->clearHistory_enforcePermission()V

    .line 7195
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    invoke-interface {p0}, Lcom/android/server/appop/HistoricalRegistryInterface;->clearAllHistory()V

    return-void
.end method

.method public final collectAsyncNotedOp(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ZI)V
    .registers 29

    .line 3711
    invoke-static/range {p6 .. p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3713
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3715
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 3717
    :try_start_b
    monitor-enter p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_bd

    and-int/lit8 v1, p5, 0x9

    if-eqz v1, :cond_2d

    if-eqz p7, :cond_2d

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    .line 3720
    :try_start_1e
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->reportRuntimeAppOpAccessMessageAsyncLocked(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_27

    move-object v9, v1

    :goto_22
    move/from16 v15, p1

    move-object/from16 v14, p2

    goto :goto_30

    :catchall_27
    move-exception v0

    move-object v9, v1

    :goto_29
    move-wide/from16 v18, v7

    goto/16 :goto_b9

    :cond_2d
    move-object/from16 v9, p0

    goto :goto_22

    .line 3724
    :goto_30
    :try_start_30
    invoke-virtual {v9, v14, v15}, Lcom/android/server/appop/AppOpsService;->getAsyncNotedOpsKey(Ljava/lang/String;I)Landroid/util/Pair;

    move-result-object v10

    .line 3725
    iget-object v1, v9, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/os/RemoteCallbackList;

    if-nez v11, :cond_46

    .line 3727
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_30 .. :try_end_40} :catchall_44

    .line 3767
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_44
    move-exception v0

    goto :goto_29

    :cond_46
    const/4 v12, 0x1

    .line 3730
    :try_start_47
    new-array v13, v12, [Z

    const/4 v1, 0x0

    aput-boolean v1, v13, v1

    move v2, v1

    :goto_4d
    if-ge v2, v12, :cond_b2

    move v3, v2

    move v2, v0

    .line 3736
    new-instance v0, Landroid/app/AsyncNotedAppOp;

    .line 3737
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5
    :try_end_57
    .catchall {:try_start_47 .. :try_end_57} :catchall_44

    move-object/from16 v4, p6

    move/from16 v17, v3

    move-wide/from16 v18, v7

    move-object/from16 v3, p4

    move v7, v1

    move/from16 v1, p3

    :try_start_62
    invoke-direct/range {v0 .. v6}, Landroid/app/AsyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;J)V

    .line 3738
    aput-boolean v7, v13, v7

    move-object v1, v10

    .line 3739
    new-instance v10, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda18;

    move-object v3, v11

    move-object v11, v0

    move-object v0, v3

    move-object/from16 v16, p4

    move v3, v12

    move-object v12, v13

    move/from16 v13, p3

    invoke-direct/range {v10 .. v16}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda18;-><init>(Landroid/app/AsyncNotedAppOp;[ZILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v10}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 3751
    aget-boolean v4, v12, v7

    if-nez v4, :cond_a2

    .line 3752
    iget-object v4, v9, Lcom/android/server/appop/AppOpsService;->mUnforwardedAsyncNotedOps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_94

    .line 3755
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3756
    iget-object v5, v9, Lcom/android/server/appop/AppOpsService;->mUnforwardedAsyncNotedOps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_94

    :catchall_92
    move-exception v0

    goto :goto_b9

    .line 3759
    :cond_94
    :goto_94
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3760
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0xa

    if-le v5, v6, :cond_a2

    .line 3761
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_a2
    add-int/lit8 v4, v17, 0x1

    move/from16 v15, p1

    move-object/from16 v14, p2

    move-object v11, v0

    move-object v10, v1

    move v0, v2

    move v2, v4

    move v1, v7

    move-object v13, v12

    move-wide/from16 v7, v18

    move v12, v3

    goto :goto_4d

    :cond_b2
    move-wide/from16 v18, v7

    .line 3765
    monitor-exit p0
    :try_end_b5
    .catchall {:try_start_62 .. :try_end_b5} :catchall_92

    .line 3767
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 3765
    :goto_b9
    :try_start_b9
    monitor-exit p0
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_92

    :try_start_ba
    throw v0
    :try_end_bb
    .catchall {:try_start_ba .. :try_end_bb} :catchall_bb

    :catchall_bb
    move-exception v0

    goto :goto_c0

    :catchall_bd
    move-exception v0

    move-wide/from16 v18, v7

    .line 3767
    :goto_c0
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3768
    throw v0
.end method

.method public collectNoteOpCallsForValidation(Ljava/lang/String;ILjava/lang/String;J)V
    .registers 6

    .line 0
    return-void
.end method

.method public final collectOps(Lcom/android/server/appop/AppOpsService$Ops;[ILjava/lang/String;)Ljava/util/ArrayList;
    .registers 10

    .line 1740
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 1742
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1740
    const-string v2, "android.permission.GET_APP_OPS_STATS"

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    move p0, v0

    :goto_16
    const/16 v1, 0x7d0

    if-nez p2, :cond_4d

    .line 1747
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    move v2, v0

    .line 1748
    :goto_20
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_86

    .line 1749
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$Op;

    .line 1750
    iget v4, v3, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v4}, Landroid/app/AppOpsManager;->opRestrictsRead(I)Z

    move-result v4

    if-eqz v4, :cond_37

    if-nez p0, :cond_37

    goto :goto_4a

    :cond_37
    if-le v2, v1, :cond_3a

    goto :goto_86

    .line 1756
    :cond_3a
    invoke-static {v3, p3}, Lcom/android/server/appop/AppOpsService;->getOpEntryForResult(Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)Landroid/app/AppOpsManager$OpEntry;

    move-result-object v3

    .line 1757
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1758
    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    add-int/2addr v2, v3

    :goto_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_4d
    const/4 v2, 0x0

    move v3, v0

    .line 1761
    :goto_4f
    array-length v4, p2

    if-ge v0, v4, :cond_70

    .line 1762
    aget v4, p2, v0

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$Op;

    if-eqz v4, :cond_83

    if-nez v2, :cond_63

    .line 1765
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1767
    :cond_63
    iget v5, v4, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v5}, Landroid/app/AppOpsManager;->opRestrictsRead(I)Z

    move-result v5

    if-eqz v5, :cond_6e

    if-nez p0, :cond_6e

    goto :goto_83

    :cond_6e
    if-le v3, v1, :cond_73

    :cond_70
    move-object p2, v2

    move v2, v3

    goto :goto_86

    .line 1773
    :cond_73
    invoke-static {v4, p3}, Lcom/android/server/appop/AppOpsService;->getOpEntryForResult(Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)Landroid/app/AppOpsManager$OpEntry;

    move-result-object v4

    .line 1774
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1775
    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    add-int/2addr v3, v4

    :cond_83
    :goto_83
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    :cond_86
    :goto_86
    if-le v2, v1, :cond_8f

    .line 1781
    const-string p0, "AppOps"

    const-string p1, "The number of attributed op entries has exceeded the threshold. This could be due to DoS attack from malicious apps. The result is throttled."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8f
    return-object p2
.end method

.method public collectRuntimeAppOpAccessMessage()Landroid/app/RuntimeAppOpAccessMessage;
    .registers 6

    .line 7309
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 7311
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->getInstrumentationSourceUid(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 7312
    :goto_16
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_22

    goto :goto_25

    :cond_22
    if-nez v0, :cond_25

    return-object v3

    .line 7316
    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_APP_OPS_STATS"

    .line 7317
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 7316
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 7319
    monitor-enter p0

    .line 7320
    :try_start_35
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCollectedRuntimePermissionMessage:Landroid/app/RuntimeAppOpAccessMessage;

    .line 7321
    iput-object v3, p0, Lcom/android/server/appop/AppOpsService;->mCollectedRuntimePermissionMessage:Landroid/app/RuntimeAppOpAccessMessage;

    .line 7322
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_49

    .line 7323
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v2, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-object v0

    :catchall_49
    move-exception v0

    .line 7322
    :try_start_4a
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v0
.end method

.method public final collectUidOps(Lcom/android/server/appop/AppOpsService$UidState;[I)Ljava/util/ArrayList;
    .registers 8

    .line 1793
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget p1, p1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    const-string v0, "default:0"

    .line 1794
    invoke-interface {p0, p1, v0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getNonDefaultUidModes(ILjava/lang/String;)Landroid/util/SparseIntArray;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_e

    return-object p1

    .line 1800
    :cond_e
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_15

    return-object p1

    :cond_15
    const/4 v1, 0x0

    if-nez p2, :cond_35

    .line 1806
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_1d
    if-ge v1, v0, :cond_34

    .line 1808
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p2

    .line 1809
    new-instance v2, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {p0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    sget-object v4, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {v2, p2, v3, v4}, Landroid/app/AppOpsManager$OpEntry;-><init>(IILjava/util/Map;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_34
    return-object p1

    .line 1812
    :cond_35
    :goto_35
    array-length v0, p2

    if-ge v1, v0, :cond_58

    .line 1813
    aget v0, p2, v1

    .line 1814
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_55

    if-nez p1, :cond_47

    .line 1816
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1818
    :cond_47
    new-instance v2, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    sget-object v4, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {v2, v0, v3, v4}, Landroid/app/AppOpsManager$OpEntry;-><init>(IILjava/util/Map;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    :cond_58
    return-object p1
.end method

.method public final createSandboxUidStateIfNotExistsForAppLocked(ILandroid/util/SparseBooleanArray;)V
    .registers 5

    .line 4883
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_9

    return-void

    .line 4886
    :cond_9
    invoke-static {p1}, Landroid/os/Process;->toSdkSandboxUid(I)I

    move-result p1

    const/4 v0, 0x1

    if-eqz p2, :cond_13

    .line 4888
    invoke-virtual {p2, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 4890
    :cond_13
    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    return-void
.end method

.method public final deferResetOpToDpm(ILjava/lang/String;I)V
    .registers 4

    .line 2829
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->dpmi:Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/admin/DevicePolicyManagerInternal;->resetOp(ILjava/lang/String;I)V

    return-void
.end method

.method public final doForAllAttributedOpsInUidLocked(ILjava/util/function/Consumer;)V
    .registers 15

    .line 1682
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/appop/AppOpsService$UidState;

    if-nez p0, :cond_b

    goto :goto_57

    .line 1687
    :cond_b
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_13
    if-ge v1, p1, :cond_57

    .line 1689
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$Ops;

    .line 1690
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v4, v0

    :goto_22
    if-ge v4, v3, :cond_54

    .line 1692
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AppOpsService$Op;

    .line 1693
    iget-object v6, v5, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v7, v0

    :goto_31
    if-ge v7, v6, :cond_51

    .line 1695
    iget-object v8, v5, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    .line 1696
    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArrayMap;

    .line 1697
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v9

    move v10, v0

    :goto_40
    if-ge v10, v9, :cond_4e

    .line 1699
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/appop/AttributedOp;

    invoke-interface {p2, v11}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_40

    :cond_4e
    add-int/lit8 v7, v7, 0x1

    goto :goto_31

    :cond_51
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :cond_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_57
    :goto_57
    return-void
.end method

.method public final doForAllAttributedOpsLocked(Ljava/util/function/Consumer;)V
    .registers 5

    .line 1673
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    .line 1675
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1676
    invoke-virtual {p0, v2, p1}, Lcom/android/server/appop/AppOpsService;->doForAllAttributedOpsInUidLocked(ILjava/util/function/Consumer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_15
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 40
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v0, p3

    .line 6376
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v4, "AppOps"

    invoke-static {v3, v4, v2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    if-nez v3, :cond_12

    goto/16 :goto_935

    :cond_12
    const/4 v3, 0x0

    const/4 v13, 0x0

    const/16 v5, 0x64

    if-eqz v0, :cond_22a

    move v6, v5

    move v7, v13

    move v8, v7

    move v11, v8

    move v12, v11

    move v15, v12

    move/from16 v19, v15

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/16 v16, -0x1

    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object v5, v3

    .line 6397
    :goto_29
    array-length v4, v0

    if-ge v7, v4, :cond_217

    .line 6398
    aget-object v4, v0, v7

    const/16 v20, 0x1

    .line 6399
    const-string v14, "-h"

    invoke-virtual {v14, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3c

    .line 6400
    invoke-virtual {v1, v2}, Lcom/android/server/appop/AppOpsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    .line 6402
    :cond_3c
    const-string v14, "-a"

    invoke-virtual {v14, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4c

    const-string v14, "--all"

    invoke-virtual {v14, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_51

    :cond_4c
    move-object v14, v5

    move/from16 v21, v6

    goto/16 :goto_208

    .line 6408
    :cond_51
    const-string v14, "--op-data"

    invoke-virtual {v14, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5d

    move/from16 v17, v20

    goto/16 :goto_213

    .line 6410
    :cond_5d
    const-string v14, "--no-op-data"

    invoke-virtual {v14, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_69

    move/from16 v17, v13

    goto/16 :goto_213

    .line 6412
    :cond_69
    const-string v14, "--restrictions"

    invoke-virtual {v14, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_75

    move/from16 v18, v20

    goto/16 :goto_213

    .line 6414
    :cond_75
    const-string v14, "--no-restrictions"

    invoke-virtual {v14, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_81

    move/from16 v18, v13

    goto/16 :goto_213

    .line 6416
    :cond_81
    const-string v14, "--uid-state-changes"

    invoke-virtual {v14, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8d

    move/from16 v19, v20

    goto/16 :goto_213

    .line 6418
    :cond_8d
    const-string v14, "--no-uid-state-changes"

    invoke-virtual {v14, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_99

    move/from16 v19, v13

    goto/16 :goto_213

    .line 6420
    :cond_99
    const-string v14, "--watchers"

    invoke-virtual {v14, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a5

    move/from16 v15, v20

    goto/16 :goto_213

    .line 6422
    :cond_a5
    const-string v14, "--no-watchers"

    invoke-virtual {v14, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b0

    move v15, v13

    goto/16 :goto_213

    .line 6424
    :cond_b0
    const-string v14, "--op"

    invoke-virtual {v14, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_cf

    add-int/lit8 v7, v7, 0x1

    .line 6426
    array-length v4, v0

    if-lt v7, v4, :cond_c3

    .line 6427
    const-string v0, "No argument for --op option"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 6430
    :cond_c3
    aget-object v4, v0, v7

    invoke-static {v4, v2}, Lcom/android/server/appop/AppOpsService$Shell;->-$$Nest$smstrOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v9

    or-int/lit8 v8, v8, 0x8

    if-gez v9, :cond_213

    goto/16 :goto_935

    .line 6435
    :cond_cf
    const-string v14, "--package"

    invoke-virtual {v14, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_119

    add-int/lit8 v7, v7, 0x1

    .line 6437
    array-length v3, v0

    if-lt v7, v3, :cond_e2

    .line 6438
    const-string v0, "No argument for --package option"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 6441
    :cond_e2
    aget-object v3, v0, v7

    .line 6445
    :try_start_e4
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4
    :try_end_e8
    .catch Landroid/os/RemoteException; {:try_start_e4 .. :try_end_e8} :catch_f3

    move-object v14, v5

    move/from16 v21, v6

    const-wide/32 v5, 0xc02000

    :try_start_ee
    invoke-interface {v4, v3, v5, v6, v13}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v4
    :try_end_f2
    .catch Landroid/os/RemoteException; {:try_start_ee .. :try_end_f2} :catch_f6

    goto :goto_f7

    :catch_f3
    move-object v14, v5

    move/from16 v21, v6

    :catch_f6
    const/4 v4, -0x1

    :goto_f7
    if-gez v4, :cond_10e

    .line 6451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 6454
    :cond_10e
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    or-int/lit8 v8, v8, 0x3

    :cond_114
    move-object v5, v14

    :goto_115
    move/from16 v6, v21

    goto/16 :goto_213

    :cond_119
    move-object v14, v5

    move/from16 v21, v6

    .line 6456
    const-string v5, "--attributionTag"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_135

    add-int/lit8 v7, v7, 0x1

    .line 6458
    array-length v4, v0

    if-lt v7, v4, :cond_12f

    .line 6459
    const-string v0, "No argument for --attributionTag option"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 6462
    :cond_12f
    aget-object v4, v0, v7

    or-int/lit8 v8, v8, 0x4

    move-object v5, v4

    goto :goto_115

    .line 6464
    :cond_135
    const-string v5, "--mode"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_152

    add-int/lit8 v7, v7, 0x1

    .line 6466
    array-length v4, v0

    if-lt v7, v4, :cond_148

    .line 6467
    const-string v0, "No argument for --mode option"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 6470
    :cond_148
    aget-object v4, v0, v7

    invoke-static {v4, v2}, Lcom/android/server/appop/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v16

    if-gez v16, :cond_114

    goto/16 :goto_935

    .line 6474
    :cond_152
    const-string v5, "--include-discrete"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18c

    add-int/lit8 v7, v7, 0x1

    .line 6476
    array-length v4, v0

    if-lt v7, v4, :cond_165

    .line 6477
    const-string v0, "No argument for --include-discrete option"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 6481
    :cond_165
    :try_start_165
    aget-object v4, v0, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_16f
    .catch Ljava/lang/NumberFormatException; {:try_start_165 .. :try_end_16f} :catch_175

    move v6, v4

    move-object v5, v14

    move/from16 v12, v20

    goto/16 :goto_213

    .line 6483
    :catch_175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong parameter: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v7

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 6487
    :cond_18c
    const-string v5, "--history-limit"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c3

    add-int/lit8 v7, v7, 0x1

    .line 6489
    array-length v4, v0

    if-lt v7, v4, :cond_19f

    .line 6490
    const-string v0, "No argument for --history-limit option"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 6494
    :cond_19f
    :try_start_19f
    aget-object v4, v0, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_1a9
    .catch Ljava/lang/NumberFormatException; {:try_start_19f .. :try_end_1a9} :catch_1ac

    move v6, v4

    move-object v5, v14

    goto :goto_213

    .line 6496
    :catch_1ac
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong parameter: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v7

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 6499
    :cond_1c3
    const-string v5, "--history"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d0

    move-object v5, v14

    move/from16 v11, v20

    goto/16 :goto_115

    .line 6501
    :cond_1d0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1f3

    invoke-virtual {v4, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_1f3

    .line 6502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 6505
    :cond_1f3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :goto_208
    move-object v5, v14

    move/from16 v15, v20

    move/from16 v17, v15

    move/from16 v18, v17

    move/from16 v19, v18

    goto/16 :goto_115

    :cond_213
    :goto_213
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_29

    :cond_217
    move-object v14, v5

    move/from16 v21, v6

    const/16 v20, 0x1

    move-object v4, v3

    move/from16 v28, v8

    move v6, v9

    move/from16 v24, v10

    move/from16 v31, v12

    move-object v3, v14

    move/from16 v0, v16

    move/from16 v32, v21

    goto :goto_23f

    :cond_22a
    const/16 v20, 0x1

    move-object v4, v3

    move/from16 v32, v5

    move v11, v13

    move v15, v11

    move/from16 v19, v15

    move/from16 v28, v19

    move/from16 v31, v28

    move/from16 v17, v20

    move/from16 v18, v17

    const/4 v0, -0x1

    const/4 v6, -0x1

    const/16 v24, -0x1

    .line 6511
    :goto_23f
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v8, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6512
    new-instance v30, Ljava/util/Date;

    invoke-direct/range {v30 .. v30}, Ljava/util/Date;-><init>()V

    if-eqz v11, :cond_267

    .line 6518
    const-string v0, "AppOps Historical Service State:"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6520
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    const-string v1, ""

    const/4 v12, 0x1

    move-object v5, v3

    move/from16 v3, v24

    move/from16 v7, v28

    move-object/from16 v9, v30

    move/from16 v10, v31

    move/from16 v11, v32

    invoke-interface/range {v0 .. v12}, Lcom/android/server/appop/HistoricalRegistryInterface;->dump(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;IILjava/text/SimpleDateFormat;Ljava/util/Date;ZIZ)V

    return-void

    :cond_267
    move-object v5, v3

    move-object/from16 v29, v8

    move/from16 v3, v24

    .line 6536
    new-instance v7, Ljava/io/StringWriter;

    invoke-direct {v7}, Ljava/io/StringWriter;-><init>()V

    .line 6537
    new-instance v8, Ljava/io/PrintWriter;

    invoke-direct {v8, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 6538
    iget-object v9, v1, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    const-string v22, ""

    const/16 v33, 0x0

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move/from16 v27, v6

    move-object/from16 v23, v8

    move-object/from16 v21, v9

    invoke-interface/range {v21 .. v33}, Lcom/android/server/appop/HistoricalRegistryInterface;->dump(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;IILjava/text/SimpleDateFormat;Ljava/util/Date;ZIZ)V

    move/from16 v14, v24

    move-object/from16 v3, v25

    move/from16 v4, v27

    .line 6541
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 6544
    monitor-enter p0

    .line 6545
    :try_start_294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v26, v5

    move-object v7, v6

    .line 6546
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 6548
    const-string v10, "AppOps Service state:"

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6549
    iget-object v10, v1, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    invoke-virtual {v10, v2}, Lcom/android/server/appop/AppOpsService$Constants;->dump(Ljava/io/PrintWriter;)V

    .line 6550
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 6551
    iget-object v10, v1, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    if-eqz v10, :cond_2e6

    .line 6552
    const-string v10, "  Profile owners:"

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v10, v13

    .line 6553
    :goto_2b6
    iget-object v11, v1, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_2e3

    .line 6554
    const-string v11, "    User #"

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6555
    iget-object v11, v1, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v11

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 6556
    const-string v11, ": "

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6557
    iget-object v11, v1, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v11

    invoke-static {v2, v11}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 6558
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2b6

    :catchall_2e0
    move-exception v0

    goto/16 :goto_936

    .line 6560
    :cond_2e3
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 6562
    :cond_2e6
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 6563
    iget-object v10, v1, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-static {v10}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->-$$Nest$fgetmPolicy(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;)Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    move-result-object v10

    if-eqz v10, :cond_307

    iget-object v10, v1, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-static {v10}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->-$$Nest$fgetmPolicy(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;)Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    move-result-object v10

    instance-of v10, v10, Lcom/android/server/policy/AppOpsPolicy;

    if-eqz v10, :cond_307

    .line 6565
    iget-object v10, v1, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-static {v10}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->-$$Nest$fgetmPolicy(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;)Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    move-result-object v10

    check-cast v10, Lcom/android/server/policy/AppOpsPolicy;

    .line 6566
    invoke-virtual {v10, v2}, Lcom/android/server/policy/AppOpsPolicy;->dumpTags(Ljava/io/PrintWriter;)V

    goto :goto_30c

    .line 6568
    :cond_307
    const-string v10, "  AppOps policy not set."

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6571
    :goto_30c
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    if-eqz v15, :cond_664

    .line 6574
    const-string v10, "AppOps Watchers"

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6575
    iget-object v10, v1, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-lez v10, :cond_39c

    move v10, v13

    move v11, v10

    .line 6577
    :goto_320
    iget-object v12, v1, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-ge v10, v12, :cond_39c

    if-ltz v4, :cond_335

    .line 6578
    iget-object v12, v1, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v12, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    if-eq v4, v12, :cond_335

    :cond_332
    move-object/from16 p3, v7

    goto :goto_396

    .line 6582
    :cond_335
    iget-object v12, v1, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v12, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/ArraySet;

    move v15, v13

    move/from16 v16, v15

    .line 6583
    :goto_340
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v13

    if-ge v15, v13, :cond_332

    .line 6584
    invoke-virtual {v12, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/appop/OnOpModeChangedListener;

    if-eqz v3, :cond_35b

    .line 6586
    invoke-virtual {v13}, Lcom/android/server/appop/OnOpModeChangedListener;->getWatchingUid()I

    move-result v21

    move-object/from16 p3, v7

    invoke-static/range {v21 .. v21}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    if-eq v14, v7, :cond_35d

    goto :goto_391

    :cond_35b
    move-object/from16 p3, v7

    :cond_35d
    if-nez v11, :cond_366

    .line 6590
    const-string v7, "  Op mode watchers:"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v11, v20

    :cond_366
    if-nez v16, :cond_381

    .line 6594
    const-string v7, "    Op "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6595
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v7, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-static {v7}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6596
    const-string v7, ":"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v16, v20

    .line 6599
    :cond_381
    const-string v7, "      #"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ": "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6600
    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_391
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v7, p3

    goto :goto_340

    :goto_396
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v7, p3

    const/4 v13, 0x0

    goto :goto_320

    :cond_39c
    move-object/from16 p3, v7

    .line 6604
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-lez v7, :cond_408

    if-gez v4, :cond_408

    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 6606
    :goto_3aa
    iget-object v11, v1, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-ge v7, v11, :cond_408

    if-eqz v3, :cond_3c1

    .line 6607
    iget-object v11, v1, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 6608
    invoke-virtual {v11, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3c1

    goto :goto_405

    :cond_3c1
    if-nez v10, :cond_3ca

    .line 6612
    const-string v10, "  Package mode watchers:"

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v10, v20

    .line 6615
    :cond_3ca
    const-string v11, "    Pkg "

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v1, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v11, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6616
    const-string v11, ":"

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6617
    iget-object v11, v1, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 6618
    invoke-virtual {v11, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArraySet;

    const/4 v12, 0x0

    .line 6619
    :goto_3e8
    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v13

    if-ge v12, v13, :cond_405

    .line 6620
    const-string v13, "      #"

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(I)V

    const-string v13, ": "

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6621
    invoke-virtual {v11, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_3e8

    :cond_405
    :goto_405
    add-int/lit8 v7, v7, 0x1

    goto :goto_3aa

    .line 6626
    :cond_408
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-lez v7, :cond_45b

    if-gez v4, :cond_45b

    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 6628
    :goto_414
    iget-object v11, v1, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-ge v7, v11, :cond_45b

    .line 6629
    iget-object v11, v1, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v11, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/appop/AppOpsService$ModeCallback;

    if-eqz v3, :cond_431

    .line 6631
    invoke-virtual {v11}, Lcom/android/server/appop/OnOpModeChangedListener;->getWatchingUid()I

    move-result v12

    invoke-static {v12}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    if-eq v14, v12, :cond_431

    goto :goto_458

    :cond_431
    if-nez v10, :cond_43a

    .line 6635
    const-string v10, "  All op mode watchers:"

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v10, v20

    .line 6638
    :cond_43a
    const-string v12, "    "

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6639
    iget-object v12, v1, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    .line 6640
    invoke-virtual {v12, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    .line 6639
    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6641
    const-string v12, ": "

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_458
    add-int/lit8 v7, v7, 0x1

    goto :goto_414

    .line 6644
    :cond_45b
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-lez v7, :cond_505

    if-gez v0, :cond_505

    const/4 v7, 0x0

    const/4 v12, 0x0

    .line 6646
    :goto_467
    iget-object v13, v1, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-ge v7, v13, :cond_505

    .line 6647
    iget-object v13, v1, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 6648
    invoke-virtual {v13, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/SparseArray;

    .line 6649
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v15

    if-gtz v15, :cond_47e

    goto :goto_49a

    :cond_47e
    const/4 v15, 0x0

    .line 6652
    invoke-virtual {v13, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Lcom/android/server/appop/AppOpsService$ActiveCallback;

    if-ltz v4, :cond_490

    .line 6653
    invoke-virtual {v13, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v16

    if-gez v16, :cond_490

    goto :goto_49a

    :cond_490
    if-eqz v3, :cond_49d

    .line 6656
    iget v10, v15, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mWatchingUid:I

    .line 6657
    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    if-eq v14, v10, :cond_49d

    :goto_49a
    move/from16 v22, v7

    goto :goto_501

    :cond_49d
    if-nez v12, :cond_4a6

    .line 6661
    const-string v10, "  All op active watchers:"

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v12, v20

    .line 6664
    :cond_4a6
    const-string v10, "    "

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6665
    iget-object v10, v1, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 6666
    invoke-virtual {v10, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    .line 6665
    invoke-static {v10}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6667
    const-string v10, " ->"

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6668
    const-string v10, "        ["

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6669
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_4cb
    if-ge v11, v10, :cond_4f2

    if-lez v11, :cond_4d7

    move/from16 v22, v7

    const/16 v7, 0x20

    .line 6672
    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_4d9

    :cond_4d7
    move/from16 v22, v7

    .line 6674
    :goto_4d9
    invoke-virtual {v13, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-static {v7}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v7, v10, -0x1

    if-ge v11, v7, :cond_4ed

    const/16 v7, 0x2c

    .line 6676
    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(C)V

    :cond_4ed
    add-int/lit8 v11, v11, 0x1

    move/from16 v7, v22

    goto :goto_4cb

    :cond_4f2
    move/from16 v22, v7

    .line 6679
    const-string v7, "]"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6680
    const-string v7, "        "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6681
    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_501
    add-int/lit8 v7, v22, 0x1

    goto/16 :goto_467

    .line 6684
    :cond_505
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-lez v7, :cond_5b5

    if-gez v0, :cond_5b5

    .line 6687
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    const/4 v10, 0x0

    const/4 v15, 0x0

    :goto_517
    if-ge v15, v7, :cond_5b5

    .line 6689
    iget-object v11, v1, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    .line 6690
    invoke-virtual {v11, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseArray;

    .line 6691
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-gtz v12, :cond_528

    goto :goto_542

    :cond_528
    const/4 v12, 0x0

    .line 6695
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/appop/AppOpsService$StartedCallback;

    if-ltz v4, :cond_538

    .line 6696
    invoke-virtual {v11, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v12

    if-gez v12, :cond_538

    goto :goto_542

    :cond_538
    if-eqz v3, :cond_547

    .line 6700
    iget v12, v13, Lcom/android/server/appop/AppOpsService$StartedCallback;->mWatchingUid:I

    .line 6701
    invoke-static {v12}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    if-eq v14, v12, :cond_547

    :goto_542
    move/from16 v22, v7

    move-wide/from16 v23, v8

    goto :goto_5ad

    :cond_547
    if-nez v10, :cond_550

    .line 6706
    const-string v10, "  All op started watchers:"

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v10, v20

    .line 6710
    :cond_550
    const-string v12, "    "

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6711
    iget-object v12, v1, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    .line 6712
    invoke-virtual {v12, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    .line 6711
    invoke-static {v12}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6713
    const-string v12, " ->"

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6715
    const-string v12, "        ["

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6716
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v12

    move/from16 v22, v7

    const/4 v7, 0x0

    :goto_577
    if-ge v7, v12, :cond_59e

    if-lez v7, :cond_583

    move-wide/from16 v23, v8

    const/16 v8, 0x20

    .line 6719
    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_585

    :cond_583
    move-wide/from16 v23, v8

    .line 6722
    :goto_585
    invoke-virtual {v11, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v8, v12, -0x1

    if-ge v7, v8, :cond_599

    const/16 v8, 0x2c

    .line 6724
    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(C)V

    :cond_599
    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v8, v23

    goto :goto_577

    :cond_59e
    move-wide/from16 v23, v8

    .line 6727
    const-string v7, "]"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6729
    const-string v7, "        "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6730
    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_5ad
    add-int/lit8 v15, v15, 0x1

    move/from16 v7, v22

    move-wide/from16 v8, v23

    goto/16 :goto_517

    :cond_5b5
    move-wide/from16 v23, v8

    .line 6733
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-lez v7, :cond_65f

    if-gez v0, :cond_65f

    const/4 v7, 0x0

    const/4 v15, 0x0

    .line 6735
    :goto_5c3
    iget-object v8, v1, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v15, v8, :cond_65f

    .line 6736
    iget-object v8, v1, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    .line 6737
    invoke-virtual {v8, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseArray;

    .line 6738
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-gtz v9, :cond_5db

    const/4 v13, 0x0

    goto :goto_5f5

    :cond_5db
    const/4 v13, 0x0

    .line 6741
    invoke-virtual {v8, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/appop/AppOpsService$NotedCallback;

    if-ltz v4, :cond_5eb

    .line 6742
    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v10

    if-gez v10, :cond_5eb

    goto :goto_5f5

    :cond_5eb
    if-eqz v3, :cond_5f8

    .line 6745
    iget v10, v9, Lcom/android/server/appop/AppOpsService$NotedCallback;->mWatchingUid:I

    .line 6746
    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    if-eq v14, v10, :cond_5f8

    :goto_5f5
    const/16 v12, 0x2c

    goto :goto_65b

    :cond_5f8
    if-nez v7, :cond_601

    .line 6750
    const-string v7, "  All op noted watchers:"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v7, v20

    .line 6753
    :cond_601
    const-string v10, "    "

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6754
    iget-object v10, v1, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    .line 6755
    invoke-virtual {v10, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    .line 6754
    invoke-static {v10}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6756
    const-string v10, " ->"

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6757
    const-string v10, "        ["

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6758
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v10

    move v11, v13

    :goto_626
    if-ge v11, v10, :cond_64c

    if-lez v11, :cond_630

    const/16 v12, 0x20

    .line 6761
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_632

    :cond_630
    const/16 v12, 0x20

    .line 6763
    :goto_632
    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v21

    invoke-static/range {v21 .. v21}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v12, v10, -0x1

    if-ge v11, v12, :cond_647

    const/16 v12, 0x2c

    .line 6765
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_649

    :cond_647
    const/16 v12, 0x2c

    :goto_649
    add-int/lit8 v11, v11, 0x1

    goto :goto_626

    :cond_64c
    const/16 v12, 0x2c

    .line 6768
    const-string v8, "]"

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6769
    const-string v8, "        "

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6770
    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_65b
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_5c3

    :cond_65f
    const/4 v13, 0x0

    .line 6773
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    goto :goto_668

    :cond_664
    move-object/from16 p3, v7

    move-wide/from16 v23, v8

    :goto_668
    if-eqz v18, :cond_67f

    .line 6776
    const-string v7, "AppOps Restrictions"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6777
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

    invoke-virtual {v7, v2}, Lcom/android/server/appop/AudioRestrictionManager;->dump(Ljava/io/PrintWriter;)Z

    .line 6778
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsRestrictions:Lcom/android/server/appop/AppOpsRestrictions;

    move/from16 v15, v20

    invoke-interface {v7, v2, v4, v3, v15}, Lcom/android/server/appop/AppOpsRestrictions;->dumpRestrictions(Ljava/io/PrintWriter;ILjava/lang/String;Z)V

    .line 6779
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    goto :goto_681

    :cond_67f
    move/from16 v15, v20

    :goto_681
    if-eqz v17, :cond_91e

    .line 6782
    const-string v7, "AppOps Uid Op State"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v7, v13

    .line 6783
    :goto_689
    iget-object v8, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_91e

    .line 6784
    iget-object v8, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appop/AppOpsService$UidState;

    .line 6786
    iget-object v9, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget v10, v8, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    const-string v11, "default:0"

    .line 6787
    invoke-interface {v9, v10, v11}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getNonDefaultUidModes(ILjava/lang/String;)Landroid/util/SparseIntArray;

    move-result-object v9

    .line 6789
    iget-object v10, v8, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-gez v4, :cond_6b2

    if-nez v3, :cond_6b2

    if-ltz v0, :cond_6ac

    goto :goto_6b2

    :cond_6ac
    move/from16 v17, v7

    move/from16 v25, v14

    goto/16 :goto_78b

    :cond_6b2
    :goto_6b2
    if-ltz v4, :cond_6bf

    if-eqz v9, :cond_6bd

    .line 6793
    invoke-virtual {v9, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v11

    if-ltz v11, :cond_6bd

    goto :goto_6bf

    :cond_6bd
    move v11, v13

    goto :goto_6c0

    :cond_6bf
    :goto_6bf
    move v11, v15

    :goto_6c0
    if-eqz v3, :cond_6d1

    .line 6794
    iget-object v12, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 6795
    invoke-virtual {v12, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    invoke-static {v12}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    if-ne v14, v12, :cond_6cf

    goto :goto_6d1

    :cond_6cf
    move v12, v13

    goto :goto_6d2

    :cond_6d1
    :goto_6d1
    move v12, v15

    :goto_6d2
    if-gez v0, :cond_6d7

    move/from16 v16, v15

    goto :goto_6d9

    :cond_6d7
    move/from16 v16, v13

    :goto_6d9
    if-nez v16, :cond_6f1

    if-eqz v9, :cond_6f1

    :goto_6dd
    if-nez v16, :cond_6f1

    .line 6798
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v15

    if-ge v13, v15, :cond_6f1

    .line 6799
    invoke-virtual {v9, v13}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v15

    if-ne v15, v0, :cond_6ed

    const/16 v16, 0x1

    :cond_6ed
    add-int/lit8 v13, v13, 0x1

    const/4 v15, 0x1

    goto :goto_6dd

    :cond_6f1
    if-eqz v10, :cond_772

    const/4 v15, 0x0

    :goto_6f4
    if-eqz v11, :cond_703

    if-eqz v12, :cond_703

    if-nez v16, :cond_6fb

    goto :goto_703

    :cond_6fb
    move/from16 v17, v7

    move/from16 v22, v12

    move/from16 v25, v14

    goto/16 :goto_76f

    .line 6806
    :cond_703
    :goto_703
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-ge v15, v13, :cond_6fb

    .line 6808
    invoke-virtual {v10, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/appop/AppOpsService$Ops;

    if-nez v11, :cond_71a

    if-eqz v13, :cond_71a

    .line 6809
    invoke-virtual {v13, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v17

    if-ltz v17, :cond_71a

    const/4 v11, 0x1

    :cond_71a
    move/from16 v17, v7

    if-nez v16, :cond_752

    const/4 v7, 0x0

    :goto_71f
    if-nez v16, :cond_752

    move/from16 v18, v11

    .line 6813
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v7, v11, :cond_754

    .line 6814
    invoke-virtual {v13, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/appop/AppOpsService$Op;

    move/from16 v21, v7

    .line 6815
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    move/from16 v22, v12

    iget-object v12, v11, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    move/from16 v25, v14

    iget v14, v11, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v11, v11, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 6818
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 6815
    invoke-interface {v7, v12, v14, v11}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v0, :cond_749

    const/16 v16, 0x1

    :cond_749
    add-int/lit8 v7, v21, 0x1

    move/from16 v11, v18

    move/from16 v12, v22

    move/from16 v14, v25

    goto :goto_71f

    :cond_752
    move/from16 v18, v11

    :cond_754
    move/from16 v22, v12

    move/from16 v25, v14

    if-nez v22, :cond_764

    .line 6824
    iget-object v7, v13, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_764

    const/4 v12, 0x1

    goto :goto_766

    :cond_764
    move/from16 v12, v22

    :goto_766
    add-int/lit8 v15, v15, 0x1

    move/from16 v7, v17

    move/from16 v11, v18

    move/from16 v14, v25

    goto :goto_6f4

    :goto_76f
    move/from16 v12, v22

    goto :goto_776

    :cond_772
    move/from16 v17, v7

    move/from16 v25, v14

    :goto_776
    if-eqz v11, :cond_77c

    if-eqz v12, :cond_77c

    if-nez v16, :cond_78b

    :cond_77c
    :goto_77c
    move/from16 v16, v0

    move-object/from16 v0, p3

    move/from16 p3, v16

    move-object/from16 v16, v3

    move/from16 v27, v4

    move-wide v3, v5

    move-object/from16 v5, v26

    goto/16 :goto_908

    .line 6834
    :cond_78b
    :goto_78b
    const-string v7, "  Uid "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v8, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v2, v7}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v7, ":"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6835
    invoke-virtual {v8, v2, v5, v6}, Lcom/android/server/appop/AppOpsService$UidState;->dump(Ljava/io/PrintWriter;J)V

    if-eqz v9, :cond_7d3

    .line 6838
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    const/4 v15, 0x0

    :goto_7a4
    if-ge v15, v7, :cond_7d3

    .line 6840
    invoke-virtual {v9, v15}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 6841
    invoke-virtual {v9, v15}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v11

    if-ltz v4, :cond_7b3

    if-eq v4, v8, :cond_7b3

    goto :goto_7d0

    :cond_7b3
    if-ltz v0, :cond_7b8

    if-eq v0, v11, :cond_7b8

    goto :goto_7d0

    .line 6848
    :cond_7b8
    const-string v12, "      "

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6849
    const-string v8, ": mode="

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v11}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_7d0
    add-int/lit8 v15, v15, 0x1

    goto :goto_7a4

    :cond_7d3
    if-nez v10, :cond_7d6

    goto :goto_77c

    :cond_7d6
    const/4 v15, 0x0

    .line 6857
    :goto_7d7
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v15, v7, :cond_77c

    .line 6858
    invoke-virtual {v10, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Lcom/android/server/appop/AppOpsService$Ops;

    if-eqz v3, :cond_7ff

    .line 6859
    iget-object v7, v13, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7ff

    :cond_7ee
    move/from16 v16, v0

    move-object/from16 v0, p3

    move/from16 p3, v16

    move-object/from16 v16, v3

    move/from16 v27, v4

    move-wide v3, v5

    move-object/from16 v21, v10

    move-object/from16 v5, v26

    goto/16 :goto_8f4

    :cond_7ff
    const/4 v7, 0x0

    const/4 v14, 0x0

    .line 6863
    :goto_801
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v14, v8, :cond_7ee

    .line 6864
    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appop/AppOpsService$Op;

    .line 6865
    iget v9, v8, Lcom/android/server/appop/AppOpsService$Op;->op:I

    if-ltz v4, :cond_816

    if-eq v4, v9, :cond_816

    move-object/from16 v16, v3

    goto :goto_82a

    :cond_816
    if-ltz v0, :cond_838

    .line 6869
    iget-object v11, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget-object v12, v8, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    move-object/from16 v16, v3

    iget v3, v8, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 6874
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 6871
    invoke-interface {v11, v12, v9, v3}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(Ljava/lang/String;II)I

    move-result v3

    if-eq v0, v3, :cond_83a

    :goto_82a
    move v3, v0

    move-object/from16 v0, p3

    move/from16 p3, v3

    move/from16 v27, v4

    move-wide v3, v5

    move-object/from16 v21, v10

    move-object/from16 v5, v26

    goto/16 :goto_8e0

    :cond_838
    move-object/from16 v16, v3

    :cond_83a
    if-nez v7, :cond_84e

    .line 6878
    const-string v3, "    Package "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v13, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6879
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v18, 0x1

    goto :goto_850

    :cond_84e
    move/from16 v18, v7

    .line 6882
    :goto_850
    const-string v3, "      "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v9}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6883
    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6884
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget-object v7, v8, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget v11, v8, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v12, v8, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 6889
    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 6886
    invoke-interface {v3, v7, v11, v12}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(Ljava/lang/String;II)I

    move-result v3

    .line 6885
    invoke-static {v3}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v3

    .line 6884
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6890
    invoke-static {v9}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v3

    if-eq v3, v9, :cond_8b3

    .line 6892
    const-string v7, " / switch "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6893
    invoke-static {v3}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6894
    invoke-virtual {v13, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/AppOpsService$Op;

    if-nez v7, :cond_897

    .line 6897
    invoke-static {v3}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v3

    goto :goto_8a7

    .line 6898
    :cond_897
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget-object v9, v7, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget v11, v7, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v7, v7, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 6901
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 6898
    invoke-interface {v3, v9, v11, v7}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(Ljava/lang/String;II)I

    move-result v3

    .line 6902
    :goto_8a7
    const-string v7, "="

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6904
    :cond_8b3
    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6905
    const-string v12, "        "

    move v3, v0

    move-object/from16 v0, p3

    move/from16 p3, v3

    move/from16 v27, v4

    move-object v7, v8

    move-object/from16 v21, v10

    move-wide/from16 v8, v23

    move-object/from16 v3, v26

    move/from16 v4, v28

    move-object/from16 v10, v29

    move-object/from16 v11, v30

    invoke-virtual/range {v1 .. v12}, Lcom/android/server/appop/AppOpsService;->dumpStatesLocked(Ljava/io/PrintWriter;Ljava/lang/String;IJLcom/android/server/appop/AppOpsService$Op;JLjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;)V

    move/from16 v28, v4

    move-wide/from16 v23, v8

    move-object/from16 v29, v10

    move-object/from16 v30, v11

    move-wide/from16 v34, v5

    move-object v5, v3

    move-wide/from16 v3, v34

    move/from16 v7, v18

    :goto_8e0
    add-int/lit8 v14, v14, 0x1

    move-object v1, v0

    move/from16 v0, p3

    move-object/from16 p3, v1

    move-object/from16 v1, p0

    move-object/from16 v26, v5

    move-object/from16 v10, v21

    move-wide v5, v3

    move-object/from16 v3, v16

    move/from16 v4, v27

    goto/16 :goto_801

    :goto_8f4
    add-int/lit8 v15, v15, 0x1

    move-object v1, v0

    move/from16 v0, p3

    move-object/from16 p3, v1

    move-object/from16 v1, p0

    move-object/from16 v26, v5

    move-object/from16 v10, v21

    move-wide v5, v3

    move-object/from16 v3, v16

    move/from16 v4, v27

    goto/16 :goto_7d7

    :goto_908
    add-int/lit8 v7, v17, 0x1

    move-object v1, v0

    move/from16 v0, p3

    move-object/from16 p3, v1

    move-object/from16 v1, p0

    move-object/from16 v26, v5

    move/from16 v14, v25

    const/4 v13, 0x0

    const/4 v15, 0x1

    move-wide v5, v3

    move-object/from16 v3, v16

    move/from16 v4, v27

    goto/16 :goto_689

    :cond_91e
    move-object/from16 v0, p3

    .line 6911
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz v19, :cond_934

    .line 6913
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 6914
    const-string v0, "Uid State Changes Event Log:"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6915
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService;->getUidStateTracker()Lcom/android/server/appop/AppOpsUidStateTracker;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/server/appop/AppOpsUidStateTracker;->dumpEvents(Ljava/io/PrintWriter;)V

    .line 6917
    :cond_934
    monitor-exit p0

    :goto_935
    return-void

    :goto_936
    monitor-exit p0
    :try_end_937
    .catchall {:try_start_294 .. :try_end_937} :catchall_2e0

    throw v0
.end method

.method public final dumpHelp(Ljava/io/PrintWriter;)V
    .registers 2

    .line 6210
    const-string p0, "AppOps service (appops) dump options:"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6211
    const-string p0, "  Default is `--op-data --restrictions` "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6212
    const-string p0, "  -h"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6213
    const-string p0, "    Print this help text."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6214
    const-string p0, "  -a, --all"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6215
    const-string p0, "    Print all non-historical service state."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6216
    const-string p0, "  --[no-]op-data"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6217
    const-string p0, "    Dump per-uid op data."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6218
    const-string p0, "  --[no-]restrictions"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6219
    const-string p0, "    Dump appops restrictions (global, user, audio)."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6220
    const-string p0, "  --[no-]watchers"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6221
    const-string p0, "    Dump listeners for appop state changes."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6222
    const-string p0, "  --[no-]uid-state-changes"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6223
    const-string p0, "    Include logs about uid state changes."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6224
    const-string p0, "  --history"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6225
    const-string p0, "    Historical dump mode. Only outputs history. Incompatible with previous options"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6227
    const-string p0, "  --include-discrete [n]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6228
    const-string p0, "    Include discrete ops limited to n per dimension. Use zero for no limit. Only for historical mode"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6230
    const-string p0, "  --history-limit [n]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6231
    const-string p0, "    Include app ops limited to n recent records. Use zero for no limit. Only for historical mode."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6233
    const-string p0, " Filter arguments (filters watcher and op state):"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6234
    const-string p0, "  --op [OP]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6235
    const-string p0, "    Limit output to data associated with the given app op code."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6236
    const-string p0, "  --mode [MODE]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6237
    const-string p0, "    Limit output to data associated with the given app op mode."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6238
    const-string p0, "  --package [PACKAGE]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6239
    const-string p0, "    Limit output to data associated with the given package name."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6240
    const-string p0, "  --attributionTag [attributionTag]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6241
    const-string p0, "    Limit output to data associated with the given attribution tag."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final dumpStatesLocked(Ljava/io/PrintWriter;JLcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;JLjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;)V
    .registers 40

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    .line 6270
    invoke-virtual/range {p4 .. p5}, Lcom/android/server/appop/AppOpsService$Op;->createSingleAttributionEntryLocked(Ljava/lang/String;)Landroid/app/AppOpsManager$OpEntry;

    move-result-object v4

    .line 6271
    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 6273
    invoke-virtual {v4}, Landroid/app/AppOpsManager$AttributedOpEntry;->collectKeys()Landroid/util/ArraySet;

    move-result-object v5

    .line 6275
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v6

    const/4 v8, 0x0

    :goto_1f
    if-ge v8, v6, :cond_132

    .line 6277
    invoke-virtual {v5, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 6279
    invoke-static {v11, v12}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v13

    .line 6280
    invoke-static {v11, v12}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v14

    move v15, v8

    .line 6282
    invoke-virtual {v4, v13, v13, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(III)J

    move-result-wide v7

    const-wide/16 v16, 0x0

    .line 6283
    invoke-virtual {v4, v13, v13, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastRejectTime(III)J

    move-result-wide v9

    move-object/from16 v18, v5

    move/from16 v19, v6

    .line 6284
    invoke-virtual {v4, v13, v13, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastDuration(III)J

    move-result-wide v5

    .line 6285
    invoke-virtual {v4, v13, v13, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v13

    if-eqz v13, :cond_5f

    .line 6291
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 6292
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getAttributionTag()Ljava/lang/String;

    move-result-object v20

    .line 6293
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getUid()I

    move-result v13

    move-object/from16 v28, v20

    move-object/from16 v20, v4

    move-object/from16 v4, v28

    goto :goto_64

    :cond_5f
    const/4 v14, 0x0

    const/4 v13, -0x1

    move-object/from16 v20, v4

    move-object v4, v14

    :goto_64
    cmp-long v21, v7, v16

    move-wide/from16 v22, v11

    .line 6296
    const-string v11, "]"

    const-string v12, ", attributionTag="

    move/from16 v24, v15

    const-string v15, ", pkg="

    const-string/jumbo v1, "uid="

    move-wide/from16 v25, v9

    const-string v9, " proxy["

    const-string v10, ")"

    move-object/from16 v27, v11

    const-string v11, " ("

    if-lez v21, :cond_d7

    .line 6297
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6298
    const-string v3, "Access: "

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6299
    invoke-static/range {v22 .. v23}, Landroid/app/AppOpsManager;->keyToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6300
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6301
    invoke-virtual {v2, v7, v8}, Ljava/util/Date;->setTime(J)V

    .line 6302
    invoke-virtual/range {p8 .. p9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6303
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sub-long v7, v7, p6

    .line 6304
    invoke-static {v7, v8, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 6305
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    cmp-long v3, v5, v16

    if-lez v3, :cond_b4

    .line 6307
    const-string v3, " duration="

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6308
    invoke-static {v5, v6, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    :cond_b4
    if-ltz v13, :cond_d1

    .line 6311
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6312
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6313
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 6314
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6315
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6316
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6317
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v3, v27

    .line 6318
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_d3

    :cond_d1
    move-object/from16 v3, v27

    .line 6320
    :goto_d3
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    goto :goto_d9

    :cond_d7
    move-object/from16 v3, v27

    :goto_d9
    cmp-long v5, v25, v16

    if-lez v5, :cond_123

    move-object/from16 v5, p10

    .line 6324
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6325
    const-string v6, "Reject: "

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6326
    invoke-static/range {v22 .. v23}, Landroid/app/AppOpsManager;->keyToString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v6, v25

    .line 6327
    invoke-virtual {v2, v6, v7}, Ljava/util/Date;->setTime(J)V

    .line 6328
    invoke-virtual/range {p8 .. p9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6329
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sub-long v6, v6, p6

    .line 6330
    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 6331
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-ltz v13, :cond_11f

    .line 6333
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6334
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6335
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 6336
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6337
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6338
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6339
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6340
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6342
    :cond_11f
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    goto :goto_125

    :cond_123
    move-object/from16 v5, p10

    :goto_125
    add-int/lit8 v8, v24, 0x1

    move-object/from16 v1, p5

    move-object v3, v5

    move-object/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v4, v20

    goto/16 :goto_1f

    :cond_132
    move-object/from16 v1, p4

    move-object v5, v3

    const-wide/16 v16, 0x0

    .line 6346
    iget-object v1, v1, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 6347
    const-string v3, "default:0"

    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    move-object/from16 v2, p5

    .line 6348
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AttributedOp;

    .line 6350
    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1b8

    .line 6353
    iget-object v2, v1, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const-wide v3, 0x7fffffffffffffffL

    move-wide/from16 v9, v16

    const/4 v7, 0x0

    :goto_162
    if-ge v7, v2, :cond_17e

    .line 6355
    iget-object v6, v1, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 6356
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    .line 6358
    invoke-virtual {v6}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getStartElapsedTime()J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 6359
    iget v6, v6, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    int-to-long v11, v6

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_162

    .line 6362
    :cond_17e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Running start at: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sub-long v1, p2, v3

    .line 6363
    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 6364
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    const-wide/16 v1, 0x1

    cmp-long v1, v9, v1

    if-lez v1, :cond_1b8

    .line 6367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startNesting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6368
    invoke-virtual {v0, v9, v10}, Ljava/io/PrintWriter;->println(J)V

    :cond_1b8
    return-void
.end method

.method public final dumpStatesLocked(Ljava/io/PrintWriter;Ljava/lang/String;IJLcom/android/server/appop/AppOpsService$Op;JLjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;)V
    .registers 28

    move-object/from16 v1, p1

    move-object/from16 v4, p6

    move-object/from16 v11, p11

    .line 6248
    iget-object v0, v4, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    const-string v2, "default:0"

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/util/ArrayMap;

    .line 6251
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v13

    const/4 v0, 0x0

    move v14, v0

    :goto_17
    if-ge v14, v13, :cond_87

    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_2a

    .line 6254
    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v15, p2

    .line 6253
    invoke-static {v0, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_82

    :cond_2a
    move-object/from16 v15, p2

    .line 6258
    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=[\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6259
    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    move-wide/from16 v2, p4

    move-wide/from16 v6, p7

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/appop/AppOpsService;->dumpStatesLocked(Ljava/io/PrintWriter;JLcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;JLjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;)V

    .line 6261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_82
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v4, p6

    goto :goto_17

    :cond_87
    return-void
.end method

.method public final enforceGetAppOpsStatsPermissionIfNeeded(ILjava/lang/String;)V
    .registers 5

    .line 1906
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1907
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_b

    goto :goto_19

    .line 1911
    :cond_b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-ne p1, v1, :cond_1a

    if-eqz p2, :cond_1a

    .line 1913
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->checkPackage(ILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1a

    :goto_19
    return-void

    .line 1917
    :cond_1a
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.GET_APP_OPS_STATS"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public final enforceManageAppOpsModes(III)V
    .registers 6

    .line 2111
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p1, v0, :cond_7

    return-void

    .line 2114
    :cond_7
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 2115
    monitor-enter p0

    .line 2116
    :try_start_c
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_23

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, p2, :cond_23

    if-ltz p3, :cond_23

    .line 2117
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    if-ne p1, p2, :cond_23

    .line 2120
    monitor-exit p0

    return-void

    :catchall_21
    move-exception p1

    goto :goto_35

    .line 2123
    :cond_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_21

    .line 2124
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.MANAGE_APP_OPS_MODES"

    .line 2125
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    const/4 v0, 0x0

    .line 2124
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    return-void

    .line 2123
    :goto_35
    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_21

    throw p1
.end method

.method public final ensureHistoricalOpRequestIsValid(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJJI)V
    .registers 14

    and-int/lit8 p0, p5, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_10

    if-eq p1, v0, :cond_b

    move p0, v2

    goto :goto_c

    :cond_b
    move p0, v1

    .line 1928
    :goto_c
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    goto :goto_18

    :cond_10
    if-ne p1, v0, :cond_14

    move p0, v2

    goto :goto_15

    :cond_14
    move p0, v1

    .line 1930
    :goto_15
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    :goto_18
    and-int/lit8 p0, p5, 0x2

    if-eqz p0, :cond_20

    .line 1934
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    :cond_20
    if-nez p2, :cond_24

    move p0, v2

    goto :goto_25

    :cond_24
    move p0, v1

    .line 1936
    :goto_25
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    :goto_28
    and-int/lit8 p0, p5, 0x4

    if-nez p0, :cond_34

    if-nez p3, :cond_30

    move p0, v2

    goto :goto_31

    :cond_30
    move p0, v1

    .line 1940
    :goto_31
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    :cond_34
    and-int/lit8 p0, p5, 0x8

    if-eqz p0, :cond_3c

    .line 1944
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_44

    :cond_3c
    if-nez p4, :cond_40

    move p0, v2

    goto :goto_41

    :cond_40
    move p0, v1

    .line 1946
    :goto_41
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    :goto_44
    const/16 p0, 0xf

    .line 1949
    invoke-static {p5, p0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 1952
    invoke-static {p6, p7}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(J)J

    cmp-long p0, p8, p6

    if-lez p0, :cond_51

    move v1, v2

    .line 1953
    :cond_51
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    const/16 p0, 0x1f

    .line 1954
    invoke-static {p10, p0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    return-void
.end method

.method public final evaluateForegroundMode(III)I
    .registers 4

    .line 7616
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getUidStateTracker()Lcom/android/server/appop/AppOpsUidStateTracker;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/appop/AppOpsUidStateTracker;->evalMode(III)I

    move-result p0

    return p0
.end method

.method public extractAsyncOps(Ljava/lang/String;)Ljava/util/List;
    .registers 4

    .line 3840
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3842
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    .line 3844
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    .line 3846
    monitor-enter p0

    .line 3847
    :try_start_c
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUnforwardedAsyncNotedOps:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->getAsyncNotedOpsKey(Ljava/lang/String;I)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    monitor-exit p0

    return-object p1

    :catchall_1a
    move-exception p1

    .line 3848
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public final filterAppAccessUnlocked(Ljava/lang/String;I)Z
    .registers 4

    .line 3218
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    .line 3219
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 3220
    invoke-virtual {v0, p1, p0, p2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public final finishChainsLocked(Landroid/util/SparseLongArray;)V
    .registers 3

    .line 1657
    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda23;

    invoke-direct {v0, p1}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda23;-><init>(Landroid/util/SparseLongArray;)V

    invoke-virtual {p0, v0}, Lcom/android/server/appop/AppOpsService;->doForAllAttributedOpsLocked(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V
    .registers 13

    .line 4317
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    const/4 v6, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public finishOperationForDevice(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)V
    .registers 7

    .line 4324
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final finishOperationImpl(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)V
    .registers 8

    .line 4330
    invoke-virtual {p0, p3}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 4331
    invoke-virtual {p0, p2}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 4332
    invoke-virtual {p0, p6}, Lcom/android/server/appop/AppOpsService;->isValidVirtualDeviceId(I)Z

    move-result v0

    if-nez v0, :cond_28

    .line 4333
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "finishOperationImpl was a no-op as virtualDeviceId "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is invalid"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppOps"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4337
    :cond_28
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, p4, v0}, Lcom/android/server/appop/AppOpsService;->isIncomingPackageValid(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_33

    goto :goto_39

    .line 4341
    :cond_33
    invoke-static {p3, p4}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_3a

    :goto_39
    return-void

    .line 4346
    :cond_3a
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/appop/AppOpsService;->finishOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final finishOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 18

    const/4 v7, 0x1

    move-object v1, p0

    move v5, p3

    move-object v6, p4

    move v2, p5

    move-object v3, p6

    move-object/from16 v4, p7

    .line 4429
    :try_start_8
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    move-result-object p4

    .line 4431
    iget-boolean v0, p4, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_e} :catch_ec

    if-nez v0, :cond_13

    const/4 v0, 0x0

    move-object v4, v0

    goto :goto_15

    :cond_13
    move-object/from16 v4, p7

    .line 4439
    :goto_15
    monitor-enter p0

    const/4 v0, -0x1

    if-eq p3, v0, :cond_1b

    const/4 p3, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p3, 0x0

    .line 4441
    :goto_1c
    :try_start_1c
    iget-boolean v6, p4, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z

    iget-object v7, p4, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p2

    move v3, p5

    move-object v5, v4

    move-object v4, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->getOpLocked(IILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object p4

    move-object v4, v5

    if-nez p4, :cond_65

    .line 4444
    const-string p1, "AppOps"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Operation not found: uid="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " pkg="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ") op="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4446
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4444
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4447
    monitor-exit p0

    return-void

    :catchall_61
    move-exception v0

    move-object p1, v0

    goto/16 :goto_ea

    :cond_65
    move-object v1, p0

    move-object v3, p1

    move v6, p3

    move-object v2, p4

    move/from16 v5, p8

    .line 4450
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->getAttributedOpWithClientId(Lcom/android/server/appop/AppOpsService$Op;Landroid/os/IBinder;Ljava/lang/String;IZ)Lcom/android/server/appop/AttributedOp;

    move-result-object p3

    if-nez p3, :cond_a5

    .line 4453
    const-string p1, "AppOps"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Attribution not found: uid="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " pkg="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ") op="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4455
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4453
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4456
    monitor-exit p0

    return-void

    .line 4459
    :cond_a5
    invoke-virtual {p3}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result p4

    if-nez p4, :cond_e5

    invoke-virtual {p3}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    move-result p4

    if-eqz p4, :cond_b2

    goto :goto_e5

    .line 4462
    :cond_b2
    const-string p1, "AppOps"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Operation not started: uid="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " pkg="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ") op="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4464
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4462
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e8

    .line 4460
    :cond_e5
    :goto_e5
    invoke-virtual {p3, p1}, Lcom/android/server/appop/AttributedOp;->finished(Landroid/os/IBinder;)V

    .line 4466
    :goto_e8
    monitor-exit p0

    return-void

    :goto_ea
    monitor-exit p0
    :try_end_eb
    .catchall {:try_start_1c .. :try_end_eb} :catchall_61

    throw p1

    :catch_ec
    move-exception v0

    move-object p1, v0

    .line 4435
    const-string p2, "finishOperation"

    invoke-virtual {p0, p5, p1, p2}, Lcom/android/server/appop/AppOpsService;->logVerifyAndGetBypassFailure(ILjava/lang/SecurityException;Ljava/lang/String;)V

    return-void
.end method

.method public final finishOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)V
    .registers 16

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move v8, p6

    .line 4416
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/appop/AppOpsService;->finishOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public finishProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)V
    .registers 5

    .line 4354
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->finishProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)V

    return-void
.end method

.method public final finishProxyOperationImpl(Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)Ljava/lang/Void;
    .registers 16

    .line 4368
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v3

    .line 4369
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4370
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 4371
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v7

    .line 4372
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v6

    .line 4373
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v8

    move v9, v7

    .line 4374
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getNextAttributionTag()Ljava/lang/String;

    move-result-object v7

    if-eqz p4, :cond_27

    .line 4377
    invoke-virtual {p0, p3}, Lcom/android/server/appop/AppOpsService;->isCallerAndAttributionTrusted(Landroid/content/AttributionSource;)Z

    move-result p4

    if-eqz p4, :cond_27

    const/4 p4, 0x1

    goto :goto_28

    :cond_27
    const/4 p4, 0x0

    .line 4379
    :goto_28
    invoke-virtual {p0, p3}, Lcom/android/server/appop/AppOpsService;->verifyIncomingProxyUid(Landroid/content/AttributionSource;)V

    .line 4380
    invoke-virtual {p0, p2}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 4381
    invoke-virtual {p0, v6}, Lcom/android/server/appop/AppOpsService;->isValidVirtualDeviceId(I)Z

    move-result p3

    const/4 v10, 0x0

    if-nez p3, :cond_51

    .line 4382
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "finishProxyOperationImpl was a no-op as virtualDeviceId "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is invalid"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppOps"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    .line 4386
    :cond_51
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    invoke-virtual {p0, v0, p3}, Lcom/android/server/appop/AppOpsService;->isIncomingPackageValid(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_82

    .line 4387
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    invoke-virtual {p0, v8, p3}, Lcom/android/server/appop/AppOpsService;->isIncomingPackageValid(Ljava/lang/String;I)Z

    move-result p3

    if-nez p3, :cond_66

    goto :goto_82

    .line 4391
    :cond_66
    invoke-static {v3, v0}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6d

    return-object v10

    :cond_6d
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    if-nez p4, :cond_75

    .line 4398
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService;->finishOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)V

    .line 4402
    :cond_75
    invoke-static {v9, v8}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_7c

    return-object v10

    :cond_7c
    move v8, v6

    move v5, v9

    move-object v6, p0

    .line 4408
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/appop/AppOpsService;->finishOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_82
    :goto_82
    return-object v10
.end method

.method public finishProxyOperationWithState(Landroid/os/IBinder;ILandroid/content/AttributionSourceState;Z)V
    .registers 6

    .line 4361
    new-instance v0, Landroid/content/AttributionSource;

    invoke-direct {v0, p3}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    .line 4362
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->finishProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)V

    return-void
.end method

.method public final getAppOpMode(IILjava/lang/String;Ljava/lang/String;IZZ)I
    .registers 18

    const/4 v9, 0x1

    .line 3109
    :try_start_1
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_5} :catch_5c

    .line 3115
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedDueToSuspend(ILjava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_c

    return v9

    .line 3119
    :cond_c
    monitor-enter p0

    .line 3120
    :try_start_d
    iget-object v7, v0, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    move-object v1, p0

    move v3, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;Ljava/lang/String;ILandroid/app/AppOpsManager$RestrictionBypass;Z)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3122
    monitor-exit p0

    return v9

    :catchall_1f
    move-exception v0

    goto :goto_5a

    .line 3124
    :cond_21
    invoke-static {p2}, Lcom/android/server/appop/AppOpsService;->isOpAllowedForUid(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x0

    .line 3125
    monitor-exit p0

    return v0

    .line 3128
    :cond_2a
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v0

    .line 3129
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 3130
    invoke-virtual {p0, p5, v0}, Lcom/android/server/appop/AppOpsService;->getPersistentDeviceIdForOp(II)Ljava/lang/String;

    move-result-object v5

    .line 3129
    invoke-interface {v3, p2, v5, v0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getUidMode(ILjava/lang/String;I)I

    move-result v3

    .line 3132
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v5

    if-eq v3, v5, :cond_47

    if-eqz p6, :cond_41

    goto :goto_45

    .line 3133
    :cond_41
    invoke-virtual {p0, p2, v0, v3}, Lcom/android/server/appop/AppOpsService;->evaluateForegroundMode(III)I

    move-result v3

    :goto_45
    monitor-exit p0

    return v3

    .line 3136
    :cond_47
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 3137
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 3136
    invoke-interface {v3, p3, v0, v5}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(Ljava/lang/String;II)I

    move-result v3

    if-eqz p6, :cond_54

    goto :goto_58

    .line 3138
    :cond_54
    invoke-virtual {p0, p2, v0, v3}, Lcom/android/server/appop/AppOpsService;->evaluateForegroundMode(III)I

    move-result v3

    :goto_58
    monitor-exit p0

    return v3

    .line 3139
    :goto_5a
    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_d .. :try_end_5b} :catchall_1f

    throw v0

    :catch_5c
    move-exception v0

    .line 3111
    const-string v3, "getAppOpMode"

    invoke-virtual {p0, p2, v0, v3}, Lcom/android/server/appop/AppOpsService;->logVerifyAndGetBypassFailure(ILjava/lang/SecurityException;Ljava/lang/String;)V

    return v9
.end method

.method public final getAsyncNotedOpsKey(Ljava/lang/String;I)Landroid/util/Pair;
    .registers 3

    .line 3781
    new-instance p0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getAttributedOpWithClientId(Lcom/android/server/appop/AppOpsService$Op;Landroid/os/IBinder;Ljava/lang/String;IZ)Lcom/android/server/appop/AttributedOp;
    .registers 9

    .line 4471
    iget-object v0, p1, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    iget v1, p1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 4473
    invoke-virtual {p0, p4, v1}, Lcom/android/server/appop/AppOpsService;->getPersistentDeviceIdForOp(II)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 4472
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 4474
    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AttributedOp;

    if-nez p5, :cond_1c

    goto :goto_4c

    :cond_1c
    if-eqz v0, :cond_2a

    .line 4478
    new-instance p5, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda14;

    invoke-direct {p5, p2}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda14;-><init>(Landroid/os/IBinder;)V

    .line 4479
    invoke-virtual {v0, p5}, Lcom/android/server/appop/AttributedOp;->hasInProgressEvent(Ljava/util/function/Predicate;)Z

    move-result p5

    if-eqz p5, :cond_2a

    return-object v0

    :cond_2a
    const/4 p5, 0x0

    .line 4489
    :try_start_2b
    iget v1, p1, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v2, p1, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, p3}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    move-result-object p3

    iget-boolean p3, p3, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z
    :try_end_35
    .catch Ljava/lang/SecurityException; {:try_start_2b .. :try_end_35} :catch_36

    goto :goto_37

    :catch_36
    move p3, p5

    :goto_37
    const/4 v1, 0x1

    if-eqz p3, :cond_4d

    if-eqz v0, :cond_49

    .line 4495
    new-instance p3, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda15;

    invoke-direct {p3, p2}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda15;-><init>(Landroid/os/IBinder;)V

    .line 4496
    invoke-virtual {v0, p3}, Lcom/android/server/appop/AttributedOp;->hasInProgressEvent(Ljava/util/function/Predicate;)Z

    move-result p3

    if-eqz p3, :cond_49

    move p3, v1

    goto :goto_4a

    :cond_49
    move p3, p5

    :goto_4a
    if-eqz p3, :cond_4d

    :goto_4c
    return-object v0

    .line 4505
    :cond_4d
    iget-object p3, p1, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    iget p1, p1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 4506
    invoke-virtual {p0, p4, p1}, Lcom/android/server/appop/AppOpsService;->getPersistentDeviceIdForOp(II)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 4505
    invoke-virtual {p3, p0, p1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    const/4 p1, 0x0

    .line 4507
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/appop/AttributedOp;

    if-eqz p0, :cond_75

    .line 4508
    new-instance p3, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda16;

    invoke-direct {p3, p2}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda16;-><init>(Landroid/os/IBinder;)V

    .line 4509
    invoke-virtual {p0, p3}, Lcom/android/server/appop/AttributedOp;->hasInProgressEvent(Ljava/util/function/Predicate;)Z

    move-result p2

    if-eqz p2, :cond_75

    move p5, v1

    :cond_75
    if-eqz p5, :cond_78

    return-object p0

    :cond_78
    return-object p1
.end method

.method public final getBypassforPackage(Lcom/android/server/pm/pkg/PackageState;)Landroid/app/AppOpsManager$RestrictionBypass;
    .registers 9

    .line 4949
    new-instance v0, Landroid/app/AppOpsManager$RestrictionBypass;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_e

    move v1, v4

    goto :goto_f

    :cond_e
    move v1, v3

    .line 4950
    :goto_f
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isPrivileged()Z

    move-result v2

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const/4 v5, -0x1

    .line 4952
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p1

    .line 4950
    const-string v6, "android.permission.EXEMPT_FROM_AUDIO_RECORD_RESTRICTIONS"

    invoke-virtual {p0, v6, v5, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_23

    move v3, v4

    :cond_23
    invoke-direct {v0, v1, v2, v3}, Landroid/app/AppOpsManager$RestrictionBypass;-><init>(ZZZ)V

    return-object v0
.end method

.method public getHistoricalOps(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIJJILandroid/os/RemoteCallback;)V
    .registers 27

    move-object/from16 v12, p12

    .line 1961
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p6

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    move/from16 v10, p11

    .line 1963
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/appop/AppOpsService;->ensureHistoricalOpRequestIsValid(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJJI)V

    .line 1965
    const-string v2, "callback cannot be null"

    invoke-static {v12, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1966
    const-class v2, Landroid/app/ActivityManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManagerInternal;

    and-int/lit8 v3, p6, 0x1

    if-eqz v3, :cond_34

    .line 1967
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    if-ne p1, v3, :cond_34

    goto/16 :goto_a7

    .line 1970
    :cond_34
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/ActivityManagerInternal;->getInstrumentationSourceUid(I)I

    move-result v2

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v3, :cond_43

    move v2, v6

    goto :goto_44

    :cond_43
    move v2, v5

    .line 1971
    :goto_44
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    if-ne v3, v7, :cond_50

    move v3, v6

    goto :goto_51

    :cond_50
    move v3, v5

    .line 1974
    :goto_51
    :try_start_51
    iget-object v7, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 1975
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1976
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 1974
    invoke-virtual {v11, v7, v5, v8}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v7

    .line 1977
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8
    :try_end_6b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_51 .. :try_end_6b} :catch_109

    if-ne v7, v8, :cond_6f

    move v7, v6

    goto :goto_70

    :cond_6f
    move v7, v5

    .line 1982
    :goto_70
    iget-object v8, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 1984
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 1982
    const-string v11, "android.permission.GET_HISTORICAL_APP_OPS_STATS"

    invoke-virtual {v8, v11, v9, v10}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v8

    if-nez v8, :cond_83

    move v5, v6

    :cond_83
    if-nez v3, :cond_96

    if-nez v2, :cond_96

    if-nez v7, :cond_96

    if-nez v5, :cond_96

    .line 1989
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda11;

    invoke-direct {p1, v12}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda11;-><init>(Landroid/os/RemoteCallback;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1993
    :cond_96
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 1994
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const-string v6, "getHistoricalOps"

    .line 1993
    const-string v7, "android.permission.GET_APP_OPS_STATS"

    invoke-virtual {v2, v7, v3, v5, v6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    :goto_a7
    const/4 v2, 0x0

    if-eqz v4, :cond_b8

    .line 1998
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v5, v3

    goto :goto_b9

    :cond_b8
    move-object v5, v2

    :goto_b9
    and-int/lit8 v3, p5, 0x4

    if-eqz v3, :cond_c4

    .line 2002
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 2003
    invoke-static {v3}, Landroid/permission/PermissionManager;->getIndicatorExemptedPackages(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v3

    goto :goto_c5

    :cond_c4
    move-object v3, v2

    :goto_c5
    if-eqz v3, :cond_d3

    .line 2008
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 2007
    invoke-interface {v3, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    :cond_d3
    move-object v11, v2

    .line 2011
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getIoHandler()Landroid/os/Handler;

    move-result-object v13

    new-instance v2, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda12;

    invoke-direct {v2}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda12;-><init>()V

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    .line 2013
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2014
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v0, v2

    move-object v2, p1

    .line 2011
    invoke-static/range {v0 .. v12}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/DodecConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p0

    .line 2016
    invoke-interface {p0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p0

    .line 2011
    invoke-virtual {v13, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :catch_109
    return-void
.end method

.method public getHistoricalOpsFromDiskRaw(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIJJILandroid/os/RemoteCallback;)V
    .registers 27

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p6

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    move/from16 v10, p11

    .line 2023
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/appop/AppOpsService;->ensureHistoricalOpRequestIsValid(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJJI)V

    .line 2025
    const-string v1, "callback cannot be null"

    move-object/from16 v12, p12

    invoke-static {v12, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2027
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 2028
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const-string v5, "getHistoricalOps"

    .line 2027
    const-string v6, "android.permission.MANAGE_APPOPS"

    invoke-virtual {v1, v6, v2, v3, v5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    const/4 v1, 0x0

    if-eqz v4, :cond_3c

    .line 2031
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v4, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object v5, v2

    goto :goto_3d

    :cond_3c
    move-object v5, v1

    :goto_3d
    and-int/lit8 v2, p5, 0x4

    if-eqz v2, :cond_48

    .line 2035
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 2036
    invoke-static {v2}, Landroid/permission/PermissionManager;->getIndicatorExemptedPackages(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v2

    goto :goto_49

    :cond_48
    move-object v2, v1

    :goto_49
    if-eqz v2, :cond_57

    .line 2041
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 2040
    invoke-interface {v2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    :cond_57
    move-object v11, v1

    .line 2044
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getIoHandler()Landroid/os/Handler;

    move-result-object v13

    new-instance v1, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda0;-><init>()V

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    .line 2046
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2047
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v0, v1

    move-object v1, p0

    .line 2044
    invoke-static/range {v0 .. v12}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/DodecConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p0

    .line 2048
    invoke-interface {p0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p0

    .line 2044
    invoke-virtual {v13, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final getIoHandler()Landroid/os/Handler;
    .registers 1

    .line 8197
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public final getOpLocked(IILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Op;
    .registers 15

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    move v6, p7

    .line 5276
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object p0

    if-nez p0, :cond_f

    const/4 p0, 0x0

    return-object p0

    .line 5281
    :cond_f
    invoke-virtual {v0, p0, p1, v1, v6}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object p0

    return-object p0
.end method

.method public final getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;
    .registers 11

    .line 5285
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$Op;

    if-nez v0, :cond_1c

    if-nez p4, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 5290
    :cond_c
    new-instance v0, Lcom/android/server/appop/AppOpsService$Op;

    iget-object v2, p1, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget-object v3, p1, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    move-object v1, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService$Op;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;II)V

    .line 5291
    invoke-virtual {p1, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1d

    :cond_1c
    move-object v1, p0

    :goto_1d
    if-eqz p4, :cond_22

    .line 5294
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService;->scheduleWriteLocked()V

    :cond_22
    return-object v0
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .registers 12

    .line 1880
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->enforceGetAppOpsStatsPermissionIfNeeded(ILjava/lang/String;)V

    .line 1881
    invoke-static {p1, p2}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c

    .line 1883
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 1885
    :cond_c
    monitor-enter p0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    .line 1886
    :try_start_13
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_1f

    .line 1889
    monitor-exit v1

    return-object p1

    :catchall_1c
    move-exception v0

    move-object p0, v0

    goto :goto_45

    .line 1891
    :cond_1f
    const-string p2, "default:0"

    invoke-virtual {v1, p0, p3, p2}, Lcom/android/server/appop/AppOpsService;->collectOps(Lcom/android/server/appop/AppOpsService$Ops;[ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_43

    .line 1893
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-nez p3, :cond_2e

    goto :goto_43

    .line 1896
    :cond_2e
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1897
    new-instance p3, Landroid/app/AppOpsManager$PackageOps;

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget p0, p0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-direct {p3, v0, p0, p2}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 1899
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1900
    monitor-exit v1

    return-object p1

    .line 1894
    :cond_43
    :goto_43
    monitor-exit v1

    return-object p1

    .line 1901
    :goto_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_13 .. :try_end_46} :catchall_1c

    throw p0
.end method

.method public final getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;
    .registers 8

    const/4 v0, 0x0

    .line 5212
    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_9

    return-object p1

    .line 5217
    :cond_9
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$Ops;

    if-nez v0, :cond_24

    if-nez p6, :cond_16

    return-object p1

    .line 5222
    :cond_16
    new-instance v0, Lcom/android/server/appop/AppOpsService$Ops;

    invoke-direct {v0, p2, p0}, Lcom/android/server/appop/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/appop/AppOpsService$UidState;)V

    .line 5223
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    if-eqz p6, :cond_3e

    if-eqz p5, :cond_2a

    .line 5228
    iput-object p5, v0, Lcom/android/server/appop/AppOpsService$Ops;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    :cond_2a
    if-eqz p3, :cond_3e

    .line 5232
    iget-object p0, v0, Lcom/android/server/appop/AppOpsService$Ops;->knownAttributionTags:Landroid/util/ArraySet;

    invoke-virtual {p0, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_39

    .line 5234
    iget-object p0, v0, Lcom/android/server/appop/AppOpsService$Ops;->validAttributionTags:Landroid/util/ArraySet;

    invoke-virtual {p0, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 5236
    :cond_39
    iget-object p0, v0, Lcom/android/server/appop/AppOpsService$Ops;->validAttributionTags:Landroid/util/ArraySet;

    invoke-virtual {p0, p3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_3e
    return-object v0
.end method

.method public final getPackageListAndResample()Ljava/util/List;
    .registers 2

    .line 7351
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getPackageNamesForSampling()Ljava/util/List;

    move-result-object v0

    .line 7352
    monitor-enter p0

    .line 7353
    :try_start_5
    invoke-virtual {p0, v0}, Lcom/android/server/appop/AppOpsService;->resamplePackageAndAppOpLocked(Ljava/util/List;)V

    .line 7354
    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public final getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;
    .registers 2

    .line 4903
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_e

    .line 4904
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 4906
    :cond_e
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-eqz p0, :cond_13

    return-object p0

    .line 4907
    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "PackageManagerInternal not loaded"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getPackageManagerLocal()Lcom/android/server/pm/PackageManagerLocal;
    .registers 2

    .line 4917
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mPackageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-nez v0, :cond_e

    .line 4918
    const-class v0, Lcom/android/server/pm/PackageManagerLocal;

    invoke-static {v0}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerLocal;

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mPackageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    .line 4920
    :cond_e
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mPackageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-eqz p0, :cond_13

    return-object p0

    .line 4921
    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "PackageManagerLocal not loaded"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getPackageNamesForSampling()Ljava/util/List;
    .registers 9

    .line 7467
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7468
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 7470
    invoke-virtual {v2}, Landroid/content/pm/PackageManagerInternal;->getPackageList()Lcom/android/server/pm/PackageList;

    move-result-object v1

    .line 7471
    invoke-virtual {v1}, Lcom/android/server/pm/PackageList;->getPackageNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 7473
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v7

    const-wide/16 v4, 0x1000

    .line 7472
    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(Ljava/lang/String;JII)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 7474
    invoke-virtual {p0, v3}, Lcom/android/server/appop/AppOpsService;->isSamplingTarget(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 7475
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_42
    return-object v0
.end method

.method public getPackagesForOps([I)Ljava/util/List;
    .registers 3

    .line 1831
    const-string v0, "default:0"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->getPackagesForOpsForDevice([ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 1833
    :cond_a
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPackagesForOpsForDevice([ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 19

    move-object/from16 v1, p0

    .line 1839
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1840
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.GET_APP_OPS_STATS"

    .line 1841
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 1842
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v6, 0x0

    .line 1840
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->checkPermission(Ljava/lang/String;IILandroid/os/IBinder;)I

    move-result v2

    if-nez v2, :cond_1b

    const/4 v2, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    .line 1845
    :goto_1c
    monitor-enter p0

    .line 1846
    :try_start_1d
    iget-object v4, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    move-object v7, v6

    const/4 v5, 0x0

    :goto_25
    if-ge v5, v4, :cond_79

    .line 1848
    iget-object v8, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appop/AppOpsService$UidState;

    .line 1849
    iget-object v9, v8, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_38

    goto :goto_3e

    :cond_38
    if-nez v2, :cond_45

    .line 1853
    iget v9, v8, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    if-eq v0, v9, :cond_45

    :cond_3e
    :goto_3e
    move-object/from16 v12, p1

    move-object/from16 v13, p2

    goto :goto_76

    :catchall_43
    move-exception v0

    goto :goto_83

    .line 1857
    :cond_45
    iget-object v8, v8, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1858
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_4c
    if-ge v10, v9, :cond_3e

    .line 1860
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/appop/AppOpsService$Ops;

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    .line 1861
    invoke-virtual {v1, v11, v12, v13}, Lcom/android/server/appop/AppOpsService;->collectOps(Lcom/android/server/appop/AppOpsService$Ops;[ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    if-eqz v14, :cond_73

    if-nez v7, :cond_65

    .line 1865
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1867
    :cond_65
    new-instance v15, Landroid/app/AppOpsManager$PackageOps;

    iget-object v3, v11, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v11, v11, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v11, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-direct {v15, v3, v11, v14}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 1869
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_73
    add-int/lit8 v10, v10, 0x1

    goto :goto_4c

    :goto_76
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    .line 1873
    :cond_79
    monitor-exit p0
    :try_end_7a
    .catchall {:try_start_1d .. :try_end_7a} :catchall_43

    if-nez v7, :cond_7d

    return-object v6

    .line 1874
    :cond_7d
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, v7}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0

    .line 1873
    :goto_83
    :try_start_83
    monitor-exit p0
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_43

    throw v0
.end method

.method public getPackagesWithNonDefaultUidMode(III)Ljava/util/List;
    .registers 7

    .line 7589
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.QUERY_ALL_PACKAGES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7590
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eq p3, v0, :cond_19

    .line 7591
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7594
    :cond_19
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    if-eq v0, p2, :cond_59

    .line 7598
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getUidsWithOpMode(III)Ljava/util/List;

    move-result-object p1

    .line 7599
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 7600
    monitor-enter p0

    .line 7601
    :try_start_2b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x0

    :goto_30
    if-ge v0, p3, :cond_55

    .line 7603
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 7604
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$UidState;

    if-nez v1, :cond_47

    goto :goto_50

    .line 7608
    :cond_47
    iget-object v1, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :catchall_53
    move-exception p1

    goto :goto_57

    .line 7610
    :cond_55
    monitor-exit p0

    return-object p2

    :goto_57
    monitor-exit p0
    :try_end_58
    .catchall {:try_start_2b .. :try_end_58} :catchall_53

    throw p1

    .line 7595
    :cond_59
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Mode "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is the default mode for op "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7596
    invoke-static {}, Landroid/app/AppOpsManager;->getOpStrs()[Ljava/lang/String;

    move-result-object p2

    aget-object p1, p2, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getPersistentDeviceIdForOp(II)Ljava/lang/String;
    .registers 4

    .line 7564
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 7565
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object p2

    .line 7564
    invoke-static {v0, p1, p2}, Landroid/permission/PermissionManager;->resolveDeviceIdForPermissionCheck(Landroid/content/Context;ILjava/lang/String;)I

    move-result p1

    .line 7567
    const-string p2, "default:0"

    if-nez p1, :cond_f

    return-object p2

    .line 7570
    :cond_f
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-nez v0, :cond_14

    return-object p2

    .line 7574
    :cond_14
    invoke-virtual {v0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getPersistentIdForDevice(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_23

    .line 7577
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mKnownDeviceIds:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Ljava/lang/String;

    :cond_23
    if-eqz p2, :cond_26

    return-object p2

    .line 7582
    :cond_26
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requested persistentId for invalid virtualDeviceId: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getProtectedPackages()Lcom/android/server/pm/ProtectedPackages;
    .registers 3

    .line 2517
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    if-nez v0, :cond_d

    .line 2518
    new-instance v0, Lcom/android/server/pm/ProtectedPackages;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/pm/ProtectedPackages;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 2520
    :cond_d
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    return-object p0
.end method

.method public final getRuntimeAppOpsList()Ljava/util/List;
    .registers 4

    .line 7456
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    const/16 v2, 0xaa

    if-ge v1, v2, :cond_1a

    .line 7458
    invoke-virtual {p0, v1}, Lcom/android/server/appop/AppOpsService;->shouldCollectNotes(I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 7459
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1a
    return-object v0
.end method

.method public getUidOps(I[I)Ljava/util/List;
    .registers 8

    .line 2066
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_APP_OPS_STATS"

    .line 2067
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    .line 2066
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2068
    monitor-enter p0

    const/4 v0, 0x0

    .line 2069
    :try_start_12
    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object p1

    if-nez p1, :cond_1c

    .line 2071
    monitor-exit p0

    return-object v4

    :catchall_1a
    move-exception p1

    goto :goto_35

    .line 2073
    :cond_1c
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->collectUidOps(Lcom/android/server/appop/AppOpsService$UidState;[I)Ljava/util/ArrayList;

    move-result-object p2

    if-nez p2, :cond_24

    .line 2075
    monitor-exit p0

    return-object v4

    .line 2077
    :cond_24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2078
    new-instance v1, Landroid/app/AppOpsManager$PackageOps;

    iget p1, p1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-direct {v1, v4, p1, p2}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 2080
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2081
    monitor-exit p0

    return-object v0

    .line 2082
    :goto_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_12 .. :try_end_36} :catchall_1a

    throw p1
.end method

.method public final getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;
    .registers 4

    .line 4869
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$UidState;

    if-nez v0, :cond_19

    if-nez p2, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 4874
    :cond_e
    new-instance p2, Lcom/android/server/appop/AppOpsService$UidState;

    invoke-direct {p2, p0, p1}, Lcom/android/server/appop/AppOpsService$UidState;-><init>(Lcom/android/server/appop/AppOpsService;I)V

    .line 4875
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p2

    :cond_19
    return-object v0
.end method

.method public final getUidStateTracker()Lcom/android/server/appop/AppOpsUidStateTracker;
    .registers 8

    .line 457
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStateTracker:Lcom/android/server/appop/AppOpsUidStateTracker;

    if-nez v0, :cond_2e

    .line 458
    new-instance v1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;

    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 459
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/ActivityManagerInternal;

    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda13;

    invoke-direct {v4, p0}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/appop/AppOpsService;)V

    sget-object v5, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    iget-object v6, p0, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    invoke-direct/range {v1 .. v6}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;-><init>(Landroid/app/ActivityManagerInternal;Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/android/internal/os/Clock;Lcom/android/server/appop/AppOpsService$Constants;)V

    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStateTracker:Lcom/android/server/appop/AppOpsUidStateTracker;

    .line 468
    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v2, Lcom/android/server/appop/AppOpsService$2;

    invoke-direct {v2, p0}, Lcom/android/server/appop/AppOpsService$2;-><init>(Lcom/android/server/appop/AppOpsService;)V

    invoke-interface {v1, v0, v2}, Lcom/android/server/appop/AppOpsUidStateTracker;->addUidStateChangedCallback(Ljava/util/concurrent/Executor;Lcom/android/server/appop/AppOpsUidStateTracker$UidStateChangedCallback;)V

    .line 483
    :cond_2e
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mUidStateTracker:Lcom/android/server/appop/AppOpsUidStateTracker;

    return-object p0
.end method

.method public final getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;
    .registers 2

    .line 4931
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    if-nez v0, :cond_e

    .line 4932
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 4934
    :cond_e
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    if-eqz p0, :cond_13

    return-object p0

    .line 4935
    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "UserManagerInternal not loaded"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final initializePackageUidStateLocked(IILjava/lang/String;Landroid/util/SparseBooleanArray;)V
    .registers 12

    .line 1305
    invoke-static {p1, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    const/4 p2, 0x1

    if-eqz p4, :cond_a

    .line 1307
    invoke-virtual {p4, v5, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1309
    :cond_a
    invoke-virtual {p0, v5, p2}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v2

    .line 1310
    iget-object p2, v2, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {p2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/appop/AppOpsService$Ops;

    if-nez p2, :cond_26

    .line 1312
    new-instance p2, Lcom/android/server/appop/AppOpsService$Ops;

    invoke-direct {p2, p3, v2}, Lcom/android/server/appop/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/appop/AppOpsService$UidState;)V

    .line 1313
    iget-object v0, v2, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    :cond_26
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 1317
    invoke-interface {v0, p3, p1}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getNonDefaultPackageModes(Ljava/lang/String;I)Landroid/util/SparseIntArray;

    move-result-object p1

    const/4 v0, 0x0

    move v6, v0

    .line 1318
    :goto_2e
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-ge v6, v0, :cond_50

    .line 1319
    invoke-virtual {p1, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 1321
    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_49

    .line 1322
    new-instance v0, Lcom/android/server/appop/AppOpsService$Op;

    move-object v1, p0

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService$Op;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;II)V

    invoke-virtual {p2, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4b

    :cond_49
    move-object v1, p0

    move-object v3, p3

    :goto_4b
    add-int/lit8 v6, v6, 0x1

    move-object p0, v1

    move-object p3, v3

    goto :goto_2e

    :cond_50
    move-object v1, p0

    .line 1326
    invoke-virtual {v1, v5, p4}, Lcom/android/server/appop/AppOpsService;->createSandboxUidStateIfNotExistsForAppLocked(ILandroid/util/SparseBooleanArray;)V

    return-void
.end method

.method public final initializeRarelyUsedPackagesListSQLite(Landroid/util/ArraySet;)V
    .registers 13

    .line 7387
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getRuntimeAppOpsList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 7389
    :try_start_5
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    new-array v3, v1, [Ljava/lang/String;

    .line 7390
    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Ljava/lang/String;

    .line 7392
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    sget-object v4, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v5, 0x7

    invoke-virtual {v0, v5, v6, v4}, Ljava/time/Instant;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    const-wide v8, 0x7fffffffffffffffL

    const/16 v10, 0x9

    const/4 v4, 0x3

    const/16 v5, 0x8

    .line 7389
    invoke-interface/range {v2 .. v10}, Lcom/android/server/appop/HistoricalRegistryInterface;->getRecentlyUsedPackageNames([Ljava/lang/String;IIJJI)Landroid/util/ArraySet;

    move-result-object v0

    .line 7394
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->removeAll(Landroid/util/ArraySet;)Z
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_37} :catch_38

    goto :goto_40

    :catch_38
    move-exception v0

    .line 7396
    const-string v2, "AppOps"

    const-string v3, "Error getting recently used packages"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7398
    :goto_40
    monitor-enter p0

    .line 7399
    :try_start_41
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    :goto_47
    if-ge v1, v0, :cond_5a

    .line 7401
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    :catchall_57
    move-exception v0

    move-object p1, v0

    goto :goto_61

    .line 7403
    :cond_5a
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackages:Landroid/util/ArraySet;

    const/4 p1, 0x1

    .line 7404
    iput-boolean p1, p0, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackagesInitialized:Z

    .line 7405
    monitor-exit p0

    return-void

    :goto_61
    monitor-exit p0
    :try_end_62
    .catchall {:try_start_41 .. :try_end_62} :catchall_57

    throw p1
.end method

.method public initializeUidStates()V
    .registers 10

    .line 1252
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    .line 1253
    monitor-enter p0

    .line 1254
    :try_start_5
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 1256
    sget-object v2, Lcom/android/server/appop/AppOpsService;->NON_PACKAGE_UIDS:[I

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_f
    if-ge v5, v3, :cond_2f

    aget v6, v2, v5

    .line 1257
    iget-object v7, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->contains(I)Z

    move-result v7

    if-nez v7, :cond_28

    .line 1258
    iget-object v7, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    new-instance v8, Lcom/android/server/appop/AppOpsService$UidState;

    invoke-direct {v8, p0, v6}, Lcom/android/server/appop/AppOpsService$UidState;-><init>(Lcom/android/server/appop/AppOpsService;I)V

    invoke-virtual {v7, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_28

    :catchall_26
    move-exception v0

    goto :goto_5f

    :cond_28
    :goto_28
    const/4 v7, 0x1

    .line 1260
    invoke-virtual {v1, v6, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 1263
    :cond_2f
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    .line 1265
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getPackageManagerLocal()Lcom/android/server/pm/PackageManagerLocal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v2
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_26

    .line 1266
    :try_start_3b
    invoke-interface {v2}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    move-result-object v3

    .line 1267
    :goto_3f
    array-length v5, v0

    if-ge v4, v5, :cond_4c

    .line 1268
    aget v5, v0, v4

    .line 1269
    invoke-virtual {p0, v5, v3, v1}, Lcom/android/server/appop/AppOpsService;->initializeUserUidStatesLocked(ILjava/util/Map;Landroid/util/SparseBooleanArray;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    :catchall_4a
    move-exception v0

    goto :goto_54

    .line 1272
    :cond_4c
    invoke-virtual {p0, v1, v3}, Lcom/android/server/appop/AppOpsService;->trimUidStatesLocked(Landroid/util/SparseBooleanArray;Ljava/util/Map;)V
    :try_end_4f
    .catchall {:try_start_3b .. :try_end_4f} :catchall_4a

    .line 1273
    :try_start_4f
    invoke-interface {v2}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->close()V

    .line 1274
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_4f .. :try_end_53} :catchall_26

    return-void

    :goto_54
    if-eqz v2, :cond_5e

    .line 1264
    :try_start_56
    invoke-interface {v2}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->close()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_5a

    goto :goto_5e

    :catchall_5a
    move-exception v1

    :try_start_5b
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5e
    :goto_5e
    throw v0

    .line 1274
    :goto_5f
    monitor-exit p0
    :try_end_60
    .catchall {:try_start_5b .. :try_end_60} :catchall_26

    throw v0
.end method

.method public final initializeUserUidStates(I)V
    .registers 5

    .line 1278
    monitor-enter p0

    .line 1280
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getPackageManagerLocal()Lcom/android/server/pm/PackageManagerLocal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_16

    .line 1281
    :try_start_9
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/appop/AppOpsService;->initializeUserUidStatesLocked(ILjava/util/Map;Landroid/util/SparseBooleanArray;)V
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_18

    .line 1282
    :try_start_11
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->close()V

    .line 1283
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception p1

    goto :goto_24

    :catchall_18
    move-exception p1

    if-eqz v0, :cond_23

    .line 1279
    :try_start_1b
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->close()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    goto :goto_23

    :catchall_1f
    move-exception v0

    :try_start_20
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_23
    :goto_23
    throw p1

    .line 1283
    :goto_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_16

    throw p1
.end method

.method public final initializeUserUidStatesLocked(ILjava/util/Map;Landroid/util/SparseBooleanArray;)V
    .registers 7

    .line 1288
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1289
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageState;

    .line 1290
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    move-result v2

    if-eqz v2, :cond_21

    goto :goto_8

    .line 1293
    :cond_21
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    .line 1294
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1296
    invoke-virtual {p0, p1, v1, v0, p3}, Lcom/android/server/appop/AppOpsService;->initializePackageUidStateLocked(IILjava/lang/String;Landroid/util/SparseBooleanArray;)V

    goto :goto_8

    :cond_2f
    return-void
.end method

.method public final isAttributionInPackage(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z
    .registers 7

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    :cond_4
    const/4 v0, 0x1

    if-nez p2, :cond_8

    return v0

    .line 5145
    :cond_8
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 5146
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v2, p0

    :goto_17
    if-ge v2, v1, :cond_31

    .line 5148
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedAttribution;

    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedAttribution;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    return v0

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_31
    return p0
.end method

.method public final isAttributionTagDefined(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    const/4 v0, 0x1

    if-nez p3, :cond_8

    return v0

    .line 5176
    :cond_8
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    if-eqz p2, :cond_1f

    .line 5178
    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p2

    if-eqz p2, :cond_1f

    .line 5179
    invoke-virtual {p0, p2, p3}, Lcom/android/server/appop/AppOpsService;->isAttributionInPackage(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1f

    return v0

    .line 5183
    :cond_1f
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p1

    .line 5184
    invoke-virtual {p0, p1, p3}, Lcom/android/server/appop/AppOpsService;->isAttributionInPackage(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isAutomotive()Z
    .registers 2

    .line 5308
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.type.automotive"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isCallerAndAttributionTrusted(Landroid/content/AttributionSource;)Z
    .registers 6

    .line 4855
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_26

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 4856
    invoke-virtual {p1, v0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 4858
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 4859
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_26

    :cond_25
    return v2

    .line 4863
    :cond_26
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 4864
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    .line 4863
    const-string v3, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {p0, v3, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;IILandroid/os/IBinder;)I

    move-result p0

    if-nez p0, :cond_3a

    return v2

    :cond_3a
    const/4 p0, 0x0

    return p0
.end method

.method public final isDeviceProvisioningPackage(ILjava/lang/String;)Z
    .registers 7

    .line 2496
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_37

    .line 2497
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getProtectedPackages()Lcom/android/server/pm/ProtectedPackages;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p2, :cond_1b

    .line 2499
    invoke-virtual {v0, p2}, Lcom/android/server/pm/ProtectedPackages;->isDeviceProvisioningPackage(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1b

    return v1

    .line 2503
    :cond_1b
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_37

    .line 2505
    array-length p1, p0

    move p2, v2

    :goto_29
    if-ge p2, p1, :cond_37

    aget-object v3, p0, p2

    .line 2506
    invoke-virtual {v0, v3}, Lcom/android/server/pm/ProtectedPackages;->isDeviceProvisioningPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    return v1

    :cond_34
    add-int/lit8 p2, p2, 0x1

    goto :goto_29

    :cond_37
    return v2
.end method

.method public final isIncomingPackageValid(Ljava/lang/String;I)Z
    .registers 7

    .line 4827
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x1

    if-eqz p1, :cond_3a

    .line 4829
    invoke-virtual {p0, v0, p1}, Lcom/android/server/appop/AppOpsService;->isSpecialPackage(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_3a

    .line 4836
    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->isPackageExisted(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_16

    return v3

    .line 4840
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_3a

    .line 4841
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found from "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppOps"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3a
    :goto_3a
    return v1
.end method

.method public final isOpRestrictedDueToSuspend(ILjava/lang/String;I)Z
    .registers 4

    .line 5300
    sget-object p0, Lcom/android/server/appop/AppOpsService;->OPS_RESTRICTED_ON_SUSPEND:[I

    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 5303
    :cond_a
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    .line 5304
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManagerInternal;->isPackageSuspended(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final isOpRestrictedLocked(IILjava/lang/String;Ljava/lang/String;ILandroid/app/AppOpsManager$RestrictionBypass;Z)Z
    .registers 19

    move-object/from16 v0, p6

    const/4 v1, 0x0

    if-eqz p5, :cond_6

    return v1

    .line 5318
    :cond_6
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mOpGlobalRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    move v3, v1

    :goto_d
    const/4 v4, 0x1

    if-ge v3, v2, :cond_22

    .line 5321
    iget-object v5, p0, Lcom/android/server/appop/AppOpsService;->mOpGlobalRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;

    .line 5322
    invoke-virtual {v5, p2}, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->hasRestriction(I)Z

    move-result v5

    if-eqz v5, :cond_1f

    return v4

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_22
    const/16 v2, 0x1a

    if-ne p2, v2, :cond_46

    .line 5327
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->isAutomotive()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 5328
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 5330
    :try_start_30
    iget-object v5, p0, Lcom/android/server/appop/AppOpsService;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 5331
    invoke-virtual {v5, p3}, Landroid/hardware/SensorPrivacyManager;->isCameraPrivacyEnabled(Ljava/lang/String;)Z

    move-result v5
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_40

    if-eqz v5, :cond_3c

    .line 5335
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_3c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_46

    :catchall_40
    move-exception v0

    move-object p0, v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5336
    throw p0

    .line 5339
    :cond_46
    :goto_46
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 5340
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    move v2, v1

    :goto_51
    if-ge v2, p1, :cond_9d

    .line 5345
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    move/from16 v10, p7

    .line 5346
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->hasRestriction(ILjava/lang/String;Ljava/lang/String;IZ)Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 5348
    invoke-static {p2}, Landroid/app/AppOpsManager;->opAllowSystemBypassRestriction(I)Landroid/app/AppOpsManager$RestrictionBypass;

    move-result-object p1

    if-eqz p1, :cond_99

    .line 5351
    monitor-enter p0

    .line 5352
    :try_start_6e
    iget-boolean p2, p1, Landroid/app/AppOpsManager$RestrictionBypass;->isSystemUid:Z

    if-eqz p2, :cond_7d

    if-eqz v0, :cond_7d

    iget-boolean p2, v0, Landroid/app/AppOpsManager$RestrictionBypass;->isSystemUid:Z

    if-eqz p2, :cond_7d

    .line 5353
    monitor-exit p0

    return v1

    :catchall_7a
    move-exception v0

    move-object p1, v0

    goto :goto_97

    .line 5355
    :cond_7d
    iget-boolean p2, p1, Landroid/app/AppOpsManager$RestrictionBypass;->isPrivileged:Z

    if-eqz p2, :cond_89

    if-eqz v0, :cond_89

    iget-boolean p2, v0, Landroid/app/AppOpsManager$RestrictionBypass;->isPrivileged:Z

    if-eqz p2, :cond_89

    .line 5356
    monitor-exit p0

    return v1

    .line 5358
    :cond_89
    iget-boolean p1, p1, Landroid/app/AppOpsManager$RestrictionBypass;->isRecordAudioRestrictionExcept:Z

    if-eqz p1, :cond_95

    if-eqz v0, :cond_95

    iget-boolean p1, v0, Landroid/app/AppOpsManager$RestrictionBypass;->isRecordAudioRestrictionExcept:Z

    if-eqz p1, :cond_95

    .line 5360
    monitor-exit p0

    return v1

    .line 5362
    :cond_95
    monitor-exit p0

    goto :goto_99

    :goto_97
    monitor-exit p0
    :try_end_98
    .catchall {:try_start_6e .. :try_end_98} :catchall_7a

    throw p1

    :cond_99
    :goto_99
    return v4

    :cond_9a
    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    :cond_9d
    return v1
.end method

.method public isOperationActive(IILjava/lang/String;)Z
    .registers 13

    .line 7071
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p2, :cond_12

    .line 7072
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WATCH_APPOPS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    return v1

    .line 7077
    :cond_12
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 7078
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, p3, v0}, Lcom/android/server/appop/AppOpsService;->isIncomingPackageValid(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_20

    return v1

    .line 7082
    :cond_20
    invoke-static {p2, p3}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_27

    return v1

    .line 7087
    :cond_27
    monitor-enter p0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v3, p2

    .line 7088
    :try_start_2e
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object p0

    if-nez p0, :cond_39

    .line 7090
    monitor-exit v2

    return v1

    :catchall_36
    move-exception v0

    move-object p0, v0

    goto :goto_49

    .line 7093
    :cond_39
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/appop/AppOpsService$Op;

    if-nez p0, :cond_43

    .line 7095
    monitor-exit v2

    return v1

    .line 7098
    :cond_43
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$Op;->isRunning()Z

    move-result p0

    monitor-exit v2

    return p0

    .line 7099
    :goto_49
    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_2e .. :try_end_4a} :catchall_36

    throw p0
.end method

.method public final isPackageExisted(Ljava/lang/String;)Z
    .registers 2

    .line 3208
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final isPackageNullOrSystem(Ljava/lang/String;I)Z
    .registers 8

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    .line 5124
    :cond_4
    invoke-static {p2}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    return v2

    .line 5127
    :cond_c
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-lez v1, :cond_17

    const/16 v3, 0x2710

    if-ge v1, v3, :cond_17

    return v0

    .line 5131
    :cond_17
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v3, 0x20000

    .line 5132
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 5131
    invoke-virtual {v0, p1, v3, v4, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    if-eq v0, p2, :cond_27

    return v2

    .line 5135
    :cond_27
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->isSystemPackage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isPackageOpGrantedByRole(Ljava/lang/String;II)Z
    .registers 8

    .line 2805
    invoke-static {p3}, Landroid/app/AppOpsManager;->opIsPackageAppOpPermission(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 2808
    :cond_8
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 2809
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2811
    :try_start_12
    invoke-static {p3}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object p3

    .line 2812
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 2811
    invoke-virtual {p0, p3, p1, p2}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result p0
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_29

    const p1, 0x8000

    and-int/2addr p0, p1

    if-eqz p0, :cond_25

    const/4 v1, 0x1

    .line 2815
    :cond_25
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_29
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2816
    throw p0
.end method

.method public isProxying(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .registers 10

    .line 7106
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7107
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7108
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    int-to-long v0, v0

    .line 7109
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 7111
    :try_start_f
    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p4, p5, p1}, Lcom/android/server/appop/AppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_72

    .line 7113
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_21

    goto :goto_72

    .line 7116
    :cond_21
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {p0}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object p0

    .line 7117
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p4
    :try_end_2f
    .catchall {:try_start_f .. :try_end_2f} :catchall_6c

    if-eqz p4, :cond_35

    .line 7130
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    .line 7120
    :cond_35
    :try_start_35
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager$OpEntry;

    .line 7121
    invoke-virtual {p0}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result p4
    :try_end_3f
    .catchall {:try_start_35 .. :try_end_3f} :catchall_6c

    if-nez p4, :cond_45

    .line 7130
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :cond_45
    const/16 p4, 0x18

    .line 7124
    :try_start_47
    invoke-virtual {p0, p4}, Landroid/app/AppOpsManager$OpEntry;->getLastProxyInfo(I)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object p0

    if-eqz p0, :cond_6e

    .line 7126
    invoke-virtual {p0}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getUid()I

    move-result p4

    int-to-long p4, p4

    cmp-long p4, v0, p4

    if-nez p4, :cond_6e

    .line 7127
    invoke-virtual {p0}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6e

    .line 7128
    invoke-virtual {p0}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getAttributionTag()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0
    :try_end_68
    .catchall {:try_start_47 .. :try_end_68} :catchall_6c

    if-eqz p0, :cond_6e

    const/4 p1, 0x1

    goto :goto_6e

    :catchall_6c
    move-exception p0

    goto :goto_76

    .line 7130
    :cond_6e
    :goto_6e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :cond_72
    :goto_72
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :goto_76
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7131
    throw p0
.end method

.method public final isSamplingTarget(Landroid/content/pm/PackageInfo;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 7486
    :cond_4
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez p1, :cond_9

    return v0

    .line 7490
    :cond_9
    array-length v1, p1

    move v2, v0

    :goto_b
    if-ge v2, v1, :cond_24

    aget-object v3, p1, v2

    .line 7493
    :try_start_f
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v3
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_19} :catch_21

    .line 7497
    invoke-virtual {v3}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_21

    return v4

    :catch_21
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_24
    return v0
.end method

.method public final isSpecialPackage(ILjava/lang/String;)Z
    .registers 3

    .line 4849
    invoke-static {p1, p2}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 p2, 0x3e8

    if-eq p1, p2, :cond_12

    .line 4851
    invoke-static {p0}, Lcom/android/server/appop/AppOpsService;->resolveNonAppUid(Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_10

    goto :goto_12

    :cond_10
    const/4 p0, 0x0

    return p0

    :cond_12
    :goto_12
    const/4 p0, 0x1

    return p0
.end method

.method public final isUidOpGrantedByRole(II)Z
    .registers 7

    .line 2784
    invoke-static {p2}, Landroid/app/AppOpsManager;->opIsUidAppOpPermission(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 2787
    :cond_8
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 2788
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2792
    :try_start_12
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 2791
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_3d

    if-nez v0, :cond_26

    .line 2800
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    .line 2796
    :cond_26
    :try_start_26
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object p2

    .line 2797
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 2796
    invoke-virtual {p0, p2, v0, p1}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result p0
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_3d

    const p1, 0x8000

    and-int/2addr p0, p1

    if-eqz p0, :cond_39

    const/4 v1, 0x1

    .line 2800
    :cond_39
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_3d
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2801
    throw p0
.end method

.method public final isValidVirtualDeviceId(I)Z
    .registers 5

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    .line 4790
    :cond_4
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    const/4 v2, 0x0

    if-nez v1, :cond_11

    .line 4791
    const-string p0, "AppOps"

    const-string p1, "VirtualDeviceManagerInternal is null when device Id is non-default"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 4794
    :cond_11
    invoke-virtual {v1, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->isValidVirtualDeviceId(I)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 4795
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mKnownDeviceIds:Landroid/util/SparseArray;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 4796
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getPersistentIdForDevice(I)Ljava/lang/String;

    move-result-object p0

    .line 4795
    invoke-virtual {v1, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return v0

    :cond_23
    return v2
.end method

.method public final synthetic lambda$getUidStateTracker$0(Ljava/lang/Runnable;)V
    .registers 2

    .line 462
    monitor-enter p0

    .line 463
    :try_start_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 464
    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw p1
.end method

.method public final synthetic lambda$new$1(I)V
    .registers 3

    const/4 v0, -0x2

    .line 1050
    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->notifyWatchersOnDefaultDevice(II)V

    return-void
.end method

.method public final synthetic lambda$removeUser$12(I)V
    .registers 5

    .line 7057
    const-string v0, "AppOps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from AppOpsService"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7058
    monitor-enter p0

    .line 7059
    :try_start_1c
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_24
    if-ltz v0, :cond_36

    .line 7061
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;

    .line 7062
    invoke-virtual {v1, p1}, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->removeUser(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_24

    :catchall_34
    move-exception p1

    goto :goto_3b

    .line 7064
    :cond_36
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->removeUidsForUserLocked(I)V

    .line 7065
    monitor-exit p0

    return-void

    :goto_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_1c .. :try_end_3c} :catchall_34

    throw p1
.end method

.method public final synthetic lambda$startWatchingAsyncNoted$8(Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;Landroid/os/RemoteCallbackList;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;Ljava/lang/Object;)V
    .registers 6

    .line 3801
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->stopWatchingAsyncNoted(Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V

    return-void
.end method

.method public final logVerifyAndGetBypassFailure(ILjava/lang/SecurityException;Ljava/lang/String;)V
    .registers 7

    .line 5189
    invoke-static {p1}, Landroid/os/Process;->isIsolated(I)Z

    move-result p0

    const-string v0, "Cannot "

    const-string v1, "AppOps"

    if-eqz p0, :cond_22

    .line 5190
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": isolated UID"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5191
    :cond_22
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const/16 v2, 0x2710

    if-ge p0, v2, :cond_45

    .line 5192
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": non-application UID "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5194
    :cond_45
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public noteOperation(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;
    .registers 18

    .line 3337
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 3346
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    const/4 v5, 0x0

    const/4 v9, 0x1

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->noteOperation(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZI)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public noteOperationForDevice(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;
    .registers 19

    .line 3355
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    const/4 v9, 0x1

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->noteOperation(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZI)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public final noteOperationImpl(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZI)Landroid/app/SyncNotedAppOp;
    .registers 25

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v7, p4

    move/from16 v4, p5

    .line 3364
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->shouldUseNewCheckOp()Z

    move-result v0

    const/4 v8, 0x1

    if-nez v0, :cond_81

    .line 3365
    invoke-virtual {p0, v2}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 3366
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 3367
    invoke-virtual {p0, v4}, Lcom/android/server/appop/AppOpsService;->isValidVirtualDeviceId(I)Z

    move-result v0

    const-string v5, " is invalid"

    const-string v6, "AppOps"

    if-nez v0, :cond_3e

    .line 3368
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkOperationImpl returned MODE_IGNORED as virtualDeviceId "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3370
    new-instance p0, Landroid/app/SyncNotedAppOp;

    invoke-direct {p0, v8, v1, v7, v3}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 3373
    :cond_3e
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v3, v0}, Lcom/android/server/appop/AppOpsService;->isIncomingPackageValid(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_73

    const/16 p0, 0x6f

    if-ne v1, p0, :cond_6c

    .line 3376
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "noting OP_BLUETOOTH_CONNECT returned MODE_ERRORED as incoming package: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and uid: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3379
    :cond_6c
    new-instance p0, Landroid/app/SyncNotedAppOp;

    const/4 v0, 0x2

    invoke-direct {p0, v0, v1, v7, v3}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 3383
    :cond_73
    invoke-static/range {p2 .. p3}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7f

    .line 3385
    new-instance p0, Landroid/app/SyncNotedAppOp;

    invoke-direct {p0, v8, v1, v7, v3}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_7f
    move-object v3, v0

    goto :goto_93

    :cond_81
    const/4 v5, 0x1

    .line 3391
    const-string/jumbo v6, "noteOperation"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService;->validateOpRequest(IILjava/lang/String;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_92

    .line 3394
    new-instance p0, Landroid/app/SyncNotedAppOp;

    invoke-direct {p0, v8, v1, v7, v3}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_92
    move-object v3, v5

    :goto_93
    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move/from16 v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    .line 3399
    invoke-virtual/range {v0 .. v14}, Lcom/android/server/appop/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIZLjava/lang/String;ZI)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public final noteOperationUnchecked(IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIZLjava/lang/String;ZI)Landroid/app/SyncNotedAppOp;
    .registers 33

    move/from16 v8, p1

    move-object/from16 v0, p8

    move/from16 v9, p14

    and-int/lit8 v1, p10, 0x10

    const/4 v11, 0x1

    if-nez v1, :cond_d

    move v7, v11

    goto :goto_e

    :cond_d
    const/4 v7, 0x0

    :goto_e
    const/4 v12, 0x2

    const/16 v13, 0x6f

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p6

    move-object/from16 v6, p7

    .line 3413
    :try_start_1d
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    move-result-object v14
    :try_end_21
    .catch Ljava/lang/SecurityException; {:try_start_1d .. :try_end_21} :catch_262

    move-object/from16 v17, v3

    move v3, v2

    move-object v2, v4

    move-object/from16 v4, v17

    .line 3415
    :try_start_27
    iget-boolean v5, v14, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z
    :try_end_29
    .catch Ljava/lang/SecurityException; {:try_start_27 .. :try_end_29} :catch_25e

    const/4 v6, 0x0

    if-nez v5, :cond_2e

    move-object v5, v6

    goto :goto_2f

    :cond_2e
    move-object v5, v2

    .line 3430
    :goto_2f
    invoke-virtual {v1, v8, v4, v3}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedDueToSuspend(ILjava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 3431
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v11, v8, v5, v4}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3b
    move-object/from16 v15, p7

    if-eqz v0, :cond_46

    .line 3435
    invoke-virtual {v1, v4, v15, v0}, Lcom/android/server/appop/AppOpsService;->isAttributionTagDefined(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_46

    move-object v0, v6

    .line 3439
    :cond_46
    monitor-enter p0

    move-object v4, v5

    .line 3440
    :try_start_48
    iget-boolean v5, v14, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z

    iget-object v6, v14, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    const/4 v7, 0x1

    move v2, v3

    move-object/from16 v3, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v5

    if-nez v5, :cond_d5

    const/4 v8, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v6, p5

    move/from16 v7, p10

    move-object v5, v4

    move-object/from16 v4, p3

    .line 3443
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;III)V

    move-object v6, v5

    if-ne v2, v13, :cond_ce

    .line 3450
    const-string v0, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "noting OP_BLUETOOTH_CONNECT returned MODE_ERRORED as #getOpsLocked returned null for uid: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " packageName: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " attributionTag: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " pvr.isAttributionTagValid: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v14, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " pvr.bypass: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v14, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3457
    const-string v0, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mUidStates.get("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "): "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ce

    :catchall_cb
    move-exception v0

    goto/16 :goto_25c

    .line 3459
    :cond_ce
    :goto_ce
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v12, v2, v6, v4}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-object v0

    :cond_d5
    move-object/from16 v1, p0

    move/from16 v3, p2

    move/from16 v7, p5

    move-object v6, v4

    move v2, v8

    move-object/from16 v4, p3

    .line 3462
    invoke-virtual {v1, v5, v2, v3, v11}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v8

    .line 3464
    invoke-virtual {v1, v7, v2}, Lcom/android/server/appop/AppOpsService;->getPersistentDeviceIdForOp(II)Ljava/lang/String;

    move-result-object v12

    .line 3463
    invoke-virtual {v8, v8, v6, v12}, Lcom/android/server/appop/AppOpsService$Op;->getOrCreateAttribution(Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AttributedOp;

    move-result-object v12

    .line 3465
    invoke-virtual {v12}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v16
    :try_end_ef
    .catchall {:try_start_48 .. :try_end_ef} :catchall_cb

    if-eqz v16, :cond_134

    .line 3466
    :try_start_f1
    const-string v13, "AppOps"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Noting op not finished: uid "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " pkg "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " code "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " startTime of in progress event="

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v12, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    move-object/from16 p4, v0

    const/4 v0, 0x0

    .line 3468
    invoke-virtual {v10, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    invoke-virtual {v10}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getStartTime()J

    move-result-wide v0

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3466
    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_136

    :catchall_12f
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_25c

    :cond_134
    move-object/from16 p4, v0

    .line 3471
    :goto_136
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v0

    .line 3472
    iget-object v10, v5, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    .line 3473
    iget-object v1, v14, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;
    :try_end_13e
    .catchall {:try_start_f1 .. :try_end_13e} :catchall_12f

    move-object v11, v8

    const/4 v8, 0x0

    move v13, v3

    move v3, v2

    move v2, v13

    move/from16 v13, p10

    move-object v14, v5

    move-object v5, v6

    move v6, v7

    move-object v7, v1

    move-object/from16 v1, p0

    :try_start_14b
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;Ljava/lang/String;ILandroid/app/AppOpsManager$RestrictionBypass;Z)Z

    move-result v7
    :try_end_14f
    .catchall {:try_start_14b .. :try_end_14f} :catchall_cb

    if-eqz v7, :cond_16f

    .line 3475
    :try_start_151
    invoke-virtual {v10}, Lcom/android/server/appop/AppOpsService$UidState;->getState()I

    move-result v0

    invoke-virtual {v12, v0, v13, v9}, Lcom/android/server/appop/AttributedOp;->rejected(III)V
    :try_end_158
    .catchall {:try_start_151 .. :try_end_158} :catchall_12f

    const/4 v8, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v6, p5

    move v7, v13

    .line 3476
    :try_start_164
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;III)V

    .line 3478
    new-instance v0, Landroid/app/SyncNotedAppOp;

    const/4 v3, 0x1

    invoke-direct {v0, v3, v2, v5, v4}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-object v0

    :cond_16f
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v6, p5

    move v7, v13

    .line 3481
    invoke-static/range {p2 .. p2}, Lcom/android/server/appop/AppOpsService;->isOpAllowedForUid(I)Z

    move-result v3

    if-eqz v3, :cond_180

    goto/16 :goto_20e

    .line 3486
    :cond_180
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget v8, v10, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 3487
    invoke-virtual {v1, v6, v0}, Lcom/android/server/appop/AppOpsService;->getPersistentDeviceIdForOp(II)Ljava/lang/String;

    move-result-object v13

    .line 3486
    invoke-interface {v3, v8, v13, v0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getUidMode(ILjava/lang/String;I)I

    move-result v3

    .line 3488
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v8

    if-eq v3, v8, :cond_1c9

    .line 3489
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget v8, v10, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 3494
    invoke-virtual {v1, v6, v0}, Lcom/android/server/appop/AppOpsService;->getPersistentDeviceIdForOp(II)Ljava/lang/String;

    move-result-object v11

    .line 3492
    invoke-interface {v3, v8, v11, v0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getUidMode(ILjava/lang/String;I)I

    move-result v0

    .line 3490
    invoke-virtual {v10, v2, v0}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    move-result v8

    if-eqz v8, :cond_1c6

    .line 3500
    invoke-virtual {v10}, Lcom/android/server/appop/AppOpsService$UidState;->getState()I

    move-result v0

    invoke-virtual {v12, v0, v7, v9}, Lcom/android/server/appop/AttributedOp;->rejected(III)V

    move/from16 v3, p2

    .line 3501
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;III)V

    const/16 v3, 0x6f

    if-ne v2, v3, :cond_1bf

    const/4 v3, 0x2

    if-ne v8, v3, :cond_1bf

    .line 3505
    const-string v0, "AppOps"

    const-string/jumbo v3, "noting OP_BLUETOOTH_CONNECT returned MODE_ERRORED as uid mode is MODE_ERRORED"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3508
    :cond_1bf
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v8, v2, v5, v4}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-object v0

    :cond_1c6
    move/from16 v3, p2

    goto :goto_20e

    :cond_1c9
    move/from16 v3, p2

    if-eq v0, v2, :cond_1d3

    const/4 v6, 0x1

    .line 3511
    invoke-virtual {v1, v14, v0, v3, v6}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v8

    goto :goto_1d4

    :cond_1d3
    move-object v8, v11

    .line 3513
    :goto_1d4
    iget-object v0, v8, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v6, v8, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v11, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget-object v13, v8, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget v8, v8, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 3519
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 3516
    invoke-interface {v11, v13, v6, v8}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(Ljava/lang/String;II)I

    move-result v8

    .line 3514
    invoke-virtual {v0, v6, v8}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    move-result v8
    :try_end_1ea
    .catchall {:try_start_164 .. :try_end_1ea} :catchall_cb

    if-eqz v8, :cond_20e

    .line 3524
    :try_start_1ec
    invoke-virtual {v10}, Lcom/android/server/appop/AppOpsService$UidState;->getState()I

    move-result v0

    invoke-virtual {v12, v0, v7, v9}, Lcom/android/server/appop/AttributedOp;->rejected(III)V

    move/from16 v6, p5

    .line 3525
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;III)V

    const/16 v3, 0x6f

    if-ne v2, v3, :cond_207

    const/4 v3, 0x2

    if-ne v8, v3, :cond_207

    .line 3529
    const-string v0, "AppOps"

    const-string/jumbo v1, "noting OP_BLUETOOTH_CONNECT returned MODE_ERRORED as package mode is MODE_ERRORED"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3532
    :cond_207
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v8, v2, v5, v4}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0
    :try_end_20d
    .catchall {:try_start_1ec .. :try_end_20d} :catchall_12f

    return-object v0

    :cond_20e
    :goto_20e
    const/4 v8, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p2

    move/from16 v6, p5

    move/from16 v7, p10

    .line 3542
    :try_start_217
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;III)V
    :try_end_21a
    .catchall {:try_start_217 .. :try_end_21a} :catchall_cb

    move-object v8, v1

    move v11, v2

    move-object v13, v5

    move/from16 v0, p9

    .line 3546
    :try_start_21f
    invoke-virtual {v8, v0, v11}, Lcom/android/server/appop/AppOpsService;->getPersistentDeviceIdForOp(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/android/server/appop/AppOpsService$UidState;->getState()I

    move-result v5

    move-object/from16 v3, p4

    move/from16 v1, p6

    move/from16 v6, p10

    move v7, v9

    move-object v0, v12

    move-object v2, v15

    .line 3545
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/appop/AttributedOp;->accessed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_233
    .catchall {:try_start_21f .. :try_end_233} :catchall_25a

    if-eqz p11, :cond_24d

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v6, p10

    move-object/from16 v7, p12

    move/from16 v9, p14

    move-object v1, v8

    move v4, v11

    move-object v5, v13

    move/from16 v8, p13

    .line 3550
    :try_start_244
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/appop/AppOpsService;->collectAsyncNotedOp(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ZI)V

    move/from16 v17, v4

    move-object v4, v3

    move/from16 v3, v17

    goto :goto_252

    :cond_24d
    move-object/from16 v4, p3

    move-object v1, v8

    move v3, v11

    move-object v5, v13

    .line 3554
    :goto_252
    new-instance v0, Landroid/app/SyncNotedAppOp;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v3, v5, v4}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-object v0

    :catchall_25a
    move-exception v0

    move-object v1, v8

    .line 3556
    :goto_25c
    monitor-exit p0
    :try_end_25d
    .catchall {:try_start_244 .. :try_end_25d} :catchall_cb

    throw v0

    :catch_25e
    move-exception v0

    move v5, v3

    :goto_260
    move v3, v8

    goto :goto_267

    :catch_262
    move-exception v0

    move v5, v2

    move-object v2, v4

    move-object v4, v3

    goto :goto_260

    .line 3419
    :goto_267
    const-string/jumbo v6, "noteOperation"

    invoke-virtual {v1, v5, v0, v6}, Lcom/android/server/appop/AppOpsService;->logVerifyAndGetBypassFailure(ILjava/lang/SecurityException;Ljava/lang/String;)V

    const/16 v1, 0x6f

    if-ne v3, v1, :cond_298

    .line 3422
    const-string v1, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "noting OP_BLUETOOTH_CONNECT returned MODE_ERRORED as verifyAndGetBypass returned a SecurityException for package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " and uid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " and attributionTag: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3427
    :cond_298
    new-instance v0, Landroid/app/SyncNotedAppOp;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v3, v2, v4}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public noteOperationsInBatch(Ljava/util/Map;)V
    .registers 14

    .line 3322
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3323
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$NotedOp;

    .line 3324
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 3325
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    .line 3326
    invoke-virtual {v1}, Landroid/app/AppOpsManager$NotedOp;->getOp()I

    move-result v3

    invoke-virtual {v1}, Landroid/app/AppOpsManager$NotedOp;->getUid()I

    move-result v4

    invoke-virtual {v1}, Landroid/app/AppOpsManager$NotedOp;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3327
    invoke-virtual {v1}, Landroid/app/AppOpsManager$NotedOp;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Landroid/app/AppOpsManager$NotedOp;->getVirtualDeviceId()I

    move-result v7

    .line 3328
    invoke-virtual {v1}, Landroid/app/AppOpsManager$NotedOp;->getShouldCollectAsyncNotedOp()Z

    move-result v8

    invoke-virtual {v1}, Landroid/app/AppOpsManager$NotedOp;->getMessage()Ljava/lang/String;

    move-result-object v9

    .line 3329
    invoke-virtual {v1}, Landroid/app/AppOpsManager$NotedOp;->getShouldCollectMessage()Z

    move-result v10

    .line 3325
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->noteOperation(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZI)Landroid/app/SyncNotedAppOp;

    goto :goto_8

    :cond_4a
    return-void
.end method

.method public noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;
    .registers 7

    .line 3228
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public final noteProxyOperationImpl(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;
    .registers 28

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 3251
    invoke-virtual {v2}, Landroid/content/AttributionSource;->getUid()I

    move-result v6

    .line 3252
    invoke-virtual {v2}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 3253
    invoke-virtual {v2}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 3254
    invoke-virtual {v2}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v9

    .line 3256
    invoke-virtual {v2}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v15

    .line 3257
    invoke-virtual {v2}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3258
    invoke-virtual {v2}, Landroid/content/AttributionSource;->getNextAttributionTag()Ljava/lang/String;

    move-result-object v7

    .line 3259
    invoke-virtual {v2}, Landroid/content/AttributionSource;->getNextDeviceId()I

    move-result v16

    .line 3261
    invoke-virtual {v0, v2}, Lcom/android/server/appop/AppOpsService;->verifyIncomingProxyUid(Landroid/content/AttributionSource;)V

    .line 3262
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 3263
    invoke-virtual {v0, v9}, Lcom/android/server/appop/AppOpsService;->isValidVirtualDeviceId(I)Z

    move-result v8

    const/4 v10, 0x1

    if-nez v8, :cond_55

    .line 3264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "noteProxyOperationImpl returned MODE_IGNORED as virtualDeviceId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is invalid"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AppOps"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3266
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v10, v1, v7, v5}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 3269
    :cond_55
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {v0, v5, v8}, Lcom/android/server/appop/AppOpsService;->isIncomingPackageValid(Ljava/lang/String;I)Z

    move-result v8

    const/4 v11, 0x2

    if-eqz v8, :cond_6a

    .line 3270
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {v0, v3, v8}, Lcom/android/server/appop/AppOpsService;->isIncomingPackageValid(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_6e

    :cond_6a
    move-object v15, v5

    move-object v4, v7

    goto/16 :goto_122

    :cond_6e
    if-eqz p6, :cond_78

    .line 3276
    invoke-virtual {v0, v2}, Lcom/android/server/appop/AppOpsService;->isCallerAndAttributionTrusted(Landroid/content/AttributionSource;)Z

    move-result v2

    if-eqz v2, :cond_78

    move v2, v10

    goto :goto_79

    :cond_78
    const/4 v2, 0x0

    .line 3278
    :goto_79
    invoke-static {v6, v3}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_85

    .line 3281
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v10, v1, v7, v5}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 3285
    :cond_85
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    if-ne v12, v15, :cond_8d

    move v12, v10

    goto :goto_8e

    :cond_8d
    const/4 v12, 0x0

    .line 3286
    :goto_8e
    iget-object v13, v0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v14, "android.permission.UPDATE_APP_OPS_STATS"

    const/4 v8, -0x1

    invoke-virtual {v13, v14, v8, v6}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_9f

    if-eqz v12, :cond_9c

    goto :goto_9f

    :cond_9c
    const/16 v17, 0x0

    goto :goto_a1

    :cond_9f
    :goto_9f
    move/from16 v17, v10

    :goto_a1
    if-nez v2, :cond_f0

    if-eqz v17, :cond_a6

    goto :goto_a7

    :cond_a6
    const/4 v11, 0x4

    :goto_a7
    move v2, v10

    move v10, v11

    xor-int/lit8 v11, v17, 0x1

    .line 3294
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "proxy "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p4

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v14, 0x1

    move v13, v2

    move v2, v6

    const/4 v6, -0x1

    move-object/from16 v18, v7

    const/4 v7, 0x0

    move-object v12, v8

    const/4 v8, 0x0

    move-object/from16 v19, v5

    move v5, v9

    const/4 v9, 0x0

    move/from16 v13, p5

    move-object/from16 v20, v18

    move/from16 v18, v15

    move-object/from16 v15, v19

    invoke-virtual/range {v0 .. v14}, Lcom/android/server/appop/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIZLjava/lang/String;ZI)Landroid/app/SyncNotedAppOp;

    move-result-object v6

    .line 3299
    invoke-virtual {v6}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v0

    if-eqz v0, :cond_ea

    .line 3300
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-virtual {v6}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v2

    move-object/from16 v6, v20

    invoke-direct {v0, v2, v1, v6, v15}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_ea
    move-object/from16 v6, v20

    :goto_ec
    move-object v7, v3

    move/from16 v0, v18

    goto :goto_f7

    :cond_f0
    move v2, v6

    move-object v6, v7

    move/from16 v18, v15

    move-object v15, v5

    move v5, v9

    goto :goto_ec

    .line 3305
    :goto_f7
    invoke-static {v0, v15}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_104

    .line 3308
    new-instance v0, Landroid/app/SyncNotedAppOp;

    const/4 v13, 0x1

    invoke-direct {v0, v13, v1, v6, v15}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_104
    if-eqz v17, :cond_10a

    const/16 v8, 0x8

    :goto_108
    move v10, v8

    goto :goto_10d

    :cond_10a
    const/16 v8, 0x10

    goto :goto_108

    :goto_10d
    const/4 v14, 0x1

    move/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    move-object v8, v4

    move v9, v5

    move-object v4, v6

    move/from16 v5, v16

    move v6, v2

    move v2, v0

    move-object/from16 v0, p0

    .line 3314
    invoke-virtual/range {v0 .. v14}, Lcom/android/server/appop/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIZLjava/lang/String;ZI)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0

    .line 3271
    :goto_122
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v11, v1, v4, v15}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public noteProxyOperationWithState(ILandroid/content/AttributionSourceState;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;
    .registers 8

    .line 3236
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-object v0, p2

    .line 3243
    new-instance p2, Landroid/content/AttributionSource;

    invoke-direct {p2, v0}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    .line 3244
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public final notifyOpActiveChanged(Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;IZII)V
    .registers 28

    .line 4551
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4553
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_3d

    move-object/from16 v4, p1

    .line 4555
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AppOpsService$ActiveCallback;
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_36

    .line 4557
    :try_start_13
    iget v6, v5, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mCallingPid:I

    iget v7, v5, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mCallingUid:I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_17} :catch_38
    .catchall {:try_start_13 .. :try_end_17} :catchall_36

    move-object/from16 v8, p0

    move/from16 v10, p2

    :try_start_1b
    invoke-virtual {v8, v10, v6, v7}, Lcom/android/server/appop/AppOpsService;->shouldIgnoreCallback(III)Z

    move-result v6

    if-eqz v6, :cond_22

    goto :goto_3a

    .line 4560
    :cond_22
    iget-object v9, v5, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mCallback:Lcom/android/internal/app/IAppOpsActiveCallback;

    move/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p7

    move/from16 v16, p8

    move/from16 v17, p9

    invoke-interface/range {v9 .. v17}, Lcom/android/internal/app/IAppOpsActiveCallback;->opActiveChanged(IILjava/lang/String;Ljava/lang/String;IZII)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_35} :catch_3a
    .catchall {:try_start_1b .. :try_end_35} :catchall_36

    goto :goto_3a

    :catchall_36
    move-exception v0

    goto :goto_41

    :catch_38
    move-object/from16 v8, p0

    :catch_3a
    :goto_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 4567
    :cond_3d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_41
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4568
    throw v0
.end method

.method public final notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;)V
    .registers 14

    const/4 v0, 0x0

    .line 2525
    :goto_1
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 2526
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/server/appop/OnOpModeChangedListener;

    move-object v2, p0

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 2527
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Lcom/android/server/appop/OnOpModeChangedListener;IILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method public final notifyOpChanged(Lcom/android/server/appop/OnOpModeChangedListener;IILjava/lang/String;Ljava/lang/String;)V
    .registers 13

    .line 2533
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, -0x2

    if-eq p3, v0, :cond_13

    .line 2535
    invoke-virtual {p1}, Lcom/android/server/appop/OnOpModeChangedListener;->getWatchingUid()I

    move-result v1

    if-ltz v1, :cond_13

    .line 2536
    invoke-virtual {p1}, Lcom/android/server/appop/OnOpModeChangedListener;->getWatchingUid()I

    move-result v1

    if-eq v1, p3, :cond_13

    goto :goto_60

    .line 2542
    :cond_13
    invoke-virtual {p1}, Lcom/android/server/appop/OnOpModeChangedListener;->getWatchedOpCode()I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_23

    .line 2543
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mSwitchedOps:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    goto :goto_39

    .line 2544
    :cond_23
    invoke-virtual {p1}, Lcom/android/server/appop/OnOpModeChangedListener;->getWatchedOpCode()I

    move-result v0

    const/4 v1, -0x1

    const/4 v3, 0x1

    if-ne v0, v1, :cond_31

    .line 2545
    new-array v0, v3, [I

    aput p2, v0, v2

    move-object p2, v0

    goto :goto_39

    .line 2547
    :cond_31
    new-array p2, v3, [I

    invoke-virtual {p1}, Lcom/android/server/appop/OnOpModeChangedListener;->getWatchedOpCode()I

    move-result v0

    aput v0, p2, v2

    .line 2550
    :goto_39
    array-length v0, p2

    :goto_3a
    if-ge v2, v0, :cond_60

    aget v1, p2, v2

    .line 2554
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2556
    :try_start_42
    invoke-virtual {p1}, Lcom/android/server/appop/OnOpModeChangedListener;->getCallingPid()I

    move-result v5

    .line 2557
    invoke-virtual {p1}, Lcom/android/server/appop/OnOpModeChangedListener;->getCallingUid()I

    move-result v6

    .line 2556
    invoke-virtual {p0, v1, v5, v6}, Lcom/android/server/appop/AppOpsService;->shouldIgnoreCallback(III)Z

    move-result v5
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_4e} :catch_50
    .catchall {:try_start_42 .. :try_end_4e} :catchall_58

    if-eqz v5, :cond_54

    .line 2565
    :catch_50
    :goto_50
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5d

    .line 2560
    :cond_54
    :try_start_54
    invoke-virtual {p1, v1, p3, p4, p5}, Lcom/android/server/appop/OnOpModeChangedListener;->onOpModeChanged(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_57} :catch_50
    .catchall {:try_start_54 .. :try_end_57} :catchall_58

    goto :goto_50

    :catchall_58
    move-exception p0

    .line 2565
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2566
    throw p0

    :goto_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    :cond_60
    :goto_60
    return-void
.end method

.method public final notifyOpChangedForAllPkgsInUid(IIZLjava/lang/String;)V
    .registers 16

    .line 2210
    invoke-static {p2}, Lcom/android/server/appop/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 2212
    monitor-enter p0

    .line 2213
    :try_start_5
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_108

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_4a

    .line 2215
    :try_start_11
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v4

    move v5, v2

    :goto_16
    if-ge v5, v4, :cond_4a

    .line 2217
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/OnOpModeChangedListener;

    .line 2219
    invoke-virtual {v6, p2}, Lcom/android/server/appop/OnOpModeChangedListener;->isWatchingUid(I)Z

    move-result v7

    if-nez v7, :cond_25

    goto :goto_47

    :cond_25
    if-eqz p3, :cond_35

    .line 2223
    invoke-virtual {v6}, Lcom/android/server/appop/OnOpModeChangedListener;->getFlags()I

    move-result v7

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_35

    goto :goto_47

    :catchall_30
    move-exception v0

    move-object p1, v0

    move-object v5, p0

    goto/16 :goto_10b

    .line 2228
    :cond_35
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 2229
    invoke-static {v7, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    if-nez v3, :cond_44

    .line 2231
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 2233
    :cond_44
    invoke-virtual {v3, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catchall {:try_start_11 .. :try_end_47} :catchall_30

    :goto_47
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 2237
    :cond_4a
    :try_start_4a
    array-length v1, v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_108

    move v4, v2

    :goto_4c
    if-ge v4, v1, :cond_92

    :try_start_4e
    aget-object v5, v0, v4

    .line 2238
    iget-object v6, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    if-eqz v6, :cond_8f

    if-nez v3, :cond_61

    .line 2241
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 2243
    :cond_61
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v7

    move v8, v2

    :goto_66
    if-ge v8, v7, :cond_8f

    .line 2245
    invoke-virtual {v6, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/appop/OnOpModeChangedListener;

    if-eqz p3, :cond_79

    .line 2247
    invoke-virtual {v9}, Lcom/android/server/appop/OnOpModeChangedListener;->getFlags()I

    move-result v10

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_79

    goto :goto_8c

    .line 2252
    :cond_79
    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArraySet;

    if-nez v10, :cond_89

    .line 2254
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 2255
    invoke-virtual {v3, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2257
    :cond_89
    invoke-virtual {v10, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_8c
    add-int/lit8 v8, v8, 0x1

    goto :goto_66

    :cond_8f
    add-int/lit8 v4, v4, 0x1

    goto :goto_4c

    :cond_92
    if-eqz v3, :cond_a5

    .line 2262
    iget-object p3, p0, Lcom/android/server/appop/AppOpsService;->mIgnoredCallback:Lcom/android/internal/app/IAppOpsCallback;

    if-eqz p3, :cond_a5

    .line 2263
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p3}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v3, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a5
    .catchall {:try_start_4e .. :try_end_a5} :catchall_30

    .line 2265
    :cond_a5
    :try_start_a5
    monitor-exit p0
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_108

    if-nez v3, :cond_a9

    goto :goto_107

    :cond_a9
    move p3, v2

    .line 2271
    :goto_aa
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge p3, v0, :cond_107

    .line 2272
    invoke-virtual {v3, p3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/appop/OnOpModeChangedListener;

    .line 2273
    invoke-virtual {v3, p3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-nez v0, :cond_d9

    .line 2275
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda8;

    invoke-direct {v4}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda8;-><init>()V

    .line 2277
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    move-object v5, p0

    move-object v10, p4

    .line 2276
    invoke-static/range {v4 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 2275
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_102

    :cond_d9
    move-object v5, p0

    move-object v10, p4

    .line 2280
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result p0

    move p4, v2

    :goto_e0
    if-ge p4, p0, :cond_102

    .line 2282
    invoke-virtual {v0, p4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    .line 2283
    iget-object v1, v5, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda8;

    invoke-direct {v4}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda8;-><init>()V

    .line 2285
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 2284
    invoke-static/range {v4 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 2283
    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_e0

    :cond_102
    :goto_102
    add-int/lit8 p3, p3, 0x1

    move-object p0, v5

    move-object p4, v10

    goto :goto_aa

    :cond_107
    :goto_107
    return-void

    :catchall_108
    move-exception v0

    move-object v5, p0

    :goto_10a
    move-object p1, v0

    .line 2265
    :goto_10b
    :try_start_10b
    monitor-exit v5
    :try_end_10c
    .catchall {:try_start_10b .. :try_end_10c} :catchall_10d

    throw p1

    :catchall_10d
    move-exception v0

    goto :goto_10a
.end method

.method public final notifyOpChangedForPkg(Ljava/lang/String;III)V
    .registers 15

    .line 2295
    monitor-enter p0

    .line 2296
    :try_start_1
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    if-eqz v3, :cond_17

    .line 2299
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 2301
    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    goto :goto_18

    :catchall_14
    move-exception v0

    goto/16 :goto_95

    :cond_17
    const/4 v5, 0x0

    .line 2303
    :goto_18
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    if-eqz v3, :cond_2c

    if-nez v5, :cond_29

    .line 2306
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 2308
    :cond_29
    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    :cond_2c
    move-object v9, v5

    if-eqz v9, :cond_40

    .line 2310
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mIgnoredCallback:Lcom/android/internal/app/IAppOpsCallback;

    if-eqz v3, :cond_40

    .line 2311
    iget-object v5, p0, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {v3}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2313
    :cond_40
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v3

    const-wide/32 v5, 0x402000

    invoke-virtual {v3, p1, v5, v6, p4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    move v2, p2

    .line 2315
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->getOpLocked(IILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v5

    if-eqz v5, :cond_63

    .line 2316
    iget v6, v5, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v6}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v6

    if-ne p3, v6, :cond_63

    .line 2319
    invoke-virtual {p0, v5, v3, p1}, Lcom/android/server/appop/AppOpsService;->pruneOpLocked(Lcom/android/server/appop/AppOpsService$Op;ILjava/lang/String;)V

    .line 2321
    :cond_63
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    const/4 v5, 0x2

    if-eq p3, v5, :cond_71

    const/4 v5, 0x1

    if-ne p3, v5, :cond_6d

    goto :goto_6e

    :cond_6d
    const/4 v5, 0x0

    .line 2325
    :goto_6e
    invoke-virtual {p0, p2, v5, v3}, Lcom/android/server/appop/AppOpsService;->updateStartedOpModeForUidForDefaultDeviceLocked(IZI)V

    .line 2327
    :cond_71
    monitor-exit p0
    :try_end_72
    .catchall {:try_start_1 .. :try_end_72} :catchall_14

    if-eqz v9, :cond_94

    const/4 v0, -0x1

    if-eq v3, v0, :cond_94

    .line 2332
    iget-object v7, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda19;-><init>()V

    .line 2333
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v6, "default:0"

    move-object v1, p0

    move-object v5, p1

    move-object v4, v3

    move-object v3, v2

    move-object v2, v9

    .line 2332
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_94
    return-void

    .line 2327
    :goto_95
    :try_start_95
    monitor-exit p0
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_14

    throw v0
.end method

.method public final notifyOpChecked(Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;III)V
    .registers 26

    .line 4660
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4662
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_3b

    move-object/from16 v4, p1

    .line 4664
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AppOpsService$NotedCallback;
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_34

    .line 4666
    :try_start_13
    iget v6, v5, Lcom/android/server/appop/AppOpsService$NotedCallback;->mCallingPid:I

    iget v7, v5, Lcom/android/server/appop/AppOpsService$NotedCallback;->mCallingUid:I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_17} :catch_36
    .catchall {:try_start_13 .. :try_end_17} :catchall_34

    move-object/from16 v8, p0

    move/from16 v10, p2

    :try_start_1b
    invoke-virtual {v8, v10, v6, v7}, Lcom/android/server/appop/AppOpsService;->shouldIgnoreCallback(III)Z

    move-result v6

    if-eqz v6, :cond_22

    goto :goto_38

    .line 4669
    :cond_22
    iget-object v9, v5, Lcom/android/server/appop/AppOpsService$NotedCallback;->mCallback:Lcom/android/internal/app/IAppOpsNotedCallback;

    move/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p7

    move/from16 v16, p8

    invoke-interface/range {v9 .. v16}, Lcom/android/internal/app/IAppOpsNotedCallback;->opNoted(IILjava/lang/String;Ljava/lang/String;III)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_33} :catch_38
    .catchall {:try_start_1b .. :try_end_33} :catchall_34

    goto :goto_38

    :catchall_34
    move-exception v0

    goto :goto_3f

    :catch_36
    move-object/from16 v8, p0

    :catch_38
    :goto_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 4676
    :cond_3b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_3f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4677
    throw v0
.end method

.method public final notifyOpStarted(Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;IIIIII)V
    .registers 32

    .line 4608
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4610
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_41

    move-object/from16 v4, p1

    .line 4612
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AppOpsService$StartedCallback;
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_3a

    .line 4614
    :try_start_13
    iget v6, v5, Lcom/android/server/appop/AppOpsService$StartedCallback;->mCallingPid:I

    iget v7, v5, Lcom/android/server/appop/AppOpsService$StartedCallback;->mCallingUid:I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_17} :catch_3c
    .catchall {:try_start_13 .. :try_end_17} :catchall_3a

    move-object/from16 v8, p0

    move/from16 v10, p2

    :try_start_1b
    invoke-virtual {v8, v10, v6, v7}, Lcom/android/server/appop/AppOpsService;->shouldIgnoreCallback(III)Z

    move-result v6

    if-eqz v6, :cond_22

    goto :goto_3e

    .line 4617
    :cond_22
    iget-object v9, v5, Lcom/android/server/appop/AppOpsService$StartedCallback;->mCallback:Lcom/android/internal/app/IAppOpsStartedCallback;

    move/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p7

    move/from16 v16, p8

    move/from16 v17, p9

    move/from16 v18, p10

    move/from16 v19, p11

    invoke-interface/range {v9 .. v19}, Lcom/android/internal/app/IAppOpsStartedCallback;->opStarted(IILjava/lang/String;Ljava/lang/String;IIIIII)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_39} :catch_3e
    .catchall {:try_start_1b .. :try_end_39} :catchall_3a

    goto :goto_3e

    :catchall_3a
    move-exception v0

    goto :goto_45

    :catch_3c
    move-object/from16 v8, p0

    :catch_3e
    :goto_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 4625
    :cond_41
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_45
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4626
    throw v0
.end method

.method public final notifyStorageManagerOpModeChangedSync(IILjava/lang/String;II)V
    .registers 12

    .line 2430
    const-class p0, Lcom/android/server/StorageManagerInternal;

    .line 2431
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/server/StorageManagerInternal;

    if-eqz v0, :cond_13

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 2433
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/StorageManagerInternal;->onAppOpsChanged(IILjava/lang/String;II)V

    :cond_13
    return-void
.end method

.method public final notifyWatchersOnDefaultDevice(II)V
    .registers 10

    .line 7043
    monitor-enter p0

    .line 7044
    :try_start_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_21

    if-nez v0, :cond_11

    .line 7046
    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_d

    return-void

    :catchall_d
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto :goto_24

    .line 7048
    :cond_11
    :try_start_11
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 7049
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_21

    const/4 v5, 0x0

    .line 7050
    const-string v6, "default:0"

    move-object v1, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_21
    move-exception v0

    move-object v1, p0

    :goto_23
    move-object p1, v0

    .line 7049
    :goto_24
    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_26

    throw p1

    :catchall_26
    move-exception v0

    goto :goto_23
.end method

.method public offsetHistory(J)V
    .registers 4

    .line 7168
    invoke-virtual {p0}, Lcom/android/internal/app/IAppOpsService$Stub;->offsetHistory_enforcePermission()V

    .line 7170
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/server/appop/HistoricalRegistryInterface;->offsetHistory(J)V

    .line 7171
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/server/appop/HistoricalRegistryInterface;->offsetDiscreteHistory(J)V

    return-void
.end method

.method public final onPackageAdded(Ljava/lang/String;I)V
    .registers 9

    .line 1107
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 1108
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    .line 1109
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    const-wide/16 v2, 0x1000

    move-object v1, p1

    .line 1107
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(Ljava/lang/String;JII)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 1110
    monitor-enter p0

    .line 1112
    :try_start_14
    iget-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackagesInitialized:Z

    if-eqz v0, :cond_20

    .line 1113
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->isSamplingTarget(Landroid/content/pm/PackageInfo;)Z

    move-result p1

    goto :goto_21

    :catchall_1d
    move-exception v0

    move-object p1, v0

    goto :goto_45

    :cond_20
    const/4 p1, 0x0

    :goto_21
    if-eqz p1, :cond_28

    .line 1116
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackages:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_28
    const/4 p1, 0x1

    .line 1118
    invoke-virtual {p0, p2, p1}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object p1

    .line 1119
    iget-object v0, p1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 1120
    iget-object v0, p1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/appop/AppOpsService$Ops;

    invoke-direct {v2, v1, p1}, Lcom/android/server/appop/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/appop/AppOpsService$UidState;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3f
    const/4 p1, 0x0

    .line 1124
    invoke-virtual {p0, p2, p1}, Lcom/android/server/appop/AppOpsService;->createSandboxUidStateIfNotExistsForAppLocked(ILandroid/util/SparseBooleanArray;)V

    .line 1125
    monitor-exit p0

    return-void

    :goto_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_14 .. :try_end_46} :catchall_1d

    throw p1
.end method

.method public final onPackageRemoved(Ljava/lang/String;I)V
    .registers 3

    .line 1129
    monitor-enter p0

    .line 1130
    :try_start_1
    invoke-virtual {p0, p2, p1}, Lcom/android/server/appop/AppOpsService;->packageRemovedLocked(ILjava/lang/String;)V

    .line 1131
    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw p1
.end method

.method public final onPackageReplaced(Ljava/lang/String;I)V
    .registers 4

    .line 1135
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p1

    if-nez p1, :cond_b

    return-void

    .line 1140
    :cond_b
    monitor-enter p0

    .line 1141
    :try_start_c
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->refreshAttributionsLocked(Lcom/android/server/pm/pkg/AndroidPackage;I)V

    .line 1142
    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_11

    throw p1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 5890
    new-instance v0, Lcom/android/server/appop/AppOpsService$Shell;

    invoke-direct {v0, p0, p0}, Lcom/android/server/appop/AppOpsService$Shell;-><init>(Lcom/android/internal/app/IAppOpsService;Lcom/android/server/appop/AppOpsService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public final onUidProcessDeath(I)V
    .registers 4

    .line 1628
    monitor-enter p0

    .line 1629
    :try_start_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1632
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    .line 1633
    new-instance v1, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda21;

    invoke-direct {v1, v0}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda21;-><init>(Landroid/util/SparseLongArray;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/appop/AppOpsService;->doForAllAttributedOpsInUidLocked(ILjava/util/function/Consumer;)V

    .line 1651
    invoke-virtual {p0, v0}, Lcom/android/server/appop/AppOpsService;->finishChainsLocked(Landroid/util/SparseLongArray;)V

    .line 1652
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    goto :goto_1f

    .line 1630
    :cond_1d
    monitor-exit p0

    return-void

    .line 1652
    :goto_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_1b

    throw p1
.end method

.method public final onUidStateChanged(IIZ)V
    .registers 21

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 1515
    monitor-enter p0

    const/4 v7, 0x0

    .line 1516
    :try_start_6
    invoke-virtual {v1, v0, v7}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v8

    move v2, v7

    .line 1520
    :goto_b
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v9, 0x1

    if-ge v2, v3, :cond_31

    .line 1521
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 1522
    invoke-virtual {v3, v0}, Lcom/android/server/appop/OnOpModeChangedListener;->isWatchingUid(I)Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-virtual {v3}, Lcom/android/server/appop/OnOpModeChangedListener;->getFlags()I

    move-result v3

    and-int/2addr v3, v9

    if-eqz v3, :cond_2e

    move v2, v9

    goto :goto_32

    :catchall_2b
    move-exception v0

    goto/16 :goto_1cd

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_31
    move v2, v7

    :goto_32
    if-eqz v8, :cond_176

    if-eqz p3, :cond_176

    if-eqz v2, :cond_176

    .line 1530
    new-instance v10, Landroid/util/SparseBooleanArray;

    invoke-direct {v10}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 1533
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    const-string v3, "default:0"

    .line 1534
    invoke-interface {v2, v0, v3}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getForegroundOps(ILjava/lang/String;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    move v3, v7

    .line 1536
    :goto_46
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_56

    .line 1537
    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v10, v4, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .line 1539
    :cond_56
    invoke-static {v0}, Lcom/android/server/appop/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 1541
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1542
    array-length v3, v2

    move v4, v7

    :goto_60
    if-ge v4, v3, :cond_7e

    aget-object v5, v2, v4

    .line 1543
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 1544
    invoke-interface {v6, v5, v0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getForegroundOps(Ljava/lang/String;I)Landroid/util/SparseBooleanArray;

    move-result-object v5

    move v6, v7

    .line 1545
    :goto_6b
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v11

    if-ge v6, v11, :cond_7b

    .line 1546
    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v11

    invoke-virtual {v10, v11, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6b

    :cond_7b
    add-int/lit8 v4, v4, 0x1

    goto :goto_60

    .line 1550
    :cond_7e
    invoke-virtual {v10}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    sub-int/2addr v0, v9

    move v11, v0

    :goto_84
    if-ltz v11, :cond_176

    .line 1551
    invoke-virtual {v10, v11}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-nez v0, :cond_8e

    goto/16 :goto_16e

    .line 1554
    :cond_8e
    invoke-virtual {v10, v11}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v12

    .line 1556
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget v2, v8, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    const-string v3, "default:0"

    invoke-interface {v0, v2, v3, v12}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getUidMode(ILjava/lang/String;I)I

    move-result v0

    .line 1560
    invoke-static {v12}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v2

    const/4 v13, 0x4

    if-eq v0, v2, :cond_cd

    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget v2, v8, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    const-string v3, "default:0"

    .line 1561
    invoke-interface {v0, v2, v3, v12}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getUidMode(ILjava/lang/String;I)I

    move-result v0

    if-ne v0, v13, :cond_cd

    .line 1566
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda20;-><init>()V

    .line 1568
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v8, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v5, "default:0"

    .line 1566
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_16e

    .line 1569
    :cond_cd
    iget-object v0, v8, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16e

    .line 1570
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 1571
    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/util/ArraySet;

    if-eqz v14, :cond_16e

    .line 1573
    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v9

    move v15, v0

    :goto_e6
    if-ltz v15, :cond_16e

    .line 1574
    invoke-virtual {v14, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/OnOpModeChangedListener;

    .line 1575
    invoke-virtual {v0}, Lcom/android/server/appop/OnOpModeChangedListener;->getFlags()I

    move-result v2

    and-int/2addr v2, v9

    if-eqz v2, :cond_166

    iget v2, v8, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 1577
    invoke-virtual {v0, v2}, Lcom/android/server/appop/OnOpModeChangedListener;->isWatchingUid(I)Z

    move-result v0

    if-nez v0, :cond_ff

    goto/16 :goto_166

    .line 1580
    :cond_ff
    iget-object v0, v8, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    sub-int/2addr v0, v9

    :goto_106
    if-ltz v0, :cond_166

    .line 1581
    iget-object v2, v8, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$Ops;

    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$Op;

    if-nez v2, :cond_11a

    :cond_118
    move v7, v0

    goto :goto_15f

    .line 1585
    :cond_11a
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget-object v4, v2, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget v5, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v2, v2, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 1588
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1585
    invoke-interface {v3, v4, v5, v2}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v13, :cond_118

    .line 1590
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda8;

    invoke-direct {v3}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda8;-><init>()V

    .line 1592
    invoke-virtual {v14, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/OnOpModeChangedListener;

    move-object v5, v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v6, v8, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v8, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1593
    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object/from16 v16, v2

    move-object v2, v4

    move-object v4, v6

    const-string v6, "default:0"

    move-object v9, v7

    move v7, v0

    move-object v0, v5

    move-object v5, v9

    move-object/from16 v9, v16

    .line 1590
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_15f
    add-int/lit8 v0, v7, -0x1

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object/from16 v1, p0

    goto :goto_106

    :cond_166
    :goto_166
    add-int/lit8 v15, v15, -0x1

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_e6

    :cond_16e
    :goto_16e
    add-int/lit8 v11, v11, -0x1

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_84

    :cond_176
    if-eqz v8, :cond_1cb

    .line 1604
    iget-object v0, v8, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_17f
    if-ge v1, v0, :cond_1cb

    .line 1606
    iget-object v2, v8, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$Ops;

    .line 1608
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_18e
    if-ge v4, v3, :cond_1c6

    .line 1610
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AppOpsService$Op;

    const/4 v6, 0x0

    .line 1611
    :goto_197
    iget-object v7, v5, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v6, v7, :cond_1c1

    .line 1613
    iget-object v7, v5, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    .line 1614
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    const/4 v9, 0x0

    .line 1615
    :goto_1a8
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v9, v10, :cond_1bc

    .line 1617
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/appop/AttributedOp;

    move/from16 v11, p2

    .line 1618
    invoke-virtual {v10, v11}, Lcom/android/server/appop/AttributedOp;->onUidStateChanged(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1a8

    :cond_1bc
    move/from16 v11, p2

    add-int/lit8 v6, v6, 0x1

    goto :goto_197

    :cond_1c1
    move/from16 v11, p2

    add-int/lit8 v4, v4, 0x1

    goto :goto_18e

    :cond_1c6
    move/from16 v11, p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_17f

    .line 1624
    :cond_1cb
    monitor-exit p0

    return-void

    :goto_1cd
    monitor-exit p0
    :try_end_1ce
    .catchall {:try_start_6 .. :try_end_1ce} :catchall_2b

    throw v0
.end method

.method public packageRemoved(ILjava/lang/String;)V
    .registers 3

    .line 1443
    monitor-enter p0

    .line 1444
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->packageRemovedLocked(ILjava/lang/String;)V

    .line 1445
    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw p1
.end method

.method public final packageRemovedLocked(ILjava/lang/String;)V
    .registers 10

    .line 1450
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getIoHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda9;-><init>()V

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    .line 1451
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1450
    invoke-static {v1, v2, v3, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1453
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$UidState;

    if-nez v0, :cond_22

    goto/16 :goto_91

    .line 1461
    :cond_22
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$Ops;

    .line 1462
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-interface {v1, p2, p1}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->removePackage(Ljava/lang/String;I)Z

    if-eqz v0, :cond_91

    .line 1465
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    .line 1467
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 p1, 0x0

    move p2, p1

    :goto_3e
    if-ge p2, p0, :cond_91

    .line 1469
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$Op;

    move v2, p1

    .line 1470
    :goto_47
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_8e

    .line 1472
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    .line 1473
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    move v4, p1

    .line 1474
    :goto_58
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_8b

    .line 1475
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AttributedOp;

    .line 1477
    :goto_64
    invoke-virtual {v5}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_76

    .line 1478
    iget-object v6, v5, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v6, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Lcom/android/server/appop/AttributedOp;->finished(Landroid/os/IBinder;)V

    goto :goto_64

    .line 1480
    :cond_76
    :goto_76
    invoke-virtual {v5}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    move-result v6

    if-eqz v6, :cond_88

    .line 1481
    iget-object v6, v5, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v6, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Lcom/android/server/appop/AttributedOp;->finished(Landroid/os/IBinder;)V

    goto :goto_76

    :cond_88
    add-int/lit8 v4, v4, 0x1

    goto :goto_58

    :cond_8b
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    :cond_8e
    add-int/lit8 p2, p2, 0x1

    goto :goto_3e

    :cond_91
    :goto_91
    return-void
.end method

.method public permissionToOpCode(Ljava/lang/String;)I
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, -0x1

    return p0

    .line 4685
    :cond_4
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public prepareInternalCallbacks()V
    .registers 3

    .line 1236
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    new-instance v1, Lcom/android/server/appop/AppOpsService$8;

    invoke-direct {v1, p0}, Lcom/android/server/appop/AppOpsService$8;-><init>(Lcom/android/server/appop/AppOpsService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->addUserLifecycleListener(Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;)V

    return-void
.end method

.method public final pruneOpLocked(Lcom/android/server/appop/AppOpsService$Op;ILjava/lang/String;)V
    .registers 12

    .line 2086
    invoke-virtual {p1}, Lcom/android/server/appop/AppOpsService$Op;->removeAttributionsWithNoTime()V

    .line 2088
    iget-object v0, p1, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4c

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    .line 2089
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object p0

    if-eqz p0, :cond_4c

    .line 2091
    iget p2, p1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 2092
    iget-object p2, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget p3, p1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 2095
    invoke-static {p3}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    iget p1, p1, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 2096
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 2092
    invoke-interface {p2, v3, p3, v0, p1}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->setPackageMode(Ljava/lang/String;III)V

    .line 2097
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-gtz p1, :cond_4c

    .line 2098
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    .line 2099
    iget-object p2, p1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz p2, :cond_4c

    .line 2101
    iget-object p3, p0, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2102
    iget-object p2, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 2103
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 2102
    invoke-interface {p2, p0, p1}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->removePackage(Ljava/lang/String;I)Z

    :cond_4c
    return-void
.end method

.method public publish()V
    .registers 3

    .line 1082
    const-string v0, "appops"

    invoke-virtual {p0}, Lcom/android/internal/app/IAppOpsService$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1083
    const-class v0, Landroid/app/AppOpsManagerInternal;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsManagerInternal:Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1084
    new-instance v0, Lcom/android/server/appop/AppOpsService$AppOpsManagerLocalImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/appop/AppOpsService$AppOpsManagerLocalImpl;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService-IA;)V

    const-class p0, Lcom/android/server/appop/AppOpsManagerLocal;

    invoke-static {p0, v0}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public final readAttributionOp(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)V
    .registers 22

    move-object/from16 v0, p1

    .line 5503
    const-string v1, "default:0"

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 5504
    invoke-virtual {v2, v2, v3, v1}, Lcom/android/server/appop/AppOpsService$Op;->getOrCreateAttribution(Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AttributedOp;

    move-result-object v2

    .line 5506
    const-string/jumbo v1, "n"

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    .line 5507
    invoke-static {v4, v5}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v11

    .line 5508
    invoke-static {v4, v5}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v12

    .line 5510
    const-string/jumbo v1, "t"

    const-wide/16 v13, 0x0

    invoke-interface {v0, v3, v1, v13, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    .line 5511
    const-string/jumbo v1, "r"

    invoke-interface {v0, v3, v1, v13, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v6

    .line 5512
    const-string v1, "d"

    const-wide/16 v8, -0x1

    invoke-interface {v0, v3, v1, v8, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v8

    .line 5513
    const-string/jumbo v1, "pp"

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5514
    const-string/jumbo v10, "pu"

    const/4 v15, -0x1

    invoke-interface {v0, v3, v10, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 5515
    const-string/jumbo v10, "pc"

    invoke-static {v0, v10}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    cmp-long v10, v4, v13

    if-lez v10, :cond_5d

    .line 5518
    const-string v10, "default:0"

    move-wide/from16 v16, v8

    move-object v9, v0

    move-object v8, v1

    move-wide v0, v6

    move v7, v3

    move-wide v3, v4

    move-wide/from16 v5, v16

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/appop/AttributedOp;->accessed(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_5e

    :cond_5d
    move-wide v0, v6

    :goto_5e
    cmp-long v3, v0, v13

    if-lez v3, :cond_65

    .line 5522
    invoke-virtual {v2, v0, v1, v11, v12}, Lcom/android/server/appop/AttributedOp;->rejected(JII)V

    :cond_65
    return-void
.end method

.method public final readOp(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;)V
    .registers 12

    const/4 v0, 0x0

    .line 5529
    const-string/jumbo v1, "n"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 5530
    new-instance v2, Lcom/android/server/appop/AppOpsService$Op;

    iget v7, p2, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/appop/AppOpsService$Op;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;II)V

    .line 5532
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result p0

    .line 5534
    :cond_16
    :goto_16
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result p2

    const/4 p3, 0x1

    if-eq p2, p3, :cond_61

    const/4 p3, 0x3

    if-ne p2, p3, :cond_26

    .line 5535
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    if-le v0, p0, :cond_61

    :cond_26
    if-eq p2, p3, :cond_16

    const/4 p3, 0x4

    if-ne p2, p3, :cond_2c

    goto :goto_16

    .line 5539
    :cond_2c
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p2

    .line 5540
    const-string/jumbo p3, "st"

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_43

    .line 5541
    const-string p2, "id"

    invoke-static {p1, p2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, v2, p2}, Lcom/android/server/appop/AppOpsService;->readAttributionOp(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)V

    goto :goto_16

    .line 5543
    :cond_43
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown element under <op>: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5544
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5543
    const-string p3, "AppOps"

    invoke-static {p3, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5545
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_16

    .line 5549
    :cond_61
    iget-object p0, v4, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {p0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/appop/AppOpsService$Ops;

    if-nez p0, :cond_79

    .line 5551
    new-instance p0, Lcom/android/server/appop/AppOpsService$Ops;

    invoke-direct {p0, v5, v4}, Lcom/android/server/appop/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/appop/AppOpsService$UidState;)V

    .line 5552
    iget-object p1, v4, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5554
    :cond_79
    iget p1, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-virtual {p0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final readPackage(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .registers 7

    const/4 v0, 0x0

    .line 5456
    const-string/jumbo v1, "n"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5457
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 5459
    :cond_c
    :goto_c
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_51

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1c

    .line 5460
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_51

    :cond_1c
    if-eq v2, v3, :cond_c

    const/4 v3, 0x4

    if-ne v2, v3, :cond_22

    goto :goto_c

    .line 5465
    :cond_22
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 5466
    const-string/jumbo v3, "uid"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 5467
    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->readUid(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V

    goto :goto_c

    .line 5469
    :cond_33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown element under <pkg>: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5470
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5469
    const-string v3, "AppOps"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5471
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_c

    :cond_51
    return-void
.end method

.method public final readRecentAccesses()V
    .registers 4

    .line 5377
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mRecentAccessesFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 5378
    new-instance v0, Ljava/io/File;

    .line 5379
    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "appops.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5380
    new-instance v1, Landroid/util/AtomicFile;

    const-string v2, "appops_legacy"

    invoke-direct {v1, v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/server/appop/AppOpsService;->readRecentAccesses(Landroid/util/AtomicFile;)V

    return-void

    .line 5387
    :cond_1e
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mRecentAccessesFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v0}, Lcom/android/server/appop/AppOpsService;->readRecentAccesses(Landroid/util/AtomicFile;)V

    return-void
.end method

.method public final readRecentAccesses(Landroid/util/AtomicFile;)V
    .registers 9

    .line 5393
    monitor-enter p1

    .line 5394
    :try_start_1
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_1 .. :try_end_2} :catchall_af

    .line 5397
    :try_start_2
    invoke-virtual {p1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_6} :catch_bf
    .catchall {:try_start_2 .. :try_end_6} :catchall_80

    .line 5403
    :try_start_6
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 5404
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {v1}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->clearAllModes()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_80

    .line 5406
    :try_start_10
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v1

    .line 5408
    :goto_14
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1f

    if-eq v2, v3, :cond_1f

    goto :goto_14

    :cond_1f
    if-ne v2, v4, :cond_82

    .line 5417
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v2

    .line 5418
    :cond_25
    :goto_25
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v4

    if-eq v4, v3, :cond_7c

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3a

    .line 5419
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v2, :cond_7c

    goto :goto_3a

    :catchall_35
    move-exception v1

    goto/16 :goto_b1

    :catch_38
    move-exception v1

    goto :goto_8b

    :cond_3a
    :goto_3a
    if-eq v4, v5, :cond_25

    const/4 v5, 0x4

    if-ne v4, v5, :cond_40

    goto :goto_25

    .line 5424
    :cond_40
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 5425
    const-string/jumbo v5, "pkg"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 5426
    invoke-virtual {p0, v1}, Lcom/android/server/appop/AppOpsService;->readPackage(Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_25

    .line 5427
    :cond_51
    const-string/jumbo v5, "uid"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 5429
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_25

    .line 5431
    :cond_5e
    const-string v4, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <app-ops>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5432
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5431
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5433
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_7b} :catch_38
    .catchall {:try_start_10 .. :try_end_7b} :catchall_35

    goto :goto_25

    .line 5446
    :cond_7c
    :goto_7c
    :try_start_7c
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_ac
    .catchall {:try_start_7c .. :try_end_7f} :catchall_80

    goto :goto_ac

    :catchall_80
    move-exception v0

    goto :goto_e1

    .line 5414
    :cond_82
    :try_start_82
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "no start tag found"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_8b} :catch_38
    .catchall {:try_start_82 .. :try_end_8b} :catchall_35

    .line 5439
    :goto_8b
    :try_start_8b
    const-string v2, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catchall {:try_start_8b .. :try_end_a1} :catchall_35

    .line 5442
    :try_start_a1
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 5443
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {v1}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->clearAllModes()V

    goto :goto_7c

    .line 5450
    :catch_ac
    :goto_ac
    monitor-exit p0
    :try_end_ad
    .catchall {:try_start_a1 .. :try_end_ad} :catchall_80

    .line 5451
    :try_start_ad
    monitor-exit p1
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_af

    goto :goto_e0

    :catchall_af
    move-exception p0

    goto :goto_e3

    .line 5442
    :goto_b1
    :try_start_b1
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 5443
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {v2}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->clearAllModes()V
    :try_end_bb
    .catchall {:try_start_b1 .. :try_end_bb} :catchall_80

    .line 5446
    :try_start_bb
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_be} :catch_be
    .catchall {:try_start_bb .. :try_end_be} :catchall_80

    .line 5449
    :catch_be
    :try_start_be
    throw v1

    .line 5399
    :catch_bf
    const-string v0, "AppOps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No existing app ops "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; starting empty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5400
    monitor-exit p0
    :try_end_df
    .catchall {:try_start_be .. :try_end_df} :catchall_80

    :try_start_df
    monitor-exit p1
    :try_end_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_af

    :goto_e0
    return-void

    .line 5450
    :goto_e1
    :try_start_e1
    monitor-exit p0
    :try_end_e2
    .catchall {:try_start_e1 .. :try_end_e2} :catchall_80

    :try_start_e2
    throw v0

    .line 5451
    :goto_e3
    monitor-exit p1
    :try_end_e4
    .catchall {:try_start_e2 .. :try_end_e4} :catchall_af

    throw p0
.end method

.method public readState()V
    .registers 1

    .line 2061
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->readState()V

    return-void
.end method

.method public final readUid(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V
    .registers 9

    const/4 v0, 0x0

    .line 5478
    const-string/jumbo v1, "n"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    .line 5479
    invoke-virtual {p0, v0, v1}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v0

    .line 5480
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v2

    .line 5482
    :cond_11
    :goto_11
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    if-eq v3, v1, :cond_55

    const/4 v4, 0x3

    if-ne v3, v4, :cond_20

    .line 5483
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v2, :cond_55

    :cond_20
    if-eq v3, v4, :cond_11

    const/4 v4, 0x4

    if-ne v3, v4, :cond_26

    goto :goto_11

    .line 5487
    :cond_26
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 5488
    const-string/jumbo v4, "op"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 5489
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/appop/AppOpsService;->readOp(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;)V

    goto :goto_11

    .line 5491
    :cond_37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <pkg>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5492
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5491
    const-string v4, "AppOps"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5493
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_11

    :cond_55
    return-void
.end method

.method public rebootHistory(J)V
    .registers 5

    .line 7201
    invoke-virtual {p0}, Lcom/android/internal/app/IAppOpsService$Stub;->rebootHistory_enforcePermission()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 7203
    :goto_c
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 7206
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    invoke-interface {v1}, Lcom/android/server/appop/HistoricalRegistryInterface;->shutdown()V

    if-lez v0, :cond_19

    .line 7209
    invoke-static {p1, p2}, Landroid/os/SystemClock;->sleep(J)V

    .line 7213
    :cond_19
    new-instance p1, Lcom/android/server/appop/HistoricalRegistry;

    iget-object p2, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    check-cast p2, Lcom/android/server/appop/HistoricalRegistry;

    invoke-direct {p1, p2}, Lcom/android/server/appop/HistoricalRegistry;-><init>(Lcom/android/server/appop/HistoricalRegistry;)V

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    .line 7220
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    iget-object p2, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/server/appop/HistoricalRegistryInterface;->systemReady(Landroid/content/ContentResolver;)V

    .line 7221
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    invoke-interface {p0}, Lcom/android/server/appop/HistoricalRegistryInterface;->persistPendingHistory()V

    return-void
.end method

.method public final refreshAttributionsLocked(Lcom/android/server/pm/pkg/AndroidPackage;I)V
    .registers 15

    .line 1364
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1365
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1366
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    const/4 v3, 0x0

    .line 1367
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1368
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_57

    .line 1369
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v6, v5

    :goto_22
    if-ge v6, v4, :cond_57

    .line 1372
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/pm/pkg/component/ParsedAttribution;

    .line 1373
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedAttribution;->getTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1375
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedAttribution;->getInheritFrom()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v9, v5

    :goto_3e
    if-ge v9, v8, :cond_54

    .line 1378
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedAttribution;->getInheritFrom()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1379
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedAttribution;->getTag()Ljava/lang/String;

    move-result-object v11

    .line 1378
    invoke-virtual {v1, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_3e

    :cond_54
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 1384
    :cond_57
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/appop/AppOpsService$UidState;

    if-nez p1, :cond_63

    goto/16 :goto_d2

    .line 1389
    :cond_63
    iget-object p1, p1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/appop/AppOpsService$Ops;

    if-nez p1, :cond_6e

    goto :goto_d2

    .line 1395
    :cond_6e
    iput-object v3, p1, Lcom/android/server/appop/AppOpsService$Ops;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    .line 1396
    iget-object p2, p1, Lcom/android/server/appop/AppOpsService$Ops;->knownAttributionTags:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->clear()V

    .line 1400
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    :goto_79
    if-ge v5, p2, :cond_d2

    .line 1402
    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$Op;

    .line 1403
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_89
    if-ltz v3, :cond_cf

    .line 1405
    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    .line 1406
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 1407
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_99
    if-ltz v6, :cond_cc

    .line 1409
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1410
    invoke-virtual {v2, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a8

    goto :goto_c9

    .line 1415
    :cond_a8
    invoke-virtual {v1, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1417
    iget-object v9, v0, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    .line 1419
    invoke-virtual {v9, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1417
    invoke-virtual {v0, v0, v8, v9}, Lcom/android/server/appop/AppOpsService$Op;->getOrCreateAttribution(Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AttributedOp;

    move-result-object v8

    .line 1420
    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/appop/AttributedOp;

    invoke-virtual {v8, v9}, Lcom/android/server/appop/AttributedOp;->add(Lcom/android/server/appop/AttributedOp;)V

    .line 1421
    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1423
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    :goto_c9
    add-int/lit8 v6, v6, -0x1

    goto :goto_99

    :cond_cc
    add-int/lit8 v3, v3, -0x1

    goto :goto_89

    :cond_cf
    add-int/lit8 v5, v5, 0x1

    goto :goto_79

    :cond_d2
    :goto_d2
    return-void
.end method

.method public reloadNonHistoricalState()V
    .registers 6

    .line 2053
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 2054
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string/jumbo v3, "reloadNonHistoricalState"

    .line 2053
    const-string v4, "android.permission.MANAGE_APPOPS"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2055
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {v0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->writeState()V

    .line 2056
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->readState()V

    return-void
.end method

.method public final removeUidsForUserLocked(I)V
    .registers 4

    .line 7506
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_29

    .line 7507
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 7508
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p1, :cond_26

    .line 7509
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$UidState;

    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$UidState;->clear()V

    .line 7510
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_29
    return-void
.end method

.method public removeUser(I)V
    .registers 4

    .line 7055
    const-string/jumbo v0, "removeUser"

    invoke-virtual {p0, v0}, Lcom/android/server/appop/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    .line 7056
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/appop/AppOpsService;I)V

    const-wide/16 p0, 0x1388

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public reportRuntimeAppOpAccessMessageAndGetConfig(Ljava/lang/String;Landroid/app/SyncNotedAppOp;Ljava/lang/String;)Lcom/android/internal/app/MessageSamplingConfig;
    .registers 13

    .line 7236
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 7237
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7238
    monitor-enter p0

    .line 7239
    :try_start_8
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->switchPackageIfBootTimeOrRarelyUsedLocked(Ljava/lang/String;)V

    .line 7240
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mSampledPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_64

    const-wide/16 v7, 0x1

    if-nez v0, :cond_30

    .line 7241
    :try_start_15
    new-instance p1, Lcom/android/internal/app/MessageSamplingConfig;

    .line 7242
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object p2

    sget-object p3, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {p2, v7, v8, p3}, Ljava/time/Instant;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object p2

    invoke-virtual {p2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide p2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p2, p3}, Lcom/android/internal/app/MessageSamplingConfig;-><init>(IIJ)V

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_2c

    return-object p1

    :catchall_2c
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto :goto_67

    .line 7245
    :cond_30
    :try_start_30
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7246
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7249
    invoke-virtual {p2}, Landroid/app/SyncNotedAppOp;->getOp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v4

    .line 7250
    invoke-virtual {p2}, Landroid/app/SyncNotedAppOp;->getAttributionTag()Ljava/lang/String;

    move-result-object v5
    :try_end_42
    .catchall {:try_start_30 .. :try_end_42} :catchall_64

    move-object v1, p0

    move-object v3, p1

    move-object v6, p3

    .line 7248
    :try_start_45
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->reportRuntimeAppOpAccessMessageInternalLocked(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 7252
    new-instance p0, Lcom/android/internal/app/MessageSamplingConfig;

    iget p1, v1, Lcom/android/server/appop/AppOpsService;->mSampledAppOpCode:I

    iget p2, v1, Lcom/android/server/appop/AppOpsService;->mAcceptableLeftDistance:I

    .line 7253
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object p3

    sget-object v0, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {p3, v7, v8, v0}, Ljava/time/Instant;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object p3

    invoke-virtual {p3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/android/internal/app/MessageSamplingConfig;-><init>(IIJ)V

    monitor-exit v1

    return-object p0

    :catchall_61
    move-exception v0

    :goto_62
    move-object p1, v0

    goto :goto_67

    :catchall_64
    move-exception v0

    move-object v1, p0

    goto :goto_62

    .line 7254
    :goto_67
    monitor-exit v1
    :try_end_68
    .catchall {:try_start_45 .. :try_end_68} :catchall_61

    throw p1
.end method

.method public final reportRuntimeAppOpAccessMessageAsyncLocked(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 7269
    invoke-virtual {p0, p2}, Lcom/android/server/appop/AppOpsService;->switchPackageIfBootTimeOrRarelyUsedLocked(Ljava/lang/String;)V

    .line 7270
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mSampledPackage:Ljava/lang/String;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 7273
    :cond_c
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->reportRuntimeAppOpAccessMessageInternalLocked(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final reportRuntimeAppOpAccessMessageInternalLocked(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 14

    .line 7284
    iget v0, p0, Lcom/android/server/appop/AppOpsService;->mSampledAppOpCode:I

    const/16 v1, 0xaa

    invoke-static {p3, v0, v1}, Landroid/app/AppOpsManager;->leftCircularDistance(III)I

    move-result v0

    .line 7287
    iget v1, p0, Lcom/android/server/appop/AppOpsService;->mAcceptableLeftDistance:I

    const/4 v2, 0x4

    if-ge v1, v0, :cond_12

    iget v3, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    if-eq v3, v2, :cond_12

    goto :goto_41

    :cond_12
    if-le v1, v0, :cond_1d

    .line 7292
    iget v1, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    if-eq v1, v2, :cond_1d

    .line 7294
    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mAcceptableLeftDistance:I

    const/4 v0, 0x0

    .line 7295
    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mMessagesCollectedCount:F

    .line 7298
    :cond_1d
    iget v0, p0, Lcom/android/server/appop/AppOpsService;->mMessagesCollectedCount:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mMessagesCollectedCount:F

    .line 7299
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextFloat()F

    move-result v0

    iget v2, p0, Lcom/android/server/appop/AppOpsService;->mMessagesCollectedCount:F

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_41

    .line 7300
    new-instance v1, Landroid/app/RuntimeAppOpAccessMessage;

    iget v7, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    move v2, p1

    move-object v4, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Landroid/app/RuntimeAppOpAccessMessage;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mCollectedRuntimePermissionMessage:Landroid/app/RuntimeAppOpAccessMessage;

    :cond_41
    :goto_41
    return-void
.end method

.method public final resampleAppOpForPackageLocked(Ljava/lang/String;Z)V
    .registers 4

    const/4 v0, 0x0

    .line 7375
    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mMessagesCollectedCount:F

    if-eqz p2, :cond_10

    .line 7376
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object p2

    const/16 v0, 0xaa

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result p2

    goto :goto_11

    :cond_10
    const/4 p2, -0x1

    :goto_11
    iput p2, p0, Lcom/android/server/appop/AppOpsService;->mSampledAppOpCode:I

    const/16 p2, 0xa9

    .line 7377
    iput p2, p0, Lcom/android/server/appop/AppOpsService;->mAcceptableLeftDistance:I

    .line 7378
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService;->mSampledPackage:Ljava/lang/String;

    return-void
.end method

.method public final resamplePackageAndAppOpLocked(Ljava/util/List;)V
    .registers 5

    .line 7360
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_46

    .line 7361
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextFloat()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2d

    const/4 v0, 0x1

    .line 7362
    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    .line 7364
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result v1

    .line 7363
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->resampleAppOpForPackageLocked(Ljava/lang/String;Z)V

    return-void

    :cond_2d
    const/4 v0, 0x4

    .line 7366
    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    .line 7368
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result v0

    .line 7367
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->resampleAppOpForPackageLocked(Ljava/lang/String;Z)V

    :cond_46
    return-void
.end method

.method public resetAllModes(ILjava/lang/String;)V
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 2630
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 2631
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2632
    const-string/jumbo v7, "resetAllModes"

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move/from16 v4, p1

    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eqz v0, :cond_26

    .line 2638
    :try_start_1b
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    const-wide/16 v7, 0x2000

    invoke-interface {v6, v0, v7, v8, v4}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v6
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_25} :catch_26

    goto :goto_27

    :catch_26
    :cond_26
    move v6, v5

    .line 2645
    :goto_27
    invoke-virtual {v1, v2, v3, v6}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 2648
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2649
    monitor-enter p0

    .line 2651
    :try_start_30
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    const/4 v9, 0x0

    move-object v10, v9

    move-object v9, v2

    move-object v2, v10

    const/4 v10, 0x0

    :goto_3d
    if-ltz v3, :cond_1f1

    .line 2652
    iget-object v11, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/appop/AppOpsService$UidState;

    .line 2655
    iget-object v12, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget v13, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    const-string v14, "default:0"

    .line 2656
    invoke-interface {v12, v13, v14}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getNonDefaultUidModes(ILjava/lang/String;)Landroid/util/SparseIntArray;

    move-result-object v12

    if-eqz v12, :cond_e6

    .line 2658
    iget v13, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    if-eq v13, v6, :cond_59

    if-ne v6, v5, :cond_e6

    .line 2659
    :cond_59
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v13

    sub-int/2addr v13, v7

    :goto_5e
    if-ltz v13, :cond_e6

    .line 2661
    invoke-virtual {v12, v13}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v15

    .line 2662
    invoke-static {v15}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v14

    if-eqz v14, :cond_da

    .line 2663
    invoke-virtual {v12, v13}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v18

    .line 2664
    iget v14, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-virtual {v1, v14, v15}, Lcom/android/server/appop/AppOpsService;->isUidOpGrantedByRole(II)Z

    move-result v14

    if-eqz v14, :cond_7a

    const/4 v14, 0x0

    :goto_77
    move/from16 p1, v7

    goto :goto_7f

    .line 2665
    :cond_7a
    invoke-static {v15}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v14

    goto :goto_77

    .line 2666
    :goto_7f
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget v8, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    const-string v5, "default:0"

    invoke-interface {v7, v8, v5, v15, v14}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->setUidMode(ILjava/lang/String;II)Z

    .line 2671
    iget v5, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v5}, Lcom/android/server/appop/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    array-length v7, v5

    move-object v14, v2

    const/4 v2, 0x0

    :goto_91
    if-ge v2, v7, :cond_d6

    aget-object v17, v5, v2

    .line 2672
    iget v8, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    move/from16 v20, v2

    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 2673
    invoke-virtual {v2, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/util/ArraySet;

    move/from16 v16, v8

    .line 2672
    invoke-static/range {v14 .. v19}, Lcom/android/server/appop/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;ILandroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v14

    move-object/from16 v2, v17

    .line 2674
    iget v8, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    move/from16 v21, v3

    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 2675
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/util/ArraySet;

    move-object/from16 v17, v2

    move/from16 v16, v8

    .line 2674
    invoke-static/range {v14 .. v19}, Lcom/android/server/appop/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;ILandroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v14

    move-object/from16 v3, v17

    move/from16 v2, v18

    .line 2677
    iget v8, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v9, v15, v8, v3, v2}, Lcom/android/server/appop/AppOpsService;->addChange(Ljava/util/ArrayList;IILjava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v9

    add-int/lit8 v3, v20, 0x1

    move/from16 v18, v2

    move v2, v3

    move/from16 v3, v21

    goto :goto_91

    :catchall_d3
    move-exception v0

    goto/16 :goto_297

    :cond_d6
    move-object v2, v14

    :goto_d7
    move/from16 v21, v3

    goto :goto_dd

    :cond_da
    move/from16 p1, v7

    goto :goto_d7

    :goto_dd
    add-int/lit8 v13, v13, -0x1

    move/from16 v7, p1

    move/from16 v3, v21

    const/4 v5, -0x1

    goto/16 :goto_5e

    :cond_e6
    move/from16 v21, v3

    move/from16 p1, v7

    .line 2684
    iget-object v3, v11, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_f5

    const/4 v3, -0x1

    goto/16 :goto_1e8

    :cond_f5
    const/4 v3, -0x1

    if-eq v4, v3, :cond_102

    .line 2688
    iget v5, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 2689
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-eq v4, v5, :cond_102

    goto/16 :goto_1e8

    .line 2694
    :cond_102
    iget-object v5, v11, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 2695
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2696
    :goto_10c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1e8

    .line 2697
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 2698
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    move-object v15, v8

    check-cast v15, Ljava/lang/String;

    if-eqz v0, :cond_128

    .line 2699
    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_128

    goto :goto_10c

    .line 2703
    :cond_128
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/AppOpsService$Ops;

    .line 2704
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    move-object v12, v2

    :goto_135
    if-ltz v8, :cond_1ce

    .line 2705
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$Op;

    .line 2706
    iget v13, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-virtual {v1, v13}, Lcom/android/server/appop/AppOpsService;->shouldDeferResetOpToDpm(I)Z

    move-result v13

    if-eqz v13, :cond_14c

    .line 2707
    iget v2, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-virtual {v1, v2, v0, v4}, Lcom/android/server/appop/AppOpsService;->deferResetOpToDpm(ILjava/lang/String;I)V

    goto/16 :goto_1c7

    .line 2710
    :cond_14c
    iget v13, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v13}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v13

    if-eqz v13, :cond_1c7

    .line 2711
    iget-object v13, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget-object v14, v2, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget v3, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v0, v2, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 2715
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2712
    invoke-interface {v13, v14, v3, v0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(Ljava/lang/String;II)I

    move-result v0

    .line 2716
    iget v3, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    iget v13, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-virtual {v1, v15, v3, v13}, Lcom/android/server/appop/AppOpsService;->isPackageOpGrantedByRole(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_170

    const/4 v3, 0x0

    goto :goto_176

    .line 2717
    :cond_170
    iget v3, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v3

    :goto_176
    if-ne v0, v3, :cond_179

    goto :goto_1c7

    .line 2722
    :cond_179
    iget-object v10, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget-object v13, v2, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget v14, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    move/from16 v16, v0

    iget v0, v2, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 2726
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2722
    invoke-interface {v10, v13, v14, v3, v0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->setPackageMode(Ljava/lang/String;III)V

    .line 2728
    iget-object v0, v2, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v14, v0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 2729
    iget v13, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 2730
    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/util/ArraySet;

    .line 2729
    invoke-static/range {v12 .. v17}, Lcom/android/server/appop/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;ILandroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v12

    .line 2731
    iget v13, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 2732
    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/util/ArraySet;

    .line 2731
    invoke-static/range {v12 .. v17}, Lcom/android/server/appop/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;ILandroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v0

    move/from16 v3, v16

    .line 2734
    iget v10, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v9, v10, v14, v15, v3}, Lcom/android/server/appop/AppOpsService;->addChange(Ljava/util/ArrayList;IILjava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v9

    .line 2736
    invoke-virtual {v2}, Lcom/android/server/appop/AppOpsService$Op;->removeAttributionsWithNoTime()V

    .line 2737
    iget-object v2, v2, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1c4

    .line 2738
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_1c4
    move/from16 v10, p1

    move-object v12, v0

    :cond_1c7
    :goto_1c7
    add-int/lit8 v8, v8, -0x1

    move-object/from16 v0, p2

    const/4 v3, -0x1

    goto/16 :goto_135

    .line 2742
    :cond_1ce
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1e2

    .line 2743
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 2744
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget v2, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 2745
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 2744
    invoke-interface {v0, v15, v2}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->removePackage(Ljava/lang/String;I)Z

    :cond_1e2
    move-object/from16 v0, p2

    move-object v2, v12

    const/4 v3, -0x1

    goto/16 :goto_10c

    :cond_1e8
    :goto_1e8
    add-int/lit8 v3, v21, -0x1

    move/from16 v7, p1

    move-object/from16 v0, p2

    const/4 v5, -0x1

    goto/16 :goto_3d

    :cond_1f1
    if-eqz v10, :cond_1f6

    .line 2751
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    .line 2753
    :cond_1f6
    monitor-exit p0
    :try_end_1f7
    .catchall {:try_start_30 .. :try_end_1f7} :catchall_d3

    if-eqz v2, :cond_275

    .line 2756
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_201
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_275

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2757
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/OnOpModeChangedListener;

    .line 2758
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/ArrayList;

    const/4 v10, 0x0

    .line 2759
    :goto_21b
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_272

    .line 2760
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/server/appop/AppOpsService$ChangeRec;

    .line 2761
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 2762
    const-string v3, "default:0"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2763
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-eqz v3, :cond_23d

    .line 2764
    invoke-virtual {v3}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getAllPersistentDeviceIds()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2766
    :cond_23d
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_241
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 2767
    iget-object v13, v1, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda8;-><init>()V

    iget v3, v11, Lcom/android/server/appop/AppOpsService$ChangeRec;->op:I

    .line 2769
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v11, Lcom/android/server/appop/AppOpsService$ChangeRec;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v11, Lcom/android/server/appop/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    .line 2767
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v1, p0

    goto :goto_241

    :cond_26d
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p0

    goto :goto_21b

    :cond_272
    move-object/from16 v1, p0

    goto :goto_201

    .line 2775
    :cond_275
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v8, 0x0

    :goto_27a
    if-ge v8, v0, :cond_296

    .line 2777
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$ChangeRec;

    .line 2778
    iget v2, v1, Lcom/android/server/appop/AppOpsService$ChangeRec;->op:I

    iget v3, v1, Lcom/android/server/appop/AppOpsService$ChangeRec;->uid:I

    iget-object v4, v1, Lcom/android/server/appop/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    .line 2779
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v5

    iget v6, v1, Lcom/android/server/appop/AppOpsService$ChangeRec;->previous_mode:I

    move-object/from16 v1, p0

    .line 2778
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->notifyStorageManagerOpModeChangedSync(IILjava/lang/String;II)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_27a

    :cond_296
    return-void

    .line 2753
    :goto_297
    :try_start_297
    monitor-exit p0
    :try_end_298
    .catchall {:try_start_297 .. :try_end_298} :catchall_d3

    throw v0
.end method

.method public resetHistoryParameters()V
    .registers 1

    .line 7185
    invoke-virtual {p0}, Lcom/android/internal/app/IAppOpsService$Stub;->resetHistoryParameters_enforcePermission()V

    .line 7187
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    invoke-interface {p0}, Lcom/android/server/appop/HistoricalRegistryInterface;->resetHistoryParameters()V

    return-void
.end method

.method public resetPackageOpsNoHistory(Ljava/lang/String;)V
    .registers 6

    .line 7137
    invoke-virtual {p0}, Lcom/android/internal/app/IAppOpsService$Stub;->resetPackageOpsNoHistory_enforcePermission()V

    .line 7138
    monitor-enter p0

    .line 7139
    :try_start_4
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 7140
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const-wide/16 v2, 0x0

    .line 7139
    invoke-virtual {v0, p1, v2, v3, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    .line 7142
    monitor-exit p0

    return-void

    :catchall_15
    move-exception p1

    goto :goto_3b

    .line 7144
    :cond_17
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$UidState;

    if-nez v1, :cond_23

    .line 7146
    monitor-exit p0

    return-void

    .line 7148
    :cond_23
    iget-object v1, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$Ops;

    .line 7149
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-interface {v2, p1, v0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->removePackage(Ljava/lang/String;I)Z

    if-eqz v1, :cond_39

    .line 7151
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    .line 7153
    :cond_39
    monitor-exit p0

    return-void

    :goto_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_4 .. :try_end_3c} :catchall_15

    throw p1
.end method

.method public final scheduleFastWriteLocked()V
    .registers 4

    .line 5252
    iget-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mFastWriteScheduled:Z

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    .line 5253
    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    .line 5254
    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mFastWriteScheduled:Z

    .line 5255
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getIoHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5256
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getIoHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1d
    return-void
.end method

.method public scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IZII)V
    .registers 21

    .line 4521
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v0, :cond_2e

    .line 4523
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 4524
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$ActiveCallback;

    if-eqz v4, :cond_2b

    .line 4526
    iget v6, v4, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mWatchingUid:I

    if-ltz v6, :cond_21

    if-eq v6, p2, :cond_21

    goto :goto_2b

    :cond_21
    if-nez v2, :cond_28

    .line 4530
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 4532
    :cond_28
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2b
    :goto_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_2e
    if-nez v2, :cond_31

    return-void

    .line 4538
    :cond_31
    iget-object v11, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda3;-><init>()V

    .line 4540
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 4541
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object v1, p0

    move-object v5, p3

    move-object/from16 v6, p4

    .line 4538
    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/DecConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final scheduleOpNotedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;III)V
    .registers 19

    .line 4632
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v0, :cond_2e

    .line 4634
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 4635
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$NotedCallback;

    if-eqz v4, :cond_2b

    .line 4637
    iget v6, v4, Lcom/android/server/appop/AppOpsService$NotedCallback;->mWatchingUid:I

    if-ltz v6, :cond_21

    if-eq v6, p2, :cond_21

    goto :goto_2b

    :cond_21
    if-nez v2, :cond_28

    .line 4641
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 4643
    :cond_28
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2b
    :goto_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_2e
    if-nez v2, :cond_31

    return-void

    .line 4649
    :cond_31
    iget-object v10, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda17;-><init>()V

    .line 4651
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 4652
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v1, p0

    move-object v5, p3

    move-object v6, p4

    .line 4649
    invoke-static/range {v0 .. v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/NonaConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public scheduleOpStartedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IIIIII)V
    .registers 25

    .line 4576
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v0, :cond_33

    .line 4578
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 4580
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$StartedCallback;

    if-eqz v4, :cond_2e

    .line 4582
    iget v6, v4, Lcom/android/server/appop/AppOpsService$StartedCallback;->mWatchingUid:I

    move/from16 v7, p2

    if-ltz v6, :cond_23

    if-eq v6, v7, :cond_23

    goto :goto_30

    :cond_23
    if-nez v2, :cond_2a

    .line 4587
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 4589
    :cond_2a
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_2e
    move/from16 v7, p2

    :goto_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_33
    move/from16 v7, p2

    if-nez v2, :cond_38

    return-void

    .line 4597
    :cond_38
    iget-object v13, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda5;-><init>()V

    .line 4599
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 4600
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v1, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 4597
    invoke-static/range {v0 .. v12}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/DodecConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final scheduleWriteLocked()V
    .registers 4

    .line 5245
    iget-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    if-nez v0, :cond_13

    const/4 v0, 0x1

    .line 5246
    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    .line 5247
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getIoHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/32 v1, 0x1b7740

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_13
    return-void
.end method

.method public setAppOpsPolicy(Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V
    .registers 4

    .line 1435
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    if-eqz v0, :cond_9

    .line 1437
    invoke-static {v0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->-$$Nest$fgetmCheckOpsDelegate(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;)Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 1438
    :goto_a
    new-instance v1, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V

    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    return-void
.end method

.method public setAudioRestriction(I[II[Ljava/lang/String;)V
    .registers 9

    .line 3160
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 3161
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 3163
    array-length v0, p2

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_1d

    aget v2, p2, v1

    .line 3164
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

    invoke-virtual {v3, p1, v2, p3, p4}, Lcom/android/server/appop/AudioRestrictionManager;->setZenModeAudioRestriction(III[Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 3169
    :cond_1d
    iget-object p2, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda2;

    invoke-direct {p3}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda2;-><init>()V

    .line 3170
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p4, -0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 3169
    invoke-static {p3, p0, p1, p4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setCameraAudioRestriction(I)V
    .registers 5

    .line 3176
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 3178
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

    invoke-virtual {v0, p1}, Lcom/android/server/appop/AudioRestrictionManager;->setCameraAudioRestriction(I)V

    .line 3181
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda2;-><init>()V

    const/16 v1, 0x1c

    .line 3183
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3181
    invoke-static {v0, p0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3184
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda2;-><init>()V

    const/4 v1, 0x3

    .line 3186
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3184
    invoke-static {v0, p0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setCheckOpsDelegate(Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V
    .registers 4

    .line 2924
    monitor-enter p0

    .line 2925
    :try_start_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    if-eqz v0, :cond_c

    .line 2926
    invoke-static {v0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->-$$Nest$fgetmPolicy(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;)Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    move-result-object v0

    goto :goto_d

    :catchall_a
    move-exception p1

    goto :goto_16

    :cond_c
    const/4 v0, 0x0

    .line 2927
    :goto_d
    new-instance v1, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V

    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    .line 2928
    monitor-exit p0

    return-void

    :goto_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_a

    throw p1
.end method

.method public setHistoryParameters(IJI)V
    .registers 11

    .line 7160
    invoke-virtual {p0}, Lcom/android/internal/app/IAppOpsService$Stub;->setHistoryParameters_enforcePermission()V

    .line 7162
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    int-to-long v4, p4

    move v1, p1

    move-wide v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/server/appop/HistoricalRegistryInterface;->setHistoryParameters(IJJ)V

    return-void
.end method

.method public setMode(IILjava/lang/String;I)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 2447
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService;->setMode(IILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    return-void
.end method

.method public setMode(IILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V
    .registers 15

    .line 2452
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 2453
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 2454
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, p3, v0}, Lcom/android/server/appop/AppOpsService;->isIncomingPackageValid(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_19

    return-void

    .line 2458
    :cond_19
    invoke-virtual {p0, p2, p3}, Lcom/android/server/appop/AppOpsService;->isDeviceProvisioningPackage(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2459
    const-string p0, "AppOps"

    const-string p1, "Cannot set op mode for device provisioning app by Shell"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2463
    :cond_27
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v2

    const/4 p1, 0x0

    .line 2467
    :try_start_2c
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    move-result-object p1
    :try_end_30
    .catch Ljava/lang/SecurityException; {:try_start_2c .. :try_end_30} :catch_84

    .line 2474
    monitor-enter p0

    .line 2475
    :try_start_31
    iget-object v7, p1, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;
    :try_end_33
    .catchall {:try_start_31 .. :try_end_33} :catchall_7f

    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p2

    move-object v4, p3

    :try_start_39
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->getOpLocked(IILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object p0

    if-eqz p0, :cond_77

    .line 2477
    iget-object p1, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget-object p2, p0, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget p3, p0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v0, p0, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 2478
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2477
    invoke-interface {p1, p2, p3, v0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(Ljava/lang/String;II)I

    move-result p1

    if-eq p1, p4, :cond_77

    .line 2480
    iget-object p1, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget-object p2, p0, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget p3, p0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v0, p0, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 2482
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2481
    invoke-interface {p1, p2, p3, v0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(Ljava/lang/String;II)I

    move-result p1

    .line 2483
    iput-object p5, v1, Lcom/android/server/appop/AppOpsService;->mIgnoredCallback:Lcom/android/internal/app/IAppOpsCallback;

    .line 2484
    iget-object p2, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget-object p3, p0, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget p5, p0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget p0, p0, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 2485
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    .line 2484
    invoke-interface {p2, p3, p5, p4, p0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->setPackageMode(Ljava/lang/String;III)V

    :goto_72
    move v6, p1

    goto :goto_79

    :catchall_74
    move-exception v0

    :goto_75
    move-object p0, v0

    goto :goto_82

    :cond_77
    const/4 p1, 0x3

    goto :goto_72

    .line 2488
    :goto_79
    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_39 .. :try_end_7a} :catchall_74

    move v5, p4

    .line 2490
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->notifyStorageManagerOpModeChangedSync(IILjava/lang/String;II)V

    return-void

    :catchall_7f
    move-exception v0

    move-object v1, p0

    goto :goto_75

    .line 2488
    :goto_82
    :try_start_82
    monitor-exit v1
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_74

    throw p0

    :catch_84
    move-exception v0

    move-object v1, p0

    move v3, p2

    move-object p0, v0

    .line 2469
    const-string/jumbo p1, "setMode"

    invoke-virtual {v1, v3, p0, p1}, Lcom/android/server/appop/AppOpsService;->logVerifyAndGetBypassFailure(ILjava/lang/SecurityException;Ljava/lang/String;)V

    return-void
.end method

.method public setUidMode(III)V
    .registers 5

    const/4 v0, 0x0

    .line 2130
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/appop/AppOpsService;->setUidMode(IIILcom/android/internal/app/IAppOpsCallback;)V

    return-void
.end method

.method public final setUidMode(IIILcom/android/internal/app/IAppOpsCallback;)V
    .registers 12

    .line 2140
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 2141
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    const/4 v0, 0x0

    .line 2143
    invoke-virtual {p0, p2, v0}, Lcom/android/server/appop/AppOpsService;->isDeviceProvisioningPackage(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2144
    const-string p0, "AppOps"

    const-string p1, "Cannot set uid mode for device provisioning app by Shell"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2148
    :cond_1d
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v2

    if-nez p4, :cond_26

    .line 2151
    invoke-virtual {p0, p2, v2, p3}, Lcom/android/server/appop/AppOpsService;->updatePermissionRevokedCompat(III)V

    .line 2155
    :cond_26
    monitor-enter p0

    .line 2156
    :try_start_27
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result p1

    const/4 v0, 0x0

    .line 2158
    invoke-virtual {p0, p2, v0}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v1
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_a7

    if-nez v1, :cond_64

    if-ne p3, p1, :cond_3b

    .line 2161
    :try_start_34
    monitor-exit p0

    return-void

    :catchall_36
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto/16 :goto_aa

    :cond_3b
    const/16 p1, 0x2710

    if-lt p2, p1, :cond_5a

    .line 2165
    const-string p1, "AppOps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to set mode for unknown uid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    :cond_5a
    new-instance v1, Lcom/android/server/appop/AppOpsService$UidState;

    invoke-direct {v1, p0, p2}, Lcom/android/server/appop/AppOpsService$UidState;-><init>(Lcom/android/server/appop/AppOpsService;I)V

    .line 2170
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {p1, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_64
    .catchall {:try_start_34 .. :try_end_64} :catchall_36

    .line 2174
    :cond_64
    :try_start_64
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget v3, v1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    const-string v4, "default:0"

    invoke-interface {p1, v3, v4, v2}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getUidMode(ILjava/lang/String;I)I

    move-result p1

    .line 2176
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v3
    :try_end_72
    .catchall {:try_start_64 .. :try_end_72} :catchall_a7

    if-eq p1, v3, :cond_80

    .line 2177
    :try_start_74
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget v3, v1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    const-string v4, "default:0"

    .line 2178
    invoke-interface {p1, v3, v4, v2}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getUidMode(ILjava/lang/String;I)I

    move-result p1
    :try_end_7e
    .catchall {:try_start_74 .. :try_end_7e} :catchall_36

    :goto_7e
    move v6, p1

    goto :goto_82

    :cond_80
    const/4 p1, 0x3

    goto :goto_7e

    .line 2185
    :goto_82
    :try_start_82
    iput-object p4, p0, Lcom/android/server/appop/AppOpsService;->mIgnoredCallback:Lcom/android/internal/app/IAppOpsCallback;

    .line 2186
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget p4, v1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    const-string v1, "default:0"

    invoke-interface {p1, p4, v1, v2, p3}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->setUidMode(ILjava/lang/String;II)Z

    move-result p1
    :try_end_8e
    .catchall {:try_start_82 .. :try_end_8e} :catchall_a7

    if-nez p1, :cond_92

    .line 2188
    :try_start_90
    monitor-exit p0

    return-void

    :cond_92
    const/4 p1, 0x2

    if-eq p3, p1, :cond_9e

    if-eq p3, v6, :cond_9e

    const/4 p1, 0x1

    if-ne p3, p1, :cond_9b

    move v0, p1

    .line 2193
    :cond_9b
    invoke-virtual {p0, v2, v0, p2}, Lcom/android/server/appop/AppOpsService;->updateStartedOpModeForUidForDefaultDeviceLocked(IZI)V
    :try_end_9e
    .catchall {:try_start_90 .. :try_end_9e} :catchall_36

    .line 2195
    :cond_9e
    :try_start_9e
    monitor-exit p0
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_a7

    const/4 v4, 0x0

    move-object v1, p0

    move v3, p2

    move v5, p3

    .line 2197
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->notifyStorageManagerOpModeChangedSync(IILjava/lang/String;II)V

    return-void

    :catchall_a7
    move-exception v0

    move-object v1, p0

    :goto_a9
    move-object p1, v0

    .line 2195
    :goto_aa
    :try_start_aa
    monitor-exit v1
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_ac

    throw p1

    :catchall_ac
    move-exception v0

    goto :goto_a9
.end method

.method public setUserRestriction(IZLandroid/os/IBinder;ILandroid/os/PackageTagsList;)V
    .registers 12

    .line 6937
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_1a

    .line 6938
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 6939
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    .line 6938
    const-string v4, "android.permission.MANAGE_APP_OPS_RESTRICTIONS"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 6941
    :cond_1a
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p4, v0, :cond_3d

    .line 6942
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    .line 6944
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_35

    goto :goto_3d

    .line 6946
    :cond_35
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Need INTERACT_ACROSS_USERS_FULL or INTERACT_ACROSS_USERS to interact cross user "

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6950
    :cond_3d
    :goto_3d
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 6951
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 6952
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService;->setUserRestrictionNoCheck(IZLandroid/os/IBinder;ILandroid/os/PackageTagsList;)V

    return-void
.end method

.method public final setUserRestrictionNoCheck(IZLandroid/os/IBinder;ILandroid/os/PackageTagsList;)V
    .registers 10

    .line 6957
    monitor-enter p0

    .line 6958
    :try_start_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_16

    if-nez v0, :cond_1a

    .line 6962
    :try_start_b
    new-instance v0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;

    invoke-direct {v0, p0, p3}, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_18
    .catchall {:try_start_b .. :try_end_10} :catchall_16

    .line 6966
    :try_start_10
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    :catchall_16
    move-exception p1

    goto :goto_61

    .line 6964
    :catch_18
    monitor-exit p0

    return-void

    .line 6969
    :cond_1a
    :goto_1a
    invoke-virtual {v0, p1, p2, p5, p4}, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->setRestriction(IZLandroid/os/PackageTagsList;I)Z

    move-result p5

    if-eqz p5, :cond_51

    .line 6973
    iget-object p5, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda2;-><init>()V

    .line 6974
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 6973
    invoke-static {v1, p0, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6975
    iget-object p5, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda7;-><init>()V

    .line 6976
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 6977
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 6975
    invoke-static {v1, p0, p1, p2, p4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p5, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6980
    :cond_51
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->isDefault()Z

    move-result p1

    if-eqz p1, :cond_5f

    .line 6981
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6982
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->destroy()V

    .line 6984
    :cond_5f
    monitor-exit p0

    return-void

    :goto_61
    monitor-exit p0
    :try_end_62
    .catchall {:try_start_10 .. :try_end_62} :catchall_16

    throw p1
.end method

.method public setUserRestrictions(Landroid/os/Bundle;Landroid/os/IBinder;I)V
    .registers 11

    .line 6922
    const-string/jumbo v0, "setUserRestrictions"

    invoke-virtual {p0, v0}, Lcom/android/server/appop/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    .line 6923
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6924
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    move v2, v0

    :goto_e
    const/16 v1, 0xaa

    if-ge v2, v1, :cond_2d

    .line 6926
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToRestriction(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 6928
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->setUserRestrictionNoCheck(IZLandroid/os/IBinder;ILandroid/os/PackageTagsList;)V

    goto :goto_27

    :cond_24
    move-object v1, p0

    move-object v4, p2

    move v5, p3

    :goto_27
    add-int/lit8 v2, v2, 0x1

    move-object p0, v1

    move-object p2, v4

    move p3, v5

    goto :goto_e

    :cond_2d
    return-void
.end method

.method public shouldCollectNotes(I)Z
    .registers 5

    const/16 v0, 0xa9

    .line 4690
    const-string/jumbo v1, "opCode"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 4692
    invoke-static {p1}, Landroid/app/AppOpsManager;->shouldForceCollectNoteForOp(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    return v1

    .line 4696
    :cond_11
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_18

    return v2

    .line 4703
    :cond_18
    :try_start_18
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object p0
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_22} :catch_33

    .line 4708
    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result p1

    if-eq p1, v1, :cond_32

    .line 4709
    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_31

    goto :goto_32

    :cond_31
    return v2

    :cond_32
    :goto_32
    return v1

    :catch_33
    return v2
.end method

.method public final shouldDeferResetOpToDpm(I)Z
    .registers 2

    .line 2822
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->dpmi:Landroid/app/admin/DevicePolicyManagerInternal;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->supportsResetOp(I)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldIgnoreCallback(III)Z
    .registers 4

    .line 4782
    invoke-static {p1}, Landroid/app/AppOpsManager;->opRestrictsRead(I)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.MANAGE_APPOPS"

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldStartForMode(IZ)Z
    .registers 3

    .line 0
    if-eqz p1, :cond_a

    const/4 p0, 0x3

    if-ne p1, p0, :cond_8

    if-eqz p2, :cond_8

    goto :goto_a

    :cond_8
    const/4 p0, 0x0

    return p0

    :cond_a
    :goto_a
    const/4 p0, 0x1

    return p0
.end method

.method public final shouldUseNewCheckOp()Z
    .registers 3

    .line 4713
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4720
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0
.end method

.method public shutdown()V
    .registers 3

    .line 1717
    const-string v0, "AppOps"

    const-string v1, "Writing app ops before shutdown..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    monitor-enter p0

    .line 1720
    :try_start_8
    iget-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 1721
    iput-boolean v1, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    .line 1722
    iput-boolean v1, p0, Lcom/android/server/appop/AppOpsService;->mFastWriteScheduled:Z

    .line 1723
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getIoHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    goto :goto_1e

    :catchall_1c
    move-exception v0

    goto :goto_2f

    .line 1726
    :cond_1e
    :goto_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_1c

    if-eqz v1, :cond_24

    .line 1728
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->writeRecentAccesses()V

    .line 1730
    :cond_24
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {v0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->shutdown()V

    .line 1734
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    invoke-interface {p0}, Lcom/android/server/appop/HistoricalRegistryInterface;->shutdown()V

    return-void

    .line 1726
    :goto_2f
    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_1c

    throw v0
.end method

.method public startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;
    .registers 25

    .line 3857
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    const/4 v6, 0x0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public final startOperationDryRun(IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;IZ)Landroid/app/SyncNotedAppOp;
    .registers 26

    move/from16 v8, p1

    move/from16 v0, p9

    and-int/lit8 v1, p8, 0x10

    const/4 v9, 0x1

    if-nez v1, :cond_b

    move v7, v9

    goto :goto_d

    :cond_b
    const/4 v1, 0x0

    move v7, v1

    :goto_d
    const/4 v10, 0x2

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p6

    move-object/from16 v6, p7

    .line 4224
    :try_start_1a
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    move-result-object v11

    .line 4226
    iget-boolean v4, v11, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z
    :try_end_20
    .catch Ljava/lang/SecurityException; {:try_start_1a .. :try_end_20} :catch_c5

    if-nez v4, :cond_25

    const/4 v4, 0x0

    move-object v12, v4

    goto :goto_27

    :cond_25
    move-object/from16 v12, p4

    .line 4238
    :goto_27
    invoke-virtual {v1, v8, v3, v2}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedDueToSuspend(ILjava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 4239
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v9, v8, v12, v3}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 4244
    :cond_33
    monitor-enter p0

    .line 4247
    :try_start_34
    iget-boolean v5, v11, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z

    iget-object v6, v11, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    const/4 v7, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v13

    if-nez v13, :cond_4a

    .line 4255
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v10, v8, v12, v3}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-object v0

    :catchall_47
    move-exception v0

    goto/16 :goto_c3

    .line 4258
    :cond_4a
    invoke-virtual {v1, v13, v8, v2, v9}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v10

    .line 4259
    iget-object v14, v13, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    .line 4260
    iget-object v7, v11, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    const/4 v8, 0x0

    move/from16 v6, p5

    move-object v4, v3

    move-object v5, v12

    move/from16 v3, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;Ljava/lang/String;ILandroid/app/AppOpsManager$RestrictionBypass;Z)Z

    move-result v7

    move v8, v3

    move-object v3, v4

    .line 4262
    invoke-static {v8}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v4

    .line 4265
    iget-object v11, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget v12, v14, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 4266
    invoke-virtual {v1, v6, v4}, Lcom/android/server/appop/AppOpsService;->getPersistentDeviceIdForOp(II)Ljava/lang/String;

    move-result-object v15

    .line 4265
    invoke-interface {v11, v12, v15, v4}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getUidMode(ILjava/lang/String;I)I

    move-result v11

    .line 4267
    invoke-static {v4}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v12

    if-eq v11, v12, :cond_92

    .line 4268
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget v9, v14, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 4273
    invoke-virtual {v1, v6, v4}, Lcom/android/server/appop/AppOpsService;->getPersistentDeviceIdForOp(II)Ljava/lang/String;

    move-result-object v6

    .line 4271
    invoke-interface {v2, v9, v6, v4}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getUidMode(ILjava/lang/String;I)I

    move-result v2

    .line 4269
    invoke-virtual {v14, v8, v2}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    move-result v2

    .line 4275
    invoke-virtual {v1, v2, v0}, Lcom/android/server/appop/AppOpsService;->shouldStartForMode(IZ)Z

    move-result v0

    if-nez v0, :cond_bc

    .line 4281
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v2, v8, v5, v3}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-object v0

    :cond_92
    if-eq v4, v8, :cond_98

    .line 4284
    invoke-virtual {v1, v13, v4, v2, v9}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v10

    .line 4286
    :cond_98
    iget-object v2, v10, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v4, v10, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v6, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget-object v9, v10, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget v10, v10, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 4292
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 4289
    invoke-interface {v6, v9, v4, v10}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(Ljava/lang/String;II)I

    move-result v6

    .line 4287
    invoke-virtual {v2, v4, v6}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    move-result v2

    if-eqz v2, :cond_bc

    if-eqz v0, :cond_b5

    const/4 v0, 0x3

    if-eq v2, v0, :cond_bc

    .line 4300
    :cond_b5
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v2, v8, v5, v3}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-object v0

    .line 4308
    :cond_bc
    monitor-exit p0
    :try_end_bd
    .catchall {:try_start_34 .. :try_end_bd} :catchall_47

    .line 4310
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v7, v8, v5, v3}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 4308
    :goto_c3
    :try_start_c3
    monitor-exit p0
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_47

    throw v0

    :catch_c5
    move-exception v0

    .line 4230
    invoke-static {v2}, Landroid/os/Process;->isIsolated(I)Z

    move-result v1

    if-eqz v1, :cond_d4

    .line 4231
    const-string v0, "AppOps"

    const-string v1, "Cannot startOperation: isolated process"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_db

    .line 4233
    :cond_d4
    const-string v1, "AppOps"

    const-string v2, "Cannot startOperation"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4235
    :goto_db
    new-instance v0, Landroid/app/SyncNotedAppOp;

    move-object/from16 v4, p4

    invoke-direct {v0, v10, v8, v4, v3}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public startOperationForDevice(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;
    .registers 13

    .line 3870
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-virtual/range {p0 .. p12}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public final startOperationImpl(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;
    .registers 32

    move-object/from16 v0, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    move/from16 v1, p6

    .line 3882
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService;->shouldUseNewCheckOp()Z

    move-result v2

    const/4 v8, 0x1

    if-nez v2, :cond_5e

    .line 3883
    invoke-virtual {v0, v4}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 3884
    invoke-virtual {v0, v3}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 3885
    invoke-virtual {v0, v1}, Lcom/android/server/appop/AppOpsService;->isValidVirtualDeviceId(I)Z

    move-result v2

    if-nez v2, :cond_41

    .line 3886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startOperationImpl returned MODE_IGNORED as virtualDeviceId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppOps"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3888
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v8, v3, v7, v5}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 3891
    :cond_41
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v0, v5, v2}, Lcom/android/server/appop/AppOpsService;->isIncomingPackageValid(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_52

    .line 3892
    new-instance v0, Landroid/app/SyncNotedAppOp;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v3, v7, v5}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 3896
    :cond_52
    invoke-static/range {p3 .. p4}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_78

    .line 3898
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v8, v3, v7, v5}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_5e
    const/4 v5, 0x1

    .line 3904
    const-string/jumbo v6, "startOperation"

    move v2, v4

    move v4, v1

    move v1, v3

    move-object/from16 v3, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService;->validateOpRequest(IILjava/lang/String;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v3

    move v3, v1

    move-object v1, v5

    move-object v5, v4

    move v4, v2

    if-nez v1, :cond_78

    .line 3907
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v8, v3, v7, v5}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_78
    const/16 v1, 0x66

    if-eq v3, v1, :cond_84

    const/16 v1, 0x78

    if-eq v3, v1, :cond_84

    const/16 v1, 0x87

    if-ne v3, v1, :cond_92

    :cond_84
    const/16 v1, 0x1b

    .line 3920
    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/appop/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_92

    .line 3923
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v1, v3, v7, v5}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_92
    const/16 v1, 0x86

    if-ne v3, v1, :cond_a4

    const/16 v1, 0x1a

    .line 3928
    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/appop/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_a4

    .line 3931
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v1, v3, v7, v5}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_a4
    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p1

    move/from16 v13, p7

    move/from16 v14, p8

    move-object/from16 v15, p9

    move/from16 v16, p10

    move/from16 v17, p11

    move/from16 v18, p12

    move-object v1, v0

    move-object v6, v7

    move/from16 v7, p6

    .line 3935
    invoke-virtual/range {v1 .. v18}, Lcom/android/server/appop/AppOpsService;->startOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0
.end method

.method public final startOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;
    .registers 38

    move/from16 v8, p2

    move-object/from16 v0, p9

    move/from16 v10, p12

    and-int/lit8 v1, p11, 0x10

    const/4 v11, 0x1

    if-nez v1, :cond_d

    move v7, v11

    goto :goto_f

    :cond_d
    const/4 v1, 0x0

    move v7, v1

    :goto_f
    const/4 v12, 0x2

    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p7

    move-object/from16 v6, p8

    .line 4084
    :try_start_1c
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    move-result-object v13
    :try_end_20
    .catch Ljava/lang/SecurityException; {:try_start_1c .. :try_end_20} :catch_1f2

    move-object v4, v3

    move v3, v2

    .line 4086
    :try_start_22
    iget-boolean v2, v13, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z
    :try_end_24
    .catch Ljava/lang/SecurityException; {:try_start_22 .. :try_end_24} :catch_1ef

    const/4 v5, 0x0

    if-nez v2, :cond_29

    move-object v2, v5

    goto :goto_2b

    :cond_29
    move-object/from16 v2, p5

    .line 4094
    :goto_2b
    invoke-virtual {v1, v8, v4, v3}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedDueToSuspend(ILjava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 4095
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v11, v8, v2, v4}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_37
    move-object/from16 v14, p8

    if-eqz v0, :cond_42

    .line 4099
    invoke-virtual {v1, v4, v14, v0}, Lcom/android/server/appop/AppOpsService;->isAttributionTagDefined(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_42

    move-object v0, v5

    .line 4105
    :cond_42
    monitor-enter p0

    .line 4106
    :try_start_43
    iget-boolean v5, v13, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z

    iget-object v6, v13, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    const/4 v7, 0x1

    move-object/from16 v19, v4

    move-object v4, v2

    move v2, v3

    move-object/from16 v3, v19

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v15

    move-object v5, v4

    const/4 v9, 0x0

    if-nez v15, :cond_74

    const/4 v8, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p11

    move/from16 v10, p16

    move/from16 v11, p17

    .line 4109
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/appop/AppOpsService;->scheduleOpStartedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IIIIII)V

    .line 4115
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v12, v2, v5, v4}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-object v0

    :catchall_71
    move-exception v0

    goto/16 :goto_1ed

    :cond_74
    move-object/from16 v1, p0

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p6

    move v2, v8

    move v12, v9

    move/from16 v9, p11

    .line 4118
    invoke-virtual {v1, v15, v2, v3, v11}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v7

    .line 4120
    invoke-virtual {v1, v6, v2}, Lcom/android/server/appop/AppOpsService;->getPersistentDeviceIdForOp(II)Ljava/lang/String;

    move-result-object v8

    .line 4119
    invoke-virtual {v7, v7, v5, v8}, Lcom/android/server/appop/AppOpsService$Op;->getOrCreateAttribution(Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AttributedOp;

    move-result-object v8

    .line 4121
    iget-object v12, v15, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    .line 4122
    iget-object v13, v13, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    move-object/from16 v16, v8

    const/4 v8, 0x0

    move-object/from16 v19, v16

    move-object/from16 v16, v0

    move-object/from16 v0, v19

    move/from16 v19, v3

    move v3, v2

    move/from16 v2, v19

    move-object/from16 v19, v13

    move-object v13, v7

    move-object/from16 v7, v19

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;Ljava/lang/String;ILandroid/app/AppOpsManager$RestrictionBypass;Z)Z

    move-result v17

    move v2, v3

    .line 4124
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v3

    .line 4127
    invoke-static/range {p3 .. p3}, Lcom/android/server/appop/AppOpsService;->isOpAllowedForUid(I)Z

    move-result v4

    if-eqz v4, :cond_bb

    :goto_b2
    move-object v13, v1

    move v15, v2

    move-object v2, v5

    const/16 v18, 0x0

    move-object/from16 v1, p4

    goto/16 :goto_14e

    .line 4132
    :cond_bb
    iget-object v4, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget v7, v12, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 4134
    invoke-virtual {v1, v6, v3}, Lcom/android/server/appop/AppOpsService;->getPersistentDeviceIdForOp(II)Ljava/lang/String;

    move-result-object v8

    .line 4133
    invoke-interface {v4, v7, v8, v3}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getUidMode(ILjava/lang/String;I)I

    move-result v4

    .line 4136
    invoke-static {v3}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v7

    if-eq v4, v7, :cond_f6

    .line 4137
    invoke-virtual {v12, v2, v4}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    move-result v8

    .line 4138
    invoke-virtual {v1, v8, v10}, Lcom/android/server/appop/AppOpsService;->shouldStartForMode(IZ)Z

    move-result v3

    if-nez v3, :cond_f2

    .line 4145
    invoke-virtual {v12}, Lcom/android/server/appop/AppOpsService$UidState;->getState()I

    move-result v3

    invoke-virtual {v0, v3, v9, v11}, Lcom/android/server/appop/AttributedOp;->rejected(III)V

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v10, p16

    move/from16 v11, p17

    move v7, v9

    const/4 v9, 0x0

    .line 4146
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/appop/AppOpsService;->scheduleOpStartedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IIIIII)V

    .line 4149
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v8, v2, v5, v4}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-object v0

    :cond_f2
    move/from16 v6, p3

    move v7, v9

    goto :goto_b2

    :cond_f6
    move/from16 v6, p3

    move-object/from16 v4, p4

    move v7, v9

    const/4 v9, 0x0

    if-eq v3, v2, :cond_103

    .line 4153
    invoke-virtual {v1, v15, v3, v6, v11}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v3

    goto :goto_104

    :cond_103
    move-object v3, v13

    .line 4154
    :goto_104
    iget-object v8, v3, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v13, v3, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v15, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget-object v9, v3, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget v3, v3, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 4160
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 4157
    invoke-interface {v15, v9, v13, v3}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(Ljava/lang/String;II)I

    move-result v3

    .line 4155
    invoke-virtual {v8, v13, v3}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    move-result v8
    :try_end_11a
    .catchall {:try_start_43 .. :try_end_11a} :catchall_71

    if-eqz v8, :cond_122

    if-eqz v10, :cond_129

    const/4 v3, 0x3

    if-eq v8, v3, :cond_122

    goto :goto_129

    :cond_122
    move-object v13, v1

    move v15, v2

    move-object v1, v4

    move-object v2, v5

    const/16 v18, 0x0

    goto :goto_14e

    .line 4169
    :cond_129
    :goto_129
    :try_start_129
    invoke-virtual {v12}, Lcom/android/server/appop/AppOpsService$UidState;->getState()I

    move-result v3

    invoke-virtual {v0, v3, v7, v11}, Lcom/android/server/appop/AttributedOp;->rejected(III)V

    move/from16 v10, p16

    move/from16 v11, p17

    move v3, v6

    const/4 v9, 0x0

    move/from16 v6, p6

    .line 4170
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/appop/AppOpsService;->scheduleOpStartedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IIIIII)V
    :try_end_13b
    .catchall {:try_start_129 .. :try_end_13b} :catchall_14a

    move-object v13, v1

    move v15, v2

    move-object v1, v4

    move-object v2, v5

    .line 4173
    :try_start_13f
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v8, v15, v2, v1}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0
    :try_end_145
    .catchall {:try_start_13f .. :try_end_145} :catchall_146

    return-object v0

    :catchall_146
    move-exception v0

    move-object v1, v13

    goto/16 :goto_1ed

    :catchall_14a
    move-exception v0

    move-object v13, v1

    goto/16 :goto_1ed

    :goto_14e
    if-eqz v17, :cond_185

    move/from16 v9, p10

    .line 4184
    :try_start_152
    invoke-virtual {v13, v9, v15}, Lcom/android/server/appop/AppOpsService;->getPersistentDeviceIdForOp(II)Ljava/lang/String;

    move-result-object v6

    .line 4185
    invoke-virtual {v12}, Lcom/android/server/appop/AppOpsService$UidState;->getState()I

    move-result v7

    move-object/from16 v1, p1

    move/from16 v3, p7

    move/from16 v8, p11

    move/from16 v9, p16

    move/from16 v10, p17

    move-object v4, v14

    move-object/from16 v5, v16

    move-object v14, v2

    move/from16 v2, p6

    .line 4182
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/appop/AttributedOp;->createPaused(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V

    move/from16 v9, v18

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p11

    move/from16 v10, p16

    move/from16 v11, p17

    move-object v1, v13

    move-object v5, v14

    move v2, v15

    move/from16 v8, v17

    goto :goto_1b5

    :catch_181
    move-exception v0

    move-object v1, v13

    goto/16 :goto_1e7

    :cond_185
    move/from16 v9, p10

    move-object v14, v2

    move-object/from16 v5, v16

    .line 4189
    invoke-virtual {v13, v9, v15}, Lcom/android/server/appop/AppOpsService;->getPersistentDeviceIdForOp(II)Ljava/lang/String;

    move-result-object v6

    .line 4190
    invoke-virtual {v12}, Lcom/android/server/appop/AppOpsService$UidState;->getState()I

    move-result v7

    move-object/from16 v1, p1

    move/from16 v2, p6

    move/from16 v3, p7

    move-object/from16 v4, p8

    move/from16 v8, p11

    move/from16 v9, p16

    move/from16 v10, p17

    .line 4187
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/appop/AttributedOp;->started(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
    :try_end_1a3
    .catch Landroid/os/RemoteException; {:try_start_152 .. :try_end_1a3} :catch_181
    .catchall {:try_start_152 .. :try_end_1a3} :catchall_146

    move v9, v11

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p11

    move/from16 v10, p16

    move-object v1, v13

    move-object v5, v14

    move v2, v15

    move/from16 v8, v17

    move/from16 v11, p17

    .line 4196
    :goto_1b5
    :try_start_1b5
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/appop/AppOpsService;->scheduleOpStartedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IIIIII)V
    :try_end_1b8
    .catchall {:try_start_1b5 .. :try_end_1b8} :catchall_71

    .line 4199
    :try_start_1b8
    monitor-exit p0
    :try_end_1b9
    .catchall {:try_start_1b8 .. :try_end_1b9} :catchall_1e3

    if-eqz p13, :cond_1d9

    if-nez v8, :cond_1d9

    const/4 v0, 0x1

    const/4 v1, 0x1

    move-object/from16 p5, p0

    move/from16 p8, p2

    move/from16 p6, p3

    move-object/from16 p7, p4

    move-object/from16 p11, p14

    move/from16 p12, p15

    move/from16 p10, v0

    move/from16 p13, v1

    move-object/from16 p9, v5

    .line 4202
    invoke-virtual/range {p5 .. p13}, Lcom/android/server/appop/AppOpsService;->collectAsyncNotedOp(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ZI)V

    move-object/from16 v4, p7

    move/from16 v2, p8

    goto :goto_1dd

    :cond_1d9
    move/from16 v2, p2

    move-object/from16 v4, p4

    .line 4206
    :goto_1dd
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v8, v2, v5, v4}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catchall_1e3
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_1ed

    .line 4194
    :goto_1e7
    :try_start_1e7
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 4199
    :goto_1ed
    monitor-exit p0
    :try_end_1ee
    .catchall {:try_start_1e7 .. :try_end_1ee} :catchall_71

    throw v0

    :catch_1ef
    move-exception v0

    :goto_1f0
    move v2, v8

    goto :goto_1f6

    :catch_1f2
    move-exception v0

    move-object v4, v3

    move v3, v2

    goto :goto_1f0

    .line 4090
    :goto_1f6
    const-string/jumbo v5, "startOperation"

    invoke-virtual {v1, v3, v0, v5}, Lcom/android/server/appop/AppOpsService;->logVerifyAndGetBypassFailure(ILjava/lang/SecurityException;Ljava/lang/String;)V

    .line 4091
    new-instance v0, Landroid/app/SyncNotedAppOp;

    move-object/from16 v1, p5

    invoke-direct {v0, v12, v2, v1, v4}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public startProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;
    .registers 12

    .line 3948
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-virtual/range {p0 .. p11}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->startProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public final startProxyOperationImpl(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;
    .registers 35

    move-object/from16 v1, p0

    move/from16 v3, p2

    move-object/from16 v0, p3

    .line 3973
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getUid()I

    move-result v4

    .line 3974
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3975
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v10

    .line 3976
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v11

    .line 3978
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v5

    .line 3979
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v6

    .line 3980
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getNextAttributionTag()Ljava/lang/String;

    move-result-object v7

    .line 3981
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getNextDeviceId()I

    move-result v8

    .line 3983
    invoke-virtual {v1, v0}, Lcom/android/server/appop/AppOpsService;->verifyIncomingProxyUid(Landroid/content/AttributionSource;)V

    .line 3984
    invoke-virtual {v1, v3}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 3985
    invoke-virtual {v1, v11}, Lcom/android/server/appop/AppOpsService;->isValidVirtualDeviceId(I)Z

    move-result v9

    const-string v12, " is invalid"

    const-string v13, "AppOps"

    const/4 v14, 0x1

    if-nez v9, :cond_55

    .line 3986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startProxyOperationImpl returned MODE_IGNORED as proxyVirtualDeviceId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3991
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v14, v3, v7, v6}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 3994
    :cond_55
    invoke-virtual {v1, v8}, Lcom/android/server/appop/AppOpsService;->isValidVirtualDeviceId(I)Z

    move-result v9

    if-nez v9, :cond_79

    .line 3995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startProxyOperationImpl returned MODE_IGNORED as proxiedVirtualDeviceId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4000
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v14, v3, v7, v6}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 4003
    :cond_79
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-virtual {v1, v2, v9}, Lcom/android/server/appop/AppOpsService;->isIncomingPackageValid(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_8d

    .line 4004
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-virtual {v1, v6, v9}, Lcom/android/server/appop/AppOpsService;->isIncomingPackageValid(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_90

    :cond_8d
    move-object v4, v7

    goto/16 :goto_19a

    .line 4009
    :cond_90
    invoke-virtual {v1, v0}, Lcom/android/server/appop/AppOpsService;->isCallerAndAttributionTrusted(Landroid/content/AttributionSource;)Z

    move-result v0

    if-eqz v0, :cond_9a

    if-eqz p8, :cond_9a

    move v13, v14

    goto :goto_9b

    :cond_9a
    const/4 v13, 0x0

    .line 4012
    :goto_9b
    invoke-static {v4, v2}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a7

    .line 4015
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v14, v3, v7, v6}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_a7
    const/4 v15, -0x1

    if-eqz v0, :cond_b9

    move/from16 v0, p11

    if-eq v0, v15, :cond_bb

    and-int/lit8 v16, p9, 0x8

    if-nez v16, :cond_b6

    and-int/lit8 v16, p10, 0x8

    if-eqz v16, :cond_bb

    :cond_b6
    move/from16 v16, v14

    goto :goto_bd

    :cond_b9
    move/from16 v0, p11

    :cond_bb
    const/16 v16, 0x0

    .line 4023
    :goto_bd
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    if-ne v9, v5, :cond_c5

    move v9, v14

    goto :goto_c6

    :cond_c5
    const/4 v9, 0x0

    .line 4024
    :goto_c6
    iget-object v12, v1, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v14, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {v12, v14, v15, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v12

    if-eqz v12, :cond_d7

    if-nez v9, :cond_d7

    if-eqz v16, :cond_d5

    goto :goto_d7

    :cond_d5
    const/4 v12, 0x0

    goto :goto_d8

    :cond_d7
    :goto_d7
    const/4 v12, 0x1

    .line 4029
    :goto_d8
    invoke-static {v5, v6}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_e5

    .line 4032
    new-instance v0, Landroid/app/SyncNotedAppOp;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v3, v7, v6}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_e5
    if-eqz v12, :cond_ea

    const/16 v6, 0x8

    goto :goto_ec

    :cond_ea
    const/16 v6, 0x10

    :goto_ec
    if-nez v13, :cond_177

    move-object v0, v7

    move-object v7, v2

    move v2, v5

    move v5, v8

    move v8, v6

    move v6, v4

    move-object v4, v0

    move-object v0, v1

    move v1, v3

    move-object v3, v9

    move/from16 v9, p4

    .line 4041
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/appop/AppOpsService;->startOperationDryRun(IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;IZ)Landroid/app/SyncNotedAppOp;

    move-result-object v13

    move-object v1, v0

    move v0, v2

    move-object/from16 v21, v3

    move-object/from16 v19, v4

    move/from16 v20, v5

    move v4, v6

    move-object v5, v7

    move/from16 v22, v8

    .line 4046
    invoke-virtual {v13}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v2

    invoke-virtual {v1, v2, v9}, Lcom/android/server/appop/AppOpsService;->shouldStartForMode(IZ)Z

    move-result v2

    if-nez v2, :cond_115

    return-object v13

    :cond_115
    if-eqz v12, :cond_11c

    const/16 v17, 0x2

    :goto_119
    const/16 v18, 0x1

    goto :goto_120

    :cond_11c
    const/4 v2, 0x4

    move/from16 v17, v2

    goto :goto_119

    :goto_120
    xor-int/lit8 v14, v12, 0x1

    .line 4053
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "proxy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v6, v10

    const/4 v10, 0x0

    move v7, v11

    const/4 v11, 0x0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v13, p4

    move/from16 v16, p7

    move/from16 v18, p11

    move/from16 v12, v17

    move/from16 v17, p9

    invoke-virtual/range {v1 .. v18}, Lcom/android/server/appop/AppOpsService;->startOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object v8

    move v9, v13

    .line 4058
    invoke-virtual {v8}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v2

    invoke-virtual {v1, v2, v9}, Lcom/android/server/appop/AppOpsService;->shouldStartForMode(IZ)Z

    move-result v2

    if-nez v2, :cond_15a

    return-object v8

    :cond_15a
    move-object v10, v6

    move v11, v7

    move v13, v9

    move/from16 v7, v20

    move/from16 v12, v22

    move-object v9, v5

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v14, p5

    move-object/from16 v15, p6

    move/from16 v16, p7

    move/from16 v17, p10

    move/from16 v18, p11

    move v8, v4

    move-object/from16 v6, v19

    move v4, v0

    move-object/from16 v5, v21

    goto :goto_195

    :cond_177
    move v0, v5

    move-object/from16 v19, v7

    move-object/from16 v21, v9

    move/from16 v13, p4

    move-object v9, v2

    move v12, v6

    move v7, v8

    move/from16 v3, p2

    move/from16 v14, p5

    move-object/from16 v15, p6

    move/from16 v16, p7

    move/from16 v17, p10

    move/from16 v18, p11

    move-object/from16 v6, v19

    move-object/from16 v5, v21

    move-object/from16 v2, p1

    move v8, v4

    move v4, v0

    .line 4063
    :goto_195
    invoke-virtual/range {v1 .. v18}, Lcom/android/server/appop/AppOpsService;->startOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0

    .line 4005
    :goto_19a
    new-instance v0, Landroid/app/SyncNotedAppOp;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v3, v4, v6}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public startProxyOperationWithState(Landroid/os/IBinder;ILandroid/content/AttributionSourceState;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;
    .registers 13

    move-object v0, p3

    .line 3960
    new-instance p3, Landroid/content/AttributionSource;

    invoke-direct {p3, v0}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    .line 3961
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-virtual/range {p0 .. p11}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->startProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public startWatchingActive([ILcom/android/internal/app/IAppOpsActiveCallback;)V
    .registers 11

    .line 3563
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 3564
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 3565
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WATCH_APPOPS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_14

    move v3, v4

    goto :goto_16

    :cond_14
    const/4 v0, -0x1

    move v3, v0

    :goto_16
    const/4 v6, 0x0

    if-eqz p1, :cond_33

    .line 3570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid op code in: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3571
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa9

    .line 3570
    invoke-static {p1, v6, v1, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([IIILjava/lang/String;)[I

    :cond_33
    if-nez p2, :cond_36

    return-void

    .line 3576
    :cond_36
    monitor-enter p0

    .line 3577
    :try_start_37
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;
    :try_end_43
    .catchall {:try_start_37 .. :try_end_43} :catchall_70

    if-nez v0, :cond_53

    .line 3579
    :try_start_45
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 3580
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_53
    .catchall {:try_start_45 .. :try_end_53} :catchall_55

    :cond_53
    move-object v7, v0

    goto :goto_59

    :catchall_55
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto :goto_73

    .line 3582
    :goto_59
    :try_start_59
    new-instance v0, Lcom/android/server/appop/AppOpsService$ActiveCallback;
    :try_end_5b
    .catchall {:try_start_59 .. :try_end_5b} :catchall_70

    move-object v1, p0

    move-object v2, p2

    :try_start_5d
    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService$ActiveCallback;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/internal/app/IAppOpsActiveCallback;III)V

    .line 3584
    array-length p0, p1

    :goto_61
    if-ge v6, p0, :cond_6e

    aget p2, p1, v6

    .line 3585
    invoke-virtual {v7, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_61

    :catchall_6b
    move-exception v0

    :goto_6c
    move-object p1, v0

    goto :goto_73

    .line 3587
    :cond_6e
    monitor-exit v1

    return-void

    :catchall_70
    move-exception v0

    move-object v1, p0

    goto :goto_6c

    :goto_73
    monitor-exit v1
    :try_end_74
    .catchall {:try_start_5d .. :try_end_74} :catchall_6b

    throw p1
.end method

.method public startWatchingAsyncNoted(Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V
    .registers 6

    .line 3786
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3787
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3789
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3790
    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->getAsyncNotedOpsKey(Ljava/lang/String;I)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, 0x0

    .line 3792
    invoke-virtual {p0, v0, p1, v2}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    .line 3794
    monitor-enter p0

    .line 3795
    :try_start_13
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_33

    .line 3798
    new-instance v0, Landroid/os/RemoteCallbackList$Builder;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Landroid/os/RemoteCallbackList$Builder;-><init>(I)V

    new-instance v2, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/appop/AppOpsService;Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V

    .line 3800
    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList$Builder;->setInterfaceDiedCallback(Landroid/os/RemoteCallbackList$Builder$InterfaceDiedCallback;)Landroid/os/RemoteCallbackList$Builder;

    move-result-object v0

    .line 3802
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList$Builder;->build()Landroid/os/RemoteCallbackList;

    move-result-object v0

    goto :goto_33

    :catchall_31
    move-exception p1

    goto :goto_44

    :cond_33
    :goto_33
    if-nez v0, :cond_3a

    .line 3805
    new-instance v0, Lcom/android/server/appop/AppOpsService$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/appop/AppOpsService$9;-><init>(Lcom/android/server/appop/AppOpsService;Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V

    .line 3812
    :cond_3a
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3813
    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 3814
    monitor-exit p0

    return-void

    :goto_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_13 .. :try_end_45} :catchall_31

    throw p1
.end method

.method public startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    .registers 5

    const/4 v0, 0x0

    .line 2834
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/appop/AppOpsService;->startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    return-void
.end method

.method public startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V
    .registers 16

    .line 2841
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 2842
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 2847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid op code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, -0x1

    const/16 v1, 0xa9

    invoke-static {p1, v8, v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    if-nez p4, :cond_22

    return-void

    :cond_22
    if-eqz p2, :cond_31

    .line 2853
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/appop/AppOpsService;->filterAppAccessUnlocked(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_31

    const/4 v0, 0x1

    :goto_2f
    move v9, v0

    goto :goto_33

    :cond_31
    const/4 v0, 0x0

    goto :goto_2f

    .line 2854
    :goto_33
    monitor-enter p0

    if-eq p1, v8, :cond_41

    .line 2855
    :try_start_36
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v0
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_3c

    move v10, v0

    goto :goto_42

    :catchall_3c
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto/16 :goto_a9

    :cond_41
    move v10, p1

    :goto_42
    and-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_4b

    if-ne p1, v8, :cond_49

    const/4 p1, -0x2

    :cond_49
    move v5, p1

    goto :goto_4c

    :cond_4b
    move v5, v10

    .line 2868
    :goto_4c
    :try_start_4c
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p4}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/appop/AppOpsService$ModeCallback;

    if-nez p1, :cond_74

    .line 2870
    new-instance v0, Lcom/android/server/appop/AppOpsService$ModeCallback;
    :try_end_5c
    .catchall {:try_start_4c .. :try_end_5c} :catchall_71

    const/4 v3, -0x1

    move-object v1, p0

    move v4, p3

    move-object v2, p4

    :try_start_60
    invoke-direct/range {v0 .. v7}, Lcom/android/server/appop/AppOpsService$ModeCallback;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/internal/app/IAppOpsCallback;IIIII)V

    .line 2872
    iget-object p0, v1, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {v2}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    goto :goto_75

    :catchall_6e
    move-exception v0

    :goto_6f
    move-object p1, v0

    goto :goto_a9

    :catchall_71
    move-exception v0

    move-object v1, p0

    goto :goto_6f

    :cond_74
    move-object v1, p0

    :goto_75
    if-eq v10, v8, :cond_8e

    .line 2875
    iget-object p0, v1, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {p0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-nez p0, :cond_8b

    .line 2877
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 2878
    iget-object p3, v1, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {p3, v10, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2880
    :cond_8b
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_8e
    if-eqz v9, :cond_a7

    .line 2883
    iget-object p0, v1, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-nez p0, :cond_a4

    .line 2885
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 2886
    iget-object p3, v1, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {p3, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2888
    :cond_a4
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2890
    :cond_a7
    monitor-exit v1

    return-void

    :goto_a9
    monitor-exit v1
    :try_end_aa
    .catchall {:try_start_60 .. :try_end_aa} :catchall_6e

    throw p1
.end method

.method public startWatchingNoted([ILcom/android/internal/app/IAppOpsNotedCallback;)V
    .registers 11

    .line 3659
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 3660
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 3661
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WATCH_APPOPS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_14

    move v3, v4

    goto :goto_16

    :cond_14
    const/4 v0, -0x1

    move v3, v0

    .line 3665
    :goto_16
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Ops cannot be null or empty"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid op code in: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3667
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    const/16 v1, 0xa9

    .line 3666
    invoke-static {p1, v6, v1, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([IIILjava/lang/String;)[I

    .line 3668
    const-string v0, "Callback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3669
    monitor-enter p0

    .line 3670
    :try_start_42
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsNotedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;
    :try_end_4e
    .catchall {:try_start_42 .. :try_end_4e} :catchall_7b

    if-nez v0, :cond_5e

    .line 3672
    :try_start_50
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 3673
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsNotedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5e
    .catchall {:try_start_50 .. :try_end_5e} :catchall_60

    :cond_5e
    move-object v7, v0

    goto :goto_64

    :catchall_60
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto :goto_7e

    .line 3675
    :goto_64
    :try_start_64
    new-instance v0, Lcom/android/server/appop/AppOpsService$NotedCallback;
    :try_end_66
    .catchall {:try_start_64 .. :try_end_66} :catchall_7b

    move-object v1, p0

    move-object v2, p2

    :try_start_68
    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService$NotedCallback;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/internal/app/IAppOpsNotedCallback;III)V

    .line 3677
    array-length p0, p1

    :goto_6c
    if-ge v6, p0, :cond_79

    aget p2, p1, v6

    .line 3678
    invoke-virtual {v7, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6c

    :catchall_76
    move-exception v0

    :goto_77
    move-object p1, v0

    goto :goto_7e

    .line 3680
    :cond_79
    monitor-exit v1

    return-void

    :catchall_7b
    move-exception v0

    move-object v1, p0

    goto :goto_77

    :goto_7e
    monitor-exit v1
    :try_end_7f
    .catchall {:try_start_68 .. :try_end_7f} :catchall_76

    throw p1
.end method

.method public startWatchingStarted([ILcom/android/internal/app/IAppOpsStartedCallback;)V
    .registers 11

    .line 3611
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 3612
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 3613
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WATCH_APPOPS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_14

    move v3, v4

    goto :goto_16

    :cond_14
    const/4 v0, -0x1

    move v3, v0

    .line 3618
    :goto_16
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Ops cannot be null or empty"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid op code in: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3620
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    const/16 v1, 0xa9

    .line 3619
    invoke-static {p1, v6, v1, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([IIILjava/lang/String;)[I

    .line 3621
    const-string v0, "Callback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3623
    monitor-enter p0

    .line 3624
    :try_start_42
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsStartedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;
    :try_end_4e
    .catchall {:try_start_42 .. :try_end_4e} :catchall_7b

    if-nez v0, :cond_5e

    .line 3626
    :try_start_50
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 3627
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsStartedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5e
    .catchall {:try_start_50 .. :try_end_5e} :catchall_60

    :cond_5e
    move-object v7, v0

    goto :goto_64

    :catchall_60
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto :goto_7e

    .line 3630
    :goto_64
    :try_start_64
    new-instance v0, Lcom/android/server/appop/AppOpsService$StartedCallback;
    :try_end_66
    .catchall {:try_start_64 .. :try_end_66} :catchall_7b

    move-object v1, p0

    move-object v2, p2

    :try_start_68
    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService$StartedCallback;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/internal/app/IAppOpsStartedCallback;III)V

    .line 3632
    array-length p0, p1

    :goto_6c
    if-ge v6, p0, :cond_79

    aget p2, p1, v6

    .line 3633
    invoke-virtual {v7, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6c

    :catchall_76
    move-exception v0

    :goto_77
    move-object p1, v0

    goto :goto_7e

    .line 3635
    :cond_79
    monitor-exit v1

    return-void

    :catchall_7b
    move-exception v0

    move-object v1, p0

    goto :goto_77

    :goto_7e
    monitor-exit v1
    :try_end_7f
    .catchall {:try_start_68 .. :try_end_7f} :catchall_76

    throw p1
.end method

.method public stopWatchingActive(Lcom/android/internal/app/IAppOpsActiveCallback;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 3595
    :cond_3
    monitor-enter p0

    .line 3596
    :try_start_4
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 3597
    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    if-nez p1, :cond_16

    .line 3599
    monitor-exit p0

    return-void

    :catchall_14
    move-exception p1

    goto :goto_2b

    .line 3601
    :cond_16
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_29

    .line 3603
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$ActiveCallback;

    invoke-virtual {v2}, Lcom/android/server/appop/AppOpsService$ActiveCallback;->destroy()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 3605
    :cond_29
    monitor-exit p0

    return-void

    :goto_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_4 .. :try_end_2c} :catchall_14

    throw p1
.end method

.method public stopWatchingAsyncNoted(Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V
    .registers 6

    .line 3819
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3820
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3822
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3823
    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->getAsyncNotedOpsKey(Ljava/lang/String;I)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, 0x0

    .line 3825
    invoke-virtual {p0, v0, p1, v2}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    .line 3827
    monitor-enter p0

    .line 3828
    :try_start_13
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/RemoteCallbackList;

    if-eqz p1, :cond_2e

    .line 3830
    invoke-virtual {p1, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 3831
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    if-nez p1, :cond_2e

    .line 3832
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    :catchall_2c
    move-exception p1

    goto :goto_30

    .line 3835
    :cond_2e
    :goto_2e
    monitor-exit p0

    return-void

    :goto_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_13 .. :try_end_31} :catchall_2c

    throw p1
.end method

.method public stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 2898
    :cond_3
    monitor-enter p0

    .line 2899
    :try_start_4
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/appop/AppOpsService$ModeCallback;

    if-eqz p1, :cond_5e

    .line 2901
    invoke-virtual {p1}, Lcom/android/server/appop/AppOpsService$ModeCallback;->unlinkToDeath()V

    .line 2902
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1d
    if-ltz v0, :cond_3b

    .line 2903
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 2904
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2905
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-gtz v1, :cond_38

    .line 2906
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_38

    :catchall_36
    move-exception p1

    goto :goto_60

    :cond_38
    :goto_38
    add-int/lit8 v0, v0, -0x1

    goto :goto_1d

    .line 2909
    :cond_3b
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_43
    if-ltz v0, :cond_5e

    .line 2910
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 2911
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2912
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-gtz v1, :cond_5b

    .line 2913
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_5b
    add-int/lit8 v0, v0, -0x1

    goto :goto_43

    .line 2917
    :cond_5e
    monitor-exit p0

    return-void

    :goto_60
    monitor-exit p0
    :try_end_61
    .catchall {:try_start_4 .. :try_end_61} :catchall_36

    throw p1
.end method

.method public stopWatchingNoted(Lcom/android/internal/app/IAppOpsNotedCallback;)V
    .registers 5

    .line 3685
    const-string v0, "Callback cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3686
    monitor-enter p0

    .line 3687
    :try_start_6
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    .line 3688
    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsNotedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    if-nez p1, :cond_18

    .line 3690
    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    goto :goto_2d

    .line 3692
    :cond_18
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v0, :cond_2b

    .line 3694
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$NotedCallback;

    invoke-virtual {v2}, Lcom/android/server/appop/AppOpsService$NotedCallback;->destroy()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 3696
    :cond_2b
    monitor-exit p0

    return-void

    :goto_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_6 .. :try_end_2e} :catchall_16

    throw p1
.end method

.method public stopWatchingStarted(Lcom/android/internal/app/IAppOpsStartedCallback;)V
    .registers 5

    .line 3640
    const-string v0, "Callback cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3642
    monitor-enter p0

    .line 3643
    :try_start_6
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    .line 3644
    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsStartedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    if-nez p1, :cond_18

    .line 3646
    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    goto :goto_2d

    .line 3649
    :cond_18
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v0, :cond_2b

    .line 3651
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$StartedCallback;

    invoke-virtual {v2}, Lcom/android/server/appop/AppOpsService$StartedCallback;->destroy()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 3653
    :cond_2b
    monitor-exit p0

    return-void

    :goto_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_6 .. :try_end_2e} :catchall_16

    throw p1
.end method

.method public final switchPackageIfBootTimeOrRarelyUsedLocked(Ljava/lang/String;)V
    .registers 5

    .line 7335
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mSampledPackage:Ljava/lang/String;

    const/4 v1, 0x1

    const/high16 v2, 0x3f000000    # 0.5f

    if-nez v0, :cond_1a

    .line 7336
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextFloat()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_39

    const/4 v0, 0x3

    .line 7337
    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    .line 7338
    invoke-virtual {p0, p1, v1}, Lcom/android/server/appop/AppOpsService;->resampleAppOpForPackageLocked(Ljava/lang/String;Z)V

    return-void

    .line 7340
    :cond_1a
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 7341
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 7342
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextFloat()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_39

    const/4 v0, 0x2

    .line 7343
    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    .line 7344
    invoke-virtual {p0, p1, v1}, Lcom/android/server/appop/AppOpsService;->resampleAppOpForPackageLocked(Ljava/lang/String;Z)V

    :cond_39
    return-void
.end method

.method public systemReady()V
    .registers 13

    .line 1146
    const-class v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 1148
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {v0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->systemReady()V

    .line 1149
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->initializeUidStates()V

    .line 1151
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/appop/AppOpsService$Constants;->startMonitoring(Landroid/content/ContentResolver;)V

    .line 1152
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/appop/HistoricalRegistryInterface;->systemReady(Landroid/content/ContentResolver;)V

    .line 1154
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 1155
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1156
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1157
    const-string/jumbo v0, "package"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1159
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mOnPackageUpdatedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1162
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->prepareInternalCallbacks()V

    .line 1164
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 1165
    const-string v0, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1166
    const-string v0, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1167
    iget-object v6, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/appop/AppOpsService$5;

    invoke-direct {v7, p0}, Lcom/android/server/appop/AppOpsService$5;-><init>(Lcom/android/server/appop/AppOpsService;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v8, v4

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1203
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getIoHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/appop/AppOpsService$6;

    invoke-direct {v1, p0}, Lcom/android/server/appop/AppOpsService$6;-><init>(Lcom/android/server/appop/AppOpsService;)V

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1215
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    new-instance v1, Lcom/android/server/appop/AppOpsService$7;

    invoke-direct {v1, p0}, Lcom/android/server/appop/AppOpsService$7;-><init>(Lcom/android/server/appop/AppOpsService;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->setExternalSourcesPolicy(Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;)V

    .line 1231
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/SensorPrivacyManager;->getInstance(Landroid/content/Context;)Landroid/hardware/SensorPrivacyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    return-void
.end method

.method public final trimUidStatesLocked(Landroid/util/SparseBooleanArray;Ljava/util/Map;)V
    .registers 9

    .line 1331
    monitor-enter p0

    .line 1333
    :try_start_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_6e

    .line 1334
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    const/4 v2, 0x0

    .line 1335
    invoke-virtual {p1, v1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 1336
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x2710

    if-lt v2, v3, :cond_6b

    const/16 v3, 0x4e1f

    if-gt v2, v3, :cond_6b

    .line 1339
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$UidState;

    iget-object v2, v2, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1340
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_34
    if-ltz v3, :cond_5a

    .line 1341
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1342
    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_48

    .line 1343
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_57

    :catchall_46
    move-exception p1

    goto :goto_70

    .line 1346
    :cond_48
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/PackageState;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v4

    if-eqz v4, :cond_57

    .line 1348
    invoke-virtual {p0, v4, v1}, Lcom/android/server/appop/AppOpsService;->refreshAttributionsLocked(Lcom/android/server/pm/pkg/AndroidPackage;I)V

    :cond_57
    :goto_57
    add-int/lit8 v3, v3, -0x1

    goto :goto_34

    .line 1351
    :cond_5a
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 1352
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_6b

    .line 1356
    :cond_66
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_6b
    :goto_6b
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 1359
    :cond_6e
    monitor-exit p0

    return-void

    :goto_70
    monitor-exit p0
    :try_end_71
    .catchall {:try_start_1 .. :try_end_71} :catchall_46

    throw p1
.end method

.method public uidRemoved(I)V
    .registers 7

    .line 1493
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1495
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 1497
    const-string p0, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to remove existing UID. uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " name: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_4 .. :try_end_2c} :catchall_30

    .line 1501
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_30
    move-exception p0

    goto :goto_58

    :cond_32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1504
    monitor-enter p0

    .line 1505
    :try_start_36
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_54

    .line 1506
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$UidState;

    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$UidState;->clear()V

    .line 1507
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1508
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    goto :goto_54

    :catchall_52
    move-exception p1

    goto :goto_56

    .line 1510
    :cond_54
    :goto_54
    monitor-exit p0

    return-void

    :goto_56
    monitor-exit p0
    :try_end_57
    .catchall {:try_start_36 .. :try_end_57} :catchall_52

    throw p1

    .line 1501
    :goto_58
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1502
    throw p0
.end method

.method public final updateAppWidgetVisibility(Landroid/util/SparseArray;Z)V
    .registers 4

    .line 4894
    monitor-enter p0

    .line 4895
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getUidStateTracker()Lcom/android/server/appop/AppOpsUidStateTracker;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/appop/AppOpsUidStateTracker;->updateAppWidgetVisibility(Landroid/util/SparseArray;Z)V

    .line 4896
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public final updatePermissionRevokedCompat(III)V
    .registers 29

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    .line 2338
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    if-nez v5, :cond_12

    goto/16 :goto_142

    .line 2345
    :cond_12
    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 2346
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    goto/16 :goto_142

    :cond_1e
    const/4 v11, 0x0

    .line 2349
    aget-object v7, v0, v11

    .line 2351
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mSwitchedOps:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, [I

    .line 2352
    array-length v13, v12

    move v14, v11

    :goto_2c
    if-ge v14, v13, :cond_142

    aget v0, v12, v14

    .line 2353
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3c

    :goto_36
    move-object/from16 v19, v12

    move/from16 v24, v13

    goto/16 :goto_137

    .line 2358
    :cond_3c
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const/4 v8, -0x1

    invoke-virtual {v6, v0, v8, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_46

    goto :goto_36

    .line 2365
    :cond_46
    :try_start_46
    invoke-virtual {v5, v0, v11}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v6
    :try_end_4a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_46 .. :try_end_4a} :catch_12f

    .line 2371
    invoke-virtual {v6}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    move-result v8

    if-nez v8, :cond_51

    goto :goto_36

    .line 2375
    :cond_51
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v8

    .line 2376
    invoke-virtual {v8, v2}, Landroid/content/pm/PackageManagerInternal;->getUidTargetSdkVersion(I)I

    move-result v8

    const/16 v9, 0x17

    if-lt v8, v9, :cond_60

    const/16 v16, 0x1

    goto :goto_62

    :cond_60
    move/from16 v16, v11

    .line 2378
    :goto_62
    invoke-static {v2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v10

    .line 2380
    iget-object v8, v6, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    const/16 v17, 0x8

    const-string v9, ", permission="

    const-string v11, ", mode="

    const-string v15, ", switchCode="

    const-string/jumbo v1, "setUidMode() called with a mode inconsistent with runtime permission state, this is discouraged and you should revoke the runtime permission instead: uid="

    move-object/from16 v19, v12

    const-string v12, "AppOps"

    if-eqz v8, :cond_e8

    .line 2381
    invoke-virtual {v5, v8, v7}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_da

    if-eqz v4, :cond_83

    const/4 v8, 0x1

    goto :goto_84

    :cond_83
    const/4 v8, 0x0

    :goto_84
    if-eqz v8, :cond_b3

    if-eqz v16, :cond_b3

    move-object/from16 v20, v5

    .line 2386
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v21, v7

    iget-object v7, v6, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b7

    :cond_b3
    move-object/from16 v20, v5

    move-object/from16 v21, v7

    .line 2393
    :goto_b7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 2395
    :try_start_bb
    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    if-eqz v8, :cond_c3

    move-object v5, v9

    move/from16 v9, v17

    goto :goto_c5

    :cond_c3
    move-object v5, v9

    const/4 v9, 0x0

    :goto_c5
    const/16 v8, 0x8

    move/from16 v24, v13

    move-object/from16 v7, v21

    move-object v13, v5

    move-object/from16 v5, v20

    invoke-virtual/range {v5 .. v10}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    :try_end_d1
    .catchall {:try_start_bb .. :try_end_d1} :catchall_d5

    .line 2400
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_dd

    :catchall_d5
    move-exception v0

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2401
    throw v0

    :cond_da
    move/from16 v24, v13

    move-object v13, v9

    :goto_dd
    if-eqz v4, :cond_e5

    const/4 v6, 0x4

    if-eq v4, v6, :cond_e5

    :goto_e2
    const/16 v18, 0x1

    goto :goto_ee

    :cond_e5
    const/16 v18, 0x0

    goto :goto_ee

    :cond_e8
    move/from16 v24, v13

    move-object v13, v9

    if-eqz v4, :cond_e5

    goto :goto_e2

    :goto_ee
    if-eqz v18, :cond_116

    if-eqz v16, :cond_116

    .line 2411
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    :cond_116
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    if-eqz v18, :cond_11f

    move/from16 v9, v17

    goto :goto_120

    :cond_11f
    const/4 v9, 0x0

    :goto_120
    const/16 v8, 0x8

    move-object v6, v0

    .line 2419
    :try_start_123
    invoke-virtual/range {v5 .. v10}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    :try_end_126
    .catchall {:try_start_123 .. :try_end_126} :catchall_12a

    .line 2423
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_137

    :catchall_12a
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2424
    throw v0

    :catch_12f
    move-exception v0

    move-object/from16 v19, v12

    move/from16 v24, v13

    .line 2367
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_137
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p0

    move-object/from16 v12, v19

    move/from16 v13, v24

    const/4 v11, 0x0

    goto/16 :goto_2c

    :cond_142
    :goto_142
    return-void
.end method

.method public final updateStartedOpModeForUidForDefaultDeviceLocked(IZI)V
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 7003
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/android/server/appop/AppOpsService$UidState;

    if-nez v8, :cond_11

    goto/16 :goto_9e

    .line 7008
    :cond_11
    iget-object v2, v8, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v9

    const/4 v10, 0x0

    move v11, v10

    :goto_19
    if-ge v11, v9, :cond_9e

    .line 7010
    iget-object v2, v8, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/android/server/appop/AppOpsService$Ops;

    move/from16 v2, p1

    if-eqz v12, :cond_2f

    .line 7011
    invoke-virtual {v12, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$Op;

    goto :goto_30

    :cond_2f
    const/4 v3, 0x0

    :goto_30
    if-nez v3, :cond_33

    goto :goto_96

    .line 7015
    :cond_33
    iget-object v4, v0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget-object v5, v3, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget v6, v3, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v7, v3, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 7017
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 7016
    invoke-interface {v4, v5, v6, v7}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_49

    const/4 v5, 0x4

    if-eq v4, v5, :cond_49

    goto :goto_96

    .line 7021
    :cond_49
    iget-object v3, v3, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    const-string v4, "default:0"

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/util/ArrayMap;

    move v14, v10

    .line 7023
    :goto_55
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v14, v3, :cond_96

    .line 7025
    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/android/server/appop/AttributedOp;

    if-eqz p2, :cond_6e

    .line 7026
    invoke-virtual {v15}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 7027
    invoke-virtual {v15}, Lcom/android/server/appop/AttributedOp;->pause()V

    goto :goto_8d

    .line 7028
    :cond_6e
    invoke-virtual {v15}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 7029
    iget-object v3, v12, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v4, v15, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    move-result-object v3

    iget-object v6, v3, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    .line 7031
    iget-object v3, v12, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v4, v15, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;Ljava/lang/String;ILandroid/app/AppOpsManager$RestrictionBypass;Z)Z

    move-result v3

    if-nez v3, :cond_8d

    .line 7034
    invoke-virtual {v15}, Lcom/android/server/appop/AttributedOp;->resume()V

    :cond_8d
    :goto_8d
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v1, p3

    goto :goto_55

    :cond_96
    :goto_96
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    goto/16 :goto_19

    :cond_9e
    :goto_9e
    return-void
.end method

.method public final updateStartedOpModeForUserForDefaultDevice(IZI)V
    .registers 8

    .line 6989
    monitor-enter p0

    .line 6990
    :try_start_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_22

    .line 6992
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq p3, v3, :cond_1c

    .line 6993
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-eq v3, p3, :cond_1c

    goto :goto_1f

    :catchall_1a
    move-exception p1

    goto :goto_24

    .line 6996
    :cond_1c
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/appop/AppOpsService;->updateStartedOpModeForUidForDefaultDeviceLocked(IZI)V

    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 6998
    :cond_22
    monitor-exit p0

    return-void

    :goto_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_1a

    throw p1
.end method

.method public updateUidProcState(III)V
    .registers 5

    .line 1711
    monitor-enter p0

    .line 1712
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getUidStateTracker()Lcom/android/server/appop/AppOpsUidStateTracker;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/appop/AppOpsUidStateTracker;->updateUidProcState(III)V

    .line 1713
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public final validateOpRequest(IILjava/lang/String;IZLjava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 4733
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    if-eqz p5, :cond_8

    .line 4735
    invoke-virtual {p0, p2}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 4737
    :cond_8
    invoke-virtual {p0, p4}, Lcom/android/server/appop/AppOpsService;->isValidVirtualDeviceId(I)Z

    move-result p1

    const/4 p5, 0x0

    const-string v0, "AppOps"

    if-nez p1, :cond_2e

    .line 4738
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": error due to virtualDeviceId "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is invalid"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p5

    .line 4741
    :cond_2e
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p0, p3, p1}, Lcom/android/server/appop/AppOpsService;->isIncomingPackageValid(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_58

    .line 4742
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": error due to package: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is invalid for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p5

    .line 4746
    :cond_58
    invoke-static {p2, p3}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_76

    .line 4748
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": error due to unable to resolve uid: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p5

    :cond_76
    return-object p0
.end method

.method public final verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    .registers 11

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 4960
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    move-result-object p0

    return-object p0
.end method

.method public final verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    .registers 15

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    .line 4970
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZ)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    move-result-object p0

    return-object p0
.end method

.method public final verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZ)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-nez p1, :cond_1f

    .line 5000
    new-instance v0, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    if-eqz p6, :cond_1a

    .line 5002
    invoke-virtual {v1, v5, v4}, Lcom/android/server/appop/AppOpsService;->isPackageNullOrSystem(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v6, 0x1

    goto :goto_1b

    :cond_1a
    move v6, v7

    :goto_1b
    invoke-direct {v0, v8, v6}, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;-><init>(Landroid/app/AppOpsManager$RestrictionBypass;Z)V

    return-object v0

    .line 5004
    :cond_1f
    invoke-static/range {p1 .. p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 5012
    :try_start_25
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 5013
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getSdkSandboxPackageName()Ljava/lang/String;

    move-result-object v9

    .line 5014
    invoke-static {v2, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_48

    const-wide/16 v10, 0x0

    .line 5016
    invoke-static {v10, v11}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 5015
    invoke-virtual {v0, v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)I

    move-result v0
    :try_end_43
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_25 .. :try_end_43} :catch_44

    goto :goto_4a

    :catch_44
    move-exception v0

    .line 5020
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_48
    move/from16 v0, p1

    .line 5026
    :goto_4a
    monitor-enter p0

    .line 5027
    :try_start_4b
    iget-object v9, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/appop/AppOpsService$UidState;

    if-eqz v9, :cond_86

    .line 5028
    iget-object v10, v9, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_86

    .line 5029
    iget-object v9, v9, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v9, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/appop/AppOpsService$Ops;

    if-eqz v9, :cond_86

    if-eqz v3, :cond_75

    .line 5031
    iget-object v10, v9, Lcom/android/server/appop/AppOpsService$Ops;->knownAttributionTags:Landroid/util/ArraySet;

    invoke-virtual {v10, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_86

    goto :goto_75

    :catchall_72
    move-exception v0

    goto/16 :goto_215

    :cond_75
    :goto_75
    iget-object v10, v9, Lcom/android/server/appop/AppOpsService$Ops;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    if-eqz v10, :cond_86

    .line 5033
    new-instance v0, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    iget-object v2, v9, Lcom/android/server/appop/AppOpsService$Ops;->validAttributionTags:Landroid/util/ArraySet;

    .line 5034
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-direct {v0, v10, v2}, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;-><init>(Landroid/app/AppOpsManager$RestrictionBypass;Z)V

    monitor-exit p0

    return-object v0

    .line 5037
    :cond_86
    monitor-exit p0
    :try_end_87
    .catchall {:try_start_4b .. :try_end_87} :catchall_72

    .line 5039
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 5043
    const-string v10, "com.android.shell"

    invoke-static {v2, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_96

    const/16 v10, 0x7d0

    goto :goto_9a

    .line 5048
    :cond_96
    invoke-static {v2}, Lcom/android/server/appop/AppOpsService;->resolveNonAppUid(Ljava/lang/String;)I

    move-result v10

    :goto_9a
    const/4 v11, -0x1

    if-eq v10, v11, :cond_10b

    .line 5051
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-eq v10, v3, :cond_f8

    if-nez p7, :cond_d0

    .line 5053
    const-string v1, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad call made by uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ". Package \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" does not belong to uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5057
    :cond_d0
    const-string v1, " but it is not"

    .line 5059
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Specified package \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" under uid "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5060
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5065
    :cond_f8
    new-instance v0, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    sget-object v2, Landroid/app/AppOpsManager$RestrictionBypass;->UNRESTRICTED:Landroid/app/AppOpsManager$RestrictionBypass;

    if-eqz p6, :cond_106

    .line 5067
    invoke-virtual {v1, v5, v4}, Lcom/android/server/appop/AppOpsService;->isPackageNullOrSystem(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_106

    const/4 v6, 0x1

    goto :goto_107

    :cond_106
    move v6, v7

    :goto_107
    invoke-direct {v0, v2, v6}, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;-><init>(Landroid/app/AppOpsManager$RestrictionBypass;Z)V

    return-object v0

    .line 5070
    :cond_10b
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 5075
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 5077
    :try_start_113
    const-class v13, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v13}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PackageManagerInternal;

    .line 5078
    invoke-virtual {v13, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v14

    if-nez v14, :cond_123

    move-object v15, v8

    goto :goto_127

    .line 5079
    :cond_123
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v15

    :goto_127
    if-eqz v15, :cond_13d

    .line 5081
    invoke-virtual {v1, v15, v3}, Lcom/android/server/appop/AppOpsService;->isAttributionInPackage(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v10

    .line 5082
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v6

    invoke-static {v4, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    .line 5083
    invoke-virtual {v1, v14}, Lcom/android/server/appop/AppOpsService;->getBypassforPackage(Lcom/android/server/pm/pkg/PackageState;)Landroid/app/AppOpsManager$RestrictionBypass;

    move-result-object v6

    goto :goto_140

    :catchall_13a
    move-exception v0

    goto/16 :goto_211

    :cond_13d
    move-object v6, v8

    move v4, v10

    move v10, v7

    :goto_140
    if-nez v10, :cond_1b5

    if-eqz v5, :cond_148

    .line 5087
    invoke-virtual {v13, v5}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v8

    :cond_148
    if-eqz p6, :cond_153

    .line 5090
    invoke-virtual {v1, v8, v3}, Lcom/android/server/appop/AppOpsService;->isAttributionInPackage(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/16 v16, 0x1

    goto :goto_155

    :cond_153
    move/from16 v16, v7

    :goto_155
    if-eqz v15, :cond_178

    if-eqz v16, :cond_178

    .line 5093
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "attributionTag "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " declared in manifest of the proxy package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", this is not advised"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1ae

    :cond_178
    if-eqz v15, :cond_194

    .line 5096
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attributionTag "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not declared in manifest of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1ae

    .line 5099
    :cond_194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "package "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not found, can\'t check for attributionTag "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5102
    :goto_1ae
    const-string v3, "AppOps"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b3
    .catchall {:try_start_113 .. :try_end_1b3} :catchall_13a

    move/from16 v10, v16

    .line 5105
    :cond_1b5
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eq v4, v0, :cond_20b

    if-nez p7, :cond_1e7

    .line 5110
    const-string v1, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad call made by uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ". Package \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" does not belong to uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5113
    :cond_1e7
    const-string v1, " but it is not"

    .line 5114
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Specified package \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" under uid "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5117
    :cond_20b
    new-instance v0, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    invoke-direct {v0, v6, v10}, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;-><init>(Landroid/app/AppOpsManager$RestrictionBypass;Z)V

    return-object v0

    .line 5105
    :goto_211
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5106
    throw v0

    .line 5037
    :goto_215
    :try_start_215
    monitor-exit p0
    :try_end_216
    .catchall {:try_start_215 .. :try_end_216} :catchall_72

    throw v0
.end method

.method public final verifyIncomingOp(I)V
    .registers 5

    if-ltz p1, :cond_65

    const/16 v0, 0xaa

    if-ge p1, v0, :cond_65

    .line 4806
    invoke-static {p1}, Landroid/app/AppOpsManager;->opRestrictsRead(I)Z

    move-result p1

    if-eqz p1, :cond_64

    .line 4807
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 4808
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4807
    const-string v2, "android.permission.MANAGE_APPOPS"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_64

    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 4811
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4809
    const-string v2, "android.permission.GET_APP_OPS_STATS"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_64

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 4814
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4812
    const-string v1, "android.permission.MANAGE_APP_OPS_MODES"

    invoke-virtual {p0, v1, p1, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_43

    goto :goto_64

    .line 4816
    :cond_43
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "verifyIncomingOp: uid "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " does not have any of {MANAGE_APPOPS, GET_APP_OPS_STATS, MANAGE_APP_OPS_MODES}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_64
    :goto_64
    return-void

    .line 4823
    :cond_65
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad operation #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final verifyIncomingProxyUid(Landroid/content/AttributionSource;)V
    .registers 5

    .line 4755
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-ne v0, v1, :cond_b

    goto :goto_1e

    .line 4758
    :cond_b
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_16

    goto :goto_1e

    .line 4761
    :cond_16
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1f

    :goto_1e
    return-void

    .line 4764
    :cond_1f
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 4765
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    .line 4764
    const-string v2, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {p0, v2, p1, v0, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public final verifyIncomingUid(I)V
    .registers 5

    .line 4769
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_7

    goto :goto_11

    .line 4772
    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p1, v0, :cond_12

    :goto_11
    return-void

    .line 4775
    :cond_12
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 4776
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    .line 4775
    const-string v2, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {p0, v2, p1, v0, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public writeRecentAccesses()V
    .registers 32

    move-object/from16 v1, p0

    .line 5567
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mRecentAccessesFile:Landroid/util/AtomicFile;

    monitor-enter v2

    .line 5570
    :try_start_5
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mRecentAccessesFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_242
    .catchall {:try_start_5 .. :try_end_b} :catchall_48

    const/4 v0, 0x0

    .line 5576
    :try_start_c
    invoke-virtual {v1, v0}, Lcom/android/server/appop/AppOpsService;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v4
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_48

    .line 5579
    :try_start_10
    invoke-static {v3}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v5

    .line 5580
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v5, v0, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5581
    const-string v6, "app-ops"

    invoke-interface {v5, v0, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5582
    const-string/jumbo v6, "v"

    const/4 v7, 0x1

    invoke-interface {v5, v0, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_25} :catch_4d
    .catchall {:try_start_10 .. :try_end_25} :catchall_48

    if-eqz v4, :cond_21b

    move-object v8, v0

    const/4 v7, 0x0

    .line 5586
    :goto_29
    :try_start_29
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_20f

    .line 5587
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AppOpsManager$PackageOps;

    .line 5588
    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_3d} :catch_1c5
    .catchall {:try_start_29 .. :try_end_3d} :catchall_48

    if-nez v10, :cond_64

    if-eqz v8, :cond_52

    .line 5590
    :try_start_41
    const-string/jumbo v8, "pkg"

    invoke-interface {v5, v0, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_52

    :catchall_48
    move-exception v0

    move-object/from16 v24, v2

    goto/16 :goto_25d

    :catch_4d
    move-exception v0

    move-object/from16 v24, v2

    goto/16 :goto_22f

    .line 5592
    :cond_52
    :goto_52
    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_64

    .line 5594
    const-string/jumbo v10, "pkg"

    invoke-interface {v5, v0, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5595
    const-string/jumbo v10, "n"

    invoke-interface {v5, v0, v10, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_64} :catch_4d
    .catchall {:try_start_41 .. :try_end_64} :catchall_48

    .line 5598
    :cond_64
    :try_start_64
    const-string/jumbo v10, "uid"

    invoke-interface {v5, v0, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5599
    const-string/jumbo v10, "n"

    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v11

    invoke-interface {v5, v0, v10, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5600
    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    .line 5601
    :goto_79
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_1f3

    .line 5602
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AppOpsManager$OpEntry;

    .line 5603
    const-string/jumbo v12, "op"

    invoke-interface {v5, v0, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5604
    const-string/jumbo v12, "n"

    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v13

    invoke-interface {v5, v0, v12, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5605
    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v12

    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v13

    invoke-static {v13}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v13
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_a1} :catch_1c5
    .catchall {:try_start_64 .. :try_end_a1} :catchall_48

    if-eq v12, v13, :cond_ad

    .line 5606
    :try_start_a3
    const-string/jumbo v12, "m"

    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v13

    invoke-interface {v5, v0, v12, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_ad} :catch_4d
    .catchall {:try_start_a3 .. :try_end_ad} :catchall_48

    .line 5609
    :cond_ad
    :try_start_ad
    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_b9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1cf

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 5611
    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 5613
    invoke-virtual {v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->collectKeys()Landroid/util/ArraySet;

    move-result-object v15

    .line 5615
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v6

    const/4 v0, 0x0

    :goto_d8
    if-ge v0, v6, :cond_1ca

    .line 5617
    invoke-virtual {v15, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    move/from16 v18, v6

    move/from16 v17, v7

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move/from16 v16, v0

    .line 5619
    invoke-static {v6, v7}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v0

    move-object/from16 v19, v4

    .line 5620
    invoke-static {v6, v7}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v4

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    .line 5622
    invoke-virtual {v14, v0, v0, v4}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(III)J

    move-result-wide v8

    move/from16 v22, v10

    move-object/from16 v23, v11

    .line 5624
    invoke-virtual {v14, v0, v0, v4}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastRejectTime(III)J

    move-result-wide v10
    :try_end_104
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_104} :catch_1c5
    .catchall {:try_start_ad .. :try_end_104} :catchall_48

    move-object/from16 v24, v2

    .line 5626
    :try_start_106
    invoke-virtual {v14, v0, v0, v4}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastDuration(III)J

    move-result-wide v1

    .line 5629
    invoke-virtual {v14, v0, v0, v4}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v0

    const-wide/16 v25, 0x0

    cmp-long v4, v8, v25

    if-gtz v4, :cond_126

    cmp-long v27, v10, v25

    if-gtz v27, :cond_126

    cmp-long v27, v1, v25

    if-gtz v27, :cond_126

    if-nez v0, :cond_126

    move-object/from16 v28, v12

    move-object/from16 v29, v14

    move-object/from16 v30, v15

    goto/16 :goto_1a9

    :cond_126
    if-eqz v0, :cond_14b

    .line 5641
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    move-result-object v27

    .line 5642
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getAttributionTag()Ljava/lang/String;

    move-result-object v28

    .line 5643
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getUid()I

    move-result v0

    move-object/from16 v29, v27

    move/from16 v27, v4

    move-object/from16 v4, v29

    move-object/from16 v29, v28

    move-object/from16 v28, v12

    move-object/from16 v12, v29

    :goto_140
    move-object/from16 v29, v14

    goto :goto_153

    :catchall_143
    move-exception v0

    goto/16 :goto_25d

    :catch_146
    move-exception v0

    :goto_147
    move-object/from16 v1, p0

    goto/16 :goto_22f

    :cond_14b
    const/4 v0, -0x1

    move/from16 v27, v4

    move-object/from16 v28, v12

    const/4 v4, 0x0

    const/4 v12, 0x0

    goto :goto_140

    .line 5646
    :goto_153
    const-string/jumbo v14, "st"

    move-object/from16 v30, v15

    const/4 v15, 0x0

    invoke-interface {v5, v15, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz v13, :cond_163

    .line 5648
    const-string v14, "id"

    invoke-interface {v5, v15, v14, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5650
    :cond_163
    const-string/jumbo v14, "n"

    const/4 v15, 0x0

    invoke-interface {v5, v15, v14, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    if-lez v27, :cond_172

    .line 5652
    const-string/jumbo v6, "t"

    invoke-interface {v5, v15, v6, v8, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    :cond_172
    cmp-long v6, v10, v25

    if-lez v6, :cond_17d

    .line 5655
    const-string/jumbo v6, "r"

    const/4 v15, 0x0

    invoke-interface {v5, v15, v6, v10, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    :cond_17d
    cmp-long v6, v1, v25

    if-lez v6, :cond_187

    .line 5658
    const-string v6, "d"

    const/4 v15, 0x0

    invoke-interface {v5, v15, v6, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    :cond_187
    if-eqz v4, :cond_190

    .line 5661
    const-string/jumbo v1, "pp"

    const/4 v15, 0x0

    invoke-interface {v5, v15, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_190
    if-eqz v12, :cond_199

    .line 5664
    const-string/jumbo v1, "pc"

    const/4 v15, 0x0

    invoke-interface {v5, v15, v1, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_199
    if-ltz v0, :cond_1a2

    .line 5667
    const-string/jumbo v1, "pu"

    const/4 v15, 0x0

    invoke-interface {v5, v15, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5669
    :cond_1a2
    const-string/jumbo v0, "st"

    const/4 v15, 0x0

    invoke-interface {v5, v15, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_1a9
    add-int/lit8 v0, v16, 0x1

    move-object/from16 v1, p0

    move/from16 v7, v17

    move/from16 v6, v18

    move-object/from16 v4, v19

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    move/from16 v10, v22

    move-object/from16 v11, v23

    move-object/from16 v2, v24

    move-object/from16 v12, v28

    move-object/from16 v14, v29

    move-object/from16 v15, v30

    goto/16 :goto_d8

    :catch_1c5
    move-exception v0

    move-object/from16 v24, v2

    goto/16 :goto_147

    :cond_1ca
    const/4 v0, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_b9

    :cond_1cf
    move-object/from16 v24, v2

    move-object/from16 v19, v4

    move/from16 v17, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move/from16 v22, v10

    .line 5673
    const-string/jumbo v0, "op"

    const/4 v15, 0x0

    invoke-interface {v5, v15, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v10, v22, 0x1

    move-object/from16 v1, p0

    move/from16 v7, v17

    move-object/from16 v4, v19

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    move-object/from16 v2, v24

    const/4 v0, 0x0

    goto/16 :goto_79

    :cond_1f3
    move-object/from16 v24, v2

    move-object/from16 v19, v4

    move/from16 v17, v7

    move-object/from16 v20, v8

    .line 5675
    const-string/jumbo v0, "uid"

    const/4 v15, 0x0

    invoke-interface {v5, v15, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v7, v17, 0x1

    move-object/from16 v1, p0

    move-object/from16 v4, v19

    move-object/from16 v8, v20

    move-object/from16 v2, v24

    const/4 v0, 0x0

    goto/16 :goto_29

    :cond_20f
    move-object/from16 v24, v2

    if-eqz v8, :cond_21d

    .line 5678
    const-string/jumbo v0, "pkg"

    const/4 v15, 0x0

    invoke-interface {v5, v15, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_21d

    :cond_21b
    move-object/from16 v24, v2

    .line 5682
    :cond_21d
    :goto_21d
    const-string v0, "app-ops"

    const/4 v15, 0x0

    invoke-interface {v5, v15, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5683
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V
    :try_end_226
    .catch Ljava/io/IOException; {:try_start_106 .. :try_end_226} :catch_146
    .catchall {:try_start_106 .. :try_end_226} :catchall_143

    move-object/from16 v1, p0

    .line 5684
    :try_start_228
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mRecentAccessesFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_22d
    .catch Ljava/io/IOException; {:try_start_228 .. :try_end_22d} :catch_22e
    .catchall {:try_start_228 .. :try_end_22d} :catchall_143

    goto :goto_23b

    :catch_22e
    move-exception v0

    .line 5686
    :goto_22f
    :try_start_22f
    const-string v2, "AppOps"

    const-string v4, "Failed to write state, restoring backup."

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5687
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mRecentAccessesFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 5689
    :goto_23b
    monitor-exit v24
    :try_end_23c
    .catchall {:try_start_22f .. :try_end_23c} :catchall_143

    .line 5690
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    invoke-interface {v0}, Lcom/android/server/appop/HistoricalRegistryInterface;->writeAndClearDiscreteHistory()V

    return-void

    :catch_242
    move-exception v0

    move-object/from16 v24, v2

    .line 5572
    :try_start_245
    const-string v1, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to write state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5573
    monitor-exit v24

    return-void

    .line 5689
    :goto_25d
    monitor-exit v24
    :try_end_25e
    .catchall {:try_start_245 .. :try_end_25e} :catchall_143

    throw v0
.end method
