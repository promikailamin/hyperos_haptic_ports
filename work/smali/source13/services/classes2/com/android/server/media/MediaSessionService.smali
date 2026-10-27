.class public Lcom/android/server/media/MediaSessionService;
.super Lcom/android/server/SystemService;
.source "MediaSessionService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaSessionService$MessageHandler;,
        Lcom/android/server/media/MediaSessionService$SessionManagerImpl;,
        Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;,
        Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;,
        Lcom/android/server/media/MediaSessionService$FullUserRecord;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field static final DEBUG_KEY_EVENT:Z = true

.field private static final LONG_PRESS_TIMEOUT:I

.field private static final MEDIA_BUTTON_RECEIVER:Ljava/lang/String; = "media_button_receiver"

.field private static final MEDIA_KEY_LISTENER_TIMEOUT:I = 0x3e8

.field private static final MULTI_TAP_TIMEOUT:I

.field private static final SESSION_CREATION_LIMIT_PER_UID:I = 0x64

.field private static final TAG:Ljava/lang/String; = "MediaSessionService"

.field private static final WAKELOCK_TIMEOUT:I = 0x1388


# instance fields
.field private mActivityManagerLocal:Lcom/android/server/am/ActivityManagerLocal;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

.field private mCommunicationManager:Landroid/media/MediaCommunicationManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

.field private mCustomMediaKeyDispatcher:Lcom/android/server/media/MediaKeyDispatcher;

.field private mCustomMediaSessionPolicyProvider:Lcom/android/server/media/MediaSessionPolicyProvider;

.field private final mFullUserIds:Landroid/util/SparseIntArray;

.field private mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

.field private final mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

.field private mHasFeatureLeanback:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mLock:Ljava/lang/Object;

.field private final mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mNotificationListenerEnabledChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mRecordThread:Landroid/os/HandlerThread;

.field final mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/media/IRemoteSessionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mSession2TokenCallback:Landroid/media/MediaCommunicationManager$SessionCallback;

.field private final mSession2TokensListenerRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionManagerImpl:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

