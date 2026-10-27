.class public final Lcom/android/server/tv/TvInputManagerService;
.super Lcom/android/server/SystemService;
.source "TvInputManagerService.java"


# static fields
.field public static final sAdapterDirPattern:Ljava/util/regex/Pattern;

.field public static sConfiguredTvProfileName:Ljava/lang/String;

.field public static final sFrontEndDevicePattern:Ljava/util/regex/Pattern;

.field public static final sFrontEndInAdapterDirPattern:Ljava/util/regex/Pattern;


# instance fields
.field public final mActivityManager:Landroid/app/ActivityManager;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public final mExternalInputLoggingDeviceBrandNames:Ljava/util/List;

.field public final mExternalInputLoggingDeviceOnScreenDisplayNames:Ljava/util/HashSet;

.field public mExternalInputLoggingDisplayNameFilterEnabled:Z

.field public mHdmiControlManager:Landroid/hardware/hdmi/HdmiControlManager;

.field public mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

.field public final mLock:Ljava/lang/Object;

.field public mMediaQualityManager:Landroid/media/quality/MediaQualityManager;

.field public final mMessageHandler:Lcom/android/server/tv/TvInputManagerService$MessageHandler;

.field public mOnScreenInputId:Ljava/lang/String;

.field public mOnScreenSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

.field public final mPackageMonitor:Lcom/android/server/tv/TvInputManagerService$MyPackageMonitor;

.field public final mRunningProfiles:Ljava/util/Set;

.field public final mSessionIdToSessionStateMap:Ljava/util/Map;

