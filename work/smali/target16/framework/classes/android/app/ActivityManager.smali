.class public Landroid/app/ActivityManager;
.super Ljava/lang/Object;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManager$AppTask;,
        Landroid/app/ActivityManager$TaskDescription;,
        Landroid/app/ActivityManager$MemoryInfo;,
        Landroid/app/ActivityManager$AppStartInfoCallbackWrapper;,
        Landroid/app/ActivityManager$RunningAppProcessInfo;,
        Landroid/app/ActivityManager$OnUidImportanceListener;,
        Landroid/app/ActivityManager$MyUidObserver;,
        Landroid/app/ActivityManager$PendingIntentInfo;,
        Landroid/app/ActivityManager$StopUserOnSwitch;,
        Landroid/app/ActivityManager$ProcessErrorStateInfo;,
        Landroid/app/ActivityManager$ConnectionInfo;,
        Landroid/app/ActivityManager$RunningServiceInfo;,
        Landroid/app/ActivityManager$MoveTaskFlags;,
        Landroid/app/ActivityManager$RunningTaskInfo;,
        Landroid/app/ActivityManager$RecentTaskInfo;,
        Landroid/app/ActivityManager$RestrictionSource;,
        Landroid/app/ActivityManager$RestrictionReason;,
        Landroid/app/ActivityManager$RestrictionLevel;,
        Landroid/app/ActivityManager$ForegroundServiceApiEvent;,
        Landroid/app/ActivityManager$ForegroundServiceApiType;,
        Landroid/app/ActivityManager$ProcessCapability;,
        Landroid/app/ActivityManager$ProcessState;,
        Landroid/app/ActivityManager$UidFrozenStateChangedCallback;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_REPORT_HEAP_LIMIT:Ljava/lang/String; = "android.app.action.REPORT_HEAP_LIMIT"

.field public static final greylist-max-o APP_START_MODE_DELAYED:I = 0x1

.field public static final greylist-max-o APP_START_MODE_DELAYED_RIGID:I = 0x2

.field public static final greylist-max-o APP_START_MODE_DISABLED:I = 0x3

.field public static final greylist-max-o APP_START_MODE_NORMAL:I = 0x0

.field public static final greylist-max-o ASSIST_CONTEXT_AUTOFILL:I = 0x2

.field public static final greylist-max-o ASSIST_CONTEXT_BASIC:I = 0x0

.field public static final blacklist ASSIST_CONTEXT_CONTENT:I = 0x3

.field public static final greylist-max-o ASSIST_CONTEXT_FULL:I = 0x1

.field public static final greylist-max-o BROADCAST_FAILED_USER_STOPPED:I = -0x2

.field public static final greylist-max-o BROADCAST_STICKY_CANT_HAVE_PERMISSION:I = -0x1

.field public static final greylist-max-o BROADCAST_SUCCESS:I = 0x0

.field public static final greylist-max-o COMPAT_MODE_ALWAYS:I = -0x1

.field public static final greylist-max-o COMPAT_MODE_DISABLED:I = 0x0

.field public static final greylist-max-o COMPAT_MODE_ENABLED:I = 0x1

.field public static final greylist-max-o COMPAT_MODE_NEVER:I = -0x2

.field public static final greylist-max-o COMPAT_MODE_TOGGLE:I = 0x2

.field public static final greylist-max-o COMPAT_MODE_UNKNOWN:I = -0x3

.field private static final greylist-max-o DEVELOPMENT_FORCE_LOW_RAM:Z

.field public static final blacklist DROP_CLOSE_SYSTEM_DIALOGS:J = 0xa6929b8L

.field private static final greylist-max-o FIRST_START_FATAL_ERROR_CODE:I = -0x64

.field private static final greylist-max-o FIRST_START_NON_FATAL_ERROR_CODE:I = 0x64

.field private static final greylist-max-o FIRST_START_SUCCESS_CODE:I = 0x0

.field public static final greylist-max-o FLAG_AND_LOCKED:I = 0x2

.field public static final greylist-max-o FLAG_AND_UNLOCKED:I = 0x4

.field public static final greylist-max-o FLAG_AND_UNLOCKING_OR_UNLOCKED:I = 0x8

.field public static final greylist-max-o FLAG_OR_STOPPED:I = 0x1

.field public static final blacklist FOREGROUND_SERVICE_API_EVENT_BEGIN:I = 0x1

.field public static final blacklist FOREGROUND_SERVICE_API_EVENT_END:I = 0x2

.field public static final whitelist FOREGROUND_SERVICE_API_TYPE_AUDIO:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FOREGROUND_SERVICE_API_TYPE_BLUETOOTH:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FOREGROUND_SERVICE_API_TYPE_CAMERA:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FOREGROUND_SERVICE_API_TYPE_CDM:I = 0x9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FOREGROUND_SERVICE_API_TYPE_LOCATION:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FOREGROUND_SERVICE_API_TYPE_MEDIA_PLAYBACK:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FOREGROUND_SERVICE_API_TYPE_MICROPHONE:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FOREGROUND_SERVICE_API_TYPE_PHONE_CALL:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FOREGROUND_SERVICE_API_TYPE_USB:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final greylist IActivityManagerSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/app/IActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist INSTR_FLAG_ALWAYS_CHECK_SIGNATURE:I = 0x10

.field public static final blacklist INSTR_FLAG_DISABLE_HIDDEN_API_CHECKS:I = 0x1

.field public static final blacklist INSTR_FLAG_DISABLE_ISOLATED_STORAGE:I = 0x2

.field public static final blacklist INSTR_FLAG_DISABLE_TEST_API_CHECKS:I = 0x4

.field public static final blacklist INSTR_FLAG_INSTRUMENT_SDK_IN_SANDBOX:I = 0x40

.field public static final blacklist INSTR_FLAG_INSTRUMENT_SDK_SANDBOX:I = 0x20

.field public static final blacklist INSTR_FLAG_NO_RESTART:I = 0x8

.field public static final greylist INTENT_SENDER_ACTIVITY:I = 0x2

.field public static final greylist-max-o INTENT_SENDER_ACTIVITY_RESULT:I = 0x3

.field public static final greylist-max-o INTENT_SENDER_BROADCAST:I = 0x1

.field public static final greylist-max-o INTENT_SENDER_FOREGROUND_SERVICE:I = 0x5

.field public static final greylist-max-o INTENT_SENDER_SERVICE:I = 0x4

.field public static final blacklist INTENT_SENDER_UNKNOWN:I = 0x0

.field private static final greylist-max-o LAST_START_FATAL_ERROR_CODE:I = -0x1

.field private static final greylist-max-o LAST_START_NON_FATAL_ERROR_CODE:I = 0xc7

.field private static final greylist-max-o LAST_START_SUCCESS_CODE:I = 0x63

.field public static final blacklist LOCK_DOWN_CLOSE_SYSTEM_DIALOGS:J = 0xa692aadL

.field public static final whitelist LOCK_TASK_MODE_LOCKED:I = 0x1

.field public static final whitelist LOCK_TASK_MODE_NONE:I = 0x0

.field public static final whitelist LOCK_TASK_MODE_PINNED:I = 0x2

.field public static final greylist-max-o MAX_PROCESS_STATE:I = 0x14

.field public static final whitelist META_HOME_ALTERNATE:Ljava/lang/String; = "android.app.home.alternate"

.field public static final greylist-max-o MIN_PROCESS_STATE:I = 0x0

.field public static final whitelist MOVE_TASK_NO_USER_ACTION:I = 0x2

.field public static final whitelist MOVE_TASK_WITH_HOME:I = 0x1

.field public static final blacklist PROCESS_CAPABILITY_ALL:I = 0x1ff

.field public static final blacklist PROCESS_CAPABILITY_ALL_IMPLICIT:I = 0x6

.field public static final blacklist PROCESS_CAPABILITY_BFSL:I = 0x10

.field public static final blacklist PROCESS_CAPABILITY_CPU_TIME:I = 0x80

.field public static final blacklist PROCESS_CAPABILITY_FOREGROUND_AUDIO_CONTROL:I = 0x40

.field public static final whitelist PROCESS_CAPABILITY_FOREGROUND_CAMERA:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROCESS_CAPABILITY_FOREGROUND_LOCATION:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROCESS_CAPABILITY_FOREGROUND_MICROPHONE:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist PROCESS_CAPABILITY_IMPLICIT_CPU_TIME:I = 0x100

.field public static final whitelist PROCESS_CAPABILITY_NONE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist PROCESS_CAPABILITY_POWER_RESTRICTED_NETWORK:I = 0x8

.field public static final blacklist PROCESS_CAPABILITY_USER_RESTRICTED_NETWORK:I = 0x20

.field public static final greylist-max-o PROCESS_STATE_BACKUP:I = 0x9

.field public static final greylist-max-r PROCESS_STATE_BOUND_FOREGROUND_SERVICE:I = 0x5

.field public static final blacklist PROCESS_STATE_BOUND_TOP:I = 0x3

.field public static final greylist-max-r PROCESS_STATE_CACHED_ACTIVITY:I = 0x10

.field public static final greylist-max-o PROCESS_STATE_CACHED_ACTIVITY_CLIENT:I = 0x11

.field public static final greylist-max-o PROCESS_STATE_CACHED_EMPTY:I = 0x13

.field public static final greylist-max-o PROCESS_STATE_CACHED_RECENT:I = 0x12

.field public static final greylist-max-r PROCESS_STATE_FOREGROUND_SERVICE:I = 0x4

.field public static final greylist-max-o PROCESS_STATE_HEAVY_WEIGHT:I = 0xd

.field public static final greylist-max-r PROCESS_STATE_HOME:I = 0xe

.field public static final greylist-max-r PROCESS_STATE_IMPORTANT_BACKGROUND:I = 0x7

.field public static final greylist-max-o PROCESS_STATE_IMPORTANT_FOREGROUND:I = 0x6

.field public static final greylist-max-o PROCESS_STATE_LAST_ACTIVITY:I = 0xf

.field public static final greylist-max-o PROCESS_STATE_NONEXISTENT:I = 0x14

.field public static final greylist-max-o PROCESS_STATE_PERSISTENT:I = 0x0

.field public static final greylist-max-o PROCESS_STATE_PERSISTENT_UI:I = 0x1

.field public static final greylist-max-r PROCESS_STATE_RECEIVER:I = 0xb

.field public static final greylist-max-r PROCESS_STATE_SERVICE:I = 0xa

.field public static final greylist PROCESS_STATE_TOP:I = 0x2

.field public static final greylist-max-o PROCESS_STATE_TOP_SLEEPING:I = 0xc

.field public static final greylist-max-o PROCESS_STATE_TRANSIENT_BACKGROUND:I = 0x8

.field public static final greylist-max-o PROCESS_STATE_UNKNOWN:I = -0x1

.field public static final whitelist RECENT_IGNORE_UNAVAILABLE:I = 0x2

.field public static final whitelist RECENT_WITH_EXCLUDED:I = 0x1

.field public static final blacklist RESTRICTION_LEVEL_ADAPTIVE_BUCKET:I = 0x1e

.field public static final blacklist RESTRICTION_LEVEL_BACKGROUND_RESTRICTED:I = 0x32

.field public static final blacklist RESTRICTION_LEVEL_CUSTOM:I = 0x5a

.field public static final blacklist RESTRICTION_LEVEL_EXEMPTED:I = 0x14

.field public static final blacklist RESTRICTION_LEVEL_FORCE_STOPPED:I = 0x3c

.field public static final blacklist RESTRICTION_LEVEL_MAX:I = 0x64

.field public static final blacklist RESTRICTION_LEVEL_RESTRICTED_BUCKET:I = 0x28

.field public static final blacklist RESTRICTION_LEVEL_UNKNOWN:I = 0x0

.field public static final blacklist RESTRICTION_LEVEL_UNRESTRICTED:I = 0xa

.field public static final blacklist RESTRICTION_LEVEL_USER_LAUNCH_ONLY:I = 0x46

.field public static final blacklist RESTRICTION_REASON_DEFAULT:I = 0x1

.field public static final blacklist RESTRICTION_REASON_DORMANT:I = 0x2