.field private final mSessionsListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserRecords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/media/MediaSessionService$FullUserRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmAudioManager(Lcom/android/server/media/MediaSessionService;)Landroid/media/AudioManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAudioPlayerStateMonitor(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/AudioPlayerStateMonitor;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentFullUserRecord(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCustomMediaKeyDispatcher(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaKeyDispatcher;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mCustomMediaKeyDispatcher:Lcom/android/server/media/MediaKeyDispatcher;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCustomMediaSessionPolicyProvider(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionPolicyProvider;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mCustomMediaSessionPolicyProvider:Lcom/android/server/media/MediaSessionPolicyProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFullUserIds(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseIntArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGlobalPrioritySession(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionRecord;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHasFeatureLeanback(Lcom/android/server/media/MediaSessionService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/media/MediaSessionService;->mHasFeatureLeanback:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmKeyguardManager(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMediaEventWakeLock(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotificationManager(Lcom/android/server/media/MediaSessionService;)Landroid/app/NotificationManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecordThread(Lcom/android/server/media/MediaSessionService;)Landroid/os/HandlerThread;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mRecordThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSession2TokensListenerRecords(Lcom/android/server/media/MediaSessionService;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensListenerRecords:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSessionsListeners(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserRecords(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcreateSessionInternal(Lcom/android/server/media/MediaSessionService;IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/server/media/MediaSessionRecord;
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/media/MediaSessionService;->createSessionInternal(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdestroySessionLocked(Lcom/android/server/media/MediaSessionService;Lcom/android/server/media/MediaSessionRecordImpl;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->destroySessionLocked(Lcom/android/server/media/MediaSessionRecordImpl;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdispatchVolumeKeyLongPressLocked(Lcom/android/server/media/MediaSessionService;Landroid/view/KeyEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->dispatchVolumeKeyLongPressLocked(Landroid/view/KeyEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$menforceMediaPermissions(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;III)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaSessionService;->enforceMediaPermissions(Ljava/lang/String;III)V

    return-void
.end method

.method static bridge synthetic -$$Nest$menforcePackageName(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaSessionService;->enforcePackageName(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$menforceStatusBarServicePermission(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaSessionService;->enforceStatusBarServicePermission(Ljava/lang/String;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfindIndexOfSession2TokensListenerLocked(Lcom/android/server/media/MediaSessionService;Landroid/media/session/ISession2TokensListener;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->findIndexOfSession2TokensListenerLocked(Landroid/media/session/ISession2TokensListener;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mfindIndexOfSessionsListenerLocked(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->findIndexOfSessionsListenerLocked(Landroid/media/session/IActiveSessionsListener;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetActiveSessionsLocked(Lcom/android/server/media/MediaSessionService;I)Ljava/util/List;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->getActiveSessionsLocked(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetCallingPackageName(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->getCallingPackageName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetFullUserRecordLocked(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetMediaSessionRecordLocked(Lcom/android/server/media/MediaSessionService;Landroid/media/session/MediaSession$Token;)Lcom/android/server/media/MediaSessionRecord;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->getMediaSessionRecordLocked(Landroid/media/session/MediaSession$Token;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhasMediaControlPermission(Lcom/android/server/media/MediaSessionService;II)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaSessionService;->hasMediaControlPermission(II)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$minstantiateCustomDispatcher(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->instantiateCustomDispatcher(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minstantiateCustomProvider(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->instantiateCustomProvider(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misGlobalPriorityActiveLocked(Lcom/android/server/media/MediaSessionService;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->isGlobalPriorityActiveLocked()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mpushSession1Changed(Lcom/android/server/media/MediaSessionService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->pushSession1Changed(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateActiveSessionListeners(Lcom/android/server/media/MediaSessionService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->updateActiveSessionListeners()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLONG_PRESS_TIMEOUT()I
    .registers 1

    sget v0, Lcom/android/server/media/MediaSessionService;->LONG_PRESS_TIMEOUT:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetMULTI_TAP_TIMEOUT()I
    .registers 1

    sget v0, Lcom/android/server/media/MediaSessionService;->MULTI_TAP_TIMEOUT:I

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 112
    const-string v0, "MediaSessionService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    .line 119
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    add-int/lit8 v0, v0, 0x32

    sput v0, Lcom/android/server/media/MediaSessionService;->LONG_PRESS_TIMEOUT:I

    .line 121
    invoke-static {}, Landroid/view/ViewConfiguration;->getMultiPressTimeout()I

    move-result v0

    sput v0, Lcom/android/server/media/MediaSessionService;->MULTI_TAP_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 185
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 129
    new-instance v0, Lcom/android/server/media/MediaSessionService$MessageHandler;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaSessionService$MessageHandler;-><init>(Lcom/android/server/media/MediaSessionService;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    .line 132
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 133
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SessionRecordThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mRecordThread:Landroid/os/HandlerThread;

    .line 135
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    .line 137
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensListenerRecords:Ljava/util/List;

    .line 158
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;

    .line 166
    new-instance v0, Lcom/android/server/media/MediaSessionService$1;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaSessionService$1;-><init>(Lcom/android/server/media/MediaSessionService;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokenCallback:Landroid/media/MediaCommunicationManager$SessionCallback;

    .line 256
    new-instance v0, Lcom/android/server/media/MediaSessionService$2;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaSessionService$2;-><init>(Lcom/android/server/media/MediaSessionService;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mNotificationListenerEnabledChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 186
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 187
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;-><init>(Lcom/android/server/media/MediaSessionService;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionManagerImpl:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 188
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 189
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "handleMediaEvent"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 190
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 191
    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mAudioManager:Landroid/media/AudioManager;

    .line 192
    return-void
.end method

.method private createSessionInternal(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/server/media/MediaSessionRecord;
    .registers 28
    .param p1, "callerPid"    # I
    .param p2, "callerUid"    # I
    .param p3, "userId"    # I
    .param p4, "callerPackageName"    # Ljava/lang/String;
    .param p5, "cb"    # Landroid/media/session/ISessionCallback;
    .param p6, "tag"    # Ljava/lang/String;
    .param p7, "sessionInfo"    # Landroid/os/Bundle;

    .line 687
    move-object/from16 v12, p0

    move/from16 v13, p2

    move/from16 v14, p3

    move-object/from16 v15, p4

    iget-object v11, v12, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 688
    const/4 v0, 0x0

    .line 689
    .local v0, "policies":I
    :try_start_c
    iget-object v1, v12, Lcom/android/server/media/MediaSessionService;->mCustomMediaSessionPolicyProvider:Lcom/android/server/media/MediaSessionPolicyProvider;

    if-eqz v1, :cond_18

    .line 690
    invoke-virtual {v1, v13, v15}, Lcom/android/server/media/MediaSessionPolicyProvider;->getSessionPoliciesForApplication(ILjava/lang/String;)I

    move-result v1

    move v0, v1

    move/from16 v16, v0

    goto :goto_1a

    .line 689
    :cond_18
    move/from16 v16, v0

    .line 694
    .end local v0    # "policies":I
    .local v16, "policies":I
    :goto_1a
    invoke-direct {v12, v14}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    move-object/from16 v17, v0

    .line 695
    .local v17, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-eqz v17, :cond_d4

    .line 700
    invoke-static/range {v17 .. v17}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmUidToSessionCount(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/util/SparseIntArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v13, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    move v10, v0

    .line 701
    .local v10, "sessionCount":I
    const/16 v0, 0x64

    if-lt v10, v0, :cond_56

    .line 702
    invoke-direct/range {p0 .. p2}, Lcom/android/server/media/MediaSessionService;->hasMediaControlPermission(II)Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_56

    .line 703
    :cond_37
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created too many sessions. count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/media/MediaSessionService;
    .end local p1    # "callerPid":I
    .end local p2    # "callerUid":I
    .end local p3    # "userId":I
    .end local p4    # "callerPackageName":Ljava/lang/String;
    .end local p5    # "cb":Landroid/media/session/ISessionCallback;
    .end local p6    # "tag":Ljava/lang/String;
    .end local p7    # "sessionInfo":Landroid/os/Bundle;
    throw v0
    :try_end_56
    .catchall {:try_start_c .. :try_end_56} :catchall_102

    .line 709
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService;
    .restart local p1    # "callerPid":I
    .restart local p2    # "callerUid":I
    .restart local p3    # "userId":I
    .restart local p4    # "callerPackageName":Ljava/lang/String;
    .restart local p5    # "cb":Landroid/media/session/ISessionCallback;
    .restart local p6    # "tag":Ljava/lang/String;
    .restart local p7    # "sessionInfo":Landroid/os/Bundle;
    :cond_56
    :goto_56
    :try_start_56
    new-instance v0, Lcom/android/server/media/MediaSessionRecord;

    iget-object v1, v12, Lcom/android/server/media/MediaSessionService;->mRecordThread:Landroid/os/HandlerThread;

    .line 711
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v18
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_5e} :catch_c5
    .catchall {:try_start_56 .. :try_end_5e} :catchall_102

    move-object v1, v0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p0

    move/from16 v19, v10

    .end local v10    # "sessionCount":I
    .local v19, "sessionCount":I
    move-object/from16 v10, v18

    move-object/from16 v18, v11

    move/from16 v11, v16

    :try_start_77
    invoke-direct/range {v1 .. v11}, Lcom/android/server/media/MediaSessionRecord;-><init>(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/server/media/MediaSessionService;Landroid/os/Looper;I)V
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_77 .. :try_end_7a} :catch_c1
    .catchall {:try_start_77 .. :try_end_7a} :catchall_bd

    .line 714
    .local v0, "session":Lcom/android/server/media/MediaSessionRecord;
    nop

    .line 716
    :try_start_7b
    invoke-static/range {v17 .. v17}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmUidToSessionCount(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/util/SparseIntArray;

    move-result-object v1

    add-int/lit8 v10, v19, 0x1

    invoke-virtual {v1, v13, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 718
    invoke-static/range {v17 .. v17}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmPriorityStack(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/media/MediaSessionStack;->addSession(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 719
    iget-object v1, v12, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/media/MediaSessionService$MessageHandler;->postSessionsChanged(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 721
    sget-boolean v1, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v1, :cond_b9

    .line 722
    const-string v1, "MediaSessionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created session for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_ab
    .catchall {:try_start_7b .. :try_end_ab} :catchall_bd

    move-object/from16 v3, p6

    :try_start_ad
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bb

    .line 721
    :cond_b9
    move-object/from16 v3, p6

    .line 724
    :goto_bb
    monitor-exit v18

    return-object v0

    .line 725
    .end local v0    # "session":Lcom/android/server/media/MediaSessionRecord;
    .end local v16    # "policies":I
    .end local v17    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .end local v19    # "sessionCount":I
    :catchall_bd
    move-exception v0

    move-object/from16 v3, p6

    goto :goto_107

    .line 712
    .restart local v16    # "policies":I
    .restart local v17    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .restart local v19    # "sessionCount":I
    :catch_c1
    move-exception v0

    move-object/from16 v3, p6

    goto :goto_cc

    .end local v19    # "sessionCount":I
    .restart local v10    # "sessionCount":I
    :catch_c5
    move-exception v0

    move-object/from16 v3, p6

    move/from16 v19, v10

    move-object/from16 v18, v11

    .line 713
    .end local v10    # "sessionCount":I
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v19    # "sessionCount":I
    :goto_cc
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Media Session owner died prematurely."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/media/MediaSessionService;
    .end local p1    # "callerPid":I
    .end local p2    # "callerUid":I
    .end local p3    # "userId":I
    .end local p4    # "callerPackageName":Ljava/lang/String;
    .end local p5    # "cb":Landroid/media/session/ISessionCallback;
    .end local p6    # "tag":Ljava/lang/String;
    .end local p7    # "sessionInfo":Landroid/os/Bundle;
    throw v1

    .line 696
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v19    # "sessionCount":I
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService;
    .restart local p1    # "callerPid":I
    .restart local p2    # "callerUid":I
    .restart local p3    # "userId":I
    .restart local p4    # "callerPackageName":Ljava/lang/String;
    .restart local p5    # "cb":Landroid/media/session/ISessionCallback;
    .restart local p6    # "tag":Ljava/lang/String;
    .restart local p7    # "sessionInfo":Landroid/os/Bundle;
    :cond_d4
    move-object/from16 v3, p6

    move-object/from16 v18, v11

    const-string v0, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request from invalid user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Session request from invalid user."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/media/MediaSessionService;
    .end local p1    # "callerPid":I
    .end local p2    # "callerUid":I
    .end local p3    # "userId":I
    .end local p4    # "callerPackageName":Ljava/lang/String;
    .end local p5    # "cb":Landroid/media/session/ISessionCallback;
    .end local p6    # "tag":Ljava/lang/String;
    .end local p7    # "sessionInfo":Landroid/os/Bundle;
    throw v0

    .line 725
    .end local v16    # "policies":I
    .end local v17    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService;
    .restart local p1    # "callerPid":I
    .restart local p2    # "callerUid":I
    .restart local p3    # "userId":I
    .restart local p4    # "callerPackageName":Ljava/lang/String;
    .restart local p5    # "cb":Landroid/media/session/ISessionCallback;
    .restart local p6    # "tag":Ljava/lang/String;
    .restart local p7    # "sessionInfo":Landroid/os/Bundle;
    :catchall_102
    move-exception v0

    move-object/from16 v3, p6

    move-object/from16 v18, v11

    :goto_107
    monitor-exit v18
    :try_end_108
    .catchall {:try_start_ad .. :try_end_108} :catchall_109

    throw v0

    :catchall_109
    move-exception v0

    goto :goto_107
.end method

.method private destroySessionLocked(Lcom/android/server/media/MediaSessionRecordImpl;)V
    .registers 8
    .param p1, "session"    # Lcom/android/server/media/MediaSessionRecordImpl;

    .line 517
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    const-string v1, "MediaSessionService"

    if-eqz v0, :cond_1c

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destroying "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_1c
    invoke-interface {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 521
    const-string v0, "Destroying already destroyed session. Ignoring."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    return-void

    .line 525
    :cond_28
    invoke-interface {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    .line 527
    .local v0, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-eqz v0, :cond_65

    instance-of v2, p1, Lcom/android/server/media/MediaSessionRecord;

    if-eqz v2, :cond_65

    .line 528
    invoke-interface {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUid()I

    move-result v2

    .line 529
    .local v2, "uid":I
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmUidToSessionCount(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/util/SparseIntArray;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 530
    .local v3, "sessionCount":I
    if-gtz v3, :cond_5c

    .line 531
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "destroySessionLocked: sessionCount should be positive. sessionCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65

    .line 534
    :cond_5c
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmUidToSessionCount(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/util/SparseIntArray;

    move-result-object v1

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 538
    .end local v2    # "uid":I
    .end local v3    # "sessionCount":I
    :cond_65
    :goto_65
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    if-ne v1, p1, :cond_78

    .line 539
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    .line 540
    invoke-interface {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->isActive()Z

    move-result v1

    if-eqz v1, :cond_81

    if-eqz v0, :cond_81

    .line 541
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$mpushAddressedPlayerChangedLocked(Lcom/android/server/media/MediaSessionService$FullUserRecord;)V

    goto :goto_81

    .line 544
    :cond_78
    if-eqz v0, :cond_81

    .line 545
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmPriorityStack(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/media/MediaSessionStack;->removeSession(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 549
    :cond_81
    :goto_81
    invoke-interface {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->close()V

    .line 550
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    invoke-virtual {v1, p1}, Lcom/android/server/media/MediaSessionService$MessageHandler;->postSessionsChanged(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 551
    return-void
.end method

.method private dispatchVolumeKeyLongPressLocked(Landroid/view/KeyEvent;)V
    .registers 5
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 851
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnVolumeKeyLongPressListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v0

    if-nez v0, :cond_9

    .line 852
    return-void

    .line 856
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnVolumeKeyLongPressListenerUid(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/am/SmartPowerServiceStub;->onMediaKey(I)V

    .line 859
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnVolumeKeyLongPressListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/session/IOnVolumeKeyLongPressListener;->onVolumeKeyLongPress(Landroid/view/KeyEvent;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1f} :catch_20

    .line 862
    goto :goto_3f

    .line 860
    :catch_20
    move-exception v0

    .line 861
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to send "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to volume key long-press listener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaSessionService"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3f
    return-void
.end method

.method private enforceMediaPermissions(Ljava/lang/String;III)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "resolvedUserId"    # I

    .line 621
    invoke-direct {p0, p2, p3}, Lcom/android/server/media/MediaSessionService;->hasStatusBarServicePermission(II)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 622
    :cond_7
    invoke-direct {p0, p2, p3}, Lcom/android/server/media/MediaSessionService;->hasMediaControlPermission(II)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 624
    :cond_e
    if-eqz p1, :cond_1b

    .line 625
    invoke-static {p3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 624
    invoke-direct {p0, p1, v0, p4}, Lcom/android/server/media/MediaSessionService;->hasEnabledNotificationListener(Ljava/lang/String;Landroid/os/UserHandle;I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 628
    return-void

    .line 626
    :cond_1b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Missing permission to control media."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforcePackageName(Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 554
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 557
    if-eqz p2, :cond_4a

    const/16 v0, 0x7d0

    if-ne p2, v0, :cond_d

    goto :goto_4a

    .line 562
    :cond_d
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 563
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 564
    .local v0, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    const-wide/16 v1, 0x0

    .line 565
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 564
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    .line 566
    .local v1, "actualUid":I
    invoke-static {p2, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 570
    return-void

    .line 567
    :cond_26
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "packageName does not belong to the calling uid; pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 560
    .end local v0    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v1    # "actualUid":I
    :cond_4a
    :goto_4a
    return-void

    .line 555
    :cond_4b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "packageName may not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceStatusBarServicePermission(Ljava/lang/String;II)V
    .registers 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 636
    invoke-direct {p0, p2, p3}, Lcom/android/server/media/MediaSessionService;->hasStatusBarServicePermission(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 639
    return-void

    .line 637
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only System UI and Settings may "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findIndexOfSession2TokensListenerLocked(Landroid/media/session/ISession2TokensListener;)I
    .registers 5
    .param p1, "listener"    # Landroid/media/session/ISession2TokensListener;

    .line 738
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensListenerRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_22

    .line 739
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensListenerRecords:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;

    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;->listener:Landroid/media/session/ISession2TokensListener;

    invoke-interface {v1}, Landroid/media/session/ISession2TokensListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/media/session/ISession2TokensListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_1f

    .line 740
    return v0

    .line 738
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 743
    .end local v0    # "i":I
    :cond_22
    const/4 v0, -0x1

    return v0
.end method

.method private findIndexOfSessionsListenerLocked(Landroid/media/session/IActiveSessionsListener;)I
    .registers 5
    .param p1, "listener"    # Landroid/media/session/IActiveSessionsListener;

    .line 729
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_22

    .line 730
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;

    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->listener:Landroid/media/session/IActiveSessionsListener;

    invoke-interface {v1}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_1f

    .line 731
    return v0

    .line 729
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 734
    .end local v0    # "i":I
    :cond_22
    const/4 v0, -0x1

    return v0
.end method

.method private getActiveSessionsLocked(I)Ljava/util/List;
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation

    .line 317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 318
    .local v0, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/media/MediaSessionRecord;>;"
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-ne p1, v1, :cond_2d

    .line 319
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 320
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v1, :cond_2c

    .line 321
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmPriorityStack(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/media/MediaSessionStack;->getActiveSessions(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 320
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 323
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_2c
    goto :goto_57

    .line 324
    :cond_2d
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    .line 325
    .local v1, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-nez v1, :cond_4c

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSessions failed. Unknown user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaSessionService"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return-object v0

    .line 329
    :cond_4c
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmPriorityStack(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/media/MediaSessionStack;->getActiveSessions(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 333
    .end local v1    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :goto_57
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->isGlobalPriorityActiveLocked()Z

    move-result v1

    if-eqz v1, :cond_73

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 334
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-eq p1, v1, :cond_6d

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    .line 335
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v1

    if-ne p1, v1, :cond_73

    .line 336
    :cond_6d
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 338
    :cond_73
    return-object v0
.end method

.method private getCallingPackageName(I)Ljava/lang/String;
    .registers 4
    .param p1, "uid"    # I

    .line 843
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 844
    .local v0, "packages":[Ljava/lang/String;
    if-eqz v0, :cond_13

    array-length v1, v0

    if-lez v1, :cond_13

    .line 845
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 847
    :cond_13
    const-string v1, ""

    return-object v1
.end method

.method private getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .registers 4
    .param p1, "userId"    # I

    .line 866
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 867
    .local v0, "fullUserId":I
    if-gez v0, :cond_b

    .line 868
    const/4 v1, 0x0

    return-object v1

    .line 870
    :cond_b
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    return-object v1
.end method

.method private getMediaSessionRecordLocked(Landroid/media/session/MediaSession$Token;)Lcom/android/server/media/MediaSessionRecord;
    .registers 4
    .param p1, "sessionToken"    # Landroid/media/session/MediaSession$Token;

    .line 874
    nop

    .line 875
    invoke-virtual {p1}, Landroid/media/session/MediaSession$Token;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 874
    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    .line 876
    .local v0, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-eqz v0, :cond_1c

    .line 877
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmPriorityStack(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/media/MediaSessionStack;->getMediaSessionRecord(Landroid/media/session/MediaSession$Token;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v1

    return-object v1

    .line 879
    :cond_1c
    const/4 v1, 0x0

    return-object v1
.end method

.method private hasEnabledNotificationListener(Ljava/lang/String;Landroid/os/UserHandle;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "forUserId"    # I

    .line 667
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-eq v0, p3, :cond_8

    .line 669
    const/4 v0, 0x0

    return v0

    .line 671
    :cond_8
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v0, :cond_2a

    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Checking whether the package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has an enabled notification listener."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSessionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :cond_2a
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->hasEnabledNotificationListener(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method private hasMediaControlPermission(II)Z
    .registers 5
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 645
    const/16 v0, 0x3e8

    if-eq p2, v0, :cond_34

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_34

    .line 649
    :cond_f
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v0, :cond_32

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uid("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") hasn\'t granted MEDIA_CONTENT_CONTROL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSessionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_32
    const/4 v0, 0x0

    return v0

    .line 648
    :cond_34
    :goto_34
    const/4 v0, 0x1

    return v0
.end method

.method private hasStatusBarServicePermission(II)Z
    .registers 5
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 631
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private instantiateCustomDispatcher(Ljava/lang/String;)V
    .registers 9
    .param p1, "componentName"    # Ljava/lang/String;

    .line 883
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 884
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mCustomMediaKeyDispatcher:Lcom/android/server/media/MediaKeyDispatcher;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_3b

    .line 887
    if-eqz p1, :cond_38

    :try_start_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 888
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 889
    .local v2, "customDispatcherClass":Ljava/lang/Class;
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 890
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 891
    .local v4, "constructor":Ljava/lang/reflect/Constructor;
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    aput-object v5, v3, v6

    .line 892
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaKeyDispatcher;

    iput-object v3, p0, Lcom/android/server/media/MediaSessionService;->mCustomMediaKeyDispatcher:Lcom/android/server/media/MediaKeyDispatcher;
    :try_end_2c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_2c} :catch_2d
    .catch Ljava/lang/InstantiationException; {:try_start_8 .. :try_end_2c} :catch_2d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_2c} :catch_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_2c} :catch_2d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_2c} :catch_2d
    .catchall {:try_start_8 .. :try_end_2c} :catchall_3b

    goto :goto_38

    .line 894
    .end local v2    # "customDispatcherClass":Ljava/lang/Class;
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;
    :catch_2d
    move-exception v2

    .line 896
    .local v2, "e":Ljava/lang/ReflectiveOperationException;
    :try_start_2e
    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mCustomMediaKeyDispatcher:Lcom/android/server/media/MediaKeyDispatcher;

    .line 897
    const-string v1, "MediaSessionService"

    const-string v3, "Encountered problem while using reflection"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_39

    .line 898
    .end local v2    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_38
    :goto_38
    nop

    .line 899
    :goto_39
    monitor-exit v0

    .line 900
    return-void

    .line 899
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_2e .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method private instantiateCustomProvider(Ljava/lang/String;)V
    .registers 8
    .param p1, "componentName"    # Ljava/lang/String;

    .line 903
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 904
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mCustomMediaSessionPolicyProvider:Lcom/android/server/media/MediaSessionPolicyProvider;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_39

    .line 907
    if-eqz p1, :cond_36

    :try_start_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 908
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 909
    .local v1, "customProviderClass":Ljava/lang/Class;
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 910
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 911
    .local v3, "constructor":Ljava/lang/reflect/Constructor;
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    aput-object v4, v2, v5

    .line 912
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionPolicyProvider;

    iput-object v2, p0, Lcom/android/server/media/MediaSessionService;->mCustomMediaSessionPolicyProvider:Lcom/android/server/media/MediaSessionPolicyProvider;
    :try_end_2c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_2c} :catch_2d
    .catch Ljava/lang/InstantiationException; {:try_start_8 .. :try_end_2c} :catch_2d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_2c} :catch_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_2c} :catch_2d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_2c} :catch_2d
    .catchall {:try_start_8 .. :try_end_2c} :catchall_39

    goto :goto_36

    .line 914
    .end local v1    # "customProviderClass":Ljava/lang/Class;
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;
    :catch_2d
    move-exception v1

    .line 916
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    :try_start_2e
    const-string v2, "MediaSessionService"

    const-string v3, "Encountered problem while using reflection"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_37

    .line 917
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_36
    :goto_36
    nop

    .line 918
    :goto_37
    monitor-exit v0

    .line 919
    return-void

    .line 918
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_2e .. :try_end_3b} :catchall_39

    throw v1
.end method

.method private isGlobalPriorityActiveLocked()Z
    .registers 2

    .line 265
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private pushRemoteVolumeUpdateLocked(I)V
    .registers 11
    .param p1, "userId"    # I

    .line 797
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    .line 798
    .local v0, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-nez v0, :cond_20

    .line 799
    const-string v1, "MediaSessionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pushRemoteVolumeUpdateLocked failed. No user with id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    return-void

    .line 803
    :cond_20
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 804
    :try_start_23
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 805
    .local v2, "size":I
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmPriorityStack(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/media/MediaSessionStack;->getDefaultRemoteSession(I)Lcom/android/server/media/MediaSessionRecordImpl;

    move-result-object v3

    .line 806
    .local v3, "record":Lcom/android/server/media/MediaSessionRecordImpl;
    instance-of v4, v3, Lcom/android/server/media/MediaSession2Record;

    if-eqz v4, :cond_37

    .line 808
    monitor-exit v1

    return-void

    .line 810
    :cond_37
    if-nez v3, :cond_3b

    .line 811
    const/4 v4, 0x0

    goto :goto_42

    :cond_3b
    move-object v4, v3

    check-cast v4, Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v4}, Lcom/android/server/media/MediaSessionRecord;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v4
    :try_end_42
    .catchall {:try_start_23 .. :try_end_42} :catchall_64

    .line 813
    .local v4, "token":Landroid/media/session/MediaSession$Token;
    :goto_42
    add-int/lit8 v5, v2, -0x1

    .local v5, "i":I
    :goto_44
    if-ltz v5, :cond_5d

    .line 815
    :try_start_46
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService;->mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;

    .line 816
    invoke-virtual {v6, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/media/IRemoteSessionCallback;

    .line 817
    .local v6, "cb":Landroid/media/IRemoteSessionCallback;
    invoke-interface {v6, v4}, Landroid/media/IRemoteSessionCallback;->onSessionChanged(Landroid/media/session/MediaSession$Token;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_51} :catch_52
    .catchall {:try_start_46 .. :try_end_51} :catchall_64

    .line 820
    .end local v6    # "cb":Landroid/media/IRemoteSessionCallback;
    goto :goto_5a

    .line 818
    :catch_52
    move-exception v6

    .line 819
    .local v6, "e":Ljava/lang/Exception;
    :try_start_53
    const-string v7, "MediaSessionService"

    const-string v8, "Error sending default remote volume."

    invoke-static {v7, v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 813
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_5a
    add-int/lit8 v5, v5, -0x1

    goto :goto_44

    .line 822
    .end local v5    # "i":I
    :cond_5d
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService;->mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 823
    .end local v2    # "size":I
    .end local v3    # "record":Lcom/android/server/media/MediaSessionRecordImpl;
    .end local v4    # "token":Landroid/media/session/MediaSession$Token;
    monitor-exit v1

    .line 824
    return-void

    .line 823
    :catchall_64
    move-exception v2

    monitor-exit v1
    :try_end_66
    .catchall {:try_start_53 .. :try_end_66} :catchall_64

    throw v2
.end method

.method private pushSession1Changed(I)V
    .registers 12
    .param p1, "userId"    # I

    .line 747
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 748
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    .line 749
    .local v1, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-nez v1, :cond_24

    .line 750
    const-string v2, "MediaSessionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pushSession1ChangedOnHandler failed. No user with id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    monitor-exit v0

    return-void

    .line 753
    :cond_24
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->getActiveSessionsLocked(I)Ljava/util/List;

    move-result-object v2

    .line 754
    .local v2, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 755
    .local v3, "size":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 756
    .local v4, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/session/MediaSession$Token;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_32
    if-ge v5, v3, :cond_44

    .line 757
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v6}, Lcom/android/server/media/MediaSessionRecord;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    .line 759
    .end local v5    # "i":I
    :cond_44
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->pushRemoteVolumeUpdateLocked(I)V

    .line 760
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .restart local v5    # "i":I
    :goto_4f
    if-ltz v5, :cond_7d

    .line 761
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;

    .line 762
    .local v6, "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    iget v7, v6, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->userId:I

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    if-eq v7, v8, :cond_67

    iget v7, v6, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->userId:I
    :try_end_65
    .catchall {:try_start_3 .. :try_end_65} :catchall_7f

    if-ne v7, p1, :cond_7a

    .line 764
    :cond_67
    :try_start_67
    iget-object v7, v6, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->listener:Landroid/media/session/IActiveSessionsListener;

    invoke-interface {v7, v4}, Landroid/media/session/IActiveSessionsListener;->onActiveSessionsChanged(Ljava/util/List;)V
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_6c} :catch_6d
    .catchall {:try_start_67 .. :try_end_6c} :catchall_7f

    .line 769
    goto :goto_7a

    .line 765
    :catch_6d
    move-exception v7

    .line 766
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_6e
    const-string v8, "MediaSessionService"

    const-string v9, "Dead ActiveSessionsListener in pushSessionsChanged, removing"

    invoke-static {v8, v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 768
    iget-object v8, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 760
    .end local v6    # "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_7a
    :goto_7a
    add-int/lit8 v5, v5, -0x1

    goto :goto_4f

    .line 772
    .end local v1    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .end local v2    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/media/MediaSessionRecord;>;"
    .end local v3    # "size":I
    .end local v4    # "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/session/MediaSession$Token;>;"
    .end local v5    # "i":I
    :cond_7d
    monitor-exit v0

    .line 773
    return-void

    .line 772
    :catchall_7f
    move-exception v1

    monitor-exit v0
    :try_end_81
    .catchall {:try_start_6e .. :try_end_81} :catchall_7f

    throw v1
.end method

.method private updateActiveSessionListeners()V
    .registers 8

    .line 484
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 485
    :try_start_3
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_61

    .line 486
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_63

    .line 488
    .local v2, "listener":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_start_15
    iget-object v3, v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->componentName:Landroid/content/ComponentName;

    if-nez v3, :cond_1b

    const/4 v3, 0x0

    goto :goto_21

    .line 489
    :cond_1b
    iget-object v3, v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :goto_21
    nop

    .line 490
    .local v3, "packageName":Ljava/lang/String;
    iget v4, v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->pid:I

    iget v5, v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->uid:I

    iget v6, v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->userId:I

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/server/media/MediaSessionService;->enforceMediaPermissions(Ljava/lang/String;III)V
    :try_end_2b
    .catch Ljava/lang/SecurityException; {:try_start_15 .. :try_end_2b} :catch_2c
    .catchall {:try_start_15 .. :try_end_2b} :catchall_63

    .line 502
    .end local v3    # "packageName":Ljava/lang/String;
    goto :goto_5e

    .line 492
    :catch_2c
    move-exception v3

    .line 493
    .local v3, "e":Ljava/lang/SecurityException;
    :try_start_2d
    const-string v4, "MediaSessionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ActiveSessionsListener "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is no longer authorized. Disconnecting."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_52
    .catchall {:try_start_2d .. :try_end_52} :catchall_63

    .line 497
    :try_start_52
    iget-object v4, v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->listener:Landroid/media/session/IActiveSessionsListener;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 498
    invoke-interface {v4, v5}, Landroid/media/session/IActiveSessionsListener;->onActiveSessionsChanged(Ljava/util/List;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_5c} :catch_5d
    .catchall {:try_start_52 .. :try_end_5c} :catchall_63

    .line 501
    goto :goto_5e

    .line 499
    :catch_5d
    move-exception v4

    .line 485
    .end local v2    # "listener":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    .end local v3    # "e":Ljava/lang/SecurityException;
    :goto_5e
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 504
    .end local v1    # "i":I
    :cond_61
    :try_start_61
    monitor-exit v0

    .line 505
    return-void

    .line 504
    :catchall_63
    move-exception v1

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_61 .. :try_end_65} :catchall_63

    throw v1
.end method

.method private updateUser()V
    .registers 11

    .line 453
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 454
    :try_start_3
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 455
    .local v1, "manager":Landroid/os/UserManager;
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 456
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserHandles(Z)Ljava/util/List;

    move-result-object v2

    .line 457
    .local v2, "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    if-eqz v2, :cond_6a

    .line 458
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 459
    .local v4, "user":Landroid/os/UserHandle;
    invoke-virtual {v1, v4}, Landroid/os/UserManager;->getProfileParent(Landroid/os/UserHandle;)Landroid/os/UserHandle;

    move-result-object v5

    .line 460
    .local v5, "parent":Landroid/os/UserHandle;
    if-eqz v5, :cond_3e

    .line 461
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_69

    .line 463
    :cond_3e
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 464
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_69

    .line 465
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    new-instance v8, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 466
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    invoke-direct {v8, p0, v9}, Lcom/android/server/media/MediaSessionService$FullUserRecord;-><init>(Lcom/android/server/media/MediaSessionService;I)V

    .line 465
    invoke-virtual {v6, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 469
    .end local v4    # "user":Landroid/os/UserHandle;
    .end local v5    # "parent":Landroid/os/UserHandle;
    :cond_69
    :goto_69
    goto :goto_1e

    .line 472
    :cond_6a
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 473
    .local v3, "currentFullUserId":I
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    iput-object v4, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 474
    if-nez v4, :cond_9e

    .line 475
    const-string v4, "MediaSessionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot find FullUserInfo for the current user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    new-instance v4, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    invoke-direct {v4, p0, v3}, Lcom/android/server/media/MediaSessionService$FullUserRecord;-><init>(Lcom/android/server/media/MediaSessionService;I)V

    iput-object v4, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 477
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 479
    :cond_9e
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 480
    .end local v1    # "manager":Landroid/os/UserManager;
    .end local v2    # "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    .end local v3    # "currentFullUserId":I
    monitor-exit v0

    .line 481
    return-void

    .line 480
    :catchall_a5
    move-exception v1

    monitor-exit v0
    :try_end_a7
    .catchall {:try_start_3 .. :try_end_a7} :catchall_a5

    throw v1
.end method


# virtual methods
.method protected enforcePhoneStatePermission(II)V
    .registers 5
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 440
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_b

    .line 444
    return-void

    .line 442
    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must hold the MODIFY_PHONE_STATE permission."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getSession2TokensLocked(I)Ljava/util/List;
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/media/Session2Token;",
            ">;"
        }
    .end annotation

    .line 342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/media/Session2Token;>;"
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-ne p1, v1, :cond_2d

    .line 344
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 345
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v1, :cond_2c

    .line 346
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmPriorityStack(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/media/MediaSessionStack;->getSession2Tokens(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 345
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 348
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_2c
    goto :goto_3c

    .line 349
    :cond_2d
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    .line 350
    .local v1, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmPriorityStack(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/media/MediaSessionStack;->getSession2Tokens(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 352
    .end local v1    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :goto_3c
    return-object v0
.end method

.method synthetic lambda$onStart$0$com-android-server-media-MediaSessionService(Landroid/media/AudioPlaybackConfiguration;Z)V
    .registers 6
    .param p1, "config"    # Landroid/media/AudioPlaybackConfiguration;
    .param p2, "isRemoved"    # Z

    .line 205
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v0, :cond_26

    .line 206
    const-string v0, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio playback is changed, config="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", removed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_26
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2e

    .line 211
    return-void

    .line 213
    :cond_2e
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    nop

    .line 215
    :try_start_32
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 216
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 214
    invoke-direct {p0, v1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    .line 217
    .local v1, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-eqz v1, :cond_4b

    .line 218
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmPriorityStack(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSessionIfNeeded()V

    .line 220
    .end local v1    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :cond_4b
    monitor-exit v0

    .line 221
    return-void

    .line 220
    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_32 .. :try_end_4f} :catchall_4d

    throw v1
.end method

.method public monitor()V
    .registers 3

    .line 434
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 436
    :try_start_3
    monitor-exit v0

    .line 437
    return-void

    .line 436
    :catchall_5
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw v1
.end method

.method public notifyRemoteVolumeChanged(ILcom/android/server/media/MediaSessionRecord;)V
    .registers 10
    .param p1, "flags"    # I
    .param p2, "session"    # Lcom/android/server/media/MediaSessionRecord;

    .line 359
    invoke-virtual {p2}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    move-result v0

    if-nez v0, :cond_7

    .line 360
    return-void

    .line 362
    :cond_7
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 363
    :try_start_a
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 364
    .local v1, "size":I
    invoke-virtual {p2}, Lcom/android/server/media/MediaSessionRecord;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v2
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_36

    .line 365
    .local v2, "token":Landroid/media/session/MediaSession$Token;
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_16
    if-ltz v3, :cond_2f

    .line 367
    :try_start_18
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;

    .line 368
    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/media/IRemoteSessionCallback;

    .line 369
    .local v4, "cb":Landroid/media/IRemoteSessionCallback;
    invoke-interface {v4, v2, p1}, Landroid/media/IRemoteSessionCallback;->onVolumeChanged(Landroid/media/session/MediaSession$Token;I)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_23} :catch_24
    .catchall {:try_start_18 .. :try_end_23} :catchall_36

    .line 372
    .end local v4    # "cb":Landroid/media/IRemoteSessionCallback;
    goto :goto_2c

    .line 370
    :catch_24
    move-exception v4

    .line 371
    .local v4, "e":Ljava/lang/Exception;
    :try_start_25
    const-string v5, "MediaSessionService"

    const-string v6, "Error sending volume change."

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2c
    add-int/lit8 v3, v3, -0x1

    goto :goto_16

    .line 374
    .end local v3    # "i":I
    :cond_2f
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 375
    .end local v1    # "size":I
    .end local v2    # "token":Landroid/media/session/MediaSession$Token;
    monitor-exit v0

    .line 376
    return-void

    .line 375
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_25 .. :try_end_38} :catchall_36

    throw v1
.end method

.method public onBootPhase(I)V
    .registers 5
    .param p1, "phase"    # I

    .line 242
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    .line 243
    sparse-switch p1, :sswitch_data_26

    goto :goto_25

    .line 246
    :sswitch_7
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/media/MediaCommunicationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCommunicationManager;

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mCommunicationManager:Landroid/media/MediaCommunicationManager;

    .line 247
    new-instance v1, Lcom/android/server/media/HandlerExecutor;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    invoke-direct {v1, v2}, Lcom/android/server/media/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokenCallback:Landroid/media/MediaCommunicationManager$SessionCallback;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCommunicationManager;->registerSessionCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaCommunicationManager$SessionCallback;)V

    .line 249
    goto :goto_25

    .line 251
    :sswitch_20
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionDeviceConfig;->initialize(Landroid/content/Context;)V

    .line 254
    :goto_25
    return-void

    :sswitch_data_26
    .sparse-switch
        0x226 -> :sswitch_20
        0x3e8 -> :sswitch_7
    .end sparse-switch
.end method

.method public onMediaButtonReceiverChanged(Lcom/android/server/media/MediaSessionRecordImpl;)V
    .registers 5
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecordImpl;

    .line 832
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 833
    :try_start_3
    invoke-interface {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    .line 834
    .local v1, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmPriorityStack(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v2

    .line 835
    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionStack;->getMediaButtonSession()Lcom/android/server/media/MediaSessionRecordImpl;

    move-result-object v2

    .line 836
    .local v2, "mediaButtonSession":Lcom/android/server/media/MediaSessionRecordImpl;
    if-ne p1, v2, :cond_18

    .line 837
    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->rememberMediaButtonReceiverLocked(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 839
    .end local v1    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .end local v2    # "mediaButtonSession":Lcom/android/server/media/MediaSessionRecordImpl;
    :cond_18
    monitor-exit v0

    .line 840
    return-void

    .line 839
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method onSessionActiveStateChanged(Lcom/android/server/media/MediaSessionRecordImpl;)V
    .registers 7
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecordImpl;

    .line 269
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 270
    :try_start_3
    invoke-interface {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    .line 271
    .local v1, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-nez v1, :cond_16

    .line 272
    const-string v2, "MediaSessionService"

    const-string v3, "Unknown session updated. Ignoring."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    monitor-exit v0

    return-void

    .line 275
    :cond_16
    invoke-interface {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->isSystemPriority()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 277
    instance-of v2, p1, Lcom/android/server/media/MediaSessionRecord;

    if-eqz v2, :cond_2c

    invoke-interface {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->isActive()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 278
    move-object v2, p1

    check-cast v2, Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {p0, v2}, Lcom/android/server/media/MediaSessionService;->setGlobalPrioritySession(Lcom/android/server/media/MediaSessionRecord;)V

    .line 282
    :cond_2c
    const-string v2, "MediaSessionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Global priority session is updated, active="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->isActive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$mpushAddressedPlayerChangedLocked(Lcom/android/server/media/MediaSessionService$FullUserRecord;)V

    goto :goto_66

    .line 286
    :cond_4c
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmPriorityStack(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/media/MediaSessionStack;->contains(Lcom/android/server/media/MediaSessionRecordImpl;)Z

    move-result v2

    if-nez v2, :cond_5f

    .line 287
    const-string v2, "MediaSessionService"

    const-string v3, "Unknown session updated. Ignoring."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    monitor-exit v0

    return-void

    .line 290
    :cond_5f
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmPriorityStack(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/media/MediaSessionStack;->onSessionActiveStateChanged(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 293
    :goto_66
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    invoke-virtual {v2, p1}, Lcom/android/server/media/MediaSessionService$MessageHandler;->postSessionsChanged(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 294
    .end local v1    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    monitor-exit v0

    .line 295
    return-void

    .line 294
    :catchall_6d
    move-exception v1

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_3 .. :try_end_6f} :catchall_6d

    throw v1
.end method

.method onSessionDied(Lcom/android/server/media/MediaSessionRecordImpl;)V
    .registers 4
    .param p1, "session"    # Lcom/android/server/media/MediaSessionRecordImpl;

    .line 447
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 448
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->destroySessionLocked(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 449
    monitor-exit v0

    .line 450
    return-void

    .line 449
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method onSessionPlaybackStateChanged(Lcom/android/server/media/MediaSessionRecordImpl;Z)V
    .registers 7
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecordImpl;
    .param p2, "shouldUpdatePriority"    # Z

    .line 380
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 381
    :try_start_3
    invoke-interface {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    .line 382
    .local v1, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-eqz v1, :cond_21

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmPriorityStack(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/media/MediaSessionStack;->contains(Lcom/android/server/media/MediaSessionRecordImpl;)Z

    move-result v2

    if-nez v2, :cond_18

    goto :goto_21

    .line 386
    :cond_18
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmPriorityStack(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/media/MediaSessionStack;->onPlaybackStateChanged(Lcom/android/server/media/MediaSessionRecordImpl;Z)V

    .line 387
    .end local v1    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    monitor-exit v0

    .line 388
    return-void

    .line 383
    .restart local v1    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :cond_21
    :goto_21
    const-string v2, "MediaSessionService"

    const-string v3, "Unknown session changed playback state. Ignoring."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    monitor-exit v0

    return-void

    .line 387
    .end local v1    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method onSessionPlaybackTypeChanged(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 6
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;

    .line 391
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 392
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    .line 393
    .local v1, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-eqz v1, :cond_21

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmPriorityStack(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/media/MediaSessionStack;->contains(Lcom/android/server/media/MediaSessionRecordImpl;)Z

    move-result v2

    if-nez v2, :cond_18

    goto :goto_21

    .line 397
    :cond_18
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/media/MediaSessionService;->pushRemoteVolumeUpdateLocked(I)V

    .line 398
    .end local v1    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    monitor-exit v0

    .line 399
    return-void

    .line 394
    .restart local v1    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :cond_21
    :goto_21
    const-string v2, "MediaSessionService"

    const-string v3, "Unknown session changed playback type. Ignoring."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    monitor-exit v0

    return-void

    .line 398
    .end local v1    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public onStart()V
    .registers 4

    .line 196
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionManagerImpl:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    const-string/jumbo v1, "media_session"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/media/MediaSessionService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 197
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 199
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/ScoutStub;->addScoutMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 201
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 202
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/media/AudioPlayerStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/server/media/AudioPlayerStateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 203
    new-instance v1, Lcom/android/server/media/MediaSessionService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/media/MediaSessionService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/MediaSessionService;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/media/AudioPlayerStateMonitor;->registerListener(Lcom/android/server/media/AudioPlayerStateMonitor$OnAudioPlayerActiveStateChangedListener;Landroid/os/Handler;)V

    .line 222
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionService;->mHasFeatureLeanback:Z

    .line 225
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->updateUser()V

    .line 227
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionService;->instantiateCustomProvider(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionService;->instantiateCustomDispatcher(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mRecordThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 233
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.app.action.NOTIFICATION_LISTENER_ENABLED_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 235
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mNotificationListenerEnabledChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 237
    const-class v1, Lcom/android/server/am/ActivityManagerLocal;

    invoke-static {v1}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityManagerLocal;

    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mActivityManagerLocal:Lcom/android/server/am/ActivityManagerLocal;

    .line 238
    return-void
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 403
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStartUser: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSessionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_1d
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->updateUser()V

    .line 405
    return-void
.end method

.method public onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .registers 6
    .param p1, "targetUser"    # Lcom/android/server/SystemService$TargetUser;

    .line 415
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    .line 417
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v1, :cond_21

    const-string v1, "MediaSessionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCleanupUser: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_21
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 419
    :try_start_24
    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v2

    .line 420
    .local v2, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-eqz v2, :cond_42

    .line 421
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmFullUserId(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v3

    if-ne v3, v0, :cond_3f

    .line 422
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->destroySessionsForUserLocked(I)V

    .line 423
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_42

    .line 425
    :cond_3f
    invoke-virtual {v2, v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->destroySessionsForUserLocked(I)V

    .line 428
    :cond_42
    :goto_42
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->updateUser()V

    .line 429
    .end local v2    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    monitor-exit v1

    .line 430
    return-void

    .line 429
    :catchall_47
    move-exception v2

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_24 .. :try_end_49} :catchall_47

    throw v2
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 5
    .param p1, "from"    # Lcom/android/server/SystemService$TargetUser;
    .param p2, "to"    # Lcom/android/server/SystemService$TargetUser;

    .line 409
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSwitchUser: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSessionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_1d
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->updateUser()V

    .line 411
    return-void
.end method

.method pushSession2Changed(I)V
    .registers 10
    .param p1, "userId"    # I

    .line 776
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 777
    :try_start_3
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaSessionService;->getSession2TokensLocked(I)Ljava/util/List;

    move-result-object v1

    .line 778
    .local v1, "allSession2Tokens":Ljava/util/List;, "Ljava/util/List<Landroid/media/Session2Token;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService;->getSession2TokensLocked(I)Ljava/util/List;

    move-result-object v2

    .line 780
    .local v2, "session2Tokens":Ljava/util/List;, "Ljava/util/List<Landroid/media/Session2Token;>;"
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensListenerRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_19
    if-ltz v3, :cond_4d

    .line 781
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensListenerRecords:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_4f

    .line 783
    .local v4, "listenerRecord":Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;
    :try_start_23
    iget v5, v4, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;->userId:I

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    if-ne v5, v6, :cond_33

    .line 784
    iget-object v5, v4, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;->listener:Landroid/media/session/ISession2TokensListener;

    invoke-interface {v5, v1}, Landroid/media/session/ISession2TokensListener;->onSession2TokensChanged(Ljava/util/List;)V

    goto :goto_3c

    .line 785
    :cond_33
    iget v5, v4, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;->userId:I

    if-ne v5, p1, :cond_3c

    .line 786
    iget-object v5, v4, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;->listener:Landroid/media/session/ISession2TokensListener;

    invoke-interface {v5, v2}, Landroid/media/session/ISession2TokensListener;->onSession2TokensChanged(Ljava/util/List;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_3c} :catch_3d
    .catchall {:try_start_23 .. :try_end_3c} :catchall_4f

    .line 791
    :cond_3c
    :goto_3c
    goto :goto_4a

    .line 788
    :catch_3d
    move-exception v5

    .line 789
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_3e
    const-string v6, "MediaSessionService"

    const-string v7, "Failed to notify Session2Token change. Removing listener."

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 790
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensListenerRecords:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 780
    .end local v4    # "listenerRecord":Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_4a
    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    .line 793
    .end local v1    # "allSession2Tokens":Ljava/util/List;, "Ljava/util/List<Landroid/media/Session2Token;>;"
    .end local v2    # "session2Tokens":Ljava/util/List;, "Ljava/util/List<Landroid/media/Session2Token;>;"
    .end local v3    # "i":I
    :cond_4d
    monitor-exit v0

    .line 794
    return-void

    .line 793
    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_3e .. :try_end_51} :catchall_4f

    throw v1
.end method

.method setGlobalPrioritySession(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 7
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;

    .line 299
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 300
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    .line 301
    .local v1, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    if-eq v2, p1, :cond_48

    .line 302
    const-string v2, "MediaSessionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Global priority session is changed from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    .line 305
    if-eqz v1, :cond_48

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmPriorityStack(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/media/MediaSessionStack;->contains(Lcom/android/server/media/MediaSessionRecordImpl;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 310
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmPriorityStack(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/media/MediaSessionStack;->removeSession(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 313
    .end local v1    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :cond_48
    monitor-exit v0

    .line 314
    return-void

    .line 313
    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .registers 25
    .param p1, "targetUid"    # I
    .param p2, "targetPackage"    # Ljava/lang/String;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;
    .param p6, "reason"    # Ljava/lang/String;

    .line 574
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 576
    .local v6, "token":J
    :try_start_e
    invoke-direct {v1, v5, v4}, Lcom/android/server/media/MediaSessionService;->enforcePackageName(Ljava/lang/String;I)V

    .line 577
    if-eq v2, v4, :cond_9f

    .line 578
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService;->mActivityManagerLocal:Lcom/android/server/am/ActivityManagerLocal;

    .line 579
    invoke-interface {v0, v3, v4, v5}, Lcom/android/server/am/ActivityManagerLocal;->canAllowWhileInUsePermissionInFgs(IILjava/lang/String;)Z

    move-result v0

    .line 580
    .local v0, "canAllowWhileInUse":Z
    const/4 v8, 0x0

    if-nez v0, :cond_27

    iget-object v9, v1, Lcom/android/server/media/MediaSessionService;->mActivityManagerLocal:Lcom/android/server/am/ActivityManagerLocal;

    .line 581
    invoke-interface {v9, v3, v4, v5}, Lcom/android/server/am/ActivityManagerLocal;->canStartForegroundService(IILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_25

    goto :goto_27

    :cond_25
    move v9, v8

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v9, 0x1

    .line 583
    .local v9, "canStartFgs":Z
    :goto_28
    const-string v10, "MediaSessionService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "tempAllowlistTargetPkgIfPossible callingPackage:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " targetPackage:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v15, p2

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " reason:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v14, p6

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11
    :try_end_52
    .catchall {:try_start_e .. :try_end_52} :catchall_a4

    .line 586
    const-string v12, ""

    if-eqz v0, :cond_59

    :try_start_56
    const-string v13, " [WIU]"

    goto :goto_5a

    :cond_59
    move-object v13, v12

    :goto_5a
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 587
    if-eqz v9, :cond_62

    const-string v12, " [FGS]"

    :cond_62
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 583
    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    if-eqz v0, :cond_78

    .line 589
    iget-object v10, v1, Lcom/android/server/media/MediaSessionService;->mActivityManagerLocal:Lcom/android/server/am/ActivityManagerLocal;

    .line 591
    invoke-static {}, Lcom/android/server/media/MediaSessionDeviceConfig;->getMediaSessionCallbackFgsWhileInUseTempAllowDurationMs()J

    move-result-wide v11

    .line 589
    invoke-interface {v10, v2, v11, v12}, Lcom/android/server/am/ActivityManagerLocal;->tempAllowWhileInUsePermissionInFgs(IJ)V

    .line 593
    :cond_78
    if-eqz v9, :cond_9f

    .line 594
    iget-object v10, v1, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 595
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    invoke-static {v11}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v11

    .line 594
    invoke-virtual {v10, v11, v8}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v8

    .line 596
    .local v8, "userContext":Landroid/content/Context;
    const-class v10, Landroid/os/PowerExemptionManager;

    .line 597
    invoke-virtual {v8, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    check-cast v12, Landroid/os/PowerExemptionManager;

    .line 599
    .local v12, "powerExemptionManager":Landroid/os/PowerExemptionManager;
    const/16 v10, 0x13d

    .line 601
    invoke-static {}, Lcom/android/server/media/MediaSessionDeviceConfig;->getMediaSessionCallbackFgsAllowlistDurationMs()J

    move-result-wide v16

    .line 599
    move-object/from16 v13, p2

    move v14, v10

    move-object/from16 v15, p6

    invoke-virtual/range {v12 .. v17}, Landroid/os/PowerExemptionManager;->addToTemporaryAllowList(Ljava/lang/String;ILjava/lang/String;J)V
    :try_end_9f
    .catchall {:try_start_56 .. :try_end_9f} :catchall_a4

    .line 605
    .end local v0    # "canAllowWhileInUse":Z
    .end local v8    # "userContext":Landroid/content/Context;
    .end local v9    # "canStartFgs":Z
    .end local v12    # "powerExemptionManager":Landroid/os/PowerExemptionManager;
    :cond_9f
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 606
    nop

    .line 607
    return-void

    .line 605
    :catchall_a4
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 606
    throw v0
.end method