.field public final mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserStates:Landroid/util/SparseArray;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentUserId(Lcom/android/server/tv/TvInputManagerService;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMessageHandler(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputManagerService$MessageHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mMessageHandler:Lcom/android/server/tv/TvInputManagerService$MessageHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOnScreenInputId(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenInputId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOnScreenSessionState(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputManagerService$SessionState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRunningProfiles(Lcom/android/server/tv/TvInputManagerService;)Ljava/util/Set;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mRunningProfiles:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSessionIdToSessionStateMap(Lcom/android/server/tv/TvInputManagerService;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mSessionIdToSessionStateMap:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTvInputHardwareManager(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserManager(Lcom/android/server/tv/TvInputManagerService;)Landroid/os/UserManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserStates(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmOnScreenInputId(Lcom/android/server/tv/TvInputManagerService;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenInputId:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmOnScreenSessionState(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mabortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$ServiceState;Ljava/lang/String;I)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->abortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/TvInputManagerService$ServiceState;Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddHardwareInputLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/TvInputInfo;Landroid/content/ComponentName;I)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->addHardwareInputLocked(Landroid/media/tv/TvInputInfo;Landroid/content/ComponentName;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$massertTvAsCecActiveSourceLocked(Lcom/android/server/tv/TvInputManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputManagerService;->assertTvAsCecActiveSourceLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbindService(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$ServiceState;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/TvInputManagerService;->bindService(Lcom/android/server/tv/TvInputManagerService$ServiceState;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbuildTvContentRatingSystemListLocked(Lcom/android/server/tv/TvInputManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->buildTvContentRatingSystemListLocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbuildTvInputListLocked(Lcom/android/server/tv/TvInputManagerService;I[Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearSessionAndNotifyClientLocked(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->clearSessionAndNotifyClientLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcreateSessionInternalLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)Z
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->createSessionInternalLocked(Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetCurrentTunedInfosInternalLocked(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$UserState;II)Ljava/util/List;
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->getCurrentTunedInfosInternalLocked(Lcom/android/server/tv/TvInputManagerService$UserState;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetServiceStateLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/TvInputManagerService;->getServiceStateLocked(Landroid/content/ComponentName;I)Lcom/android/server/tv/TvInputManagerService$ServiceState;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetSessionActualInputId(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getSessionActualInputId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;ILcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$SessionState;
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;ILcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetUserStateLocked(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mlogExternalInputEvent(Lcom/android/server/tv/TvInputManagerService;ILjava/lang/String;Lcom/android/server/tv/TvInputManagerService$SessionState;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->logExternalInputEvent(ILjava/lang/String;Lcom/android/server/tv/TvInputManagerService$SessionState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlogTuneStateChanged(Lcom/android/server/tv/TvInputManagerService;ILcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$TvInputState;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->logTuneStateChanged(ILcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$TvInputState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyCurrentChannelInfosUpdatedLocked(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$UserState;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->notifyCurrentChannelInfosUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyInputStateChangedLocked(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;ILandroid/media/tv/ITvInputManagerCallback;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/tv/TvInputManagerService;->notifyInputStateChangedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;ILandroid/media/tv/ITvInputManagerCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreleaseSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->releaseSessionLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mremoveHardwareInputLocked(Lcom/android/server/tv/TvInputManagerService;Ljava/lang/String;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/TvInputManagerService;->removeHardwareInputLocked(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveSessionStateLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(Landroid/os/IBinder;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveUser(Lcom/android/server/tv/TvInputManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->removeUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msendSessionTokenToClientLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/tv/TvInputManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetMainLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;ZII)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/tv/TvInputManagerService;->setMainLocked(Landroid/os/IBinder;ZII)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetStateLocked(Lcom/android/server/tv/TvInputManagerService;Ljava/lang/String;II)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->setStateLocked(Ljava/lang/String;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartUser(Lcom/android/server/tv/TvInputManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->startUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopUser(Lcom/android/server/tv/TvInputManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->stopUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mswitchUser(Lcom/android/server/tv/TvInputManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->switchUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateHardwareServiceConnectionDelayed(Lcom/android/server/tv/TvInputManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->updateHardwareServiceConnectionDelayed(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateHardwareTvInputServiceBindingLocked(Lcom/android/server/tv/TvInputManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->updateHardwareTvInputServiceBindingLocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateServiceConnectionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateTvInputInfoLocked(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/media/tv/TvInputInfo;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/TvInputManagerService;->updateTvInputInfoLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/media/tv/TvInputInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetsAdapterDirPattern()Ljava/util/regex/Pattern;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/tv/TvInputManagerService;->sAdapterDirPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsConfiguredTvProfileName()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/tv/TvInputManagerService;->sConfiguredTvProfileName:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsFrontEndDevicePattern()Ljava/util/regex/Pattern;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/tv/TvInputManagerService;->sFrontEndDevicePattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsFrontEndInAdapterDirPattern()Ljava/util/regex/Pattern;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/tv/TvInputManagerService;->sFrontEndInAdapterDirPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smgetTvInputState(Lcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$TvInputState;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getTvInputState(Lcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$TvInputState;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smhasHardwarePermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->hasHardwarePermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 155
    const-string v0, "^dvb([0-9]+)\\.frontend([0-9]+)$"

    .line 156
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/tv/TvInputManagerService;->sFrontEndDevicePattern:Ljava/util/regex/Pattern;

    .line 157
    const-string v0, "^adapter([0-9]+)$"

    .line 158
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/tv/TvInputManagerService;->sAdapterDirPattern:Ljava/util/regex/Pattern;

    .line 159
    const-string v0, "^frontend([0-9]+)$"

    .line 160
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/tv/TvInputManagerService;->sFrontEndInAdapterDirPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .line 204
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 167
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 170
    iput v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    const/4 v2, 0x0

    .line 173
    iput-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenInputId:Ljava/lang/String;

    .line 176
    iput-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 179
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/tv/TvInputManagerService;->mRunningProfiles:Ljava/util/Set;

    .line 183
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 187
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/tv/TvInputManagerService;->mSessionIdToSessionStateMap:Ljava/util/Map;

    .line 194
    iput-boolean v1, p0, Lcom/android/server/tv/TvInputManagerService;->mExternalInputLoggingDisplayNameFilterEnabled:Z

    .line 195
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mExternalInputLoggingDeviceOnScreenDisplayNames:Ljava/util/HashSet;

    .line 197
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mExternalInputLoggingDeviceBrandNames:Ljava/util/List;

    .line 198
    iput-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mHdmiControlManager:Landroid/hardware/hdmi/HdmiControlManager;

    .line 199
    iput-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    .line 201
    iput-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mMediaQualityManager:Landroid/media/quality/MediaQualityManager;

    .line 206
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 207
    new-instance v1, Lcom/android/server/tv/TvInputManagerService$MessageHandler;

    .line 208
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4}, Lcom/android/server/tv/TvInputManagerService$MessageHandler;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ContentResolver;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mMessageHandler:Lcom/android/server/tv/TvInputManagerService$MessageHandler;

    .line 209
    new-instance v1, Lcom/android/server/tv/TvInputHardwareManager;

    new-instance v3, Lcom/android/server/tv/TvInputManagerService$HardwareListener;

    invoke-direct {v3, p0, v2}, Lcom/android/server/tv/TvInputManagerService$HardwareListener;-><init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService-IA;)V

    invoke-direct {v1, p1, v3}, Lcom/android/server/tv/TvInputHardwareManager;-><init>(Landroid/content/Context;Lcom/android/server/tv/TvInputHardwareManager$Listener;)V

    iput-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    .line 210
    new-instance v1, Lcom/android/server/tv/TvInputManagerService$MyPackageMonitor;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/server/tv/TvInputManagerService$MyPackageMonitor;-><init>(Lcom/android/server/tv/TvInputManagerService;Z)V

    iput-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mPackageMonitor:Lcom/android/server/tv/TvInputManagerService$MyPackageMonitor;

    .line 213
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 214
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mUserManager:Landroid/os/UserManager;

    .line 215
    const-class v1, Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/hdmi/HdmiControlManager;

    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService;->mHdmiControlManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-nez p1, :cond_97

    .line 217
    const-string p1, "TvInputManagerService"

    const-string v1, "HdmiControlManager is null!"

    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9d

    .line 219
    :cond_97
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiControlManager;->getTvClient()Landroid/hardware/hdmi/HdmiTvClient;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    .line 221
    :goto_9d
    monitor-enter v0

    .line 222
    :try_start_9e
    iget p1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 223
    monitor-exit v0
    :try_end_a4
    .catchall {:try_start_9e .. :try_end_a4} :catchall_ab

    .line 225
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputManagerService;->initExternalInputLoggingConfigs()V

    .line 226
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputManagerService;->initConfigTvProfileName()V

    return-void

    :catchall_ab
    move-exception p0

    .line 223
    :try_start_ac
    monitor-exit v0
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ab

    throw p0
.end method

.method public static getTvInputState(Lcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$TvInputState;
    .registers 2

    if-eqz p1, :cond_11

    .line 3271
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetinputMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetinputId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getVideoUnavailableReasonForStatsd(I)I
    .registers 3

    .line 0
    const/16 v0, 0x64

    add-int/2addr p0, v0

    if-lt p0, v0, :cond_b

    const/16 v1, 0x76

    if-le p0, v1, :cond_a

    goto :goto_b

    :cond_a
    return p0

    :cond_b
    :goto_b
    return v0
.end method

.method public static hasAlwaysBoundPermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z
    .registers 3

    .line 437
    const-string v0, "android.permission.ALWAYS_BOUND_TV_INPUT"

    .line 438
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 437
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static hasHardwarePermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z
    .registers 3

    .line 442
    const-string v0, "android.permission.TV_INPUT_HARDWARE"

    .line 443
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 442
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final abortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/TvInputManagerService$ServiceState;Ljava/lang/String;I)V
    .registers 15

    .line 940
    invoke-virtual {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 941
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 942
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetsessionTokens(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 943
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetsessionStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 944
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v4

    if-nez v4, :cond_11

    if-eqz p2, :cond_39

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetinputId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v4

    .line 945
    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 946
    :cond_39
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 949
    :cond_3d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_42
    if-ge v0, p2, :cond_6a

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    check-cast v2, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 950
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsessionToken(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetuserId(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(Landroid/os/IBinder;I)V

    .line 951
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v6

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetinputId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetseq(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v10

    const/4 v8, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/tv/TvInputManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    goto :goto_42

    :cond_6a
    move-object v5, p0

    .line 954
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetisHardware(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result p0

    if-eqz p0, :cond_7c

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetreconnecting(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result p0

    if-eqz p0, :cond_78

    goto :goto_7c

    .line 957
    :cond_78
    invoke-virtual {v5, p3}, Lcom/android/server/tv/TvInputManagerService;->updateHardwareServiceConnectionDelayed(I)V

    return-void

    .line 955
    :cond_7c
    :goto_7c
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetcomponent(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v5, p0, p3}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    return-void
.end method

.method public final addHardwareInputLocked(Landroid/media/tv/TvInputInfo;Landroid/content/ComponentName;I)V
    .registers 5

    .line 3743
    invoke-virtual {p0, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->getServiceStateLocked(Landroid/content/ComponentName;I)Lcom/android/server/tv/TvInputManagerService$ServiceState;

    move-result-object p2

    if-nez p2, :cond_7

    return-void

    .line 3745
    :cond_7
    invoke-static {p2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgethardwareInputMap(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3746
    invoke-virtual {p1}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->setPictureProfileLocked(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3747
    invoke-virtual {p0, p3, p1}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    return-void
.end method

.method public final assertTvAsCecActiveSourceLocked()V
    .registers 4

    .line 4960
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-nez v0, :cond_c

    .line 4961
    const-string p0, "TvInputManagerService"

    const-string v0, "HdmiTvClient is null!"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4964
    :cond_c
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 4965
    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/server/tv/TvInputManagerService$3;

    invoke-direct {v2, p0}, Lcom/android/server/tv/TvInputManagerService$3;-><init>(Lcom/android/server/tv/TvInputManagerService;)V

    const/4 p0, 0x0

    .line 4964
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/hdmi/HdmiTvClient;->selectDevice(ILjava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;)V

    return-void
.end method

.method public final bindService(Lcom/android/server/tv/TvInputManagerService$ServiceState;I)V
    .registers 8

    .line 3662
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetbound(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3667
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetisHardware(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result p1

    if-eqz p1, :cond_72

    .line 3668
    invoke-virtual {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->updateHardwareServiceConnectionDelayed(I)V

    return-void

    .line 3678
    :cond_10
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetcomponent(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/tv/TvInputManagerService;->isServiceSingleUser(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    goto :goto_1d

    :cond_1c
    move v0, p2

    .line 3681
    :goto_1d
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.tv.TvInputService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetcomponent(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ComponentName;

    move-result-object v2

    .line 3682
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 3683
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetconnection(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ServiceConnection;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    const v0, 0x2000001

    invoke-virtual {v2, v1, v3, v0, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fputbound(Lcom/android/server/tv/TvInputManagerService$ServiceState;Z)V

    .line 3686
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetbound(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v0

    if-nez v0, :cond_72

    .line 3687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to bind "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetcomponent(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for userId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TvInputManagerService"

    invoke-static {v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3688
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetconnection(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ServiceConnection;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_72
    return-void
.end method

.method public final buildTvContentRatingSystemListLocked(I)V
    .registers 5

    .line 558
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p1

    .line 559
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetcontentRatingSystemList(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 561
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 562
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.tv.action.QUERY_CONTENT_RATING_SYSTEMS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x80

    .line 564
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_22
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 565
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 566
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_35

    goto :goto_22

    .line 571
    :cond_35
    const-string v2, "android.media.tv.metadata.CONTENT_RATING_SYSTEMS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_60

    .line 573
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing meta-data \'android.media.tv.metadata.CONTENT_RATING_SYSTEMS\' on receiver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TvInputManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 578
    :cond_60
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetcontentRatingSystemList(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/List;

    move-result-object v2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 579
    invoke-static {v1, v0}, Landroid/media/tv/TvContentRatingSystemInfo;->createTvContentRatingSystemInfo(ILandroid/content/pm/ApplicationInfo;)Landroid/media/tv/TvContentRatingSystemInfo;

    move-result-object v0

    .line 578
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_6e
    return-void
.end method

.method public final buildTvInputListLocked(I[Ljava/lang/String;)V
    .registers 15

    .line 448
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 449
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetpackageSet(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 452
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 453
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.tv.TvInputService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x84

    invoke-virtual {v1, v2, v3, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 457
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 458
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_d0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 459
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 460
    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v8, "android.permission.BIND_TV_INPUT"

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v9, "TvInputManagerService"

    if-nez v7, :cond_61

    .line 461
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping TV input "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": it does not require the permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 466
    :cond_61
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v10, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-static {v1, v7}, Lcom/android/server/tv/TvInputManagerService;->hasHardwarePermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z

    move-result v8

    if-eqz v8, :cond_9e

    .line 468
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    if-nez v4, :cond_89

    .line 472
    new-instance v4, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    invoke-direct {v4, p0, v7, p1, v5}, Lcom/android/server/tv/TvInputManagerService$ServiceState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;ILcom/android/server/tv/TvInputManagerService-IA;)V

    .line 473
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_94

    .line 475
    :cond_89
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgethardwareInputMap(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 477
    :goto_94
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetneedInit(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v4

    if-eqz v4, :cond_ac

    .line 478
    invoke-virtual {p0, v7, p1}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    goto :goto_ac

    .line 482
    :cond_9e
    :try_start_9e
    new-instance v5, Landroid/media/tv/TvInputInfo$Builder;

    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7, v4}, Landroid/media/tv/TvInputInfo$Builder;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    invoke-virtual {v5}, Landroid/media/tv/TvInputInfo$Builder;->build()Landroid/media/tv/TvInputInfo;

    move-result-object v4

    .line 483
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_ac} :catch_b7

    .line 489
    :cond_ac
    :goto_ac
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetpackageSet(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v4

    iget-object v5, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    :catch_b7
    move-exception v4

    .line 485
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to load TV input "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_27

    .line 493
    :cond_d0
    new-instance v1, Lcom/android/server/tv/TvInputManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/tv/TvInputManagerService$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 494
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 495
    new-instance v2, Landroid/util/ArrayMap;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v2, v4}, Landroid/util/ArrayMap;-><init>(I)V

    .line 496
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x0

    move v7, v6

    :goto_f0
    if-ge v7, v4, :cond_136

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Landroid/media/tv/TvInputInfo;

    .line 497
    invoke-virtual {v8}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v9

    .line 502
    invoke-virtual {v2, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    const/4 v11, 0x1

    if-nez v10, :cond_108

    goto :goto_10d

    .line 503
    :cond_108
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/2addr v11, v10

    :goto_10d
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 504
    invoke-virtual {v2, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetinputMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    if-nez v10, :cond_125

    .line 507
    new-instance v10, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    invoke-direct {v10, v5}, Lcom/android/server/tv/TvInputManagerService$TvInputState;-><init>(Lcom/android/server/tv/TvInputManagerService-IA;)V

    .line 509
    :cond_125
    invoke-static {v10, v8}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fputinfo(Lcom/android/server/tv/TvInputManagerService$TvInputState;Landroid/media/tv/TvInputInfo;)V

    .line 510
    invoke-virtual {p0, v8}, Lcom/android/server/tv/TvInputManagerService;->getInputUid(Landroid/media/tv/TvInputInfo;)I

    move-result v8

    invoke-static {v10, v8}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fputuid(Lcom/android/server/tv/TvInputManagerService$TvInputState;I)V

    .line 511
    invoke-interface {v1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    invoke-static {v10, v11}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fputinputNumber(Lcom/android/server/tv/TvInputManagerService$TvInputState;I)V

    goto :goto_f0

    .line 515
    :cond_136
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13e
    :goto_13e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_182

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 516
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetinputMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_158

    .line 517
    invoke-virtual {p0, v0, v3}, Lcom/android/server/tv/TvInputManagerService;->notifyInputAddedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V

    goto :goto_13e

    :cond_158
    if-eqz p2, :cond_13e

    .line 520
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fgetinfo(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 521
    array-length v5, p2

    move v7, v6

    :goto_16a
    if-ge v7, v5, :cond_13e

    aget-object v8, p2, v7

    .line 522
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17f

    .line 523
    invoke-virtual {p0, v4, p1}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    .line 524
    invoke-virtual {p0, v0, v3}, Lcom/android/server/tv/TvInputManagerService;->notifyInputUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V

    goto :goto_13e

    :cond_17f
    add-int/lit8 v7, v7, 0x1

    goto :goto_16a

    .line 531
    :cond_182
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetinputMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_18e
    :goto_18e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 532
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18e

    .line 533
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetinputMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fgetinfo(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v3

    .line 534
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    if-eqz v3, :cond_1c1

    .line 536
    invoke-virtual {p0, v3, v2, p1}, Lcom/android/server/tv/TvInputManagerService;->abortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/TvInputManagerService$ServiceState;Ljava/lang/String;I)V

    .line 538
    :cond_1c1
    invoke-virtual {p0, v0, v2}, Lcom/android/server/tv/TvInputManagerService;->notifyInputRemovedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V

    goto :goto_18e

    .line 542
    :cond_1c5
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetinputMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 543
    invoke-static {v0, v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fputinputMap(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/util/Map;)V

    return-void
.end method

.method public final cleanUpHdmiDevices(I)V
    .registers 7

    .line 589
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p1

    .line 590
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 591
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-virtual {v1}, Lcom/android/server/tv/TvInputHardwareManager;->getHdmiDeviceList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 593
    :try_start_32
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v3

    if-eqz v3, :cond_42

    .line 594
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/media/tv/ITvInputService;->notifyHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    goto :goto_26

    :catch_40
    move-exception v2

    goto :goto_4a

    .line 596
    :cond_42
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgethdmiDeviceRemovedBuffer(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_49} :catch_40

    goto :goto_26

    .line 599
    :goto_4a
    const-string v3, "TvInputManagerService"

    const-string v4, "error in notifyHdmiDeviceRemoved"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26

    :cond_52
    return-void
.end method

.method public final clearSessionAndNotifyClientLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)V
    .registers 9

    .line 737
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v0

    const-string v1, "error in onSessionReleased"

    const-string v2, "TvInputManagerService"

    if-eqz v0, :cond_1a

    .line 739
    :try_start_a
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetseq(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/media/tv/ITvInputClient;->onSessionReleased(I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    goto :goto_1a

    :catch_16
    move-exception v0

    .line 741
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 745
    :cond_1a
    :goto_1a
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetuserId(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 746
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetsessionStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2e
    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 747
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsessionToken(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgethardwareSessionToken(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_2e

    .line 748
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsessionToken(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v4

    const/16 v5, 0x3e8

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetuserId(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/tv/TvInputManagerService;->releaseSessionLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 750
    :try_start_51
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v4

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetseq(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/media/tv/ITvInputClient;->onSessionReleased(I)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_5c} :catch_5d

    goto :goto_2e

    :catch_5d
    move-exception v3

    .line 752
    invoke-static {v2, v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e

    .line 756
    :cond_62
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsessionToken(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetuserId(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(Landroid/os/IBinder;I)V

    return-void
.end method

.method public final createSessionInternalLocked(Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)Z
    .registers 19

    move/from16 v0, p3

    .line 964
    invoke-virtual {p0, v0}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 965
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetsessionStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v0

    move-object/from16 v2, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 970
    invoke-interface {v2}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v7

    .line 973
    new-instance v10, Lcom/android/server/tv/TvInputManagerService$SessionCallback;

    invoke-direct {v10, p0, v3, v7}, Lcom/android/server/tv/TvInputManagerService$SessionCallback;-><init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;[Landroid/view/InputChannel;)V

    const/4 v14, 0x1

    .line 978
    :try_start_21
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetisRecordingSession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 979
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetinputId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsessionId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v8, p1

    invoke-interface {v8, v10, v0, v2}, Landroid/media/tv/ITvInputService;->createRecordingSession(Landroid/media/tv/ITvInputSessionCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a

    :catch_35
    move-exception v0

    goto :goto_4c

    :cond_37
    move-object/from16 v8, p1

    .line 982
    aget-object v9, v7, v14

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetinputId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsessionId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgettvAppAttributionSource(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/content/AttributionSource;

    move-result-object v13

    invoke-interface/range {v8 .. v13}, Landroid/media/tv/ITvInputService;->createSession(Landroid/view/InputChannel;Landroid/media/tv/ITvInputSessionCallback;Ljava/lang/String;Ljava/lang/String;Landroid/content/AttributionSource;)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_4a} :catch_35

    :goto_4a
    move v0, v14

    goto :goto_67

    .line 986
    :goto_4c
    const-string v2, "TvInputManagerService"

    const-string v4, "error in createSession"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 987
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v2

    move-object v4, v3

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetinputId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetseq(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v6

    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tv/TvInputManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    const/4 v0, 0x0

    .line 991
    :goto_67
    aget-object v1, v7, v14

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    return v0
.end method

.method public final filterExternalInputLoggingDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_5

    .line 3416
    const-string p0, "NULL_DISPLAY_NAME"

    return-object p0

    .line 3418
    :cond_5
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mExternalInputLoggingDeviceOnScreenDisplayNames:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-object p1

    .line 3421
    :cond_e
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mExternalInputLoggingDeviceBrandNames:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3422
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    return-object v0

    .line 3426
    :cond_2f
    const-string p0, "FILTERED_DISPLAY_NAME"

    return-object p0
.end method

.method public final getContentResolverForUser(I)Landroid/content/ContentResolver;
    .registers 5

    .line 813
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 816
    :try_start_5
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_e} :catch_f

    goto :goto_27

    .line 818
    :catch_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to create package context as user "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TvInputManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 821
    :goto_27
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method public final getCurrentTunedInfosInternalLocked(Lcom/android/server/tv/TvInputManagerService$UserState;II)Ljava/util/List;
    .registers 16

    .line 3279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3280
    invoke-virtual {p0, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->hasAccessWatchedProgramsPermission(II)Z

    move-result p2

    .line 3281
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetsessionStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 3282
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetisCurrent(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 3285
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetcallingUid(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v3

    if-ne v3, p3, :cond_35

    const/4 v3, 0x0

    .line 3286
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    :goto_33
    move v10, v4

    goto :goto_77

    .line 3289
    :cond_35
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmAppTagMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetcallingUid(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_65

    .line 3291
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmNextAppTag(Lcom/android/server/tv/TvInputManagerService$UserState;)I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    invoke-static {p1, v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fputmNextAppTag(Lcom/android/server/tv/TvInputManagerService$UserState;I)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3292
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmAppTagMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetcallingUid(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3294
    :cond_65
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetcomponentName(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/tv/TvInputManagerService;->isSystemApp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_75

    const/4 v4, 0x2

    goto :goto_33

    :cond_75
    const/4 v4, 0x3

    goto :goto_33

    .line 3298
    :goto_77
    new-instance v4, Landroid/media/tv/TunedInfo;

    .line 3299
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetisRecordingSession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z

    move-result v5

    if-eqz v5, :cond_84

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetinputId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v5

    goto :goto_86

    :cond_84
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenInputId:Ljava/lang/String;

    :goto_86
    if-eqz p2, :cond_8d

    .line 3300
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetcurrentChannel(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_8e

    :cond_8d
    const/4 v6, 0x0

    :goto_8e
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetisRecordingSession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z

    move-result v7

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetisVisible(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z

    move-result v8

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetisMainSession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z

    move-result v9

    .line 3305
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct/range {v4 .. v11}, Landroid/media/tv/TunedInfo;-><init>(Ljava/lang/String;Landroid/net/Uri;ZZZII)V

    .line 3298
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15

    :cond_a6
    return-object v0
.end method

.method public final getInputUid(Landroid/media/tv/TvInputInfo;)I
    .registers 4

    .line 548
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 549
    invoke-virtual {p1}, Landroid/media/tv/TvInputInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 548
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to get UID for  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TvInputManagerService"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    return p0
.end method

.method public final getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    .registers 5

    .line 826
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    if-nez v0, :cond_13

    .line 828
    new-instance v0, Lcom/android/server/tv/TvInputManagerService$UserState;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/android/server/tv/TvInputManagerService$UserState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/Context;ILcom/android/server/tv/TvInputManagerService-IA;)V

    .line 829
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_13
    return-object v0
.end method

.method public final getServiceStateLocked(Landroid/content/ComponentName;I)Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .registers 5

    .line 836
    invoke-virtual {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p0

    .line 837
    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    if-nez p0, :cond_33

    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service state not found for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " (userId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TvInputManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    return-object p0
.end method

.method public final getSessionActualInputId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;
    .registers 5

    .line 3237
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetuserId(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 3238
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetinputMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetinputId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 3239
    const-string v1, "TvInputManagerService"

    if-nez v0, :cond_37

    .line 3240
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No TvInputState for sessionState.inputId "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetinputId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3241
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetinputId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3243
    :cond_37
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fgetinfo(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v0

    if-nez v0, :cond_5a

    .line 3245
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TvInputInfo is null for input id "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetinputId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3246
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetinputId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3249
    :cond_5a
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetinputId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v1

    .line 3250
    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo;->getType()I

    move-result v0

    const/16 v2, 0x3ef

    if-eq v0, v2, :cond_67

    goto :goto_89

    .line 3253
    :cond_67
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    .line 3254
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputHardwareManager;->getHdmiParentInputMap()Ljava/util/Map;

    move-result-object p0

    .line 3255
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetinputId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 3256
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetinputId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 p1, 0x0

    .line 3257
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_89
    :goto_89
    return-object v1
.end method

.method public final getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    .registers 4

    .line 866
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object p0

    return-object p0
.end method

.method public final getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;
    .registers 4

    .line 871
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    .line 873
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session not yet created for token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsessionToken(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;
    .registers 4

    .line 845
    invoke-virtual {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p3

    .line 846
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;ILcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object p0

    return-object p0
.end method

.method public final getSessionStateLocked(Landroid/os/IBinder;ILcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$SessionState;
    .registers 5

    .line 852
    invoke-static {p3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetsessionStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/TvInputManagerService$SessionState;

    if-eqz p0, :cond_37

    const/16 p3, 0x3e8

    if-eq p2, p3, :cond_36

    .line 857
    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetcallingUid(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result p3

    if-ne p2, p3, :cond_17

    goto :goto_36

    .line 858
    :cond_17
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal access to the session with token "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " from uid "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_36
    :goto_36
    return-object p0

    .line 854
    :cond_37
    new-instance p0, Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Session state not found for token "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    .registers 2

    .line 4603
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/TvInputManagerService$UserState;

    return-object p0
.end method

.method public final hasAccessWatchedProgramsPermission(II)Z
    .registers 4

    .line 3312
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    const-string v0, "com.android.providers.tv.permission.ACCESS_WATCHED_PROGRAMS"

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final initConfigTvProfileName()V
    .registers 2

    .line 312
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x104023c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/android/server/tv/TvInputManagerService;->sConfiguredTvProfileName:Ljava/lang/String;
    :try_end_f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    return-void

    .line 315
    :catch_10
    const-string p0, ""

    sput-object p0, Lcom/android/server/tv/TvInputManagerService;->sConfiguredTvProfileName:Ljava/lang/String;

    return-void
.end method

.method public final initExternalInputLoggingConfigs()V
    .registers 4

    .line 296
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11102a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/tv/TvInputManagerService;->mExternalInputLoggingDisplayNameFilterEnabled:Z

    if-nez v0, :cond_12

    return-void

    .line 301
    :cond_12
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 303
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10700f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 305
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mExternalInputLoggingDeviceOnScreenDisplayNames:Ljava/util/HashSet;

    .line 306
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 305
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 307
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mExternalInputLoggingDeviceBrandNames:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final isCurrentCecTvInputInfoUpdate(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/media/tv/TvInputInfo;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p2, :cond_8a

    .line 1251
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8a

    .line 1252
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenInputId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_8a

    .line 1255
    :cond_17
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    if-eqz v1, :cond_8a

    .line 1256
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->isCecDevice()Z

    move-result v1

    if-nez v1, :cond_28

    goto :goto_8a

    .line 1259
    :cond_28
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetinputMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenInputId:Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    if-eqz p0, :cond_8a

    .line 1260
    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fgetinfo(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object p1

    if-nez p1, :cond_3d

    goto :goto_8a

    .line 1263
    :cond_3d
    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fgetinfo(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/tv/TvInputInfo;->getHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p1

    if-eqz p1, :cond_8a

    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fgetinfo(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object p1

    .line 1264
    invoke-virtual {p1}, Landroid/media/tv/TvInputInfo;->getHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->isCecDevice()Z

    move-result p1

    if-nez p1, :cond_56

    goto :goto_8a

    .line 1267
    :cond_56
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    .line 1268
    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fgetinfo(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/tv/TvInputInfo;->getHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 1269
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getVendorId()I

    move-result p2

    .line 1270
    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fgetinfo(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/tv/TvInputInfo;->getHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getVendorId()I

    move-result p0

    .line 1271
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_88

    if-eq p2, p0, :cond_87

    goto :goto_88

    :cond_87
    return v0

    :cond_88
    :goto_88
    const/4 p0, 0x1

    return p0

    :cond_8a
    :goto_8a
    return v0
.end method

.method public final isServiceSingleUser(Landroid/content/ComponentName;)Z
    .registers 5

    const/4 v0, 0x0

    .line 925
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 926
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    .line 928
    iget p0, p0, Landroid/content/pm/ServiceInfo;->flags:I
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_f} :catch_17

    const/high16 p1, 0x40000000    # 2.0f

    and-int/2addr p0, p1

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    return v0

    :catch_17
    move-exception p0

    .line 931
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TvInputManagerService"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public final isSystemApp(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 3318
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_d} :catch_12

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-eqz p0, :cond_12

    return p1

    :catch_12
    :cond_12
    return v0
.end method

.method public final logExternalInputEvent(ILjava/lang/String;Lcom/android/server/tv/TvInputManagerService$SessionState;)V
    .registers 15

    .line 3369
    invoke-static {p3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetuserId(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 3370
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetinputMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 3371
    const-string v2, "TvInputManagerService"

    if-nez v1, :cond_39

    .line 3372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find input state for input id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3374
    invoke-static {p3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetinputId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object p2

    .line 3375
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetinputMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    :cond_39
    if-nez v1, :cond_50

    .line 3378
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Cannot find input state for sessionState.inputId "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3381
    :cond_50
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fgetinfo(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v0

    if-nez v0, :cond_6b

    .line 3383
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "TvInputInfo is null for input id "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3386
    :cond_6b
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fgetstate(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I

    move-result v5

    .line 3387
    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo;->getType()I

    move-result v6

    .line 3388
    iget-object p2, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/media/tv/TvInputInfo;->loadLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3393
    invoke-static {p3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsessionId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v9

    .line 3395
    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo;->getType()I

    move-result p3

    const/16 v1, 0x3ef

    const v2, 0xffffff

    if-ne p3, v1, :cond_b1

    .line 3396
    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo;->getHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p3

    if-eqz p3, :cond_b1

    .line 3398
    invoke-virtual {p3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v0

    .line 3399
    invoke-virtual {p3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->isCecDevice()Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 3400
    invoke-virtual {p3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    .line 3401
    iget-boolean v1, p0, Lcom/android/server/tv/TvInputManagerService;->mExternalInputLoggingDisplayNameFilterEnabled:Z

    if-eqz v1, :cond_a9

    .line 3402
    invoke-virtual {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->filterExternalInputLoggingDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object p2, p0

    .line 3404
    :cond_a9
    invoke-virtual {p3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getVendorId()I

    move-result v2

    :cond_ad
    :goto_ad
    move-object v10, p2

    move v8, v0

    move v7, v2

    goto :goto_b3

    :cond_b1
    const/4 v0, -0x1

    goto :goto_ad

    :goto_b3
    const/16 v3, 0x2cd

    move v4, p1

    .line 3409
    invoke-static/range {v3 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final logTuneStateChanged(ILcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$TvInputState;)V
    .registers 13

    const/4 p0, 0x0

    if-eqz p3, :cond_28

    .line 3345
    invoke-static {p3}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fgetuid(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I

    move-result v0

    .line 3346
    invoke-static {p3}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fgetinfo(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/tv/TvInputInfo;->getType()I

    move-result v1

    if-nez v1, :cond_12

    const/4 v1, 0x1

    .line 3350
    :cond_12
    invoke-static {p3}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fgetinputNumber(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I

    move-result v2

    .line 3351
    invoke-static {p3}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fgetinfo(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object p3

    invoke-virtual {p3}, Landroid/media/tv/TvInputInfo;->getHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p3

    if-eqz p3, :cond_24

    .line 3353
    invoke-virtual {p3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result p0

    :cond_24
    move v8, p0

    move v6, v1

    move v7, v2

    goto :goto_2c

    :cond_28
    const/4 v0, -0x1

    move v6, p0

    move v7, v6

    move v8, v7

    .line 3356
    :goto_2c
    invoke-static {p2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetcallingUid(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result p0

    filled-new-array {p0, v0}, [I

    move-result-object v2

    const-string/jumbo p0, "tif_player"

    const-string/jumbo p3, "tv_input_service"

    filled-new-array {p0, p3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsessionId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v5

    const/16 v1, 0x147

    move v4, p1

    invoke-static/range {v1 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(I[I[Ljava/lang/String;ILjava/lang/String;III)V

    return-void
.end method

.method public final notifyCurrentChannelInfosUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;)V
    .registers 10

    .line 1193
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_5d

    .line 1196
    :try_start_b
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/tv/ITvInputManagerCallback;

    .line 1197
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetcallbackPidUidMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1198
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.ACCESS_TUNED_INFO"

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    .line 1199
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1198
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_3a

    goto :goto_5a

    .line 1202
    :cond_3a
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 1203
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1202
    invoke-virtual {p0, p1, v4, v3}, Lcom/android/server/tv/TvInputManagerService;->getCurrentTunedInfosInternalLocked(Lcom/android/server/tv/TvInputManagerService$UserState;II)Ljava/util/List;

    move-result-object v3

    .line 1204
    invoke-interface {v2, v3}, Landroid/media/tv/ITvInputManagerCallback;->onCurrentTunedInfosUpdated(Ljava/util/List;)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_51} :catch_52

    goto :goto_5a

    :catch_52
    move-exception v2

    .line 1206
    const-string v3, "TvInputManagerService"

    const-string v4, "failed to report updated current channel infos to callback"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1209
    :cond_5d
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final notifyInputAddedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V
    .registers 7

    .line 1119
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p0

    const/4 v0, 0x0

    :goto_9
    if-ge v0, p0, :cond_24

    .line 1122
    :try_start_b
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/media/tv/ITvInputManagerCallback;

    invoke-interface {v1, p2}, Landroid/media/tv/ITvInputManagerCallback;->onInputAdded(Ljava/lang/String;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_19

    goto :goto_21

    :catch_19
    move-exception v1

    .line 1124
    const-string v2, "TvInputManagerService"

    const-string v3, "failed to report added input to callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1127
    :cond_24
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final notifyInputRemovedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V
    .registers 7

    .line 1135
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p0

    const/4 v0, 0x0

    :goto_9
    if-ge v0, p0, :cond_24

    .line 1138
    :try_start_b
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/media/tv/ITvInputManagerCallback;

    invoke-interface {v1, p2}, Landroid/media/tv/ITvInputManagerCallback;->onInputRemoved(Ljava/lang/String;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_19

    goto :goto_21

    :catch_19
    move-exception v1

    .line 1140
    const-string v2, "TvInputManagerService"

    const-string v3, "failed to report removed input to callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1143
    :cond_24
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final notifyInputStateChangedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;ILandroid/media/tv/ITvInputManagerCallback;)V
    .registers 8

    .line 1169
    const-string p0, "failed to report state change to callback"

    const-string v0, "TvInputManagerService"

    if-nez p4, :cond_2e

    .line 1170
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;

    move-result-object p4

    invoke-virtual {p4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p4

    const/4 v1, 0x0

    :goto_f
    if-ge v1, p4, :cond_26

    .line 1173
    :try_start_11
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/tv/ITvInputManagerCallback;

    invoke-interface {v2, p2, p3}, Landroid/media/tv/ITvInputManagerCallback;->onInputStateChanged(Ljava/lang/String;I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception v2

    .line 1175
    invoke-static {v0, p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1178
    :cond_26
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_36

    .line 1181
    :cond_2e
    :try_start_2e
    invoke-interface {p4, p2, p3}, Landroid/media/tv/ITvInputManagerCallback;->onInputStateChanged(Ljava/lang/String;I)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_31} :catch_32

    return-void

    :catch_32
    move-exception p1

    .line 1183
    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_36
    return-void
.end method

.method public final notifyInputUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V
    .registers 7

    .line 1151
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p0

    const/4 v0, 0x0

    :goto_9
    if-ge v0, p0, :cond_24

    .line 1154
    :try_start_b
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/media/tv/ITvInputManagerCallback;

    invoke-interface {v1, p2}, Landroid/media/tv/ITvInputManagerCallback;->onInputUpdated(Ljava/lang/String;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_19

    goto :goto_21

    :catch_19
    move-exception v1

    .line 1156
    const-string v2, "TvInputManagerService"

    const-string v3, "failed to report updated input to callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1159
    :cond_24
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public onBootPhase(I)V
    .registers 5

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_8

    .line 273
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputManagerService;->registerBroadcastReceivers()V

    goto :goto_1f

    :cond_8
    const/16 v0, 0x258

    if-ne p1, v0, :cond_1f

    .line 275
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 276
    :try_start_f
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    .line 277
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    invoke-virtual {p0, v1}, Lcom/android/server/tv/TvInputManagerService;->buildTvContentRatingSystemListLocked(I)V

    .line 278
    monitor-exit v0

    goto :goto_1f

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_1c

    throw p0

    .line 280
    :cond_1f
    :goto_1f
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->onBootPhase(I)V

    return-void
.end method

.method public onStart()V
    .registers 4

    .line 231
    new-instance v0, Lcom/android/server/tv/TvInputManagerService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/tv/TvInputManagerService$BinderService;-><init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService-IA;)V

    const-string/jumbo v1, "tv_input"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 241
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 242
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/tv/TvInputManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/tv/TvInputManagerService$1;-><init>(Lcom/android/server/tv/TvInputManagerService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4

    .line 286
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    :try_start_3
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    if-eq v1, p1, :cond_f

    .line 288
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    goto :goto_1c

    .line 290
    :cond_f
    iget p1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    .line 291
    iget p1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->buildTvContentRatingSystemListLocked(I)V

    .line 292
    monitor-exit v0

    return-void

    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_d

    throw p0
.end method

.method public final registerBroadcastReceivers()V
    .registers 9

    .line 391
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mPackageMonitor:Lcom/android/server/tv/TvInputManagerService$MyPackageMonitor;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 393
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 394
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 395
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 396
    const-string v0, "android.intent.action.USER_STARTED"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 397
    const-string v0, "android.intent.action.USER_STOPPED"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 398
    const-string v0, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 399
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/tv/TvInputManagerService$2;

    invoke-direct {v3, p0}, Lcom/android/server/tv/TvInputManagerService$2;-><init>(Lcom/android/server/tv/TvInputManagerService;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final releaseSessionLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;
    .registers 9

    const/4 v0, 0x0

    .line 1010
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v1
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_5} :catch_48
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_5} :catch_48
    .catchall {:try_start_1 .. :try_end_5} :catchall_45

    .line 1011
    :try_start_5
    invoke-virtual {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v2

    .line 1012
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_30

    .line 1013
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmainSessionToken(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;

    move-result-object v3

    if-ne p1, v3, :cond_1e

    .line 1014
    invoke-virtual {p0, p1, v4, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->setMainLocked(Landroid/os/IBinder;ZII)V

    goto :goto_1e

    :catchall_1a
    move-exception p0

    goto :goto_66

    :catch_1c
    move-exception p2

    goto :goto_4a

    .line 1016
    :cond_1e
    :goto_1e
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object p2

    invoke-interface {p2}, Landroid/media/tv/ITvInputSession;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p2, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1017
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object p2

    invoke-interface {p2}, Landroid/media/tv/ITvInputSession;->release()V

    .line 1019
    :cond_30
    invoke-static {v1, v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fputcurrentChannel(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/net/Uri;)V

    .line 1020
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetisCurrent(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z

    move-result p2

    if-eqz p2, :cond_3f

    .line 1021
    invoke-static {v1, v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fputisCurrent(Lcom/android/server/tv/TvInputManagerService$SessionState;Z)V

    .line 1022
    invoke-virtual {p0, v2}, Lcom/android/server/tv/TvInputManagerService;->notifyCurrentChannelInfosUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_3f} :catch_1c
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_5 .. :try_end_3f} :catch_1c
    .catchall {:try_start_5 .. :try_end_3f} :catchall_1a

    :cond_3f
    if-eqz v1, :cond_54

    .line 1028
    :goto_41
    invoke-static {v1, v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fputsession(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/media/tv/ITvInputSession;)V

    goto :goto_54

    :catchall_45
    move-exception p0

    move-object v1, v0

    goto :goto_66

    :catch_48
    move-exception p2

    move-object v1, v0

    .line 1025
    :goto_4a
    :try_start_4a
    const-string v2, "TvInputManagerService"

    const-string v3, "error in releaseSession"

    invoke-static {v2, v3, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_1a

    if-eqz v1, :cond_54

    goto :goto_41

    .line 1031
    :cond_54
    :goto_54
    iget-object p2, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    if-ne p2, v1, :cond_62

    const/4 p2, 0x2

    .line 1033
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenInputId:Ljava/lang/String;

    invoke-virtual {p0, p2, v2, v1}, Lcom/android/server/tv/TvInputManagerService;->logExternalInputEvent(ILjava/lang/String;Lcom/android/server/tv/TvInputManagerService$SessionState;)V

    .line 1035
    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenInputId:Ljava/lang/String;

    .line 1036
    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 1038
    :cond_62
    invoke-virtual {p0, p1, p3}, Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(Landroid/os/IBinder;I)V

    return-object v1

    :goto_66
    if-eqz v1, :cond_6b

    .line 1028
    invoke-static {v1, v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fputsession(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/media/tv/ITvInputSession;)V

    .line 1030
    :cond_6b
    throw p0
.end method

.method public final releaseSessionOfUserLocked(I)V
    .registers 11

    .line 680
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p1

    if-nez p1, :cond_8

    goto/16 :goto_7a

    .line 684
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 685
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetsessionStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 686
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v3

    if-eqz v3, :cond_19

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetisRecordingSession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 687
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 691
    :cond_35
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_3c
    if-ge v4, v1, :cond_7a

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 693
    :try_start_46
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v6

    invoke-interface {v6}, Landroid/media/tv/ITvInputSession;->release()V

    const/4 v6, 0x0

    .line 694
    invoke-static {v5, v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fputcurrentChannel(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/net/Uri;)V

    .line 695
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetisCurrent(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z

    move-result v6

    if-eqz v6, :cond_60

    .line 696
    invoke-static {v5, v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fputisCurrent(Lcom/android/server/tv/TvInputManagerService$SessionState;Z)V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_5a} :catch_5e
    .catchall {:try_start_46 .. :try_end_5a} :catchall_5c

    const/4 v3, 0x1

    goto :goto_60

    :catchall_5c
    move-exception v0

    goto :goto_74

    :catch_5e
    move-exception v6

    goto :goto_66

    :cond_60
    :goto_60
    if-eqz v3, :cond_70

    .line 703
    :goto_62
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->notifyCurrentChannelInfosUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;)V

    goto :goto_70

    .line 700
    :goto_66
    :try_start_66
    const-string v7, "TvInputManagerService"

    const-string v8, "error in release"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6d
    .catchall {:try_start_66 .. :try_end_6d} :catchall_5c

    if-eqz v3, :cond_70

    goto :goto_62

    .line 706
    :cond_70
    :goto_70
    invoke-virtual {p0, v5}, Lcom/android/server/tv/TvInputManagerService;->clearSessionAndNotifyClientLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)V

    goto :goto_3c

    :goto_74
    if-eqz v3, :cond_79

    .line 703
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->notifyCurrentChannelInfosUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;)V

    .line 705
    :cond_79
    throw v0

    :cond_7a
    :goto_7a
    return-void
.end method

.method public final removeHardwareInputLocked(Ljava/lang/String;I)V
    .registers 4

    .line 3765
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHardwareManager;->getInputMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 3768
    :cond_d
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHardwareManager;->getInputMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputInfo;

    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 3769
    invoke-virtual {p0, v0, p2}, Lcom/android/server/tv/TvInputManagerService;->getServiceStateLocked(Landroid/content/ComponentName;I)Lcom/android/server/tv/TvInputManagerService$ServiceState;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 3771
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgethardwareInputMap(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3772
    invoke-virtual {p0, p2, v0}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    .line 3774
    :cond_2e
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->removeHardwareInput(Ljava/lang/String;)V

    return-void
.end method

.method public final removeSessionStateLocked(Landroid/os/IBinder;I)V
    .registers 8

    .line 1044
    invoke-virtual {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 1045
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmainSessionToken(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;

    move-result-object v1

    if-ne p1, v1, :cond_e

    const/4 v1, 0x0

    .line 1049
    invoke-static {v0, v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fputmainSessionToken(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/os/IBinder;)V

    .line 1053
    :cond_e
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetsessionStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$SessionState;

    if-nez v1, :cond_23

    .line 1056
    const-string p0, "TvInputManagerService"

    const-string/jumbo p1, "sessionState null, no more remove session action!"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1062
    :cond_23
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetclientStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/tv/ITvInputClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputManagerService$ClientState;

    if-eqz v2, :cond_5f

    .line 1064
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ClientState;->-$$Nest$fgetsessionTokens(Lcom/android/server/tv/TvInputManagerService$ClientState;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1065
    invoke-virtual {v2}, Lcom/android/server/tv/TvInputManagerService$ClientState;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 1066
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetclientStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v4

    invoke-interface {v4}, Landroid/media/tv/ITvInputClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/tv/ITvInputClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1071
    :cond_5f
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mSessionIdToSessionStateMap:Ljava/util/Map;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsessionId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetcomponentName(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    if-eqz v0, :cond_7f

    .line 1075
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetsessionTokens(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1077
    :cond_7f
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetisHardware(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v2

    if-eqz v2, :cond_90

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetreconnecting(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v0

    if-eqz v0, :cond_8c

    goto :goto_90

    .line 1080
    :cond_8c
    invoke-virtual {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->updateHardwareServiceConnectionDelayed(I)V

    goto :goto_97

    .line 1078
    :cond_90
    :goto_90
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetcomponentName(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    .line 1084
    :goto_97
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p2

    .line 1085
    iput-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1086
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1087
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mMessageHandler:Lcom/android/server/tv/TvInputManagerService$MessageHandler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final removeUser(I)V
    .registers 10

    .line 760
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 761
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v1

    if-nez v1, :cond_e

    .line 763
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    goto/16 :goto_cb

    .line 767
    :cond_e
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetsessionStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_1c
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_5e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 768
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v7
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_b

    if-eqz v7, :cond_1c

    .line 770
    :try_start_2f
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v7

    invoke-interface {v7}, Landroid/media/tv/ITvInputSession;->release()V

    .line 771
    invoke-static {v5, v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fputcurrentChannel(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/net/Uri;)V

    .line 772
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetisCurrent(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 773
    invoke-static {v5, v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fputisCurrent(Lcom/android/server/tv/TvInputManagerService$SessionState;Z)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_42} :catch_46
    .catchall {:try_start_2f .. :try_end_42} :catchall_44

    const/4 v4, 0x1

    goto :goto_48

    :catchall_44
    move-exception p1

    goto :goto_58

    :catch_46
    move-exception v5

    goto :goto_4e

    :cond_48
    :goto_48
    if-eqz v4, :cond_1c

    .line 780
    :goto_4a
    :try_start_4a
    invoke-virtual {p0, v1}, Lcom/android/server/tv/TvInputManagerService;->notifyCurrentChannelInfosUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;)V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_b

    goto :goto_1c

    .line 777
    :goto_4e
    :try_start_4e
    const-string v6, "TvInputManagerService"

    const-string v7, "error in release"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_55
    .catchall {:try_start_4e .. :try_end_55} :catchall_44

    if-eqz v4, :cond_1c

    goto :goto_4a

    :goto_58
    if-eqz v4, :cond_5d

    .line 780
    :try_start_5a
    invoke-virtual {p0, v1}, Lcom/android/server/tv/TvInputManagerService;->notifyCurrentChannelInfosUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;)V

    .line 782
    :cond_5d
    throw p1

    .line 785
    :cond_5e
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetsessionStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 788
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_71
    :goto_71
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_87

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 789
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v5

    if-eqz v5, :cond_71

    .line 790
    invoke-virtual {p0, v4}, Lcom/android/server/tv/TvInputManagerService;->unbindService(Lcom/android/server/tv/TvInputManagerService$ServiceState;)V

    goto :goto_71

    .line 793
    :cond_87
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 796
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetinputMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 797
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetpackageSet(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 798
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetcontentRatingSystemList(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 799
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetclientStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 800
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->kill()V

    .line 801
    invoke-static {v1, v6}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fputmainSessionToken(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/os/IBinder;)V

    .line 803
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mRunningProfiles:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 804
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 806
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    if-ne p1, v1, :cond_c9

    .line 807
    invoke-virtual {p0, v3}, Lcom/android/server/tv/TvInputManagerService;->switchUser(I)V

    .line 809
    :cond_c9
    monitor-exit v0

    return-void

    :goto_cb
    monitor-exit v0
    :try_end_cc
    .catchall {:try_start_5a .. :try_end_cc} :catchall_b

    throw p0
.end method

.method public final resolveCallingUserId(IIILjava/lang/String;)I
    .registers 12

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move v0, p1

    move v1, p2

    move v2, p3

    move-object v5, p4

    .line 881
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    .registers 6

    .line 999
    :try_start_0
    invoke-interface {p1, p2, p3, p4, p5}, Landroid/media/tv/ITvInputClient;->onSessionCreated(Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 1001
    const-string p1, "TvInputManagerService"

    const-string p2, "error in onSessionCreated"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final setMainLocked(Landroid/os/IBinder;ZII)V
    .registers 5

    .line 1093
    :try_start_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object p1

    .line 1094
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgethardwareSessionToken(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object p3

    if-eqz p3, :cond_14

    .line 1095
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgethardwareSessionToken(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object p1

    const/16 p3, 0x3e8

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object p1

    .line 1098
    :cond_14
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetcomponentName(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/content/ComponentName;

    move-result-object p3

    invoke-virtual {p0, p3, p4}, Lcom/android/server/tv/TvInputManagerService;->getServiceStateLocked(Landroid/content/ComponentName;I)Lcom/android/server/tv/TvInputManagerService$ServiceState;

    move-result-object p3

    if-eqz p3, :cond_3c

    .line 1099
    invoke-static {p3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetisHardware(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result p3

    if-nez p3, :cond_25

    goto :goto_3c

    .line 1102
    :cond_25
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object p3

    .line 1103
    invoke-interface {p3, p2}, Landroid/media/tv/ITvInputSession;->setMain(Z)V

    .line 1104
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetisMainSession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z

    move-result p3

    if-eq p3, p2, :cond_3c

    .line 1105
    invoke-virtual {p0, p4}, Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p3

    .line 1106
    invoke-static {p1, p2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fputisMainSession(Lcom/android/server/tv/TvInputManagerService$SessionState;Z)V

    .line 1107
    invoke-virtual {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->notifyCurrentChannelInfosUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3c} :catch_3d
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_0 .. :try_end_3c} :catch_3d

    :cond_3c
    :goto_3c
    return-void

    :catch_3d
    move-exception p0

    .line 1110
    const-string p1, "TvInputManagerService"

    const-string p2, "error in setMain"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final setPictureProfileLocked(Ljava/lang/String;)V
    .registers 4

    .line 3752
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mMediaQualityManager:Landroid/media/quality/MediaQualityManager;

    if-nez v0, :cond_16

    .line 3753
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "media_quality"

    .line 3754
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/quality/MediaQualityManager;

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mMediaQualityManager:Landroid/media/quality/MediaQualityManager;

    if-nez v0, :cond_16

    return-void

    .line 3759
    :cond_16
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mMediaQualityManager:Landroid/media/quality/MediaQualityManager;

    invoke-virtual {v0, p1}, Landroid/media/quality/MediaQualityManager;->getPictureProfileForTvInput(Ljava/lang/String;)J

    move-result-wide v0

    .line 3760
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/tv/TvInputHardwareManager;->setPictureProfile(Ljava/lang/String;J)Z

    return-void
.end method

.method public final setStateLocked(Ljava/lang/String;II)V
    .registers 8

    .line 1277
    invoke-virtual {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p3

    .line 1278
    invoke-static {p3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetinputMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    if-nez v0, :cond_27

    .line 1280
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "failed to setStateLocked - unknown input id "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TvInputManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1283
    :cond_27
    invoke-static {p3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fgetinfo(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 1284
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fgetstate(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I

    move-result v2

    .line 1285
    invoke-static {v0, p2}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fputstate(Lcom/android/server/tv/TvInputManagerService$TvInputState;I)V

    if-eqz v1, :cond_49

    .line 1286
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetreconnecting(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v0

    if-eqz v0, :cond_49

    goto :goto_98

    :cond_49
    if-eq v2, p2, :cond_98

    .line 1291
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenInputId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eqz v0, :cond_5d

    .line 1292
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenInputId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-virtual {p0, v2, v0, v3}, Lcom/android/server/tv/TvInputManagerService;->logExternalInputEvent(ILjava/lang/String;Lcom/android/server/tv/TvInputManagerService$SessionState;)V

    goto :goto_95

    .line 1296
    :cond_5d
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenInputId:Ljava/lang/String;

    if-eqz v0, :cond_95

    .line 1297
    invoke-static {p3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetinputMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenInputId:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    if-eqz v0, :cond_74

    .line 1300
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fgetinfo(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v0

    goto :goto_75

    :cond_74
    move-object v0, v1

    :goto_75
    if-eqz v0, :cond_95

    .line 1302
    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo;->getHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v3

    if-eqz v3, :cond_95

    .line 1303
    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo;->getParentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_95

    .line 1304
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-virtual {p0, v2, p1, v3}, Lcom/android/server/tv/TvInputManagerService;->logExternalInputEvent(ILjava/lang/String;Lcom/android/server/tv/TvInputManagerService$SessionState;)V

    const/4 v2, 0x1

    if-ne p2, v2, :cond_95

    .line 1309
    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo;->getParentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenInputId:Ljava/lang/String;

    .line 1313
    :cond_95
    :goto_95
    invoke-virtual {p0, p3, p1, p2, v1}, Lcom/android/server/tv/TvInputManagerService;->notifyInputStateChangedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;ILandroid/media/tv/ITvInputManagerCallback;)V

    :cond_98
    :goto_98
    return-void
.end method

.method public final startProfileLocked(I)V
    .registers 4

    .line 641
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mRunningProfiles:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 642
    invoke-virtual {p0, p1, v0}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    .line 643
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->buildTvContentRatingSystemListLocked(I)V

    return-void
.end method

.method public final startUser(I)V
    .registers 5

    .line 606
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 607
    :try_start_3
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    if-eq p1, v1, :cond_33

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mRunningProfiles:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_33

    .line 611
    :cond_14
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 614
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 615
    iput p1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 617
    invoke-virtual {p0, v1}, Lcom/android/server/tv/TvInputManagerService;->releaseSessionOfUserLocked(I)V

    .line 618
    invoke-virtual {p0, v1}, Lcom/android/server/tv/TvInputManagerService;->cleanUpHdmiDevices(I)V

    .line 619
    invoke-virtual {p0, v1}, Lcom/android/server/tv/TvInputManagerService;->unbindServiceOfUserLocked(I)V

    .line 620
    iget p1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->startProfileLocked(I)V

    goto :goto_31

    :catchall_2f
    move-exception p0

    goto :goto_35

    .line 622
    :cond_31
    :goto_31
    monitor-exit v0

    return-void

    .line 609
    :cond_33
    :goto_33
    monitor-exit v0

    return-void

    .line 622
    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_2f

    throw p0
.end method

.method public final stopUser(I)V
    .registers 4

    .line 626
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 627
    :try_start_3
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    if-ne p1, v1, :cond_12

    .line 628
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->switchUser(I)V

    .line 629
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    goto :goto_26

    .line 632
    :cond_12
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->releaseSessionOfUserLocked(I)V

    .line 633
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->cleanUpHdmiDevices(I)V

    .line 634
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->unbindServiceOfUserLocked(I)V

    .line 635
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mRunningProfiles:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 636
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_10

    throw p0
.end method

.method public final switchUser(I)V
    .registers 5

    .line 647
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 648
    :try_start_3
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    if-ne v1, p1, :cond_b

    .line 649
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_62

    .line 651
    :cond_b
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 652
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 653
    const-string p0, "TvInputManagerService"

    const-string p1, "cannot switch to a profile!"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    monitor-exit v0

    return-void

    .line 661
    :cond_20
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mRunningProfiles:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 662
    invoke-virtual {p0, v2}, Lcom/android/server/tv/TvInputManagerService;->releaseSessionOfUserLocked(I)V

    .line 663
    invoke-virtual {p0, v2}, Lcom/android/server/tv/TvInputManagerService;->cleanUpHdmiDevices(I)V

    .line 664
    invoke-virtual {p0, v2}, Lcom/android/server/tv/TvInputManagerService;->unbindServiceOfUserLocked(I)V

    goto :goto_26

    .line 666
    :cond_40
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mRunningProfiles:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 668
    iput p1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    const/4 v1, 0x0

    .line 669
    invoke-virtual {p0, p1, v1}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    .line 670
    iget p1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->buildTvContentRatingSystemListLocked(I)V

    .line 671
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService;->mMessageHandler:Lcom/android/server/tv/TvInputManagerService$MessageHandler;

    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 673
    invoke-virtual {p0, v1}, Lcom/android/server/tv/TvInputManagerService;->getContentResolverForUser(I)Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x3

    .line 672
    invoke-virtual {p1, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 674
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 675
    monitor-exit v0

    return-void

    :goto_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_3 .. :try_end_63} :catchall_9

    throw p0
.end method

.method public final unbindService(Lcom/android/server/tv/TvInputManagerService$ServiceState;)V
    .registers 5

    if-eqz p1, :cond_37

    .line 3694
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetbound(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_37

    .line 3700
    :cond_9
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetcallback(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 3702
    :try_start_f
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetcallback(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/tv/ITvInputService;->unregisterCallback(Landroid/media/tv/ITvInputServiceCallback;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1b

    goto :goto_23

    :catch_1b
    move-exception v0

    .line 3704
    const-string v1, "TvInputManagerService"

    const-string v2, "error in unregisterCallback"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3707
    :cond_23
    :goto_23
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetconnection(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p0, 0x0

    .line 3708
    invoke-static {p1, p0}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fputbound(Lcom/android/server/tv/TvInputManagerService$ServiceState;Z)V

    const/4 p0, 0x0

    .line 3709
    invoke-static {p1, p0}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fputservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;Landroid/media/tv/ITvInputService;)V

    .line 3710
    invoke-static {p1, p0}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fputcallback(Lcom/android/server/tv/TvInputManagerService$ServiceState;Lcom/android/server/tv/TvInputManagerService$ServiceCallback;)V

    :cond_37
    :goto_37
    return-void
.end method

.method public final unbindServiceOfUserLocked(I)V
    .registers 5

    .line 715
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_4e

    .line 719
    :cond_7
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 720
    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 721
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 722
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    if-eqz v1, :cond_13

    .line 723
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetsessionTokens(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 724
    invoke-virtual {p0, v1}, Lcom/android/server/tv/TvInputManagerService;->unbindService(Lcom/android/server/tv/TvInputManagerService$ServiceState;)V

    .line 725
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetisHardware(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 726
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_13

    .line 728
    :cond_42
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgethardwareInputMap(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    const/4 v2, 0x1

    .line 729
    invoke-static {v1, v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fputneedInit(Lcom/android/server/tv/TvInputManagerService$ServiceState;Z)V

    goto :goto_13

    :cond_4e
    :goto_4e
    return-void
.end method

.method public final updateHardwareServiceConnectionDelayed(I)V
    .registers 4

    .line 3732
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mMessageHandler:Lcom/android/server/tv/TvInputManagerService$MessageHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3733
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 3734
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 3735
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService;->mMessageHandler:Lcom/android/server/tv/TvInputManagerService$MessageHandler;

    .line 3736
    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3737
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mMessageHandler:Lcom/android/server/tv/TvInputManagerService$MessageHandler;

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final updateHardwareTvInputServiceBindingLocked(I)V
    .registers 7

    .line 3715
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3716
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.tv.TvInputService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x84

    .line 3717
    invoke-virtual {v0, v1, v2, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 3719
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 3720
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 3721
    const-string v3, "android.permission.BIND_TV_INPUT"

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    goto :goto_17

    .line 3724
    :cond_30
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3725
    invoke-static {v0, v3}, Lcom/android/server/tv/TvInputManagerService;->hasAlwaysBoundPermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_17

    invoke-static {v0, v3}, Lcom/android/server/tv/TvInputManagerService;->hasHardwarePermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 3726
    invoke-virtual {p0, v3, p1}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    goto :goto_17

    :cond_49
    return-void
.end method

.method public final updateServiceConnectionLocked(Landroid/content/ComponentName;I)V
    .registers 9

    .line 887
    invoke-virtual {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 888
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    if-nez v1, :cond_12

    goto/16 :goto_7f

    .line 892
    :cond_12
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetreconnecting(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_27

    .line 893
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetsessionTokens(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_7f

    .line 897
    :cond_24
    invoke-static {v1, v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fputreconnecting(Lcom/android/server/tv/TvInputManagerService$ServiceState;Z)V

    .line 901
    :cond_27
    iget v2, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    const/4 v4, 0x1

    if-eq p2, v2, :cond_43

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mRunningProfiles:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    goto :goto_43

    .line 909
    :cond_39
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetsessionTokens(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v4

    goto :goto_5b

    .line 902
    :cond_43
    :goto_43
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetsessionTokens(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetisHardware(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetneedInit(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v2

    if-eqz v2, :cond_5a

    :cond_59
    move v3, v4

    :cond_5a
    move v2, v3

    :goto_5b
    if-eqz v2, :cond_67

    .line 913
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetbound(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v3

    if-nez v3, :cond_67

    .line 914
    invoke-virtual {p0, v1, p2}, Lcom/android/server/tv/TvInputManagerService;->bindService(Lcom/android/server/tv/TvInputManagerService$ServiceState;I)V

    return-void

    :cond_67
    if-nez v2, :cond_7f

    .line 915
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetbound(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result p2

    if-eqz p2, :cond_7f

    .line 916
    invoke-virtual {p0, v1}, Lcom/android/server/tv/TvInputManagerService;->unbindService(Lcom/android/server/tv/TvInputManagerService$ServiceState;)V

    .line 917
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetisHardware(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result p0

    if-nez p0, :cond_7f

    .line 918
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7f
    :goto_7f
    return-void
.end method

.method public final updateTvInputInfoLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/media/tv/TvInputInfo;)V
    .registers 7

    .line 1217
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 1218
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetinputMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 1219
    const-string v2, "TvInputManagerService"

    if-nez v1, :cond_27

    .line 1220
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "failed to set input info - unknown input id "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1223
    :cond_27
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/TvInputManagerService;->isCurrentCecTvInputInfoUpdate(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/media/tv/TvInputInfo;)Z

    move-result v0

    .line 1224
    invoke-static {v1, p2}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fputinfo(Lcom/android/server/tv/TvInputManagerService$TvInputState;Landroid/media/tv/TvInputInfo;)V

    .line 1225
    invoke-virtual {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->getInputUid(Landroid/media/tv/TvInputInfo;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fputuid(Lcom/android/server/tv/TvInputManagerService$TvInputState;I)V

    .line 1226
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    if-eqz v1, :cond_5b

    .line 1227
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetisHardware(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 1228
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgethardwareInputMap(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1229
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-virtual {v1, p2}, Lcom/android/server/tv/TvInputHardwareManager;->updateInputInfo(Landroid/media/tv/TvInputInfo;)V

    :cond_5b
    if-eqz v0, :cond_65

    .line 1233
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenInputId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    const/4 v3, 0x4

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->logExternalInputEvent(ILjava/lang/String;Lcom/android/server/tv/TvInputManagerService$SessionState;)V

    .line 1238
    :cond_65
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p0

    const/4 v0, 0x0

    :goto_6e
    if-ge v0, p0, :cond_87

    .line 1241
    :try_start_70
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/media/tv/ITvInputManagerCallback;

    invoke-interface {v1, p2}, Landroid/media/tv/ITvInputManagerCallback;->onTvInputInfoUpdated(Landroid/media/tv/TvInputInfo;)V
    :try_end_7d
    .catch Landroid/os/RemoteException; {:try_start_70 .. :try_end_7d} :catch_7e

    goto :goto_84

    :catch_7e
    move-exception v1

    .line 1243
    const-string v3, "failed to report updated input info to callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_84
    add-int/lit8 v0, v0, 0x1

    goto :goto_6e

    .line 1246
    :cond_87
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method