.field public static final blacklist RESTRICTION_REASON_OTHER:I = 0x7

.field public static final blacklist RESTRICTION_REASON_POLICY:I = 0x6

.field public static final blacklist RESTRICTION_REASON_SYSTEM_HEALTH:I = 0x5

.field public static final blacklist RESTRICTION_REASON_USAGE:I = 0x3

.field public static final blacklist RESTRICTION_REASON_USER:I = 0x4

.field public static final blacklist RESTRICTION_SOURCE_COMMAND_LINE:I = 0x4

.field public static final blacklist RESTRICTION_SOURCE_REMOTE_TRIGGER:I = 0x5

.field public static final blacklist RESTRICTION_SOURCE_SYSTEM:I = 0x3

.field public static final blacklist RESTRICTION_SOURCE_USER:I = 0x1

.field public static final blacklist RESTRICTION_SOURCE_USER_NUDGED:I = 0x2

.field public static final blacklist RESTRICTION_SUBREASON_MAX_LENGTH:I = 0x10

.field public static final greylist-max-o START_ABORTED:I = 0x66

.field public static final greylist-max-o START_ASSISTANT_HIDDEN_SESSION:I = -0x5a

.field public static final greylist-max-o START_ASSISTANT_NOT_ACTIVE_SESSION:I = -0x59

.field public static final greylist-max-o START_CANCELED:I = -0x60

.field public static final greylist-max-o START_CLASS_NOT_FOUND:I = -0x5c

.field public static final greylist-max-o START_DELIVERED_TO_TOP:I = 0x3

.field public static final greylist-max-o START_FLAG_DEBUG:I = 0x2

.field public static final blacklist START_FLAG_DEBUG_SUSPEND:I = 0x10

.field public static final greylist-max-o START_FLAG_NATIVE_DEBUGGING:I = 0x8

.field public static final greylist-max-o START_FLAG_ONLY_IF_NEEDED:I = 0x1

.field public static final greylist-max-o START_FLAG_TRACK_ALLOCATION:I = 0x4

.field public static final greylist-max-o START_FORWARD_AND_REQUEST_CONFLICT:I = -0x5d

.field public static final greylist-max-o START_INTENT_NOT_RESOLVED:I = -0x5b

.field public static final greylist-max-o START_NOT_ACTIVITY:I = -0x5f

.field public static final greylist-max-o START_NOT_CURRENT_USER_ACTIVITY:I = -0x62

.field public static final greylist-max-o START_NOT_VOICE_COMPATIBLE:I = -0x61

.field public static final greylist-max-o START_PERMISSION_DENIED:I = -0x5e

.field public static final greylist-max-o START_RETURN_INTENT_TO_CALLER:I = 0x1

.field public static final greylist-max-o START_RETURN_LOCK_TASK_MODE_VIOLATION:I = 0x65

.field public static final greylist-max-o START_SUCCESS:I = 0x0

.field public static final greylist-max-o START_SWITCHES_CANCELED:I = 0x64

.field public static final greylist-max-o START_TASK_TO_FRONT:I = 0x2

.field public static final greylist-max-o START_VOICE_HIDDEN_SESSION:I = -0x64

.field public static final greylist-max-o START_VOICE_NOT_ACTIVE_SESSION:I = -0x63

.field public static final blacklist STOP_USER_ON_SWITCH_DEFAULT:I = -0x1

.field public static final blacklist STOP_USER_ON_SWITCH_FALSE:I = 0x0

.field public static final blacklist STOP_USER_ON_SWITCH_TRUE:I = 0x1

.field private static greylist-max-o TAG:Ljava/lang/String; = null

.field public static final greylist-max-o UID_OBSERVER_ACTIVE:I = 0x8

.field public static final greylist-max-o UID_OBSERVER_CACHED:I = 0x10

.field public static final blacklist UID_OBSERVER_CAPABILITY:I = 0x20

.field public static final greylist-max-o UID_OBSERVER_GONE:I = 0x2

.field public static final greylist-max-o UID_OBSERVER_IDLE:I = 0x4

.field public static final greylist-max-o UID_OBSERVER_PROCSTATE:I = 0x1

.field public static final blacklist UID_OBSERVER_PROC_OOM_ADJ:I = 0x40

.field public static final greylist-max-o USER_OP_ERROR_IS_SYSTEM:I = -0x3

.field public static final greylist-max-o USER_OP_ERROR_RELATED_USERS_CANNOT_STOP:I = -0x4

.field public static final greylist-max-o USER_OP_IS_CURRENT:I = -0x2

.field public static final greylist-max-o USER_OP_SUCCESS:I = 0x0

.field public static final greylist-max-o USER_OP_UNKNOWN_USER:I = -0x1

.field private static final blacklist mErrorProcessesCache:Lcom/android/internal/util/RateLimitingCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RateLimitingCache<",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$ProcessErrorStateInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final blacklist mGetCurrentUserIdCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist mGetCurrentUserIdQuery:Landroid/os/IpcDataCache$QueryHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache$QueryHandler<",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist mMemoryInfoCache:Lcom/android/internal/util/RateLimitingCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RateLimitingCache<",
            "Landroid/app/ActivityManager$MemoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist mMyMemoryStateCache:Lcom/android/internal/util/RateLimitingCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RateLimitingCache<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist mRateLimitedMemInfo:Landroid/app/ActivityManager$MemoryInfo;

.field private static final blacklist mRateLimitedMemState:Landroid/app/ActivityManager$RunningAppProcessInfo;

.field private static final blacklist mRunningProcessesCache:Lcom/android/internal/util/RateLimitingCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RateLimitingCache<",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile blacklist sCurrentUser$ravenwood:I

.field private static volatile greylist-max-o sSystemReady:Z


# instance fields
.field private final blacklist mAppStartInfoCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityManager$AppStartInfoCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAppStartInfoCompleteListener:Landroid/app/IApplicationStartInfoCompleteListener;

.field greylist-max-o mAppTaskThumbnailSize:Landroid/graphics/Point;

.field private final greylist mContext:Landroid/content/Context;

.field private final blacklist mFrozenStateChangedCallback:Landroid/app/IUidFrozenStateChangedCallback;

.field private final blacklist mFrozenStateChangedCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/ActivityManager$UidFrozenStateChangedCallback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o mImportanceListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/ActivityManager$OnUidImportanceListener;",
            "Landroid/app/ActivityManager$MyUidObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$ZuQeTlxj3UIhJqa0jkPJ3FavvSc(Landroid/app/ActivityManager;)Landroid/app/ActivityManager$MemoryInfo;
    .registers 1

    invoke-direct {p0}, Landroid/app/ActivityManager;->lambda$getMemoryInfo$0()Landroid/app/ActivityManager$MemoryInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAppStartInfoCallbacks(Landroid/app/ActivityManager;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/app/ActivityManager;->mAppStartInfoCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFrozenStateChangedCallbacks(Landroid/app/ActivityManager;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/app/ActivityManager;->mFrozenStateChangedCallbacks:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAppStartInfoCompleteListener(Landroid/app/ActivityManager;Landroid/app/IApplicationStartInfoCompleteListener;)V
    .registers 2

    iput-object p1, p0, Landroid/app/ActivityManager;->mAppStartInfoCompleteListener:Landroid/app/IApplicationStartInfoCompleteListener;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetTaskService()Landroid/app/IActivityTaskManager;
    .registers 1

    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 8

    .line 160
    const-string v0, "ActivityManager"

    sput-object v0, Landroid/app/ActivityManager;->TAG:Ljava/lang/String;

    .line 165
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/ActivityManager;->sSystemReady:Z

    .line 238
    new-instance v1, Lcom/android/internal/util/RateLimitingCache;

    const/4 v2, 0x4

    const-wide/16 v3, 0xa

    invoke-direct {v1, v3, v4, v2}, Lcom/android/internal/util/RateLimitingCache;-><init>(JI)V

    sput-object v1, Landroid/app/ActivityManager;->mRunningProcessesCache:Lcom/android/internal/util/RateLimitingCache;

    .line 242
    new-instance v1, Lcom/android/internal/util/RateLimitingCache;

    const/4 v2, 0x2

    invoke-direct {v1, v3, v4, v2}, Lcom/android/internal/util/RateLimitingCache;-><init>(JI)V

    sput-object v1, Landroid/app/ActivityManager;->mErrorProcessesCache:Lcom/android/internal/util/RateLimitingCache;

    .line 247
    new-instance v1, Lcom/android/internal/util/RateLimitingCache;

    invoke-direct {v1, v3, v4}, Lcom/android/internal/util/RateLimitingCache;-><init>(J)V

    sput-object v1, Landroid/app/ActivityManager;->mMemoryInfoCache:Lcom/android/internal/util/RateLimitingCache;

    .line 251
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    sput-object v1, Landroid/app/ActivityManager;->mRateLimitedMemInfo:Landroid/app/ActivityManager$MemoryInfo;

    .line 255
    new-instance v1, Lcom/android/internal/util/RateLimitingCache;

    invoke-direct {v1, v3, v4, v2}, Lcom/android/internal/util/RateLimitingCache;-><init>(JI)V

    sput-object v1, Landroid/app/ActivityManager;->mMyMemoryStateCache:Lcom/android/internal/util/RateLimitingCache;

    .line 259
    new-instance v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    sput-object v1, Landroid/app/ActivityManager;->mRateLimitedMemState:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 265
    new-instance v1, Landroid/app/ActivityManager$1;

    invoke-direct {v1}, Landroid/app/ActivityManager$1;-><init>()V

    sput-object v1, Landroid/app/ActivityManager;->mGetCurrentUserIdQuery:Landroid/os/IpcDataCache$QueryHandler;

    .line 278
    new-instance v2, Landroid/os/IpcDataCache;

    const-string v6, "CurrentUserIdCache"

    sget-object v7, Landroid/app/ActivityManager;->mGetCurrentUserIdQuery:Landroid/os/IpcDataCache$QueryHandler;

    const/4 v3, 0x1

    const-string/jumbo v4, "system_server"

    const-string v5, "getCurrentUserId"

    invoke-direct/range {v2 .. v7}, Landroid/os/IpcDataCache;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IpcDataCache$QueryHandler;)V

    sput-object v2, Landroid/app/ActivityManager;->mGetCurrentUserIdCache:Landroid/os/IpcDataCache;

    .line 1324
    const/16 v1, -0x2710

    sput v1, Landroid/app/ActivityManager;->sCurrentUser$ravenwood:I

    .line 1397
    nop

    .line 1398
    const-string v1, "debug.force_low_ram"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/app/ActivityManager;->DEVELOPMENT_FORCE_LOW_RAM:Z

    .line 6015
    new-instance v0, Landroid/app/ActivityManager$4;

    invoke-direct {v0}, Landroid/app/ActivityManager$4;-><init>()V

    sput-object v0, Landroid/app/ActivityManager;->IActivityManagerSingleton:Landroid/util/Singleton;

    return-void
.end method

.method constructor greylist <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3

    .line 1320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Landroid/app/ActivityManager;->mImportanceListeners:Landroid/util/ArrayMap;

    .line 297
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Landroid/app/ActivityManager;->mFrozenStateChangedCallbacks:Landroid/util/ArrayMap;

    .line 300
    new-instance p2, Landroid/app/ActivityManager$2;

    invoke-direct {p2, p0}, Landroid/app/ActivityManager$2;-><init>(Landroid/app/ActivityManager;)V

    iput-object p2, p0, Landroid/app/ActivityManager;->mFrozenStateChangedCallback:Landroid/app/IUidFrozenStateChangedCallback;

    .line 4556
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroid/app/ActivityManager;->mAppStartInfoCallbacks:Ljava/util/ArrayList;

    .line 4558
    const/4 p2, 0x0

    iput-object p2, p0, Landroid/app/ActivityManager;->mAppStartInfoCompleteListener:Landroid/app/IApplicationStartInfoCompleteListener;

    .line 1321
    iput-object p1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    .line 1322
    return-void
.end method

.method private blacklist addOnUidImportanceListenerInternal(Landroid/app/ActivityManager$OnUidImportanceListener;I[I)V
    .registers 12

    .line 4965
    iget-object v1, p0, Landroid/app/ActivityManager;->mImportanceListeners:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 4966
    :try_start_3
    iget-object v0, p0, Landroid/app/ActivityManager;->mImportanceListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 4970
    new-instance v3, Landroid/app/ActivityManager$MyUidObserver;

    iget-object v0, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, p1, v0}, Landroid/app/ActivityManager$MyUidObserver;-><init>(Landroid/app/ActivityManager$OnUidImportanceListener;Landroid/content/Context;)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_4d

    .line 4972
    :try_start_12
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    .line 4974
    invoke-static {p2}, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceToProcState(I)I

    move-result v5

    iget-object p2, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    .line 4975
    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    .line 4972
    const/4 v4, 0x3

    move-object v7, p3

    invoke-interface/range {v2 .. v7}, Landroid/app/IActivityManager;->registerUidObserverForUids(Landroid/app/IUidObserver;IILjava/lang/String;[I)Landroid/os/IBinder;
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_25} :catch_2d
    .catchall {:try_start_12 .. :try_end_25} :catchall_4d

    .line 4978
    nop

    .line 4979
    :try_start_26
    iget-object p2, p0, Landroid/app/ActivityManager;->mImportanceListeners:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4980
    monitor-exit v1

    .line 4981
    return-void

    .line 4976
    :catch_2d
    move-exception v0

    move-object p1, v0

    .line 4977
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 4967
    :cond_34
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Listener already registered: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 4980
    :catchall_4d
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_50
    .catchall {:try_start_26 .. :try_end_50} :catchall_4d

    throw p1
.end method

.method public static greylist-max-o broadcastStickyIntent(Landroid/content/Intent;I)V
    .registers 4

    .line 5918
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;ILandroid/os/Bundle;I)V

    .line 5919
    return-void
.end method

.method public static greylist-max-o broadcastStickyIntent(Landroid/content/Intent;II)V
    .registers 4

    .line 5928
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;ILandroid/os/Bundle;I)V

    .line 5929
    return-void
.end method

.method public static blacklist broadcastStickyIntent(Landroid/content/Intent;ILandroid/os/Bundle;I)V
    .registers 5

    .line 5938
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)V

    .line 5939
    return-void
.end method

.method public static blacklist broadcastStickyIntent(Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)V
    .registers 22

    .line 5949
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move-object/from16 v13, p3

    move/from16 v16, p4

    invoke-interface/range {v0 .. v16}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 5954
    goto :goto_1e

    .line 5953
    :catch_1d
    move-exception v0

    .line 5955
    :goto_1e
    return-void
.end method

.method public static blacklist canAccessUnexportedComponents(I)Z
    .registers 2

    .line 5407
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    .line 5408
    if-eqz p0, :cond_d

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public static blacklist checkComponentPermission(Ljava/lang/String;IIIZ)I
    .registers 8

    .line 5423
    invoke-static {p1}, Landroid/app/ActivityManager;->canAccessUnexportedComponents(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 5424
    return v1

    .line 5427
    :cond_8
    invoke-static {p1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_10

    .line 5428
    return v2

    .line 5432
    :cond_10
    if-ltz p3, :cond_19

    invoke-static {p1, p3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p3

    if-eqz p3, :cond_19

    .line 5433
    return v1

    .line 5436
    :cond_19
    if-nez p4, :cond_1c

    .line 5442
    return v2

    .line 5444
    :cond_1c
    if-nez p0, :cond_1f

    .line 5445
    return v1

    .line 5448
    :cond_1f
    :try_start_1f
    invoke-static {}, Landroid/app/AppGlobals;->getPermissionManager()Landroid/permission/IPermissionManager;

    move-result-object p3

    invoke-interface {p3, p1, p0, p2}, Landroid/permission/IPermissionManager;->checkUidPermission(ILjava/lang/String;I)I

    move-result p0
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_27} :catch_28

    return p0

    .line 5449
    :catch_28
    move-exception p0

    .line 5450
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static greylist checkComponentPermission(Ljava/lang/String;IIZ)I
    .registers 5

    .line 5415
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result p0

    return p0
.end method

.method public static greylist-max-o checkUidPermission(Ljava/lang/String;I)I
    .registers 4

    .line 5457
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPermissionManager()Landroid/permission/IPermissionManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p0, v1}, Landroid/permission/IPermissionManager;->checkUidPermission(ILjava/lang/String;I)I

    move-result p0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return p0

    .line 5459
    :catch_a
    move-exception p0

    .line 5460
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private blacklist clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;Z)Z
    .registers 6

    .line 3754
    const/4 v0, 0x0

    if-eqz p3, :cond_12

    .line 3755
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p3

    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    .line 3756
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 3755
    invoke-interface {p3, p1, v0, p2, v1}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;ZLandroid/content/pm/IPackageDataObserver;I)Z

    move-result p1

    return p1

    .line 3758
    :cond_12
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p3

    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    .line 3759
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 3758
    invoke-interface {p3, p1, v0, p2, v1}, Landroid/app/IActivityManager;->clearApplicationUserDataWithoutPermissionReset(Ljava/lang/String;ZLandroid/content/pm/IPackageDataObserver;I)Z

    move-result p1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_20} :catch_21

    return p1

    .line 3761
    :catch_21
    move-exception p1

    .line 3762
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public static greylist-max-o dumpPackageStateStatic(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .registers 5

    .line 5872
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 5873
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v1, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 5874
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "package"

    invoke-static {v1, p0, v2, v0}, Landroid/app/ActivityManager;->dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 5875
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5876
    const-string v0, "-a"

    filled-new-array {v0, v2, p1}, [Ljava/lang/String;

    move-result-object v0

    const-string v2, "activity"

    invoke-static {v1, p0, v2, v0}, Landroid/app/ActivityManager;->dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 5878
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5879
    const-string v0, "--local"

    const-string v2, "--package"

    filled-new-array {v0, v2, p1}, [Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "meminfo"

    invoke-static {v1, p0, v2, v0}, Landroid/app/ActivityManager;->dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 5880
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5881
    const-string/jumbo v0, "procstats"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v0, v2}, Landroid/app/ActivityManager;->dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 5882
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5883
    const-string/jumbo v0, "usagestats"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v0, v2}, Landroid/app/ActivityManager;->dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 5884
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5885
    const-string v0, "batterystats"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p0, v0, p1}, Landroid/app/ActivityManager;->dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 5886
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 5887
    return-void
.end method

.method private static greylist-max-o dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7

    .line 6026
    const-string v0, "DUMP OF SERVICE "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6027
    invoke-static {p2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    .line 6028
    if-nez p2, :cond_1c

    .line 6029
    const-string p1, "  (Service not found)"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6030
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 6031
    return-void

    .line 6033
    :cond_1c
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 6034
    instance-of v0, p2, Landroid/os/Binder;

    const-string v1, "Failure dumping service:"

    if-eqz v0, :cond_34

    .line 6038
    :try_start_25
    invoke-interface {p2, p1, p3}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    .line 6043
    :goto_28
    goto :goto_63

    .line 6039
    :catchall_29
    move-exception p1

    .line 6040
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6041
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 6042
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    goto :goto_28

    .line 6046
    :cond_34
    nop

    .line 6048
    const/4 v0, 0x0

    :try_start_36
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 6049
    new-instance v2, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v2}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_3e
    .catchall {:try_start_36 .. :try_end_3e} :catchall_57

    .line 6050
    :try_start_3e
    const-string v0, "  "

    invoke-virtual {v2, v0}, Lcom/android/internal/os/TransferPipe;->setBufferPrefix(Ljava/lang/String;)V

    .line 6051
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-interface {p2, v0, p3}, Landroid/os/IBinder;->dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 6052
    const-wide/16 p2, 0x2710

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_53
    .catchall {:try_start_3e .. :try_end_53} :catchall_54

    .line 6059
    goto :goto_63

    .line 6053
    :catchall_54
    move-exception p1

    move-object v0, v2

    goto :goto_58

    :catchall_57
    move-exception p1

    .line 6054
    :goto_58
    if-eqz v0, :cond_5d

    .line 6055
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 6057
    :cond_5d
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6058
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 6061
    :goto_63
    return-void
.end method

.method private greylist-max-o ensureAppTaskThumbnailSizeLocked()V
    .registers 2

    .line 3034
    iget-object v0, p0, Landroid/app/ActivityManager;->mAppTaskThumbnailSize:Landroid/graphics/Point;

    if-nez v0, :cond_15

    .line 3036
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getAppTaskThumbnailSize()Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityManager;->mAppTaskThumbnailSize:Landroid/graphics/Point;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    .line 3039
    goto :goto_15

    .line 3037
    :catch_f
    move-exception v0

    .line 3038
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 3041
    :cond_15
    :goto_15
    return-void
.end method

.method public static blacklist getCapabilitiesSummary(I)Ljava/lang/String;
    .registers 2

    .line 1106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1107
    invoke-static {v0, p0}, Landroid/app/ActivityManager;->printCapabilitiesSummary(Ljava/lang/StringBuilder;I)V

    .line 1108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist getCurrentUser()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5513
    sget-object v0, Landroid/app/ActivityManager;->mGetCurrentUserIdCache:Landroid/os/IpcDataCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static blacklist getCurrentUser$ravenwood()I
    .registers 1

    .line 5518
    sget v0, Landroid/app/ActivityManager;->sCurrentUser$ravenwood:I

    return v0
.end method

.method static greylist-max-o getLauncherLargeIconSizeInner(Landroid/content/Context;)I
    .registers 4

    .line 5275
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 5276
    const/high16 v0, 0x1050000

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 5277
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 5279
    const/16 v2, 0x258

    if-ge v1, v2, :cond_15

    .line 5281
    return v0

    .line 5284
    :cond_15
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 5286
    sparse-switch p0, :sswitch_data_48

    .line 5302
    int-to-float p0, v0

    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0

    .line 5298
    :sswitch_27
    mul-int/lit16 v0, v0, 0x140

    mul-int/lit8 v0, v0, 0x2

    div-int/lit16 v0, v0, 0x1e0

    return v0

    .line 5296
    :sswitch_2e
    mul-int/lit16 v0, v0, 0x1e0

    div-int/lit16 v0, v0, 0x140

    return v0

    .line 5294
    :sswitch_33
    mul-int/lit16 v0, v0, 0x140

    div-int/lit16 v0, v0, 0xf0

    return v0

    .line 5292
    :sswitch_38
    mul-int/lit16 v0, v0, 0x140

    div-int/lit16 v0, v0, 0xf0

    return v0

    .line 5290
    :sswitch_3d
    mul-int/lit16 v0, v0, 0xf0

    div-int/lit16 v0, v0, 0xa0

    return v0

    .line 5288
    :sswitch_42
    mul-int/lit16 v0, v0, 0xa0

    div-int/lit8 v0, v0, 0x78

    return v0

    nop

    :sswitch_data_48
    .sparse-switch
        0x78 -> :sswitch_42
        0xa0 -> :sswitch_3d
        0xd5 -> :sswitch_38
        0xf0 -> :sswitch_33
        0x140 -> :sswitch_2e
        0x1e0 -> :sswitch_27
    .end sparse-switch
.end method

.method public static greylist getMaxRecentTasksStatic()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1864
    invoke-static {}, Landroid/app/ActivityTaskManager;->getMaxRecentTasksStatic()I

    move-result v0

    return v0
.end method

.method private blacklist getMemoryInfoInternal(Landroid/app/ActivityManager$MemoryInfo;)V
    .registers 3

    .line 3730
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 3733
    nop

    .line 3734
    return-void

    .line 3731
    :catch_9
    move-exception p1

    .line 3732
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public static whitelist getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V
    .registers 4

    .line 5018
    sget-object v0, Landroid/app/ActivityManager;->mMyMemoryStateCache:Lcom/android/internal/util/RateLimitingCache;

    monitor-enter v0

    .line 5019
    :try_start_3
    sget-object v1, Landroid/app/ActivityManager;->mMyMemoryStateCache:Lcom/android/internal/util/RateLimitingCache;

    new-instance v2, Landroid/app/ActivityManager$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/app/ActivityManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/internal/util/RateLimitingCache;->get(Lcom/android/internal/util/RateLimitingCache$ValueFetcher;)Ljava/lang/Object;

    .line 5023
    sget-object v1, Landroid/app/ActivityManager;->mRateLimitedMemState:Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-virtual {v1, p0}, Landroid/app/ActivityManager$RunningAppProcessInfo;->copyTo(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 5024
    monitor-exit v0

    .line 5025
    return-void

    .line 5024
    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method private static blacklist getMyMemoryStateInternal(Landroid/app/ActivityManager$RunningAppProcessInfo;)V
    .registers 2

    .line 5029
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 5032
    nop

    .line 5033
    return-void

    .line 5030
    :catch_9
    move-exception p0

    .line 5031
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static greylist getService()Landroid/app/IActivityManager;
    .registers 1

    .line 6007
    sget-object v0, Landroid/app/ActivityManager;->IActivityManagerSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    return-object v0
.end method

.method private static blacklist getTaskService()Landroid/app/IActivityTaskManager;
    .registers 1

    .line 6011
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I
    .registers 16

    .line 5491
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p2, :cond_7

    .line 5492
    return p2

    .line 5495
    :cond_7
    :try_start_7
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-interface/range {v1 .. v8}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_16} :catch_17

    return p0

    .line 5497
    :catch_17
    move-exception v0

    move-object p0, v0

    .line 5498
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static blacklist init$ravenwood(I)V
    .registers 1

    .line 1329
    sput p0, Landroid/app/ActivityManager;->sCurrentUser$ravenwood:I

    .line 1330
    return-void
.end method

.method public static blacklist invalidateGetCurrentUserIdCache()V
    .registers 2

    .line 289
    const-string/jumbo v0, "system_server"

    const-string v1, "getCurrentUserId"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public static blacklist isForegroundService(I)Z
    .registers 2

    .line 1240
    const/4 v0, 0x4

    if-ne p0, v0, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method public static blacklist isHighEndGfx()Z
    .registers 2

    .line 1839
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_19

    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CONFIG_AVOID_GFX_ACCEL:Z

    if-nez v0, :cond_19

    .line 1841
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 1842
    const v1, 0x1110040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    .line 1839
    :goto_1a
    return v0
.end method

.method public static whitelist isLowMemoryKillReportSupported()Z
    .registers 2

    .line 4772
    const-string/jumbo v0, "persist.sys.lmk.reportkills"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static greylist isLowRamDeviceStatic()Z
    .registers 1

    .line 1815
    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CONFIG_LOW_RAM:Z

    if-nez v0, :cond_f

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_d

    sget-boolean v0, Landroid/app/ActivityManager;->DEVELOPMENT_FORCE_LOW_RAM:Z

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public static final greylist-max-o isProcStateBackground(I)Z
    .registers 2

    .line 1228
    const/16 v0, 0x8

    if-lt p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static final blacklist isProcStateCached(I)Z
    .registers 2

    .line 1234
    const/16 v0, 0x10

    if-lt p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static blacklist isProcStateConsideredInteraction(I)Z
    .registers 2

    .line 6247
    const/4 v0, 0x2

    if-le p0, v0, :cond_9

    const/4 v0, 0x3

    if-ne p0, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 p0, 0x1

    :goto_a
    return p0
.end method

.method public static final blacklist isProcStateJankPerceptible(I)Z
    .registers 3

    .line 1245
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->jankPerceptibleNarrow()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->jankPerceptibleNarrowHoldback()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1246
    if-eq p0, v1, :cond_1b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1b

    const/16 v0, 0xc

    if-ne p0, v0, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :cond_1b
    :goto_1b
    return v1

    .line 1251
    :cond_1c
    invoke-static {p0}, Landroid/app/ActivityManager;->isProcStateCached(I)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public static whitelist isRunningInTestHarness()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5333
    const-string/jumbo v0, "ro.test_harness"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static whitelist isRunningInUserTestHarness()Z
    .registers 2

    .line 5349
    const-string/jumbo v0, "persist.sys.test_harness"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o isSmallBatteryDevice()Z
    .registers 1

    .line 1828
    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CONFIG_SMALL_BATTERY:Z

    return v0
.end method

.method public static final greylist-max-o isStartResultFatalError(I)Z
    .registers 2

    .line 1353
    const/16 v0, -0x64

    if-gt v0, p0, :cond_9

    const/4 v0, -0x1

    if-gt p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static final greylist-max-o isStartResultSuccessful(I)Z
    .registers 2

    .line 1344
    if-ltz p0, :cond_8

    const/16 v0, 0x63

    if-gt p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static greylist-max-o isSystemReady()Z
    .registers 1

    .line 5894
    sget-boolean v0, Landroid/app/ActivityManager;->sSystemReady:Z

    if-nez v0, :cond_1c

    .line 5895
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 5896
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 5897
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    sput-boolean v0, Landroid/app/ActivityManager;->sSystemReady:Z

    goto :goto_1c

    .line 5901
    :cond_19
    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/ActivityManager;->sSystemReady:Z

    .line 5904
    :cond_1c
    :goto_1c
    sget-boolean v0, Landroid/app/ActivityManager;->sSystemReady:Z

    return v0
.end method

.method public static blacklist isSystemReady$ravenwood()Z
    .registers 1

    .line 5910
    const/4 v0, 0x1

    return v0
.end method

.method public static whitelist isUserAMonkey()Z
    .registers 1

    .line 5313
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->isUserAMonkey()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 5314
    :catch_9
    move-exception v0

    .line 5315
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static blacklist isUserAMonkey$ravenwood()Z
    .registers 1

    .line 5322
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic blacklist lambda$addHomeVisibilityListener$4(Landroid/app/HomeVisibilityListener;)V
    .registers 2

    .line 6580
    iget-boolean v0, p0, Landroid/app/HomeVisibilityListener;->mIsHomeActivityVisible:Z

    invoke-virtual {p0, v0}, Landroid/app/HomeVisibilityListener;->onHomeVisibilityChanged(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$getMemoryInfo$0()Landroid/app/ActivityManager$MemoryInfo;
    .registers 2

    .line 3721
    sget-object v0, Landroid/app/ActivityManager;->mRateLimitedMemInfo:Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfoInternal(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 3722
    sget-object v0, Landroid/app/ActivityManager;->mRateLimitedMemInfo:Landroid/app/ActivityManager$MemoryInfo;

    return-object v0
.end method

.method static synthetic blacklist lambda$getMyMemoryState$3()Landroid/app/ActivityManager$RunningAppProcessInfo;
    .registers 1

    .line 5020
    sget-object v0, Landroid/app/ActivityManager;->mRateLimitedMemState:Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-static {v0}, Landroid/app/ActivityManager;->getMyMemoryStateInternal(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 5021
    sget-object v0, Landroid/app/ActivityManager;->mRateLimitedMemState:Landroid/app/ActivityManager$RunningAppProcessInfo;

    return-object v0
.end method

.method static synthetic blacklist lambda$getProcessesInErrorState$1()Ljava/util/List;
    .registers 1

    .line 3938
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 3939
    :catch_9
    move-exception v0

    .line 3940
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method static synthetic blacklist lambda$getRunningAppProcesses$2()Ljava/util/List;
    .registers 1

    .line 4485
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 4486
    :catch_9
    move-exception v0

    .line 4487
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static greylist-max-o noteAlarmFinish(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;)V
    .registers 5

    .line 5996
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    invoke-interface {v0, p0, p1, p2, p3}, Landroid/app/IActivityManager;->noteAlarmFinish(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 5999
    goto :goto_11

    .line 5998
    :catch_10
    move-exception p0

    .line 6000
    :goto_11
    return-void
.end method

.method public static greylist-max-o noteAlarmStart(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;)V
    .registers 5

    .line 5983
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    invoke-interface {v0, p0, p1, p2, p3}, Landroid/app/IActivityManager;->noteAlarmStart(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 5986
    goto :goto_11

    .line 5985
    :catch_10
    move-exception p0

    .line 5987
    :goto_11
    return-void
.end method

.method public static greylist-max-o noteWakeupAlarm(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 5971
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->noteWakeupAlarm(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    .line 5974
    goto :goto_16

    .line 5973
    :catch_15
    move-exception v0

    .line 5975
    :goto_16
    return-void
.end method

.method public static blacklist printCapabilitiesFull(Ljava/io/PrintWriter;I)V
    .registers 3

    .line 1095
    invoke-static {p0, p1}, Landroid/app/ActivityManager;->printCapabilitiesSummary(Ljava/io/PrintWriter;I)V

    .line 1096
    and-int/lit16 p1, p1, -0x200

    .line 1097
    if-eqz p1, :cond_13

    .line 1098
    const-string v0, "+0x"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1099
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1101
    :cond_13
    return-void
.end method

.method public static blacklist printCapabilitiesSummary(Ljava/io/PrintWriter;I)V
    .registers 4

    .line 1064
    and-int/lit8 v0, p1, 0x1

    const/16 v1, 0x2d

    if-eqz v0, :cond_9

    const/16 v0, 0x4c

    goto :goto_a

    :cond_9
    move v0, v1

    :goto_a
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1065
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_14

    const/16 v0, 0x43

    goto :goto_15

    :cond_14
    move v0, v1

    :goto_15
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1066
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1f

    const/16 v0, 0x4d

    goto :goto_20

    :cond_1f
    move v0, v1

    :goto_20
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1067
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_2a

    const/16 v0, 0x4e

    goto :goto_2b

    :cond_2a
    move v0, v1

    :goto_2b
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1068
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_35

    const/16 v0, 0x46

    goto :goto_36

    :cond_35
    move v0, v1

    :goto_36
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1069
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_40

    const/16 v0, 0x55

    goto :goto_41

    :cond_40
    move v0, v1

    :goto_41
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1070
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_4b

    const/16 v0, 0x41

    goto :goto_4c

    :cond_4b
    move v0, v1

    :goto_4c
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1071
    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_56

    const/16 v0, 0x54

    goto :goto_57

    :cond_56
    move v0, v1

    :goto_57
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1072
    and-int/lit16 p1, p1, 0x100

    if-eqz p1, :cond_60

    const/16 v1, 0x49

    :cond_60
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1073
    return-void
.end method

.method public static blacklist printCapabilitiesSummary(Ljava/lang/StringBuilder;I)V
    .registers 4

    .line 1078
    and-int/lit8 v0, p1, 0x1

    const/16 v1, 0x2d

    if-eqz v0, :cond_9

    const/16 v0, 0x4c

    goto :goto_a

    :cond_9
    move v0, v1

    :goto_a
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1079
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_14

    const/16 v0, 0x43

    goto :goto_15

    :cond_14
    move v0, v1

    :goto_15
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1080
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1f

    const/16 v0, 0x4d

    goto :goto_20

    :cond_1f
    move v0, v1

    :goto_20
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1081
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_2a

    const/16 v0, 0x4e

    goto :goto_2b

    :cond_2a
    move v0, v1

    :goto_2b
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1082
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_35

    const/16 v0, 0x46

    goto :goto_36

    :cond_35
    move v0, v1

    :goto_36
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1083
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_40

    const/16 v0, 0x55

    goto :goto_41

    :cond_40
    move v0, v1

    :goto_41
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1084
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_4b

    const/16 v0, 0x41

    goto :goto_4c

    :cond_4b
    move v0, v1

    :goto_4c
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1085
    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_56

    const/16 v0, 0x54

    goto :goto_57

    :cond_56
    move v0, v1

    :goto_57
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1086
    and-int/lit16 p1, p1, 0x100

    if-eqz p1, :cond_60

    const/16 v1, 0x49

    :cond_60
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1087
    return-void
.end method

.method public static blacklist procStateToString(I)Ljava/lang/String;
    .registers 1

    .line 6254
    packed-switch p0, :pswitch_data_5a

    .line 6319
    const-string p0, "??"

    goto :goto_59

    .line 6316
    :pswitch_6
    nop

    .line 6317
    const-string p0, "NONE"

    goto :goto_59

    .line 6313
    :pswitch_a
    nop

    .line 6314
    const-string p0, "CEM "

    goto :goto_59

    .line 6310
    :pswitch_e
    nop

    .line 6311
    const-string p0, "CRE "

    goto :goto_59

    .line 6307
    :pswitch_12
    nop

    .line 6308
    const-string p0, "CACC"

    goto :goto_59

    .line 6304
    :pswitch_16
    nop

    .line 6305
    const-string p0, "CAC "

    goto :goto_59

    .line 6301
    :pswitch_1a
    nop

    .line 6302
    const-string p0, "LAST"

    goto :goto_59

    .line 6298
    :pswitch_1e
    nop

    .line 6299
    const-string p0, "HOME"

    goto :goto_59

    .line 6295
    :pswitch_22
    nop

    .line 6296
    const-string p0, "HVY "

    goto :goto_59

    .line 6292
    :pswitch_26
    nop

    .line 6293
    const-string p0, "TPSL"

    goto :goto_59

    .line 6289
    :pswitch_2a
    nop

    .line 6290
    const-string p0, "RCVR"

    goto :goto_59

    .line 6286
    :pswitch_2e
    nop

    .line 6287
    const-string p0, "SVC "

    goto :goto_59

    .line 6283
    :pswitch_32
    nop

    .line 6284
    const-string p0, "BKUP"

    goto :goto_59

    .line 6280
    :pswitch_36
    nop

    .line 6281
    const-string p0, "TRNB"

    goto :goto_59

    .line 6277
    :pswitch_3a
    nop

    .line 6278
    const-string p0, "IMPB"

    goto :goto_59

    .line 6274
    :pswitch_3e
    nop

    .line 6275
    const-string p0, "IMPF"

    goto :goto_59

    .line 6271
    :pswitch_42
    nop

    .line 6272
    const-string p0, "BFGS"

    goto :goto_59

    .line 6268
    :pswitch_46
    nop

    .line 6269
    const-string p0, "FGS "

    goto :goto_59

    .line 6265
    :pswitch_4a
    nop

    .line 6266
    const-string p0, "BTOP"

    goto :goto_59

    .line 6262
    :pswitch_4e
    nop

    .line 6263
    const-string p0, "TOP "

    goto :goto_59

    .line 6259
    :pswitch_52
    nop

    .line 6260
    const-string p0, "PERU"

    goto :goto_59

    .line 6256
    :pswitch_56
    nop

    .line 6257
    const-string p0, "PER "

    .line 6322
    :goto_59
    return-object p0

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_56
        :pswitch_52
        :pswitch_4e
        :pswitch_4a
        :pswitch_46
        :pswitch_42
        :pswitch_3e
        :pswitch_3a
        :pswitch_36
        :pswitch_32
        :pswitch_2e
        :pswitch_2a
        :pswitch_26
        :pswitch_22
        :pswitch_1e
        :pswitch_1a
        :pswitch_16
        :pswitch_12
        :pswitch_e
        :pswitch_a
        :pswitch_6
    .end packed-switch
.end method

.method public static final blacklist processCapabilityAmToProto(I)I
    .registers 1

    .line 1126
    sparse-switch p0, :sswitch_data_1a

    .line 1148
    const/4 p0, 0x0

    return p0

    .line 1144
    :sswitch_5
    const/16 p0, 0x9

    return p0

    .line 1142
    :sswitch_8
    const/16 p0, 0x8

    return p0

    .line 1140
    :sswitch_b
    const/4 p0, 0x7

    return p0

    .line 1138
    :sswitch_d
    const/4 p0, 0x6

    return p0

    .line 1136
    :sswitch_f
    const/4 p0, 0x5

    return p0

    .line 1134
    :sswitch_11
    const/4 p0, 0x4

    return p0

    .line 1132
    :sswitch_13
    const/4 p0, 0x3

    return p0

    .line 1130
    :sswitch_15
    const/4 p0, 0x2

    return p0

    .line 1128
    :sswitch_17
    const/4 p0, 0x1

    return p0

    nop

    :sswitch_data_1a
    .sparse-switch
        0x1 -> :sswitch_17
        0x2 -> :sswitch_15
        0x4 -> :sswitch_13
        0x8 -> :sswitch_11
        0x10 -> :sswitch_f
        0x20 -> :sswitch_d
        0x40 -> :sswitch_b
        0x80 -> :sswitch_8
        0x100 -> :sswitch_5
    .end sparse-switch
.end method

.method public static final greylist-max-o processStateAmToProto(I)I
    .registers 1

    .line 1167
    packed-switch p0, :pswitch_data_48

    .line 1215
    const/16 p0, 0x3e6

    return p0

    .line 1211
    :pswitch_6
    const/16 p0, 0x3fb

    return p0

    .line 1209
    :pswitch_9
    const/16 p0, 0x3fa

    return p0

    .line 1207
    :pswitch_c
    const/16 p0, 0x3f9

    return p0

    .line 1205
    :pswitch_f
    const/16 p0, 0x3f8

    return p0

    .line 1203
    :pswitch_12
    const/16 p0, 0x3f7

    return p0

    .line 1201
    :pswitch_15
    const/16 p0, 0x3f6

    return p0

    .line 1199
    :pswitch_18
    const/16 p0, 0x3f5

    return p0

    .line 1197
    :pswitch_1b
    const/16 p0, 0x3f4

    return p0

    .line 1195
    :pswitch_1e
    const/16 p0, 0x3f3

    return p0

    .line 1193
    :pswitch_21
    const/16 p0, 0x3f2

    return p0

    .line 1191
    :pswitch_24
    const/16 p0, 0x3f1

    return p0

    .line 1189
    :pswitch_27
    const/16 p0, 0x3f0

    return p0

    .line 1187
    :pswitch_2a
    const/16 p0, 0x3ef

    return p0

    .line 1185
    :pswitch_2d
    const/16 p0, 0x3ee

    return p0

    .line 1183
    :pswitch_30
    const/16 p0, 0x3ed

    return p0

    .line 1181
    :pswitch_33
    const/16 p0, 0x3ec

    return p0

    .line 1179
    :pswitch_36
    const/16 p0, 0x3eb

    return p0

    .line 1177
    :pswitch_39
    const/16 p0, 0x3fc

    return p0

    .line 1175
    :pswitch_3c
    const/16 p0, 0x3ea

    return p0

    .line 1173
    :pswitch_3f
    const/16 p0, 0x3e9

    return p0

    .line 1171
    :pswitch_42
    const/16 p0, 0x3e8

    return p0

    .line 1169
    :pswitch_45
    const/16 p0, 0x3e7

    return p0

    :pswitch_data_48
    .packed-switch -0x1
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static blacklist reset$ravenwood()V
    .registers 1

    .line 1335
    const/16 v0, -0x2710

    sput v0, Landroid/app/ActivityManager;->sCurrentUser$ravenwood:I

    .line 1336
    return-void
.end method

.method public static blacklist restrictionLevelToName(I)Ljava/lang/String;
    .registers 1

    .line 1673
    sparse-switch p0, :sswitch_data_2c

    .line 1695
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1693
    :sswitch_8
    const-string/jumbo p0, "max"

    return-object p0

    .line 1691
    :sswitch_c
    const-string p0, "custom"

    return-object p0

    .line 1689
    :sswitch_f
    const-string/jumbo p0, "user_only"

    return-object p0

    .line 1687
    :sswitch_13
    const-string/jumbo p0, "stopped"

    return-object p0

    .line 1685
    :sswitch_17
    const-string p0, "background_restricted"

    return-object p0

    .line 1683
    :sswitch_1a
    const-string/jumbo p0, "restricted_bucket"

    return-object p0

    .line 1681
    :sswitch_1e
    const-string p0, "adaptive_bucket"

    return-object p0

    .line 1679
    :sswitch_21
    const-string p0, "exempted"

    return-object p0

    .line 1677
    :sswitch_24
    const-string/jumbo p0, "unrestricted"

    return-object p0

    .line 1675
    :sswitch_28
    const-string/jumbo p0, "unknown"

    return-object p0

    :sswitch_data_2c
    .sparse-switch
        0x0 -> :sswitch_28
        0xa -> :sswitch_24
        0x14 -> :sswitch_21
        0x1e -> :sswitch_1e
        0x28 -> :sswitch_1a
        0x32 -> :sswitch_17
        0x3c -> :sswitch_13
        0x46 -> :sswitch_f
        0x5a -> :sswitch_c
        0x64 -> :sswitch_8
    .end sparse-switch
.end method

.method public static blacklist resumeAppSwitches()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5962
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V

    .line 5963
    return-void
.end method

.method public static whitelist setPersistentVrThread(I)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6177
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->setPersistentVrThread(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 6180
    goto :goto_9

    .line 6178
    :catch_8
    move-exception p0

    .line 6181
    :goto_9
    return-void
.end method

.method public static whitelist setVrThread(I)V
    .registers 2

    .line 6152
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/app/IActivityTaskManager;->setVrThread(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 6155
    goto :goto_9

    .line 6153
    :catch_8
    move-exception p0

    .line 6156
    :goto_9
    return-void
.end method

.method public static greylist-max-o staticGetLargeMemoryClass()I
    .registers 3

    .line 1798
    const-string v0, "dalvik.vm.heapsize"

    const-string v1, "16m"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1799
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static greylist staticGetMemoryClass()I
    .registers 3

    .line 1770
    const-string v0, "dalvik.vm.heapgrowthlimit"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1771
    if-eqz v0, :cond_20

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 1772
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1774
    :cond_20
    invoke-static {}, Landroid/app/ActivityManager;->staticGetLargeMemoryClass()I

    move-result v0

    return v0
.end method


# virtual methods
.method public whitelist addAppTask(Landroid/app/Activity;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I
    .registers 13

    .line 3068
    monitor-enter p0

    .line 3069
    :try_start_1
    invoke-direct {p0}, Landroid/app/ActivityManager;->ensureAppTaskThumbnailSizeLocked()V

    .line 3070
    iget-object v0, p0, Landroid/app/ActivityManager;->mAppTaskThumbnailSize:Landroid/graphics/Point;

    .line 3071
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7a

    .line 3072
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 3073
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 3074
    iget v3, v0, Landroid/graphics/Point;->x:I

    if-ne v1, v3, :cond_17

    iget v3, v0, Landroid/graphics/Point;->y:I

    if-eq v2, v3, :cond_60

    .line 3075
    :cond_17
    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 3079
    nop

    .line 3080
    iget v4, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v4, v1

    iget v5, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v5, v2

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    if-le v4, v5, :cond_3c

    .line 3081
    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    int-to-float v2, v2

    div-float/2addr v4, v2

    .line 3082
    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    int-to-float v1, v1

    mul-float/2addr v1, v4

    sub-float/2addr v0, v1

    mul-float/2addr v0, v6

    goto :goto_45

    .line 3084
    :cond_3c
    iget v2, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float v4, v2, v1

    .line 3085
    iget v0, v0, Landroid/graphics/Point;->x:I

    move v0, v7

    .line 3087
    :goto_45
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 3088
    invoke-virtual {v1, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 3089
    add-float/2addr v0, v6

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v1, v0, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 3091
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3092
    const/4 v2, 0x0

    invoke-virtual {v0, p4, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 3093
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 3095
    move-object p4, v3

    .line 3097
    :cond_60
    if-nez p3, :cond_67

    .line 3098
    new-instance p3, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {p3}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    .line 3101
    :cond_67
    :try_start_67
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/IActivityTaskManager;->addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I

    move-result p1
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_73} :catch_74

    return p1

    .line 3103
    :catch_74
    move-exception p1

    .line 3104
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 3071
    :catchall_7a
    move-exception p1

    :try_start_7b
    monitor-exit p0
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    throw p1
.end method

.method public whitelist addApplicationStartInfoCompletionListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/app/ApplicationStartInfo;",
            ">;)V"
        }
    .end annotation

    .line 4598
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4599
    const-string/jumbo v0, "listener cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4600
    iget-object v0, p0, Landroid/app/ActivityManager;->mAppStartInfoCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 4601
    const/4 v1, 0x0

    :goto_f
    :try_start_f
    iget-object v2, p0, Landroid/app/ActivityManager;->mAppStartInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2c

    .line 4602
    iget-object v2, p0, Landroid/app/ActivityManager;->mAppStartInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$AppStartInfoCallbackWrapper;

    iget-object v2, v2, Landroid/app/ActivityManager$AppStartInfoCallbackWrapper;->mListener:Ljava/util/function/Consumer;

    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 4603
    monitor-exit v0

    return-void

    .line 4601
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 4606
    :cond_2c
    iget-object v1, p0, Landroid/app/ActivityManager;->mAppStartInfoCompleteListener:Landroid/app/IApplicationStartInfoCompleteListener;

    if-nez v1, :cond_5b

    .line 4607
    new-instance v1, Landroid/app/ActivityManager$3;

    invoke-direct {v1, p0}, Landroid/app/ActivityManager$3;-><init>(Landroid/app/ActivityManager;)V

    iput-object v1, p0, Landroid/app/ActivityManager;->mAppStartInfoCompleteListener:Landroid/app/IApplicationStartInfoCompleteListener;
    :try_end_37
    .catchall {:try_start_f .. :try_end_37} :catchall_67

    .line 4623
    nop

    .line 4625
    :try_start_38
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityManager;->mAppStartInfoCompleteListener:Landroid/app/IApplicationStartInfoCompleteListener;

    iget-object v3, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    .line 4626
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 4625
    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->addApplicationStartInfoCompleteListener(Landroid/app/IApplicationStartInfoCompleteListener;I)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_47} :catch_55
    .catchall {:try_start_38 .. :try_end_47} :catchall_67

    .line 4627
    nop

    .line 4630
    nop

    .line 4631
    nop

    .line 4632
    :try_start_4a
    iget-object v1, p0, Landroid/app/ActivityManager;->mAppStartInfoCallbacks:Ljava/util/ArrayList;

    new-instance v2, Landroid/app/ActivityManager$AppStartInfoCallbackWrapper;

    invoke-direct {v2, p1, p2}, Landroid/app/ActivityManager$AppStartInfoCallbackWrapper;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4637
    goto :goto_65

    .line 4628
    :catch_55
    move-exception p1

    .line 4629
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 4638
    :cond_5b
    iget-object v1, p0, Landroid/app/ActivityManager;->mAppStartInfoCallbacks:Ljava/util/ArrayList;

    new-instance v2, Landroid/app/ActivityManager$AppStartInfoCallbackWrapper;

    invoke-direct {v2, p1, p2}, Landroid/app/ActivityManager$AppStartInfoCallbackWrapper;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4640
    :goto_65
    monitor-exit v0

    .line 4641
    return-void

    .line 4640
    :catchall_67
    move-exception p1

    monitor-exit v0
    :try_end_69
    .catchall {:try_start_4a .. :try_end_69} :catchall_67

    throw p1
.end method

.method public blacklist addHomeVisibilityListener(Ljava/util/concurrent/Executor;Landroid/app/HomeVisibilityListener;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 6573
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6574
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6576
    :try_start_6
    iget-object v0, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Landroid/app/HomeVisibilityListener;->init(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    .line 6577
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p2, Landroid/app/HomeVisibilityListener;->mObserver:Landroid/app/IProcessObserver$Stub;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 6579
    new-instance v0, Landroid/app/ActivityManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p2}, Landroid/app/ActivityManager$$ExternalSyntheticLambda4;-><init>(Landroid/app/HomeVisibilityListener;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1c} :catch_1e

    .line 6583
    nop

    .line 6584
    return-void

    .line 6581
    :catch_1e
    move-exception p1

    .line 6582
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist addOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;I)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4929
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/ActivityManager;->addOnUidImportanceListenerInternal(Landroid/app/ActivityManager$OnUidImportanceListener;I[I)V

    .line 4930
    return-void
.end method

.method public whitelist addOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;I[I)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4957
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4958
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4959
    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityManager;->addOnUidImportanceListenerInternal(Landroid/app/ActivityManager$OnUidImportanceListener;I[I)V

    .line 4960
    return-void
.end method

.method public whitelist addStartInfoTimestamp(IJ)V
    .registers 6

    .line 4689
    const/16 v0, 0x14

    if-le p1, v0, :cond_1d

    const/16 v0, 0x1e

    if-gt p1, v0, :cond_1d

    .line 4694
    :try_start_8
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/IActivityManager;->addStartInfoTimestamp(IJI)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_15} :catch_17

    .line 4697
    nop

    .line 4698
    return-void

    .line 4695
    :catch_17
    move-exception p1

    .line 4696
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 4691
    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Key not in allowed range."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist alwaysShowUnsupportedCompileSdkWarning(Landroid/content/ComponentName;)V
    .registers 3

    .line 5364
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->alwaysShowUnsupportedCompileSdkWarning(Landroid/content/ComponentName;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 5367
    nop

    .line 5368
    return-void

    .line 5365
    :catch_9
    move-exception p1

    .line 5366
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist appNotResponding(Ljava/lang/String;)V
    .registers 3

    .line 6555
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->appNotResponding(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 6558
    nop

    .line 6559
    return-void

    .line 6556
    :catch_9
    move-exception p1

    .line 6557
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist clearApplicationUserData()Z
    .registers 4

    .line 3778
    iget-object v0, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;Z)Z

    move-result v0

    return v0
.end method

.method public greylist clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z
    .registers 4

    .line 3743
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;Z)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o clearGrantedUriPermissions(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3813
    iget-object v0, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "uri_grants"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UriGrantsManager;

    .line 3814
    invoke-virtual {v0, p1}, Landroid/app/UriGrantsManager;->clearGrantedUriPermissions(Ljava/lang/String;)V

    .line 3815
    return-void
.end method

.method public whitelist clearWatchHeapLimit()V
    .registers 7

    .line 6102
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_e

    .line 6105
    nop

    .line 6106
    return-void

    .line 6103
    :catch_e
    move-exception v0

    .line 6104
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist dumpPackageState(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .registers 3

    .line 5865
    invoke-static {p1, p2}, Landroid/app/ActivityManager;->dumpPackageStateStatic(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    .line 5866
    return-void
.end method

.method public blacklist forceDelayBroadcastDelivery(Ljava/lang/String;J)V
    .registers 5

    .line 6684
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IActivityManager;->forceDelayBroadcastDelivery(Ljava/lang/String;J)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 6687
    nop

    .line 6688
    return-void

    .line 6685
    :catch_9
    move-exception p1

    .line 6686
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist forceStopPackage(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5150
    iget-object v0, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/ActivityManager;->forceStopPackageAsUser(Ljava/lang/String;I)V

    .line 5151
    return-void
.end method

.method public greylist forceStopPackageAsUser(Ljava/lang/String;I)V
    .registers 4

    .line 5137
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 5140
    nop

    .line 5141
    return-void

    .line 5138
    :catch_9
    move-exception p1

    .line 5139
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist forceStopPackageAsUserEvenWhenStopping(Ljava/lang/String;I)V
    .registers 4

    .line 5163
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->forceStopPackageEvenWhenStopping(Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 5166
    nop

    .line 5167
    return-void

    .line 5164
    :catch_9
    move-exception p1

    .line 5165
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getAppTaskThumbnailSize()Landroid/util/Size;
    .registers 4

    .line 3027
    monitor-enter p0

    .line 3028
    :try_start_1
    invoke-direct {p0}, Landroid/app/ActivityManager;->ensureAppTaskThumbnailSizeLocked()V

    .line 3029
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Landroid/app/ActivityManager;->mAppTaskThumbnailSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Landroid/app/ActivityManager;->mAppTaskThumbnailSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    monitor-exit p0

    return-object v0

    .line 3030
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public whitelist getAppTasks()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$AppTask;",
            ">;"
        }
    .end annotation

    .line 3008
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3011
    :try_start_5
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/IActivityTaskManager;->getAppTasks(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_13} :catch_31

    .line 3014
    nop

    .line 3015
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 3016
    const/4 v3, 0x0

    :goto_19
    if-ge v3, v2, :cond_30

    .line 3017
    new-instance v4, Landroid/app/ActivityManager$AppTask;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    invoke-static {v5}, Landroid/app/IAppTask$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAppTask;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/ActivityManager$AppTask;-><init>(Landroid/app/IAppTask;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3016
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 3019
    :cond_30
    return-object v0

    .line 3012
    :catch_31
    move-exception v0

    .line 3013
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist getBackgroundRestrictionExemptionReason(I)I
    .registers 3

    .line 6756
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->getBackgroundRestrictionExemptionReason(I)I

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 6757
    :catch_9
    move-exception p1

    .line 6758
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 6760
    const/4 p1, -0x1

    return p1
.end method

.method public whitelist getBindingUidImportance(I)I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4877
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    .line 4878
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4877
    invoke-interface {v0, p1, v1}, Landroid/app/IActivityManager;->getBindingUidProcessState(ILjava/lang/String;)I

    move-result p1

    .line 4879
    iget-object v0, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportanceForClient(ILandroid/content/Context;)I

    move-result p1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    return p1

    .line 4880
    :catch_15
    move-exception p1

    .line 4881
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getBugreportWhitelistedPackages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6542
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getBugreportWhitelistedPackages()Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 6543
    :catch_9
    move-exception v0

    .line 6544
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;
    .registers 2

    .line 5222
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 5223
    :catch_9
    move-exception v0

    .line 5224
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist getDisplayIdsForStartingVisibleBackgroundUsers()[I
    .registers 2

    .line 5634
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getDisplayIdsForStartingVisibleBackgroundUsers()[I

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 5635
    :catch_9
    move-exception v0

    .line 5636
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getExternalHistoricalProcessStartReasons(Ljava/lang/String;I)Ljava/util/List;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/app/ApplicationStartInfo;",
            ">;"
        }
    .end annotation

    .line 4548
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    .line 4549
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/app/IActivityManager;->getHistoricalProcessStartReasons(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 4550
    if-nez p1, :cond_15

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_19

    :cond_15
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1a

    :goto_19
    return-object p1

    .line 4551
    :catch_1a
    move-exception p1

    .line 4552
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o getFrontActivityScreenCompatMode()I
    .registers 2

    .line 1702
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getFrontActivityScreenCompatMode()I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 1703
    :catch_9
    move-exception v0

    .line 1704
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public greylist-max-o getGrantedUriPermissions(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/GrantedUriPermission;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3797
    iget-object v0, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "uri_grants"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UriGrantsManager;

    .line 3798
    invoke-virtual {v0, p1}, Landroid/app/UriGrantsManager;->getGrantedUriPermissions(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 3797
    return-object p1
.end method

.method public whitelist getHistoricalProcessExitReasons(Ljava/lang/String;II)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/app/ApplicationExitInfo;",
            ">;"
        }
    .end annotation

    .line 4726
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    .line 4727
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 4726
    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/IActivityManager;->getHistoricalProcessExitReasons(Ljava/lang/String;III)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 4728
    if-nez p1, :cond_15

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_19

    :cond_15
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1a

    :goto_19
    return-object p1

    .line 4729
    :catch_1a
    move-exception p1

    .line 4730
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getHistoricalProcessStartReasons(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/ApplicationStartInfo;",
            ">;"
        }
    .end annotation

    .line 4514
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    .line 4515
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, p1, v1}, Landroid/app/IActivityManager;->getHistoricalProcessStartReasons(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 4516
    if-nez p1, :cond_16

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_1a

    :cond_16
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1a} :catch_1b

    :goto_1a
    return-object p1

    .line 4517
    :catch_1b
    move-exception p1

    .line 4518
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getLargeMemoryClass()I
    .registers 2

    .line 1791
    invoke-static {}, Landroid/app/ActivityManager;->staticGetLargeMemoryClass()I

    move-result v0

    return v0
.end method

.method public whitelist getLauncherLargeIconDensity()I
    .registers 4

    .line 5235
    iget-object v0, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 5236
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 5237
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 5239
    const/16 v2, 0x258

    if-ge v0, v2, :cond_17

    .line 5241
    return v1

    .line 5244
    :cond_17
    const/16 v0, 0x140

    sparse-switch v1, :sswitch_data_34

    .line 5260
    int-to-float v0, v1

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 5256
    :sswitch_25
    const/16 v0, 0x280

    return v0

    .line 5254
    :sswitch_28
    const/16 v0, 0x1e0

    return v0

    .line 5252
    :sswitch_2b
    return v0

    .line 5250
    :sswitch_2c
    return v0

    .line 5248
    :sswitch_2d
    const/16 v0, 0xf0

    return v0

    .line 5246
    :sswitch_30
    const/16 v0, 0xa0

    return v0

    nop

    :sswitch_data_34
    .sparse-switch
        0x78 -> :sswitch_30
        0xa0 -> :sswitch_2d
        0xd5 -> :sswitch_2c
        0xf0 -> :sswitch_2b
        0x140 -> :sswitch_28
        0x1e0 -> :sswitch_25
    .end sparse-switch
.end method

.method public whitelist getLauncherLargeIconSize()I
    .registers 2

    .line 5271
    iget-object v0, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSizeInner(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public whitelist getLockTaskModeState()I
    .registers 2

    .line 6130
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getLockTaskModeState()I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 6131
    :catch_9
    move-exception v0

    .line 6132
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getMemoryClass()I
    .registers 2

    .line 1762
    invoke-static {}, Landroid/app/ActivityManager;->staticGetMemoryClass()I

    move-result v0

    return v0
.end method

.method public whitelist getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
    .registers 5

    .line 3719
    sget-object v0, Landroid/app/ActivityManager;->mMemoryInfoCache:Lcom/android/internal/util/RateLimitingCache;

    monitor-enter v0

    .line 3720
    :try_start_3
    sget-object v1, Landroid/app/ActivityManager;->mMemoryInfoCache:Lcom/android/internal/util/RateLimitingCache;

    new-instance v2, Landroid/app/ActivityManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/app/ActivityManager$$ExternalSyntheticLambda0;-><init>(Landroid/app/ActivityManager;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/util/RateLimitingCache;->get(Lcom/android/internal/util/RateLimitingCache$ValueFetcher;)Ljava/lang/Object;

    .line 3724
    sget-object v1, Landroid/app/ActivityManager;->mRateLimitedMemInfo:Landroid/app/ActivityManager$MemoryInfo;

    invoke-virtual {v1, p1}, Landroid/app/ActivityManager$MemoryInfo;->copyTo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 3725
    monitor-exit v0

    .line 3726
    return-void

    .line 3725
    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public greylist-max-o getPackageAskScreenCompat(Ljava/lang/String;)Z
    .registers 3

    .line 1738
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->getPackageAskScreenCompat(Ljava/lang/String;)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 1739
    :catch_9
    move-exception p1

    .line 1740
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getPackageImportance(Ljava/lang/String;)I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4830
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    .line 4831
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4830
    invoke-interface {v0, p1, v1}, Landroid/app/IActivityManager;->getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 4832
    iget-object v0, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportanceForClient(ILandroid/content/Context;)I

    move-result p1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    return p1

    .line 4833
    :catch_15
    move-exception p1

    .line 4834
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o getPackageScreenCompatMode(Ljava/lang/String;)I
    .registers 3

    .line 1720
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 1721
    :catch_9
    move-exception p1

    .line 1722
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;
    .registers 3

    .line 5055
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    .line 5056
    :catch_9
    move-exception p1

    .line 5057
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getProcessesInErrorState()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$ProcessErrorStateInfo;",
            ">;"
        }
    .end annotation

    .line 3936
    sget-object v0, Landroid/app/ActivityManager;->mErrorProcessesCache:Lcom/android/internal/util/RateLimitingCache;

    new-instance v1, Landroid/app/ActivityManager$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/app/ActivityManager$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/internal/util/RateLimitingCache;->get(Lcom/android/internal/util/RateLimitingCache$ValueFetcher;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public whitelist getRecentTasks(II)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2918
    if-ltz p1, :cond_11

    .line 2921
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    .line 2922
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 2921
    invoke-virtual {v0, p1, p2, v1}, Landroid/app/ActivityTaskManager;->getRecentTasks(III)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 2919
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The requested number of tasks should be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getRunningAppProcesses()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .line 4483
    sget-object v0, Landroid/app/ActivityManager;->mRunningProcessesCache:Lcom/android/internal/util/RateLimitingCache;

    new-instance v1, Landroid/app/ActivityManager$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/app/ActivityManager$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/internal/util/RateLimitingCache;->get(Lcom/android/internal/util/RateLimitingCache$ValueFetcher;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-o getRunningExternalApplications()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 4426
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 4427
    :catch_9
    move-exception v0

    .line 4428
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist getRunningServiceConnections(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$ConnectionInfo;",
            ">;"
        }
    .end annotation

    .line 3574
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3576
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->getRunningServiceConnections(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_c

    return-object p1

    .line 3577
    :catch_c
    move-exception p1

    .line 3578
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3555
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 3556
    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    .line 3555
    return-object p1

    .line 3557
    :catch_9
    move-exception p1

    .line 3558
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getRunningServices(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3442
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 3443
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/app/IActivityManager;->getServices(II)Ljava/util/List;

    move-result-object p1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 3442
    return-object p1

    .line 3444
    :catch_a
    move-exception p1

    .line 3445
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getRunningTasks(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3143
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActivityTaskManager;->getTasks(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getSupportedLocales()Ljava/util/Collection;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 5210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5211
    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/app/LocalePicker;->getSupportedLocales(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_1b

    aget-object v4, v1, v3

    .line 5212
    invoke-static {v4}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5211
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 5214
    :cond_1b
    return-object v0
.end method

.method public blacklist getSwitchingFromUserMessage(I)Ljava/lang/String;
    .registers 3

    .line 5649
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->getSwitchingFromUserMessage(I)Ljava/lang/String;

    move-result-object p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    .line 5650
    :catch_9
    move-exception p1

    .line 5651
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getSwitchingToUserMessage(I)Ljava/lang/String;
    .registers 3

    .line 5664
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->getSwitchingToUserMessage(I)Ljava/lang/String;

    move-result-object p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    .line 5665
    :catch_9
    move-exception p1

    .line 5666
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getTotalRam()J
    .registers 3

    .line 1851
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 1852
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 1853
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getUidFrozenState([I)[I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 449
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->getUidFrozenState([I)[I

    move-result-object p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    .line 450
    :catch_9
    move-exception p1

    .line 451
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getUidImportance(I)I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4850
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    .line 4851
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4850
    invoke-interface {v0, p1, v1}, Landroid/app/IActivityManager;->getUidProcessState(ILjava/lang/String;)I

    move-result p1

    .line 4852
    iget-object v0, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportanceForClient(ILandroid/content/Context;)I

    move-result p1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    return p1

    .line 4853
    :catch_15
    move-exception p1

    .line 4854
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getUidProcessCapabilities(I)I
    .registers 4

    .line 4812
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/IActivityManager;->getUidProcessCapabilities(ILjava/lang/String;)I

    move-result p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return p1

    .line 4813
    :catch_f
    move-exception p1

    .line 4814
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getUidProcessState(I)I
    .registers 4

    .line 4790
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/IActivityManager;->getUidProcessState(ILjava/lang/String;)I

    move-result p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return p1

    .line 4791
    :catch_f
    move-exception p1

    .line 4792
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist holdLock(Landroid/os/IBinder;I)V
    .registers 4

    .line 6648
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->holdLock(Landroid/os/IBinder;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 6651
    nop

    .line 6652
    return-void

    .line 6649
    :catch_9
    move-exception p1

    .line 6650
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist isActivityStartAllowedOnDisplay(Landroid/content/Context;ILandroid/content/Intent;)Z
    .registers 6

    .line 3224
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    .line 3225
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    .line 3224
    invoke-interface {v0, p2, p3, v1, p1}, Landroid/app/IActivityTaskManager;->isActivityStartAllowedOnDisplay(ILandroid/content/Intent;Ljava/lang/String;I)Z

    move-result p1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    return p1

    .line 3226
    :catch_15
    move-exception p1

    .line 3227
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 3229
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist isBackgroundRestricted()Z
    .registers 3

    .line 4448
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->isBackgroundRestricted(Ljava/lang/String;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return v0

    .line 4449
    :catch_f
    move-exception v0

    .line 4450
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist isInLockTaskMode()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6118
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isLowRamDevice()Z
    .registers 2

    .line 1809
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    return v0
.end method

.method public blacklist isProcessFrozen(I)Z
    .registers 3

    .line 6698
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->isProcessFrozen(I)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 6699
    :catch_9
    move-exception p1

    .line 6700
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist isProfileForeground(Landroid/os/UserHandle;)Z
    .registers 5

    .line 6209
    iget-object v0, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 6210
    if-eqz v0, :cond_2f

    .line 6211
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 6212
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-ne v1, v2, :cond_2e

    .line 6213
    const/4 p1, 0x1

    return p1

    .line 6215
    :cond_2e
    goto :goto_18

    .line 6217
    :cond_2f
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist isTaskMoveAllowedOnDisplay(I)Z
    .registers 3

    .line 3252
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->isTaskMoveAllowedOnDisplay(I)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 3253
    :catch_9
    move-exception p1

    .line 3254
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist isUserRunning(I)Z
    .registers 4

    .line 5838
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/app/IActivityManager;->isUserRunning(II)Z

    move-result p1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return p1

    .line 5839
    :catch_a
    move-exception p1

    .line 5840
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o isVrModePackageEnabled(Landroid/content/ComponentName;)Z
    .registers 3

    .line 5847
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->isVrModePackageEnabled(Landroid/content/ComponentName;)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 5848
    :catch_9
    move-exception p1

    .line 5849
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist killBackgroundProcesses(Ljava/lang/String;)V
    .registers 4

    .line 5089
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    .line 5090
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 5089
    invoke-interface {v0, p1, v1}, Landroid/app/IActivityManager;->killBackgroundProcesses(Ljava/lang/String;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    .line 5093
    nop

    .line 5094
    return-void

    .line 5091
    :catch_f
    move-exception p1

    .line 5092
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist killProcessesWhenImperceptible([ILjava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6238
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->killProcessesWhenImperceptible([ILjava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 6241
    nop

    .line 6242
    return-void

    .line 6239
    :catch_9
    move-exception p1

    .line 6240
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist killUid(ILjava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5107
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 5108
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 5107
    invoke-interface {v0, v1, p1, p2}, Landroid/app/IActivityManager;->killUid(IILjava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    .line 5111
    nop

    .line 5112
    return-void

    .line 5109
    :catch_11
    move-exception p1

    .line 5110
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist logoutUser(I)Z
    .registers 3

    .line 5574
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->logoutUser(I)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 5575
    :catch_9
    move-exception p1

    .line 5576
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist moveTaskToFront(II)V
    .registers 4

    .line 3179
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 3180
    return-void
.end method

.method public whitelist moveTaskToFront(IILandroid/os/Bundle;)V
    .registers 11

    .line 3196
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 3197
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    .line 3198
    iget-object v0, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 3199
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Landroid/app/IActivityTaskManager;->moveTaskToFront(Landroid/app/IApplicationThread;Ljava/lang/String;IILandroid/os/Bundle;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_1a

    .line 3202
    nop

    .line 3203
    return-void

    .line 3200
    :catch_1a
    move-exception v0

    move-object p1, v0

    .line 3201
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist noteAppRestrictionEnabled(Ljava/lang/String;IIZILjava/lang/String;IJ)V
    .registers 11

    .line 6827
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    move-object p0, v0

    invoke-interface/range {p0 .. p9}, Landroid/app/IActivityManager;->noteAppRestrictionEnabled(Ljava/lang/String;IIZILjava/lang/String;IJ)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    .line 6831
    nop

    .line 6832
    return-void

    .line 6829
    :catch_a
    move-exception v0

    move-object p1, v0

    .line 6830
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist noteForegroundResourceUseBegin(III)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6717
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IActivityManager;->logFgsApiBegin(III)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 6720
    nop

    .line 6721
    return-void

    .line 6718
    :catch_9
    move-exception p1

    .line 6719
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist noteForegroundResourceUseEnd(III)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6736
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IActivityManager;->logFgsApiEnd(III)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 6739
    nop

    .line 6740
    return-void

    .line 6737
    :catch_9
    move-exception p1

    .line 6738
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist notifySystemPropertiesChanged()V
    .registers 6

    .line 6846
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 6847
    if-eqz v0, :cond_21

    .line 6848
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6850
    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x5f535052

    :try_start_13
    invoke-interface {v0, v4, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_1b

    .line 6854
    nop

    .line 6855
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_21

    .line 6852
    :catch_1b
    move-exception v0

    .line 6853
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 6857
    :cond_21
    :goto_21
    return-void
.end method

.method public blacklist registerUidFrozenStateChangedCallback(Ljava/util/concurrent/Executor;Landroid/app/ActivityManager$UidFrozenStateChangedCallback;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 386
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    const-string v0, "callback cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    iget-object v0, p0, Landroid/app/ActivityManager;->mFrozenStateChangedCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 389
    :try_start_d
    iget-object v1, p0, Landroid/app/ActivityManager;->mFrozenStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 392
    iget-object v1, p0, Landroid/app/ActivityManager;->mFrozenStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    iget-object p1, p0, Landroid/app/ActivityManager;->mFrozenStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_25

    .line 395
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_50

    return-void

    .line 399
    :cond_25
    :try_start_25
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    iget-object p2, p0, Landroid/app/ActivityManager;->mFrozenStateChangedCallback:Landroid/app/IUidFrozenStateChangedCallback;

    invoke-interface {p1, p2}, Landroid/app/IActivityManager;->registerUidFrozenStateChangedCallback(Landroid/app/IUidFrozenStateChangedCallback;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2e} :catch_31
    .catchall {:try_start_25 .. :try_end_2e} :catchall_50

    .line 402
    nop

    .line 403
    :try_start_2f
    monitor-exit v0

    .line 404
    return-void

    .line 400
    :catch_31
    move-exception p1

    .line 401
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 390
    :cond_37
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Callback already registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 403
    :catchall_50
    move-exception p1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_2f .. :try_end_52} :catchall_50

    throw p1
.end method

.method public whitelist removeApplicationStartInfoCompletionListener(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/app/ApplicationStartInfo;",
            ">;)V"
        }
    .end annotation

    .line 4648
    const-string/jumbo v0, "listener cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4649
    iget-object v0, p0, Landroid/app/ActivityManager;->mAppStartInfoCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 4650
    const/4 v1, 0x0

    :goto_a
    :try_start_a
    iget-object v2, p0, Landroid/app/ActivityManager;->mAppStartInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 4651
    iget-object v2, p0, Landroid/app/ActivityManager;->mAppStartInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$AppStartInfoCallbackWrapper;

    .line 4652
    iget-object v2, v2, Landroid/app/ActivityManager$AppStartInfoCallbackWrapper;->mListener:Ljava/util/function/Consumer;

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 4653
    iget-object p1, p0, Landroid/app/ActivityManager;->mAppStartInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4654
    goto :goto_2b

    .line 4650
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 4657
    :cond_2b
    :goto_2b
    iget-object p1, p0, Landroid/app/ActivityManager;->mAppStartInfoCompleteListener:Landroid/app/IApplicationStartInfoCompleteListener;

    if-eqz p1, :cond_51

    iget-object p1, p0, Landroid/app/ActivityManager;->mAppStartInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1
    :try_end_35
    .catchall {:try_start_a .. :try_end_35} :catchall_53

    if-eqz p1, :cond_51

    .line 4659
    :try_start_37
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    iget-object v1, p0, Landroid/app/ActivityManager;->mAppStartInfoCompleteListener:Landroid/app/IApplicationStartInfoCompleteListener;

    iget-object v2, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    .line 4660
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 4659
    invoke-interface {p1, v1, v2}, Landroid/app/IActivityManager;->removeApplicationStartInfoCompleteListener(Landroid/app/IApplicationStartInfoCompleteListener;I)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_46} :catch_4b
    .catchall {:try_start_37 .. :try_end_46} :catchall_53

    .line 4663
    nop

    .line 4664
    const/4 p1, 0x0

    :try_start_48
    iput-object p1, p0, Landroid/app/ActivityManager;->mAppStartInfoCompleteListener:Landroid/app/IApplicationStartInfoCompleteListener;

    goto :goto_51

    .line 4661
    :catch_4b
    move-exception p1

    .line 4662
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 4666
    :cond_51
    :goto_51
    monitor-exit v0

    .line 4667
    return-void

    .line 4666
    :catchall_53
    move-exception p1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_48 .. :try_end_55} :catchall_53

    throw p1
.end method

.method public blacklist removeHomeVisibilityListener(Landroid/app/HomeVisibilityListener;)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 6596
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6598
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object p1, p1, Landroid/app/HomeVisibilityListener;->mObserver:Landroid/app/IProcessObserver$Stub;

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_e

    .line 6601
    nop

    .line 6602
    return-void

    .line 6599
    :catch_e
    move-exception p1

    .line 6600
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist removeOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4993
    iget-object v0, p0, Landroid/app/ActivityManager;->mImportanceListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4994
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityManager;->mImportanceListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$MyUidObserver;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_36

    .line 4995
    if-eqz v1, :cond_1d

    .line 4999
    :try_start_d
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_17
    .catchall {:try_start_d .. :try_end_14} :catchall_36

    .line 5002
    nop

    .line 5003
    :try_start_15
    monitor-exit v0

    .line 5004
    return-void

    .line 5000
    :catch_17
    move-exception p1

    .line 5001
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 4996
    :cond_1d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Listener not registered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5003
    :catchall_36
    move-exception p1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_15 .. :try_end_38} :catchall_36

    throw p1
.end method

.method public blacklist resetAppErrors()V
    .registers 2

    .line 6632
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resetAppErrors()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 6635
    nop

    .line 6636
    return-void

    .line 6633
    :catch_9
    move-exception v0

    .line 6634
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist restartPackage(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5070
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 5071
    return-void
.end method

.method public blacklist scheduleApplicationInfoChanged(Ljava/util/List;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 6190
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->scheduleApplicationInfoChanged(Ljava/util/List;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 6193
    nop

    .line 6194
    return-void

    .line 6191
    :catch_9
    move-exception p1

    .line 6192
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setDeviceLocales(Landroid/os/LocaleList;)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5197
    invoke-static {p1}, Lcom/android/internal/app/LocalePicker;->updateLocales(Landroid/os/LocaleList;)V

    .line 5198
    return-void
.end method

.method public greylist-max-o setFrontActivityScreenCompatMode(I)V
    .registers 3

    .line 1711
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->setFrontActivityScreenCompatMode(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 1714
    nop

    .line 1715
    return-void

    .line 1712
    :catch_9
    move-exception p1

    .line 1713
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o setPackageAskScreenCompat(Ljava/lang/String;Z)V
    .registers 4

    .line 1747
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityTaskManager;->setPackageAskScreenCompat(Ljava/lang/String;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 1750
    nop

    .line 1751
    return-void

    .line 1748
    :catch_9
    move-exception p1

    .line 1749
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o setPackageScreenCompatMode(Ljava/lang/String;I)V
    .registers 4

    .line 1729
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityTaskManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 1732
    nop

    .line 1733
    return-void

    .line 1730
    :catch_9
    move-exception p1

    .line 1731
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o setProcessMemoryTrimLevel(Ljava/lang/String;II)Z
    .registers 5

    .line 4465
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IActivityManager;->setProcessMemoryTrimLevel(Ljava/lang/String;II)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 4467
    :catch_9
    move-exception p1

    .line 4468
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setProcessStateSummary([B)V
    .registers 3

    .line 4759
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->setProcessStateSummary([B)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 4762
    nop

    .line 4763
    return-void

    .line 4760
    :catch_9
    move-exception p1

    .line 4761
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist setStopUserOnSwitch(I)V
    .registers 3

    .line 5716
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->setStopUserOnSwitch(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 5719
    nop

    .line 5720
    return-void

    .line 5717
    :catch_9
    move-exception p1

    .line 5718
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist setThemeOverlayReady(I)V
    .registers 3

    .line 6617
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->setThemeOverlayReady(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 6620
    nop

    .line 6621
    return-void

    .line 6618
    :catch_9
    move-exception p1

    .line 6619
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setWatchHeapLimit(J)V
    .registers 9

    .line 6082
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    .line 6083
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 6082
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-wide v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_12

    .line 6086
    nop

    .line 6087
    return-void

    .line 6084
    :catch_12
    move-exception v0

    move-object p1, v0

    .line 6085
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist startProfile(Landroid/os/UserHandle;)Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5739
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->startProfile(I)Z

    move-result p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return p1

    .line 5740
    :catch_d
    move-exception p1

    .line 5741
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist startUserInBackgroundVisibleOnDisplay(II)Z
    .registers 5

    .line 5610
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 5615
    :try_start_6
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Landroid/app/IActivityManager;->startUserInBackgroundVisibleOnDisplay(IILandroid/os/IProgressListener;)Z

    move-result p1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    return p1

    .line 5617
    :catch_10
    move-exception p1

    .line 5618
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 5611
    :cond_16
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "device does not support users on secondary displays"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist stopPackageForUser(Ljava/lang/String;)V
    .registers 4

    .line 5182
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/IActivityManager;->stopAppForUser(Ljava/lang/String;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    .line 5185
    nop

    .line 5186
    return-void

    .line 5183
    :catch_f
    move-exception p1

    .line 5184
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist stopProfile(Landroid/os/UserHandle;)Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5762
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->stopProfile(I)Z

    move-result p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return p1

    .line 5763
    :catch_d
    move-exception p1

    .line 5764
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist stopUser(I)Z
    .registers 5

    .line 5806
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 5807
    return v0

    .line 5810
    :cond_4
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/app/IActivityManager;->stopUserWithCallback(ILandroid/app/IStopUserCallback;)I

    move-result p1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_11

    if-nez p1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0

    .line 5812
    :catch_11
    move-exception p1

    .line 5813
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-r switchUser(I)Z
    .registers 3

    .line 5528
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->switchUser(I)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 5529
    :catch_9
    move-exception p1

    .line 5530
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist switchUser(Landroid/os/UserHandle;)Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5546
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "UserHandle cannot be null."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 5548
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->switchUser(I)Z

    move-result p1

    return p1
.end method

.method public blacklist unregisterUidFrozenStateChangedCallback(Landroid/app/ActivityManager$UidFrozenStateChangedCallback;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 417
    const-string v0, "callback cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    iget-object v0, p0, Landroid/app/ActivityManager;->mFrozenStateChangedCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 419
    :try_start_8
    iget-object v1, p0, Landroid/app/ActivityManager;->mFrozenStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    iget-object p1, p0, Landroid/app/ActivityManager;->mFrozenStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_27

    if-eqz p1, :cond_25

    .line 422
    :try_start_15
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    iget-object v1, p0, Landroid/app/ActivityManager;->mFrozenStateChangedCallback:Landroid/app/IUidFrozenStateChangedCallback;

    invoke-interface {p1, v1}, Landroid/app/IActivityManager;->unregisterUidFrozenStateChangedCallback(Landroid/app/IUidFrozenStateChangedCallback;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1e} :catch_1f
    .catchall {:try_start_15 .. :try_end_1e} :catchall_27

    .line 426
    goto :goto_25

    .line 424
    :catch_1f
    move-exception p1

    .line 425
    :try_start_20
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 428
    :cond_25
    :goto_25
    monitor-exit v0

    .line 429
    return-void

    .line 428
    :catchall_27
    move-exception p1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_27

    throw p1
.end method

.method public blacklist updateMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 5783
    if-eqz p1, :cond_13

    if-eqz p2, :cond_13

    .line 5787
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->updateMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return p1

    .line 5788
    :catch_d
    move-exception p1

    .line 5789
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 5784
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "mcc or mnc cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist waitForBroadcastIdle()V
    .registers 2

    .line 6663
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->waitForBroadcastIdle()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 6666
    goto :goto_c

    .line 6664
    :catch_8
    move-exception v0

    .line 6665
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 6667
    :goto_c
    return-void
.end method
