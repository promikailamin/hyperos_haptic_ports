.class public Lcom/miui/whetstone/PowerKeeperPolicy;
.super Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;
.source "PowerKeeperPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;
    }
.end annotation


# static fields
.field public static final blacklist APP_BG_IDLE_LEVEL_DELAY:I = 0x1

.field public static final blacklist APP_BG_IDLE_LEVEL_DISABLE:I = 0x2

.field public static final blacklist APP_BG_IDLE_LEVEL_NORMAL:I = 0x0

.field private static final blacklist DEBUG:Z

.field public static final blacklist POLICY_SCREEN_COMPAT_ALWAYS:I = 0x2

.field public static final blacklist POLICY_SCREEN_COMPAT_NEEDS:I = 0x1

.field public static final blacklist POLICY_SCREEN_COMPAT_NONE:I = 0x0

.field public static final blacklist POLICY_SCREEN_COMPAT_SPLIT:Ljava/lang/String; = "-"

.field public static final blacklist POLICY_SCREEN_COMPAT_WITHOUT_INSET:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String; = "PowerKeeperPolicy"

.field private static final blacklist debug:Z = false

.field private static volatile blacklist sInstance:Lcom/miui/whetstone/PowerKeeperPolicy;


# instance fields
.field private blacklist AFFINITY_ROOT:Ljava/lang/String;

.field public final blacklist PARAM_TYPE_ADD_TAOST:I

.field public final blacklist PARAM_TYPE_ALIGN_CONFIG:I

.field public final blacklist PARAM_TYPE_REMOVE_TOAST:I

.field public final blacklist PARAM_TYPE_RESOLUTION:I

.field public final blacklist PARAM_TYPE_SYNC_RESTRICT:I

.field public final blacklist PARAM_TYPE_SYNC_WHITELIST:I

.field private final blacklist SYSTEM_PID_STAT_FORMAT:[I

.field private final blacklist mAlarmAlignWhite:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAlarmDataTotal:I

.field private blacklist mAlarmRestricts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAlarmUidData:Landroid/util/SparseIntArray;

.field private blacklist mAlignEnable:Z

.field private blacklist mAppBGIdleFeatureStatus:Z

.field private final blacklist mAppBGIdleLevel:Landroid/util/SparseIntArray;

.field private final blacklist mAutoStartDisabledUids:Landroid/util/SparseBooleanArray;

.field private blacklist mBlockedUidWakelocks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mBrdcastUidTypeInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mBroadcastDataTotal:I

.field private blacklist mBroadcastRestricts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mBroadcastTypeData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mBroadcastUidData:Landroid/util/SparseIntArray;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDisallowToastApks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mExtraActivityManagerService:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private blacklist mFloatNoticeApp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsBacklightEable:Z

.field private blacklist mLocalLog:Landroid/util/LocalLog;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mNeedControlSync:Z

.field private blacklist mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

.field private blacklist mPkgBackLight:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPkgResolutionPolicy:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPolicyLock:Ljava/lang/Object;

.field private blacklist mSyncWhitelist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSystemServiceClassLoader:Ljava/lang/ClassLoader;

.field private final blacklist mSytemPidStatData:[Ljava/lang/String;

.field private blacklist mUidAllow:Landroid/util/SparseBooleanArray;

.field private final blacklist mUidBroadcastStat:Landroid/util/SparseBooleanArray;

.field private final blacklist mUidPushAlarmProperty:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUidPushAlarmStat:Landroid/util/SparseBooleanArray;

.field private blacklist powerManagerServiceImpl:Ljava/lang/Object;

.field private blacklist pushAlarmLeaderIntent:Landroid/content/Intent;

.field private blacklist pushAlarmLeaderUid:I

.field private blacklist sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;

.field private blacklist setAppToIdle:Ljava/lang/reflect/Method;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/miui/whetstone/PowerKeeperPolicy;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisallowToastApks(Lcom/miui/whetstone/PowerKeeperPolicy;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mDisallowToastApks:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLocalLog(Lcom/miui/whetstone/PowerKeeperPolicy;)Landroid/util/LocalLog;
    .registers 1

    iget-object p0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLocalLog:Landroid/util/LocalLog;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNeedControlSync(Lcom/miui/whetstone/PowerKeeperPolicy;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mNeedControlSync:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputsPowerKeeperService(Lcom/miui/whetstone/PowerKeeperPolicy;Lcom/miui/whetstone/IPowerKeeperClient;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrestoreAlarm(Lcom/miui/whetstone/PowerKeeperPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->restoreAlarm()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrestoreAutoStartCtrl(Lcom/miui/whetstone/PowerKeeperPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->restoreAutoStartCtrl()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrestoreBlockedWakelock(Lcom/miui/whetstone/PowerKeeperPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->restoreBlockedWakelock()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrestoreBroadcast(Lcom/miui/whetstone/PowerKeeperPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->restoreBroadcast()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrestoreBroadcastCtrl(Lcom/miui/whetstone/PowerKeeperPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->restoreBroadcastCtrl()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrestoreClusterCtrl(Lcom/miui/whetstone/PowerKeeperPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->restoreClusterCtrl()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrestoreFakeGpsStatus(Lcom/miui/whetstone/PowerKeeperPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->restoreFakeGpsStatus()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 912
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/ClassLoader;)V
    .registers 8
    .param p1, "cld"    # Ljava/lang/ClassLoader;

    .line 169
    invoke-direct {p0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;-><init>()V

    .line 79
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmAlignWhite:Landroid/util/SparseArray;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlignEnable:Z

    .line 86
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAutoStartDisabledUids:Landroid/util/SparseBooleanArray;

    .line 88
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLock:Ljava/lang/Object;

    .line 89
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    .line 102
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->pushAlarmLeaderIntent:Landroid/content/Intent;

    .line 106
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mSytemPidStatData:[Ljava/lang/String;

    .line 107
    const/4 v3, 0x3

    new-array v4, v3, [I

    fill-array-data v4, :array_102

    iput-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->SYSTEM_PID_STAT_FORMAT:[I

    .line 112
    iput-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleFeatureStatus:Z

    .line 113
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mIsBacklightEable:Z

    .line 115
    new-instance v5, Landroid/util/SparseIntArray;

    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleLevel:Landroid/util/SparseIntArray;

    .line 120
    iput v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->PARAM_TYPE_RESOLUTION:I

    .line 121
    iput v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->PARAM_TYPE_SYNC_WHITELIST:I

    .line 122
    iput v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->PARAM_TYPE_SYNC_RESTRICT:I

    .line 123
    iput v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->PARAM_TYPE_ALIGN_CONFIG:I

    .line 124
    const/4 v2, 0x4

    iput v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->PARAM_TYPE_ADD_TAOST:I

    .line 125
    const/4 v2, 0x5

    iput v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->PARAM_TYPE_REMOVE_TOAST:I

    .line 134
    new-instance v2, Landroid/util/ArrayMap;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mPkgResolutionPolicy:Landroid/util/ArrayMap;

    .line 135
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mPkgBackLight:Ljava/util/List;

    .line 136
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mDisallowToastApks:Ljava/util/Set;

    .line 137
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mSyncWhitelist:Landroid/util/ArraySet;

    .line 138
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mFloatNoticeApp:Ljava/util/List;

    .line 139
    iput-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mNeedControlSync:Z

    .line 913
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidAllow:Landroid/util/SparseBooleanArray;

    .line 915
    new-instance v2, Landroid/util/LocalLog;

    sget-boolean v3, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v3, :cond_83

    const/16 v3, 0x200

    goto :goto_85

    :cond_83
    const/16 v3, 0x100

    :goto_85
    invoke-direct {v2, v3}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLocalLog:Landroid/util/LocalLog;

    .line 170
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mPolicyLock:Ljava/lang/Object;

    .line 171
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    .line 172
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    .line 174
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmUidData:Landroid/util/SparseIntArray;

    .line 175
    iput v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmDataTotal:I

    .line 176
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastTypeData:Ljava/util/Map;

    .line 177
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastUidData:Landroid/util/SparseIntArray;

    .line 178
    iput v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastDataTotal:I

    .line 179
    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->pushAlarmLeaderIntent:Landroid/content/Intent;

    .line 180
    const/4 v2, -0x1

    iput v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->pushAlarmLeaderUid:I

    .line 181
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidPushAlarmStat:Landroid/util/SparseBooleanArray;

    .line 182
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidPushAlarmProperty:Landroid/util/SparseArray;

    .line 183
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mFloatNoticeApp:Ljava/util/List;

    const-string v3, "com.tencent.mm"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mFloatNoticeApp:Ljava/util/List;

    const-string v3, "com.tencent.mobileqq"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->getAffinityRoot()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->AFFINITY_ROOT:Ljava/lang/String;

    .line 187
    :try_start_df
    const-string v2, "com.android.server.power.PowerManagerServiceImpl"

    .line 188
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    .line 187
    invoke-static {v2, v0}, Lmiui/util/ReflectionUtils;->tryNewInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->powerManagerServiceImpl:Ljava/lang/Object;
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_ed} :catch_ee

    .line 191
    goto :goto_ef

    .line 189
    :catch_ee
    move-exception v0

    .line 193
    :goto_ef
    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;

    .line 194
    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    .line 195
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidBroadcastStat:Landroid/util/SparseBooleanArray;

    .line 196
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBrdcastUidTypeInfo:Landroid/util/SparseArray;

    .line 197
    return-void

    :array_102
    .array-data 4
        0x120
        0x1020
        0x1020
    .end array-data
.end method

.method private blacklist dumpBrdCastManageInfo(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 785
    const-string v0, "---------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 786
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 787
    .local v0, "jsonArray":Lorg/json/JSONArray;
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBrdcastUidTypeInfo:Landroid/util/SparseArray;

    monitor-enter v1

    .line 789
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    :try_start_e
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBrdcastUidTypeInfo:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_80

    .line 790
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 791
    .local v3, "jsonForApp":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBrdcastUidTypeInfo:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/miui/whetstone/PowerKeeperPolicy;->getPkgNameByUid(I)Ljava/lang/String;

    move-result-object v4

    .line 792
    .local v4, "pkgName":Ljava/lang/String;
    if-nez v4, :cond_32

    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBrdcastUidTypeInfo:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 793
    :cond_32
    const-string v5, "pkgName"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 794
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 795
    .local v5, "broadCastArray":Lorg/json/JSONArray;
    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBrdcastUidTypeInfo:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 796
    .local v6, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_74

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 797
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 798
    .local v9, "jsonBroadCast":Lorg/json/JSONObject;
    const-string v10, "Name"

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 799
    const-string v10, "Cnts"

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 800
    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 801
    nop

    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v9    # "jsonBroadCast":Lorg/json/JSONObject;
    goto :goto_4c

    .line 802
    :cond_74
    const-string v7, "broadcast"

    invoke-virtual {v3, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 803
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_7c
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_7c} :catch_83
    .catchall {:try_start_e .. :try_end_7c} :catchall_81

    .line 789
    nop

    .end local v3    # "jsonForApp":Lorg/json/JSONObject;
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "broadCastArray":Lorg/json/JSONArray;
    .end local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 808
    .end local v2    # "i":I
    :cond_80
    goto :goto_8b

    .line 809
    :catchall_81
    move-exception v2

    goto :goto_ac

    .line 806
    :catch_83
    move-exception v2

    .line 807
    .local v2, "e":Lorg/json/JSONException;
    :try_start_84
    const-string v3, "PowerKeeperPolicy"

    const-string v4, "dumpBrdCastManageInfo"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 809
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_8b
    monitor-exit v1
    :try_end_8c
    .catchall {:try_start_84 .. :try_end_8c} :catchall_81

    .line 810
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadCastInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 811
    const-string v1, "---------------------------------------------"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 812
    return-void

    .line 809
    :goto_ac
    :try_start_ac
    monitor-exit v1
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_81

    throw v2
.end method

.method private static blacklist getAffinityRoot()Ljava/lang/String;
    .registers 8

    .line 1202
    const-string v0, "/sys/module/migt/parameters"

    const-string v1, "/sys/module/turbo_sched/paraments"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 1206
    .local v0, "files":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_48

    aget-object v3, v0, v2

    .line 1207
    .local v3, "str":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1208
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_45

    .line 1209
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/reset_clus_affinity_uidlist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    .line 1210
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_45

    return-object v3

    .line 1206
    .end local v3    # "str":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1213
    :cond_48
    const-string v1, "PowerKeeperPolicy"

    const-string v2, "can not find cluster affinity files"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist getAppPushAlarmLeaderIntent()Landroid/content/Intent;
    .registers 3

    .line 775
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 776
    :try_start_3
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->pushAlarmLeaderIntent:Landroid/content/Intent;

    monitor-exit v0

    return-object v1

    .line 777
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static blacklist getInstance()Lcom/miui/whetstone/PowerKeeperPolicy;
    .registers 3

    .line 200
    sget-object v0, Lcom/miui/whetstone/PowerKeeperPolicy;->sInstance:Lcom/miui/whetstone/PowerKeeperPolicy;

    if-nez v0, :cond_1f

    .line 201
    const-class v0, Lcom/miui/whetstone/PowerKeeperPolicy;

    monitor-enter v0

    .line 202
    :try_start_7
    sget-object v1, Lcom/miui/whetstone/PowerKeeperPolicy;->sInstance:Lcom/miui/whetstone/PowerKeeperPolicy;

    if-nez v1, :cond_1a

    .line 203
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 204
    .local v1, "cld":Ljava/lang/ClassLoader;
    new-instance v2, Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-direct {v2, v1}, Lcom/miui/whetstone/PowerKeeperPolicy;-><init>(Ljava/lang/ClassLoader;)V

    sput-object v2, Lcom/miui/whetstone/PowerKeeperPolicy;->sInstance:Lcom/miui/whetstone/PowerKeeperPolicy;

    .line 206
    .end local v1    # "cld":Ljava/lang/ClassLoader;
    :cond_1a
    monitor-exit v0

    goto :goto_1f

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v1

    .line 208
    :cond_1f
    :goto_1f
    sget-object v0, Lcom/miui/whetstone/PowerKeeperPolicy;->sInstance:Lcom/miui/whetstone/PowerKeeperPolicy;

    return-object v0
.end method

.method private blacklist getPkgNameByUid(I)Ljava/lang/String;
    .registers 4
    .param p1, "uid"    # I

    .line 780
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 781
    .local v0, "packagesForUid":[Ljava/lang/String;
    if-eqz v0, :cond_14

    array-length v1, v0

    if-nez v1, :cond_10

    goto :goto_14

    .line 782
    :cond_10
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 781
    :cond_14
    :goto_14
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist hasAlarmRestrict(ILjava/lang/String;)Z
    .registers 8
    .param p1, "uid"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 412
    const/4 v0, 0x0

    .line 414
    .local v0, "ret":Z
    const/4 v1, 0x0

    .line 415
    .local v1, "tags":[Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    monitor-enter v2

    .line 416
    :try_start_5
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v1, v3

    .line 417
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_59

    .line 419
    if-eqz v1, :cond_28

    .line 422
    :try_start_11
    const-string v2, ":"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3
    :try_end_1a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_11 .. :try_end_1a} :catch_26

    .line 425
    .local v2, "operateTag":Ljava/lang/String;
    nop

    .line 426
    array-length v3, v1

    if-eqz v3, :cond_24

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 427
    :cond_24
    const/4 v0, 0x1

    goto :goto_28

    .line 423
    .end local v2    # "operateTag":Ljava/lang/String;
    :catch_26
    move-exception v2

    .line 424
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    return v0

    .line 430
    .end local v2    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_28
    :goto_28
    sget-boolean v2, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v2, :cond_58

    const-string v2, "PowerKeeperPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasAlarmRestrict uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_58
    return v0

    .line 417
    :catchall_59
    move-exception v3

    :try_start_5a
    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v3
.end method

.method private blacklist hasBroadcastRestrict(ILjava/lang/String;)Z
    .registers 8
    .param p1, "uid"    # I
    .param p2, "type"    # Ljava/lang/String;

    .line 441
    const/4 v0, 0x0

    .line 443
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mPolicyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 445
    :try_start_4
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 446
    .local v2, "broadcastRestrictTypes":[Ljava/lang/String;
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_33

    .line 448
    if-eqz v2, :cond_32

    if-eqz p2, :cond_32

    .line 449
    array-length v1, v2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_21

    const-string v1, "a.jack.bc.1"

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 451
    return v3

    .line 453
    :cond_21
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_22
    array-length v3, v2

    if-ge v1, v3, :cond_32

    .line 454
    aget-object v3, v2, v1

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 456
    const/4 v0, 0x1

    .line 457
    goto :goto_32

    .line 453
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 461
    .end local v1    # "i":I
    :cond_32
    :goto_32
    return v0

    .line 446
    .end local v2    # "broadcastRestrictTypes":[Ljava/lang/String;
    :catchall_33
    move-exception v2

    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v2
.end method

.method private blacklist logdWithLocal(Ljava/lang/String;)V
    .registers 3
    .param p1, "logStr"    # Ljava/lang/String;

    .line 1167
    sget-boolean v0, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 1168
    const-string v0, "PowerKeeperPolicy"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    :cond_9
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1171
    return-void
.end method

.method private blacklist logeWithLocal(Ljava/lang/String;)V
    .registers 3
    .param p1, "logStr"    # Ljava/lang/String;

    .line 1174
    const-string v0, "PowerKeeperPolicy"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1176
    return-void
.end method

.method private blacklist parseArrayMap(Ljava/lang/String;)Landroid/util/ArrayMap;
    .registers 9
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1401
    if-eqz p1, :cond_5c

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_5c

    .line 1404
    :cond_9
    new-instance v0, Landroid/util/ArrayMap;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1405
    .local v0, "ret":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1406
    .local v1, "keyValueArray":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    array-length v3, v1

    if-ge v2, v3, :cond_5b

    .line 1407
    aget-object v3, v1, v2

    if-eqz v3, :cond_58

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1408
    goto :goto_58

    .line 1410
    :cond_27
    aget-object v3, v1, v2

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1411
    .local v3, "keyValue":[Ljava/lang/String;
    if-eqz v3, :cond_58

    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_58

    const/4 v4, 0x0

    aget-object v5, v3, v4

    if-eqz v5, :cond_58

    aget-object v5, v3, v4

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_43

    .line 1412
    goto :goto_58

    .line 1414
    :cond_43
    const/4 v5, 0x0

    .line 1416
    .local v5, "resolution":I
    const/4 v6, 0x1

    :try_start_45
    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4b} :catch_57

    move v5, v6

    .line 1419
    nop

    .line 1420
    aget-object v4, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_58

    .line 1417
    :catch_57
    move-exception v4

    .line 1406
    .end local v3    # "keyValue":[Ljava/lang/String;
    .end local v5    # "resolution":I
    :cond_58
    :goto_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 1422
    .end local v2    # "i":I
    :cond_5b
    return-object v0

    .line 1402
    .end local v0    # "ret":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "keyValueArray":[Ljava/lang/String;
    :cond_5c
    :goto_5c
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist readProcNameFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "file"    # Ljava/lang/String;

    .line 1382
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1383
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_13

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1384
    return-object v2

    .line 1386
    :cond_13
    :try_start_13
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_70

    .line 1387
    .local v1, "stream":Ljava/io/FileInputStream;
    :try_start_18
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_66

    .line 1388
    .local v3, "reader":Ljava/io/InputStreamReader;
    :try_start_1d
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_5c

    .line 1389
    .local v4, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_22
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 1390
    .local v5, "pName":Ljava/lang/String;
    if-eqz v5, :cond_48

    .line 1391
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x0

    const/16 v8, 0x20

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6
    :try_end_3c
    .catchall {:try_start_22 .. :try_end_3c} :catchall_52

    move-object v5, v6

    .line 1392
    nop

    .line 1394
    :try_start_3e
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_5c

    :try_start_41
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_66

    :try_start_44
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_70

    .line 1392
    return-object v5

    .line 1394
    .end local v5    # "pName":Ljava/lang/String;
    :cond_48
    :try_start_48
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_5c

    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    :try_start_4b
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_66

    .end local v3    # "reader":Ljava/io/InputStreamReader;
    :try_start_4e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_70

    .line 1396
    .end local v1    # "stream":Ljava/io/FileInputStream;
    goto :goto_78

    .line 1386
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "reader":Ljava/io/InputStreamReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    :catchall_52
    move-exception v5

    :try_start_53
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_57

    goto :goto_5b

    :catchall_57
    move-exception v6

    :try_start_58
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "stream":Ljava/io/FileInputStream;
    .end local v3    # "reader":Ljava/io/InputStreamReader;
    .end local p0    # "file":Ljava/lang/String;
    :goto_5b
    throw v5
    :try_end_5c
    .catchall {:try_start_58 .. :try_end_5c} :catchall_5c

    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "f":Ljava/io/File;
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "reader":Ljava/io/InputStreamReader;
    .restart local p0    # "file":Ljava/lang/String;
    :catchall_5c
    move-exception v4

    :try_start_5d
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_61

    goto :goto_65

    :catchall_61
    move-exception v5

    :try_start_62
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "stream":Ljava/io/FileInputStream;
    .end local p0    # "file":Ljava/lang/String;
    :goto_65
    throw v4
    :try_end_66
    .catchall {:try_start_62 .. :try_end_66} :catchall_66

    .end local v3    # "reader":Ljava/io/InputStreamReader;
    .restart local v0    # "f":Ljava/io/File;
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    .restart local p0    # "file":Ljava/lang/String;
    :catchall_66
    move-exception v3

    :try_start_67
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_6b

    goto :goto_6f

    :catchall_6b
    move-exception v4

    :try_start_6c
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "f":Ljava/io/File;
    .end local p0    # "file":Ljava/lang/String;
    :goto_6f
    throw v3
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_70} :catch_70

    .line 1394
    .end local v1    # "stream":Ljava/io/FileInputStream;
    .restart local v0    # "f":Ljava/io/File;
    .restart local p0    # "file":Ljava/lang/String;
    :catch_70
    move-exception v1

    .line 1395
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "PowerKeeperPolicy"

    const-string v4, "read file failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1397
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_78
    return-object v2
.end method

.method private blacklist restoreAlarm()V
    .registers 3

    .line 1185
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1186
    :try_start_3
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1187
    monitor-exit v0

    .line 1188
    return-void

    .line 1187
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private blacklist restoreAutoStartCtrl()V
    .registers 3

    .line 1197
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAutoStartDisabledUids:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 1198
    :try_start_3
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAutoStartDisabledUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1199
    monitor-exit v0

    .line 1200
    return-void

    .line 1199
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private blacklist restoreBlockedWakelock()V
    .registers 3

    .line 1191
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1192
    :try_start_3
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1193
    monitor-exit v0

    .line 1194
    return-void

    .line 1193
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private blacklist restoreBroadcast()V
    .registers 3

    .line 405
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidBroadcastStat:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 406
    :try_start_3
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidBroadcastStat:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 407
    monitor-exit v0

    .line 408
    return-void

    .line 407
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private blacklist restoreBroadcastCtrl()V
    .registers 3

    .line 435
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidBroadcastStat:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 436
    :try_start_3
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidBroadcastStat:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 437
    monitor-exit v0

    .line 438
    return-void

    .line 437
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private blacklist restoreClusterCtrl()V
    .registers 5

    .line 1218
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->AFFINITY_ROOT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/reset_clus_affinity_uidlist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1219
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 1220
    :try_start_26
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2b} :catch_42

    .line 1221
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_2b
    const-string v2, "1"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_38

    .line 1222
    :try_start_34
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_42

    .line 1224
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5f

    .line 1220
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catchall_38
    move-exception v2

    :try_start_39
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_41

    :catchall_3d
    move-exception v3

    :try_start_3e
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "file":Ljava/io/File;
    .end local p0    # "this":Lcom/miui/whetstone/PowerKeeperPolicy;
    :goto_41
    throw v2
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_42} :catch_42

    .line 1222
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "file":Ljava/io/File;
    .restart local p0    # "this":Lcom/miui/whetstone/PowerKeeperPolicy;
    :catch_42
    move-exception v1

    .line 1223
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeToFile, IOException e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PowerKeeperPolicy"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    .end local v1    # "e":Ljava/io/IOException;
    :cond_5f
    :goto_5f
    return-void
.end method

.method private blacklist restoreFakeGpsStatus()V
    .registers 3

    .line 1179
    const-string v0, "PowerKeeperPolicy"

    const-string v1, "restore miui gps status"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    return-void
.end method

.method private blacklist setAlignConfig([Landroid/os/Parcelable;Z)V
    .registers 11
    .param p1, "policies"    # [Landroid/os/Parcelable;
    .param p2, "enable"    # Z

    .line 290
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmAlignWhite:Landroid/util/SparseArray;

    monitor-enter v0

    .line 291
    :try_start_3
    iput-boolean p2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlignEnable:Z

    .line 292
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmAlignWhite:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 293
    if-nez p1, :cond_e

    monitor-exit v0

    return-void

    .line 295
    :cond_e
    array-length v1, p1

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_5a

    aget-object v3, p1, v2

    .line 296
    .local v3, "parcelable":Landroid/os/Parcelable;
    move-object v4, v3

    check-cast v4, Lcom/miui/whetstone/AlarmPolicy;

    .line 297
    .local v4, "policy":Lcom/miui/whetstone/AlarmPolicy;
    iget-object v5, v4, Lcom/miui/whetstone/AlarmPolicy;->mTags:[Ljava/lang/String;

    if-nez v5, :cond_23

    .line 298
    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmAlignWhite:Landroid/util/SparseArray;

    iget v6, v4, Lcom/miui/whetstone/AlarmPolicy;->mUid:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_2c

    .line 300
    :cond_23
    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmAlignWhite:Landroid/util/SparseArray;

    iget v6, v4, Lcom/miui/whetstone/AlarmPolicy;->mUid:I

    iget-object v7, v4, Lcom/miui/whetstone/AlarmPolicy;->mTags:[Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 302
    :goto_2c
    const-string v5, "PowerKeeperPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAlignConfig uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/miui/whetstone/AlarmPolicy;->mUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " tags:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/miui/whetstone/AlarmPolicy;->mTags:[Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    nop

    .end local v3    # "parcelable":Landroid/os/Parcelable;
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 304
    .end local v4    # "policy":Lcom/miui/whetstone/AlarmPolicy;
    :cond_5a
    monitor-exit v0

    .line 305
    return-void

    .line 304
    :catchall_5c
    move-exception v1

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_3 .. :try_end_5e} :catchall_5c

    throw v1
.end method

.method private blacklist toStringQuietly(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 1470
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    .line 1473
    .local v0, "ret":Ljava/lang/String;
    goto :goto_b

    .line 1471
    .end local v0    # "ret":Ljava/lang/String;
    :catch_5
    move-exception v0

    .line 1472
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 1474
    .local v0, "ret":Ljava/lang/String;
    :goto_b
    return-object v0
.end method


# virtual methods
.method public blacklist bleScanInit()V
    .registers 1

    .line 918
    return-void
.end method

.method public blacklist checkNetworkState(Ljava/lang/String;ILcom/miui/whetstone/INetStateCallback;)V
    .registers 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "netId"    # I
    .param p3, "callback"    # Lcom/miui/whetstone/INetStateCallback;

    .line 965
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_9

    return-void

    .line 966
    :cond_9
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/miui/whetstone/PowerKeeperPolicy$2;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/miui/whetstone/PowerKeeperPolicy$2;-><init>(Lcom/miui/whetstone/PowerKeeperPolicy;ILjava/lang/String;Lcom/miui/whetstone/INetStateCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1006
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1007
    return-void
.end method

.method public whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 814
    const-string v0, "\nDump of PowerKeeperPolicy:\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 815
    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_1b

    aget-object v3, p3, v2

    .line 816
    .local v3, "arg":Ljava/lang/String;
    const-string v4, "broadCastInfo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 817
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/whetstone/PowerKeeperPolicy;->dumpBrdCastManageInfo(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 818
    return-void

    .line 815
    .end local v3    # "arg":Ljava/lang/String;
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 822
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x400

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 823
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmAlignWhite:Landroid/util/SparseArray;

    monitor-enter v3

    .line 824
    :try_start_2b
    const-string v4, "mAlignEnable: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlignEnable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 825
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmAlignWhite:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 826
    .local v4, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_41
    const/16 v6, 0x5b

    if-ge v5, v4, :cond_78

    .line 827
    iget-object v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmAlignWhite:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 828
    .local v7, "temp":[Ljava/lang/String;
    if-nez v7, :cond_50

    .line 829
    goto :goto_75

    .line 831
    :cond_50
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmAlignWhite:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "]="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 832
    array-length v8, v7

    if-nez v8, :cond_6a

    const-string v8, "all"

    goto :goto_6e

    :cond_6a
    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    :goto_6e
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 826
    .end local v7    # "temp":[Ljava/lang/String;
    :goto_75
    add-int/lit8 v5, v5, 0x1

    goto :goto_41

    .line 834
    .end local v4    # "size":I
    .end local v5    # "i":I
    :cond_78
    monitor-exit v3
    :try_end_79
    .catchall {:try_start_2b .. :try_end_79} :catchall_3c1

    .line 835
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "====mAlarmAlignWhite:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 837
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 838
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    monitor-enter v4

    .line 839
    :try_start_95
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 840
    .local v3, "size":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_9c
    if-ge v5, v3, :cond_d1

    .line 841
    iget-object v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 842
    .restart local v7    # "temp":[Ljava/lang/String;
    if-nez v7, :cond_a9

    .line 843
    goto :goto_ce

    .line 845
    :cond_a9
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 846
    array-length v9, v7

    if-nez v9, :cond_c3

    const-string v9, "all"

    goto :goto_c7

    :cond_c3
    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    :goto_c7
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 840
    .end local v7    # "temp":[Ljava/lang/String;
    :goto_ce
    add-int/lit8 v5, v5, 0x1

    goto :goto_9c

    .line 848
    .end local v3    # "size":I
    .end local v5    # "i":I
    :cond_d1
    monitor-exit v4
    :try_end_d2
    .catchall {:try_start_95 .. :try_end_d2} :catchall_3be

    .line 849
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "====mAlarmRestricts:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 851
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 852
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n====Total block alarm "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmDataTotal:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " times"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmUidData:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    .line 854
    .local v2, "statSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_110
    if-ge v3, v2, :cond_141

    .line 855
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nmAlarmUidData["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmUidData:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmUidData:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    add-int/lit8 v3, v3, 0x1

    goto :goto_110

    .line 857
    .end local v3    # "i":I
    :cond_141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 859
    const-string v3, "\n====mBroadcastRestricts:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 860
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_14e
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1a6

    .line 861
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "------["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 862
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    array-length v5, v4

    move v6, v1

    :goto_186
    if-ge v6, v5, :cond_1a3

    aget-object v7, v4, v6

    .line 863
    .local v7, "item":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "----------"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 862
    .end local v7    # "item":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_186

    .line 860
    :cond_1a3
    add-int/lit8 v3, v3, 0x1

    goto :goto_14e

    .line 867
    .end local v3    # "i":I
    :cond_1a6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n====Total block broadcast "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastDataTotal:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " times"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 868
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastTypeData:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1ce
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_205

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 870
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mBroadcastTypeData["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 871
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_1ce

    .line 872
    :cond_205
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_206
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastUidData:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_23d

    .line 873
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastUidData:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 874
    .local v3, "key":I
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastUidData:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    .line 875
    .local v4, "times":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mBroadcastUidData["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 872
    .end local v3    # "key":I
    .end local v4    # "times":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_206

    .line 878
    .end local v1    # "i":I
    :cond_23d
    const-string v1, "\n====mBlockedWakelocks====\n\t"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 879
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_243
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_29e

    .line 880
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 881
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_298

    .line 882
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " tags:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_29b

    .line 884
    :cond_298
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 879
    :goto_29b
    add-int/lit8 v1, v1, 0x1

    goto :goto_243

    .line 887
    .end local v1    # "i":I
    :cond_29e
    const-string v1, "\n====mUidBroadcastStat====\n\t"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 888
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidBroadcastStat:Landroid/util/SparseBooleanArray;

    monitor-enter v1

    .line 889
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2a7
    :try_start_2a7
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidBroadcastStat:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2de

    .line 890
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidBroadcastStat:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " policy = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidBroadcastStat:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 889
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a7

    .line 892
    .end local v3    # "i":I
    :cond_2de
    monitor-exit v1
    :try_end_2df
    .catchall {:try_start_2a7 .. :try_end_2df} :catchall_3bb

    .line 893
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n====AppBGIdleFeatureIs===="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->getAppBGIdleFeatureEnable()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 894
    invoke-virtual {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->getAppBGIdleFeatureEnable()Z

    move-result v1

    if-eqz v1, :cond_33f

    .line 895
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleLevel:Landroid/util/SparseIntArray;

    monitor-enter v1

    .line 896
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_303
    :try_start_303
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleLevel:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_33a

    .line 897
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleLevel:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " level = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleLevel:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 896
    add-int/lit8 v3, v3, 0x1

    goto :goto_303

    .line 899
    .end local v3    # "i":I
    :cond_33a
    monitor-exit v1

    goto :goto_33f

    :catchall_33c
    move-exception v3

    monitor-exit v1
    :try_end_33e
    .catchall {:try_start_303 .. :try_end_33e} :catchall_33c

    throw v3

    .line 901
    :cond_33f
    :goto_33f
    const-string v1, "\n====AutoStartDisabledUids====\n\t"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 902
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAutoStartDisabledUids:Landroid/util/SparseBooleanArray;

    monitor-enter v3

    .line 903
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_348
    :try_start_348
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAutoStartDisabledUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_36f

    .line 904
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAutoStartDisabledUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 903
    add-int/lit8 v1, v1, 0x1

    goto :goto_348

    .line 906
    .end local v1    # "i":I
    :cond_36f
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 907
    monitor-exit v3
    :try_end_373
    .catchall {:try_start_348 .. :try_end_373} :catchall_3b8

    .line 908
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n====PkgResolutionPolicy====\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mPkgResolutionPolicy:Landroid/util/ArrayMap;

    invoke-direct {p0, v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->toStringQuietly(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 909
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n====mNeedControlSync====\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mNeedControlSync:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " list="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mSyncWhitelist:Landroid/util/ArraySet;

    invoke-direct {p0, v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->toStringQuietly(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 910
    return-void

    .line 907
    :catchall_3b8
    move-exception v1

    :try_start_3b9
    monitor-exit v3
    :try_end_3ba
    .catchall {:try_start_3b9 .. :try_end_3ba} :catchall_3b8

    throw v1

    .line 892
    :catchall_3bb
    move-exception v3

    :try_start_3bc
    monitor-exit v1
    :try_end_3bd
    .catchall {:try_start_3bc .. :try_end_3bd} :catchall_3bb

    throw v3

    .line 848
    .end local v2    # "statSize":I
    :catchall_3be
    move-exception v1

    :try_start_3bf
    monitor-exit v4
    :try_end_3c0
    .catchall {:try_start_3bf .. :try_end_3c0} :catchall_3be

    throw v1

    .line 834
    :catchall_3c1
    move-exception v1

    :try_start_3c2
    monitor-exit v3
    :try_end_3c3
    .catchall {:try_start_3c2 .. :try_end_3c3} :catchall_3c1

    throw v1
.end method

.method public blacklist enableATrace(ZLjava/lang/String;)V
    .registers 6
    .param p1, "enable"    # Z
    .param p2, "filterProcess"    # Ljava/lang/String;

    .line 935
    const-string v0, "PowerKeeperPolicy"

    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;

    if-eqz v1, :cond_17

    .line 937
    :try_start_6
    invoke-interface {v1, p1, p2}, Lcom/miui/whetstone/IPowerKeeperClient;->enableATrace(ZLjava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_11
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_a

    goto :goto_17

    .line 940
    :catch_a
    move-exception v1

    .line 941
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "EnableATrace failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 938
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_11
    move-exception v1

    .line 939
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "EnableATrace remote failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 944
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_17
    :goto_17
    return-void
.end method

.method public blacklist getAlarmPolicies()[Lcom/miui/whetstone/AlarmPolicy;
    .registers 7

    .line 341
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    monitor-enter v0

    .line 342
    :try_start_3
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 343
    .local v1, "size":I
    new-array v2, v1, [Lcom/miui/whetstone/AlarmPolicy;

    .line 344
    .local v2, "policies":[Lcom/miui/whetstone/AlarmPolicy;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-ge v3, v1, :cond_27

    .line 345
    aget-object v4, v2, v3

    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    iput v5, v4, Lcom/miui/whetstone/AlarmPolicy;->mUid:I

    .line 346
    aget-object v4, v2, v3

    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iput-object v5, v4, Lcom/miui/whetstone/AlarmPolicy;->mTags:[Ljava/lang/String;

    .line 344
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 348
    .end local v1    # "size":I
    .end local v3    # "i":I
    :cond_27
    monitor-exit v0

    .line 350
    return-object v2

    .line 348
    .end local v2    # "policies":[Lcom/miui/whetstone/AlarmPolicy;
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public blacklist getAppBGIdleFeatureEnable()Z
    .registers 3

    .line 149
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleLevel:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 150
    :try_start_3
    iget-boolean v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleFeatureStatus:Z

    monitor-exit v0

    return v1

    .line 151
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist getAppBGIdleLevel(I)I
    .registers 5
    .param p1, "uid"    # I

    .line 163
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 164
    :cond_8
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleLevel:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 165
    :try_start_b
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleLevel:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    monitor-exit v0

    return v1

    .line 166
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v1
.end method

.method public blacklist getAppBroadcastControlStat(I)Z
    .registers 4
    .param p1, "uid"    # I

    .line 398
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 399
    :cond_8
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidBroadcastStat:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 400
    :try_start_b
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidBroadcastStat:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 401
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v1
.end method

.method public blacklist getAppPushAlarmFunc(I)Z
    .registers 5
    .param p1, "uid"    # I

    .line 752
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidPushAlarmStat:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 753
    :try_start_3
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidPushAlarmStat:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    .line 754
    .local v1, "result":Z
    monitor-exit v0

    return v1

    .line 755
    .end local v1    # "result":Z
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public blacklist getAppPushAlarmLeaderUid()I
    .registers 3

    .line 769
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 770
    :try_start_3
    iget v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->pushAlarmLeaderUid:I

    monitor-exit v0

    return v1

    .line 771
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist getAppPushAlarmProperty(I)Landroid/content/Intent;
    .registers 4
    .param p1, "uid"    # I

    .line 746
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidPushAlarmProperty:Landroid/util/SparseArray;

    monitor-enter v0

    .line 747
    :try_start_3
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidPushAlarmProperty:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    monitor-exit v0

    return-object v1

    .line 748
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public blacklist getBroadcastPolicies()[Lcom/miui/whetstone/BroadcastPolicy;
    .registers 6

    .line 378
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v0, v0, [Lcom/miui/whetstone/BroadcastPolicy;

    .line 379
    .local v0, "policies":[Lcom/miui/whetstone/BroadcastPolicy;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 380
    aget-object v2, v0, v1

    if-nez v2, :cond_16

    goto :goto_30

    .line 381
    :cond_16
    aget-object v2, v0, v1

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iput v3, v2, Lcom/miui/whetstone/BroadcastPolicy;->mUid:I

    .line 382
    aget-object v2, v0, v1

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    aget-object v4, v0, v1

    iget v4, v4, Lcom/miui/whetstone/BroadcastPolicy;->mUid:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iput-object v3, v2, Lcom/miui/whetstone/BroadcastPolicy;->mRestrictTypes:[Ljava/lang/String;

    .line 379
    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 385
    .end local v1    # "i":I
    :cond_33
    return-object v0
.end method

.method public blacklist getOomAdjByPid(Landroid/content/Context;I)I
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pid"    # I

    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, "oom_adj":Ljava/lang/String;
    const/4 v1, 0x0

    .line 252
    .local v1, "is":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 253
    .local v2, "isr":Ljava/io/InputStreamReader;
    const/4 v3, 0x0

    .line 255
    .local v3, "br":Ljava/io/BufferedReader;
    :try_start_4
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/proc/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/oom_adj"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v4

    .line 257
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v2, v4

    .line 258
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v4

    .line 259
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_38} :catch_4b
    .catchall {:try_start_4 .. :try_end_38} :catchall_49

    move-object v0, v4

    .line 263
    :try_start_39
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_3e

    :catch_3d
    move-exception v4

    .line 264
    :goto_3e
    :try_start_3e
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_43

    :catch_42
    move-exception v4

    .line 265
    :goto_43
    :try_start_43
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_66

    :catch_47
    move-exception v4

    .line 266
    goto :goto_66

    .line 263
    :catchall_49
    move-exception v4

    goto :goto_74

    .line 260
    :catch_4b
    move-exception v4

    .line 261
    .local v4, "e":Ljava/lang/Exception;
    :try_start_4c
    const-string v5, "PowerKeeperPolicy"

    const-string v6, "getOomAdjByPid"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_53
    .catchall {:try_start_4c .. :try_end_53} :catchall_49

    .line 263
    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_5a

    :try_start_55
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_5a

    :catch_59
    move-exception v4

    .line 264
    :cond_5a
    :goto_5a
    if-eqz v2, :cond_61

    :try_start_5c
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_61

    :catch_60
    move-exception v4

    .line 265
    :cond_61
    :goto_61
    if-eqz v1, :cond_66

    :try_start_63
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_47

    .line 267
    :cond_66
    :goto_66
    if-eqz v0, :cond_71

    .line 268
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    return v4

    .line 270
    :cond_71
    const/16 v4, -0x64

    return v4

    .line 263
    :goto_74
    if-eqz v3, :cond_7b

    :try_start_76
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7a

    goto :goto_7b

    :catch_7a
    move-exception v5

    .line 264
    :cond_7b
    :goto_7b
    if-eqz v2, :cond_82

    :try_start_7d
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_81

    goto :goto_82

    :catch_81
    move-exception v5

    .line 265
    :cond_82
    :goto_82
    if-eqz v1, :cond_89

    :try_start_84
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_88

    goto :goto_89

    :catch_88
    move-exception v5

    .line 266
    :cond_89
    :goto_89
    throw v4
.end method

.method public blacklist getPackageNameByPid(Landroid/content/Context;I)Ljava/lang/String;
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pid"    # I

    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 214
    .local v1, "is":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 215
    .local v2, "isr":Ljava/io/InputStreamReader;
    const/4 v3, 0x0

    .line 217
    .local v3, "br":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    :try_start_5
    new-instance v5, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/proc/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/cmdline"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v5

    .line 219
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v2, v5

    .line 220
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v5

    .line 221
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 222
    if-eqz v0, :cond_47

    .line 223
    const/16 v5, 0x20

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_46} :catch_59
    .catchall {:try_start_5 .. :try_end_46} :catchall_57

    move-object v0, v5

    .line 228
    :cond_47
    :try_start_47
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b

    goto :goto_4c

    :catch_4b
    move-exception v5

    .line 229
    :goto_4c
    :try_start_4c
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_51

    :catch_50
    move-exception v5

    .line 230
    :goto_51
    :try_start_51
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_74

    :catch_55
    move-exception v5

    .line 231
    goto :goto_74

    .line 228
    :catchall_57
    move-exception v4

    goto :goto_a9

    .line 225
    :catch_59
    move-exception v5

    .line 226
    .local v5, "e":Ljava/lang/Exception;
    :try_start_5a
    const-string v6, "PowerKeeperPolicy"

    const-string v7, "getPackageNameByPid"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_61
    .catchall {:try_start_5a .. :try_end_61} :catchall_57

    .line 228
    .end local v5    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_68

    :try_start_63
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_67

    goto :goto_68

    :catch_67
    move-exception v5

    .line 229
    :cond_68
    :goto_68
    if-eqz v2, :cond_6f

    :try_start_6a
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6e

    goto :goto_6f

    :catch_6e
    move-exception v5

    .line 230
    :cond_6f
    :goto_6f
    if-eqz v1, :cond_74

    :try_start_71
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_55

    .line 232
    :cond_74
    :goto_74
    if-nez v0, :cond_9a

    .line 233
    const-string v5, "activity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    .line 234
    .local v5, "manager":Landroid/app/ActivityManager;
    invoke-virtual {v5}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_86
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 235
    .local v7, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v8, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v8, p2, :cond_99

    .line 236
    iget-object v0, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 237
    goto :goto_9a

    .line 239
    .end local v7    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_99
    goto :goto_86

    .line 241
    .end local v5    # "manager":Landroid/app/ActivityManager;
    :cond_9a
    :goto_9a
    if-eqz v0, :cond_a8

    .line 242
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 243
    .local v5, "index":I
    if-lez v5, :cond_a8

    .line 244
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 247
    .end local v5    # "index":I
    :cond_a8
    return-object v0

    .line 228
    :goto_a9
    if-eqz v3, :cond_b0

    :try_start_ab
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_af

    goto :goto_b0

    :catch_af
    move-exception v5

    .line 229
    :cond_b0
    :goto_b0
    if-eqz v2, :cond_b7

    :try_start_b2
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b5} :catch_b6

    goto :goto_b7

    :catch_b6
    move-exception v5

    .line 230
    :cond_b7
    :goto_b7
    if-eqz v1, :cond_be

    :try_start_b9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_bc} :catch_bd

    goto :goto_be

    :catch_bd
    move-exception v5

    .line 231
    :cond_be
    :goto_be
    throw v4
.end method

.method public blacklist getPkgResolutionPolicy(Ljava/lang/String;)I
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;

    .line 1280
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mPkgResolutionPolicy:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1281
    :try_start_3
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mPkgResolutionPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1282
    .local v1, "policy":Ljava/lang/Integer;
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_15

    .line 1283
    if-nez v1, :cond_10

    .line 1284
    const/4 v0, 0x0

    return v0

    .line 1286
    :cond_10
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1282
    .end local v1    # "policy":Ljava/lang/Integer;
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public blacklist getPkgResolutionPolicyWithVersion(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "pkgVersion"    # Ljava/lang/String;

    .line 1290
    const/4 v0, 0x0

    .line 1291
    .local v0, "versionPolicy":Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mPkgResolutionPolicy:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1292
    :try_start_4
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mPkgResolutionPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 1293
    .local v2, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1294
    .local v4, "key":Ljava/lang/String;
    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_23

    .line 1295
    goto :goto_e

    .line 1297
    :cond_23
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1298
    .local v5, "tmp":Ljava/lang/String;
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6d

    .line 1299
    const-string v3, "-"

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1300
    .local v3, "keyArray":[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mPkgResolutionPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1301
    goto :goto_6e

    .line 1303
    .end local v3    # "keyArray":[Ljava/lang/String;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "tmp":Ljava/lang/String;
    :cond_6d
    goto :goto_e

    .line 1304
    .end local v2    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6e
    :goto_6e
    monitor-exit v1

    .line 1305
    return-object v0

    .line 1304
    :catchall_70
    move-exception v2

    monitor-exit v1
    :try_end_72
    .catchall {:try_start_4 .. :try_end_72} :catchall_70

    throw v2
.end method

.method public blacklist isAlarmAlignEnable(ILjava/lang/String;)Z
    .registers 7
    .param p1, "uid"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 280
    iget-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlignEnable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    goto :goto_29

    .line 281
    :cond_9
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 283
    .local v0, "appId":I
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmAlignWhite:Landroid/util/SparseArray;

    monitor-enter v2

    .line 284
    :try_start_10
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmAlignWhite:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 285
    .local v3, "tags":[Ljava/lang/String;
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_26

    .line 286
    if-eqz v3, :cond_24

    array-length v2, v3

    if-eqz v2, :cond_25

    invoke-static {v3, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    :cond_24
    const/4 v1, 0x1

    :cond_25
    return v1

    .line 285
    .end local v3    # "tags":[Ljava/lang/String;
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1

    .line 280
    .end local v0    # "appId":I
    :cond_29
    :goto_29
    return v1
.end method

.method public blacklist isAlarmAllowedLocked(IILjava/lang/String;)Z
    .registers 7
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "tag"    # Ljava/lang/String;

    .line 465
    const/4 v0, 0x1

    .line 466
    .local v0, "alarmAllowed":Z
    invoke-direct {p0, p2, p3}, Lcom/miui/whetstone/PowerKeeperPolicy;->hasAlarmRestrict(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 467
    const/4 v0, 0x0

    .line 468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAlarmAllowedLocked, uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",  tag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", return :false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PowerKeeperPolicy"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_30
    if-nez v0, :cond_46

    .line 473
    iget v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmDataTotal:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmDataTotal:I

    .line 474
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmUidData:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 475
    .local v1, "count":I
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmUidData:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 478
    .end local v1    # "count":I
    :cond_46
    return v0
.end method

.method public blacklist isAutoStartAllowedByPower(I)Z
    .registers 4
    .param p1, "uid"    # I

    .line 625
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAutoStartDisabledUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 626
    sget-boolean v0, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "auto start disable by power uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerKeeperPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_24
    const/4 v0, 0x0

    return v0

    .line 629
    :cond_26
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isBacklightEnable(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 1457
    iput-boolean p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mIsBacklightEable:Z

    .line 1458
    return-void
.end method

.method public blacklist isBroadcastAllowedLocked(IILjava/lang/String;)Z
    .registers 9
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "type"    # Ljava/lang/String;

    .line 482
    const/4 v0, 0x1

    .line 483
    .local v0, "broadcastAllowed":Z
    if-nez p3, :cond_4

    return v0

    .line 484
    :cond_4
    invoke-virtual {p0, p2}, Lcom/miui/whetstone/PowerKeeperPolicy;->getAppBroadcastControlStat(I)Z

    move-result v1

    if-nez v1, :cond_b

    return v0

    .line 485
    :cond_b
    invoke-direct {p0, p2, p3}, Lcom/miui/whetstone/PowerKeeperPolicy;->hasBroadcastRestrict(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 486
    const/4 v0, 0x0

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBroadcastAllowedLocked, uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", return :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PowerKeeperPolicy"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_3e
    if-nez v0, :cond_b2

    .line 491
    iget v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastDataTotal:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastDataTotal:I

    .line 492
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastTypeData:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 493
    .local v1, "count":Ljava/lang/Integer;
    const/4 v2, 0x0

    if-nez v1, :cond_55

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 494
    :cond_55
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastTypeData:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v1, v4

    invoke-interface {v3, p3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastUidData:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p2, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 496
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastUidData:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v1, v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, p2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 498
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBrdcastUidTypeInfo:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 499
    .local v3, "brdCastTypeData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v3, :cond_98

    .line 500
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v3, v4

    .line 501
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBrdcastUidTypeInfo:Landroid/util/SparseArray;

    invoke-virtual {v4, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 503
    :cond_98
    invoke-interface {v3, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 504
    .local v4, "cnt":Ljava/lang/Integer;
    if-nez v4, :cond_a4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 505
    :cond_a4
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v4, v2

    invoke-interface {v3, p3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    .end local v1    # "count":Ljava/lang/Integer;
    .end local v3    # "brdCastTypeData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "cnt":Ljava/lang/Integer;
    :cond_b2
    return v0
.end method

.method public blacklist isDisallowToastApks(I)Z
    .registers 6
    .param p1, "uid"    # I

    .line 1461
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mDisallowToastApks:Ljava/util/Set;

    monitor-enter v0

    .line 1462
    :try_start_3
    sget-boolean v1, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v1, :cond_21

    const-string v1, "PowerKeeperPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDisallowToastApks ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mDisallowToastApks:Ljava/util/Set;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    :cond_21
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mDisallowToastApks:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1464
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public blacklist isLeScanAllowed(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 930
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isProcessesRunning(Ljava/util/List;)Ljava/util/Map;
    .registers 21
    .param p1, "procList"    # Ljava/util/List;

    .line 1331
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_a

    return-object v1

    .line 1332
    :cond_a
    if-eqz p1, :cond_130

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    goto/16 :goto_130

    .line 1333
    :cond_14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v2, v0

    .line 1334
    .local v2, "resMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v3, "_main"

    .line 1336
    .local v3, "main":Ljava/lang/String;
    :try_start_1c
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1337
    .local v0, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_5c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1338
    .local v5, "task":Ljava/lang/Object;
    move-object v8, v5

    check-cast v8, Ljava/lang/String;

    const-string v9, "\\$"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1339
    .local v8, "thread":[Ljava/lang/String;
    aget-object v9, v8, v7

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArraySet;

    .line 1340
    .local v9, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v9, :cond_4f

    .line 1341
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    move-object v9, v10

    .line 1342
    aget-object v7, v8, v7

    invoke-virtual {v0, v7, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1344
    :cond_4f
    array-length v7, v8

    if-le v7, v6, :cond_58

    .line 1345
    aget-object v6, v8, v6

    invoke-virtual {v9, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    .line 1347
    :cond_58
    invoke-virtual {v9, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1349
    .end local v5    # "task":Ljava/lang/Object;
    .end local v8    # "thread":[Ljava/lang/String;
    .end local v9    # "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_5b
    goto :goto_25

    .line 1350
    :cond_5c
    new-instance v4, Ljava/io/File;

    const-string v5, "/proc"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1351
    .local v4, "procListDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_6a

    return-object v1

    .line 1352
    :cond_6a
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 1353
    .local v5, "fileList":[Ljava/lang/String;
    if-nez v5, :cond_71

    return-object v1

    .line 1354
    :cond_71
    array-length v1, v5

    move v8, v7

    :goto_73
    if-ge v8, v1, :cond_126

    aget-object v9, v5, v8

    .line 1355
    .local v9, "proc":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_83

    move/from16 v17, v6

    move/from16 v18, v7

    goto/16 :goto_11e

    .line 1356
    :cond_83
    const-string v10, "/proc/%s/status"

    new-array v11, v6, [Ljava/lang/Object;

    aput-object v9, v11, v7

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/miui/whetstone/PowerKeeperPolicy;->readProcNameFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1357
    .local v10, "pName":Ljava/lang/String;
    if-eqz v10, :cond_11a

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11a

    .line 1358
    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArraySet;

    .line 1359
    .local v11, "threadSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v11, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b0

    .line 1360
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1362
    :cond_b0
    new-instance v12, Ljava/io/File;

    const-string v13, "/proc/%s/task"

    new-array v14, v6, [Ljava/lang/Object;

    aput-object v9, v14, v7

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1363
    .local v12, "taskDir":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-nez v13, :cond_ca

    move/from16 v17, v6

    move/from16 v18, v7

    goto :goto_11e

    .line 1364
    :cond_ca
    invoke-virtual {v12}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v13

    .line 1365
    .local v13, "taskList":[Ljava/lang/String;
    if-nez v13, :cond_d5

    move/from16 v17, v6

    move/from16 v18, v7

    goto :goto_11e

    .line 1366
    :cond_d5
    array-length v14, v13

    move v15, v7

    :goto_d7
    if-ge v15, v14, :cond_115

    aget-object v16, v13, v15

    .line 1367
    .local v16, "task":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_e6

    move/from16 v17, v6

    move/from16 v18, v7

    goto :goto_10e

    .line 1368
    :cond_e6
    const-string v6, "proc/%s/task/%s/status"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v9, v7, v18

    const/16 v17, 0x1

    aput-object v16, v7, v17

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/whetstone/PowerKeeperPolicy;->readProcNameFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1369
    .local v6, "tName":Ljava/lang/String;
    if-eqz v6, :cond_10e

    invoke-virtual {v11, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10e

    .line 1370
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_10e} :catch_127

    .line 1366
    .end local v6    # "tName":Ljava/lang/String;
    .end local v16    # "task":Ljava/lang/String;
    :cond_10e
    :goto_10e
    add-int/lit8 v15, v15, 0x1

    move/from16 v6, v17

    move/from16 v7, v18

    goto :goto_d7

    :cond_115
    move/from16 v17, v6

    move/from16 v18, v7

    goto :goto_11e

    .line 1357
    .end local v11    # "threadSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v12    # "taskDir":Ljava/io/File;
    .end local v13    # "taskList":[Ljava/lang/String;
    :cond_11a
    move/from16 v17, v6

    move/from16 v18, v7

    .line 1354
    .end local v9    # "proc":Ljava/lang/String;
    .end local v10    # "pName":Ljava/lang/String;
    :goto_11e
    add-int/lit8 v8, v8, 0x1

    move/from16 v6, v17

    move/from16 v7, v18

    goto/16 :goto_73

    .line 1377
    .end local v0    # "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v4    # "procListDir":Ljava/io/File;
    .end local v5    # "fileList":[Ljava/lang/String;
    :cond_126
    goto :goto_12f

    .line 1375
    :catch_127
    move-exception v0

    .line 1376
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PowerKeeperPolicy"

    const-string v4, "isProcessesRunning"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1378
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_12f
    return-object v2

    .line 1332
    .end local v2    # "resMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v3    # "main":Ljava/lang/String;
    :cond_130
    :goto_130
    return-object v1
.end method

.method public blacklist isRestrictSync(Ljava/lang/String;I[Ljava/lang/Object;)Z
    .registers 9
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "reserved"    # [Ljava/lang/Object;

    .line 1308
    iget-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mNeedControlSync:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1309
    return v1

    .line 1312
    :cond_6
    const/4 v0, 0x0

    .line 1313
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-boolean v2, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    const-string v3, " pkgName="

    if-eqz v2, :cond_35

    .line 1314
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x100

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "isRestrictSync uid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1315
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1316
    if-eqz p3, :cond_35

    .line 1317
    const-string v2, " reserved="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1320
    :cond_35
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mSyncWhitelist:Landroid/util/ArraySet;

    .line 1321
    .local v2, "whiteList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 1322
    if-eqz v0, :cond_4e

    const-string v3, " false for whitelist"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PowerKeeperPolicy"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    :cond_4e
    return v1

    .line 1325
    :cond_4f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRestrictSync true uid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1326
    if-nez p3, :cond_6b

    const-string v3, ""

    goto :goto_6f

    :cond_6b
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_6f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1325
    invoke-direct {p0, v1}, Lcom/miui/whetstone/PowerKeeperPolicy;->logeWithLocal(Ljava/lang/String;)V

    .line 1327
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist isSmartBacklightApp(Ljava/lang/String;)Z
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;

    .line 1441
    iget-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mIsBacklightEable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_24

    .line 1442
    sget-boolean v0, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v0, :cond_23

    const-string v0, "PowerKeeperPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsBacklightEable ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mIsBacklightEable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    :cond_23
    return v1

    .line 1445
    :cond_24
    if-nez p1, :cond_27

    .line 1446
    return v1

    .line 1448
    :cond_27
    const/4 v0, 0x0

    .line 1449
    .local v0, "isBacklightApp":Z
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mPkgBackLight:Ljava/util/List;

    monitor-enter v1

    .line 1450
    :try_start_2b
    sget-boolean v2, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v2, :cond_51

    const-string v2, "PowerKeeperPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSmartBacklightApp pkg ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "isBacklightApp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    :cond_51
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mPkgBackLight:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .line 1452
    monitor-exit v1

    .line 1453
    return v0

    .line 1452
    :catchall_5a
    move-exception v2

    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_2b .. :try_end_5c} :catchall_5a

    throw v2
.end method

.method public blacklist isWakelockDisabledByPolicy(Ljava/lang/String;I)Z
    .registers 11
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 587
    const/4 v0, 0x0

    .line 588
    .local v0, "disabled":Z
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 589
    :try_start_4
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_3b

    .line 591
    const/4 v0, 0x1

    .line 592
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 593
    .local v2, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_3b

    .line 594
    const/4 v0, 0x0

    .line 595
    if-eqz p1, :cond_3b

    .line 596
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 598
    .local v4, "item":Ljava/lang/String;
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 599
    .local v5, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 600
    .local v6, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 601
    const/4 v0, 0x1

    .line 602
    goto :goto_3b

    .line 604
    .end local v4    # "item":Ljava/lang/String;
    .end local v5    # "p":Ljava/util/regex/Pattern;
    .end local v6    # "m":Ljava/util/regex/Matcher;
    :cond_3a
    goto :goto_1e

    .line 608
    .end local v2    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3b
    :goto_3b
    monitor-exit v1

    .line 609
    return v0

    .line 608
    :catchall_3d
    move-exception v2

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_4 .. :try_end_3f} :catchall_3d

    throw v2
.end method

.method public blacklist notifyBluetooth(IILjava/lang/String;I)V
    .registers 8
    .param p1, "state"    # I
    .param p2, "scene"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .line 654
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;

    if-eqz v0, :cond_10

    .line 656
    :try_start_4
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/miui/whetstone/IPowerKeeperClient;->notifyBluetooth(IILjava/lang/String;I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    .line 659
    goto :goto_10

    .line 657
    :catch_8
    move-exception v0

    .line 658
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PowerKeeperPolicy"

    const-string v2, "notifyBluetooth failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 661
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_10
    :goto_10
    return-void
.end method

.method public blacklist notifyEvent(ILandroid/os/Bundle;)V
    .registers 11
    .param p1, "event"    # I
    .param p2, "b"    # Landroid/os/Bundle;

    .line 675
    const/4 v0, 0x5

    if-ne p1, v0, :cond_32

    if-eqz p2, :cond_32

    .line 676
    const-string v0, "state"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    move v2, v1

    .line 677
    const-string v0, "type"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 678
    const-string v0, "uid"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v0, "pid"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 679
    const-string v0, "pkg"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "data"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 676
    invoke-static/range {v2 .. v7}, Lmiui/process/ProcessManager;->notifyBluetoothEvent(ZIIILjava/lang/String;I)V

    .line 681
    :cond_32
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;

    if-eqz v0, :cond_42

    .line 683
    :try_start_36
    invoke-interface {v0, p1, p2}, Lcom/miui/whetstone/IPowerKeeperClient;->notifyEvent(ILandroid/os/Bundle;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_3a

    .line 686
    goto :goto_42

    .line 684
    :catch_3a
    move-exception v0

    .line 685
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PowerKeeperPolicy"

    const-string v2, "notifyKeyEvent failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 688
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_42
    :goto_42
    return-void
.end method

.method public blacklist notifyFloatWindowScene(Ljava/lang/String;IZ)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "windowType"    # I
    .param p3, "status"    # Z

    .line 1488
    const-string v0, "PowerKeeperPolicy"

    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;

    if-eqz v1, :cond_41

    .line 1490
    const/16 v1, 0x7f6

    if-ne p2, v1, :cond_41

    :try_start_a
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mFloatNoticeApp:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1491
    sget-boolean v1, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v1, :cond_30

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Float scene Notify powerkeeper "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    :cond_30
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;

    invoke-interface {v1, p1, p3}, Lcom/miui/whetstone/IPowerKeeperClient;->notifyFloatWindowScene(Ljava/lang/String;Z)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_35} :catch_36

    goto :goto_41

    .line 1494
    :catch_36
    move-exception v1

    .line 1495
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v2, :cond_41

    const-string v2, "Notify PowerKeeper failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    .line 1498
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_41
    :goto_41
    return-void
.end method

.method public blacklist notifyFrozenAppWakeUpByHighPriorityAlarm(I)V
    .registers 5
    .param p1, "uid"    # I

    .line 691
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;

    if-eqz v0, :cond_10

    .line 693
    :try_start_4
    invoke-interface {v0, p1}, Lcom/miui/whetstone/IPowerKeeperClient;->notifyFrozenAppWakeUpByHighPriorityAlarm(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    .line 696
    goto :goto_10

    .line 694
    :catch_8
    move-exception v0

    .line 695
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PowerKeeperPolicy"

    const-string v2, "notifyFrozenAppWakeUpByBroacastReceive failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 698
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_10
    :goto_10
    return-void
.end method

.method public blacklist notifyKeyEvent(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "b"    # Landroid/os/Bundle;

    .line 664
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;

    if-eqz v0, :cond_11

    .line 666
    const/4 v1, 0x6

    :try_start_5
    invoke-interface {v0, v1, p1}, Lcom/miui/whetstone/IPowerKeeperClient;->notifyEvent(ILandroid/os/Bundle;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_9

    .line 670
    goto :goto_11

    .line 668
    :catch_9
    move-exception v0

    .line 669
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PowerKeeperPolicy"

    const-string v2, "notifyKeyEvent failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 672
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_11
    :goto_11
    return-void
.end method

.method public blacklist notifyScreenOn()V
    .registers 4

    .line 632
    const-string v0, "PowerKeeperPolicy"

    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;

    if-eqz v1, :cond_17

    .line 634
    :try_start_6
    const-string v1, "notifyScreenOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;

    invoke-interface {v1}, Lcom/miui/whetstone/IPowerKeeperClient;->notifyScreenOn()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_11

    .line 638
    goto :goto_17

    .line 636
    :catch_11
    move-exception v1

    .line 637
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "notifyScreenOn failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 640
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_17
    :goto_17
    return-void
.end method

.method public blacklist notifySyncEvent(IILjava/lang/String;Ljava/lang/String;[I)V
    .registers 12
    .param p1, "state"    # I
    .param p2, "scene"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "uids"    # [I

    .line 644
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;

    if-eqz v0, :cond_15

    .line 646
    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    :try_start_9
    invoke-interface/range {v0 .. v5}, Lcom/miui/whetstone/IPowerKeeperClient;->notifySyncEvent(IILjava/lang/String;Ljava/lang/String;[I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_d

    .line 649
    goto :goto_15

    .line 647
    :catch_d
    move-exception v0

    .line 648
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PowerKeeperPolicy"

    const-string v2, "notifySyncEvent failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 651
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_15
    :goto_15
    return-void
.end method

.method public blacklist notifyTouchStatus(Z)V
    .registers 5
    .param p1, "touch"    # Z

    .line 1478
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;

    if-eqz v0, :cond_10

    .line 1480
    :try_start_4
    invoke-interface {v0, p1}, Lcom/miui/whetstone/IPowerKeeperClient;->notifyTouchStatus(Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    .line 1483
    goto :goto_10

    .line 1481
    :catch_8
    move-exception v0

    .line 1482
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PowerKeeperPolicy"

    const-string v2, "Notify PowerKeeper failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1485
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_10
    :goto_10
    return-void
.end method

.method public blacklist offerPowerKeeperIBinder(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "b"    # Landroid/os/IBinder;

    .line 712
    invoke-static {p1}, Lcom/miui/whetstone/IPowerKeeperClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IPowerKeeperClient;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;

    .line 714
    :try_start_6
    new-instance v0, Lcom/miui/whetstone/PowerKeeperPolicy$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/whetstone/PowerKeeperPolicy$1;-><init>(Lcom/miui/whetstone/PowerKeeperPolicy;Landroid/os/IBinder;)V

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_f} :catch_10

    .line 735
    goto :goto_18

    .line 733
    :catch_10
    move-exception v0

    .line 734
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PowerKeeperPolicy"

    const-string v2, "offerPowerKeeperIBinder"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 736
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_18
    return-void
.end method

.method public blacklist perfThermalBreakAcquire(I)V
    .registers 5
    .param p1, "boostTimeOut"    # I

    .line 701
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;

    if-eqz v0, :cond_10

    .line 703
    :try_start_4
    invoke-interface {v0, p1}, Lcom/miui/whetstone/IPowerKeeperClient;->perfThermalBreakAcquire(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    .line 706
    goto :goto_10

    .line 704
    :catch_8
    move-exception v0

    .line 705
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PowerKeeperPolicy"

    const-string v2, "perfThermalBreakAcquire failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 708
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_10
    :goto_10
    return-void
.end method

.method public blacklist setAlarmPolicy([Lcom/miui/whetstone/AlarmPolicy;Z)V
    .registers 9
    .param p1, "policies"    # [Lcom/miui/whetstone/AlarmPolicy;
    .param p2, "clear"    # Z

    .line 311
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 312
    .local v0, "callerUid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_9

    return-void

    .line 313
    :cond_9
    sget-boolean v1, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v1, :cond_33

    const-string v1, "PowerKeeperPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAlarmPolicy clear="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " policies="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_33
    if-nez p1, :cond_45

    .line 315
    if-eqz p2, :cond_44

    .line 316
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    monitor-enter v1

    .line 317
    :try_start_3a
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 318
    monitor-exit v1

    goto :goto_44

    :catchall_41
    move-exception v2

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_3a .. :try_end_43} :catchall_41

    throw v2

    .line 320
    :cond_44
    :goto_44
    return-void

    .line 323
    :cond_45
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    monitor-enter v1

    .line 324
    const/4 v2, 0x1

    if-ne p2, v2, :cond_53

    :try_start_4b
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    goto :goto_53

    .line 335
    :catchall_51
    move-exception v2

    goto :goto_80

    .line 325
    :cond_53
    :goto_53
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_54
    array-length v3, p1

    if-ge v2, v3, :cond_7e

    .line 326
    aget-object v3, p1, v2

    if-nez v3, :cond_5c

    .line 327
    goto :goto_7b

    .line 329
    :cond_5c
    aget-object v3, p1, v2

    iget-object v3, v3, Lcom/miui/whetstone/AlarmPolicy;->mTags:[Ljava/lang/String;

    if-nez v3, :cond_6e

    .line 330
    if-nez p2, :cond_7b

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    aget-object v4, p1, v2

    iget v4, v4, Lcom/miui/whetstone/AlarmPolicy;->mUid:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_7b

    .line 333
    :cond_6e
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    aget-object v4, p1, v2

    iget v4, v4, Lcom/miui/whetstone/AlarmPolicy;->mUid:I

    aget-object v5, p1, v2

    iget-object v5, v5, Lcom/miui/whetstone/AlarmPolicy;->mTags:[Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 325
    :cond_7b
    :goto_7b
    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    .line 335
    .end local v2    # "i":I
    :cond_7e
    monitor-exit v1

    .line 336
    return-void

    .line 335
    :goto_80
    monitor-exit v1
    :try_end_81
    .catchall {:try_start_4b .. :try_end_81} :catchall_51

    throw v2
.end method

.method public blacklist setAppBGIdleFeatureEnable(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 143
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleLevel:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 144
    :try_start_3
    iput-boolean p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleFeatureStatus:Z

    .line 145
    monitor-exit v0

    .line 146
    return-void

    .line 145
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist setAppBGIdleLevel(II)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "level"    # I

    .line 155
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x2

    if-gt p2, v0, :cond_19

    if-gez p2, :cond_c

    goto :goto_19

    .line 157
    :cond_c
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleLevel:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 158
    :try_start_f
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleLevel:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 159
    monitor-exit v0

    .line 160
    return-void

    .line 159
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_16

    throw v1

    .line 156
    :cond_19
    :goto_19
    return-void
.end method

.method public blacklist setAppBroadcastControlStat(IZ)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "isBlocked"    # Z

    .line 390
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidBroadcastStat:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 391
    :try_start_3
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-nez v1, :cond_b

    monitor-exit v0

    return-void

    .line 392
    :cond_b
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidBroadcastStat:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 393
    monitor-exit v0

    .line 394
    return-void

    .line 393
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public blacklist setAppPushAlarmLeader(ILandroid/content/Intent;)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .line 760
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 761
    :try_start_3
    iput p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->pushAlarmLeaderUid:I

    .line 762
    iput-object p2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->pushAlarmLeaderIntent:Landroid/content/Intent;

    .line 763
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidPushAlarmProperty:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 764
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidPushAlarmStat:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 765
    monitor-exit v0

    .line 766
    return-void

    .line 765
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public blacklist setAppPushAlarmProperty(ILandroid/content/Intent;Z)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "isEnable"    # Z

    .line 739
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 740
    :try_start_3
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidPushAlarmProperty:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 741
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidPushAlarmStat:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 742
    monitor-exit v0

    .line 743
    return-void

    .line 742
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public blacklist setBacklightParam([Ljava/lang/String;)V
    .registers 6
    .param p1, "lightPkgs"    # [Ljava/lang/String;

    .line 1427
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mPkgBackLight:Ljava/util/List;

    monitor-enter v0

    .line 1428
    :try_start_3
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mPkgBackLight:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1429
    if-eqz p1, :cond_22

    .line 1430
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v2, p1

    if-ge v1, v2, :cond_22

    .line 1431
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mPkgBackLight:Ljava/util/List;

    aget-object v3, p1, v1

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 1432
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mPkgBackLight:Ljava/util/List;

    aget-object v3, p1, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1430
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1436
    .end local v1    # "i":I
    :cond_22
    const-string v1, "PowerKeeperPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBacklightParam lightPkgs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mPkgBackLight:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    monitor-exit v0

    .line 1438
    return-void

    .line 1437
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public blacklist setBroadcastPolicy([Lcom/miui/whetstone/BroadcastPolicy;Z)V
    .registers 8
    .param p1, "policies"    # [Lcom/miui/whetstone/BroadcastPolicy;
    .param p2, "clear"    # Z

    .line 359
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 360
    .local v0, "callerUid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_9

    return-void

    .line 362
    :cond_9
    if-nez p1, :cond_c

    return-void

    .line 363
    :cond_c
    const/4 v1, 0x1

    if-ne p2, v1, :cond_14

    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 365
    :cond_14
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    array-length v2, p1

    if-ge v1, v2, :cond_47

    .line 366
    aget-object v2, p1, v1

    if-nez v2, :cond_1d

    goto :goto_44

    .line 367
    :cond_1d
    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/miui/whetstone/BroadcastPolicy;->mRestrictTypes:[Ljava/lang/String;

    if-eqz v2, :cond_39

    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/miui/whetstone/BroadcastPolicy;->mRestrictTypes:[Ljava/lang/String;

    array-length v2, v2

    if-nez v2, :cond_2b

    goto :goto_39

    .line 371
    :cond_2b
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    aget-object v3, p1, v1

    iget v3, v3, Lcom/miui/whetstone/BroadcastPolicy;->mUid:I

    aget-object v4, p1, v1

    iget-object v4, v4, Lcom/miui/whetstone/BroadcastPolicy;->mRestrictTypes:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_44

    .line 368
    :cond_39
    :goto_39
    if-nez p2, :cond_44

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    aget-object v3, p1, v1

    iget v3, v3, Lcom/miui/whetstone/BroadcastPolicy;->mUid:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->delete(I)V

    .line 365
    :cond_44
    :goto_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 374
    .end local v1    # "i":I
    :cond_47
    return-void
.end method

.method public blacklist setContext(Landroid/content/Context;)V
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;

    .line 274
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    .line 275
    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    .line 277
    :cond_6
    return-void
.end method

.method public blacklist setLeScanFeature(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 922
    return-void
.end method

.method public blacklist setLeScanParam(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 926
    return-void
.end method

.method public blacklist setParam(ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 9
    .param p1, "paramType"    # I
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 1230
    sget-boolean v0, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v0, :cond_30

    const-string v1, "PowerKeeperPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setParam type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " s="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " b="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    :cond_30
    if-nez p1, :cond_4b

    .line 1232
    invoke-direct {p0, p2}, Lcom/miui/whetstone/PowerKeeperPolicy;->parseArrayMap(Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v1

    .line 1233
    .local v1, "pkgResolutionPolicy":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mPkgResolutionPolicy:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 1234
    :try_start_39
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mPkgResolutionPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1235
    if-eqz v1, :cond_45

    .line 1236
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mPkgResolutionPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 1238
    :cond_45
    monitor-exit v2

    .line 1239
    .end local v1    # "pkgResolutionPolicy":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto/16 :goto_14e

    .line 1238
    .restart local v1    # "pkgResolutionPolicy":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_48
    move-exception v0

    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_39 .. :try_end_4a} :catchall_48

    throw v0

    .line 1239
    .end local v1    # "pkgResolutionPolicy":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_4b
    const/4 v1, 0x1

    if-ne p1, v1, :cond_ab

    .line 1240
    if-eqz p2, :cond_9b

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9b

    .line 1241
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1242
    .local v0, "pkgArray":[Ljava/lang/String;
    new-instance v2, Landroid/util/ArraySet;

    array-length v3, v0

    add-int/2addr v3, v1

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(I)V

    move-object v1, v2

    .line 1243
    .local v1, "temp":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_65
    array-length v3, v0

    if-ge v2, v3, :cond_7d

    .line 1244
    aget-object v3, v0, v2

    if-eqz v3, :cond_7a

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_75

    .line 1245
    goto :goto_7a

    .line 1247
    :cond_75
    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1243
    :cond_7a
    :goto_7a
    add-int/lit8 v2, v2, 0x1

    goto :goto_65

    .line 1249
    .end local v2    # "i":I
    :cond_7d
    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mSyncWhitelist:Landroid/util/ArraySet;

    .line 1250
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLocalLog:Landroid/util/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSyncList\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mSyncWhitelist:Landroid/util/ArraySet;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1251
    .end local v0    # "pkgArray":[Ljava/lang/String;
    .end local v1    # "temp":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto/16 :goto_14e

    .line 1252
    :cond_9b
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLocalLog:Landroid/util/LocalLog;

    const-string v1, "setSyncList\uff1anull"

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1253
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mSyncWhitelist:Landroid/util/ArraySet;

    goto/16 :goto_14e

    .line 1255
    :cond_ab
    const/4 v1, 0x2

    if-ne p1, v1, :cond_d2

    .line 1256
    const-string v0, "true"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mNeedControlSync:Z

    .line 1257
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNeedControlSync"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mNeedControlSync:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto/16 :goto_14e

    .line 1258
    :cond_d2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_e6

    .line 1259
    const-string v0, "align_policy"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 1260
    .local v0, "alignPolicy":[Landroid/os/Parcelable;
    const-string v1, "align_enable"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1261
    .local v1, "enable":Z
    invoke-direct {p0, v0, v1}, Lcom/miui/whetstone/PowerKeeperPolicy;->setAlignConfig([Landroid/os/Parcelable;Z)V

    .line 1262
    .end local v0    # "alignPolicy":[Landroid/os/Parcelable;
    .end local v1    # "enable":Z
    goto :goto_14e

    :cond_e6
    const/4 v1, 0x4

    if-ne p1, v1, :cond_11a

    .line 1263
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mDisallowToastApks:Ljava/util/Set;

    monitor-enter v1

    .line 1264
    :try_start_ec
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mDisallowToastApks:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1265
    if-eqz v0, :cond_115

    const-string v0, "PowerKeeperPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Add mDisallowToastApks ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mDisallowToastApks:Ljava/util/Set;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    :cond_115
    monitor-exit v1

    goto :goto_14e

    :catchall_117
    move-exception v0

    monitor-exit v1
    :try_end_119
    .catchall {:try_start_ec .. :try_end_119} :catchall_117

    throw v0

    .line 1267
    :cond_11a
    const/4 v1, 0x5

    if-ne p1, v1, :cond_14e

    .line 1268
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mDisallowToastApks:Ljava/util/Set;

    monitor-enter v1

    .line 1269
    :try_start_120
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mDisallowToastApks:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1270
    if-eqz v0, :cond_149

    const-string v0, "PowerKeeperPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove mDisallowToastApks ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mDisallowToastApks:Ljava/util/Set;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    :cond_149
    monitor-exit v1

    goto :goto_14e

    :catchall_14b
    move-exception v0

    monitor-exit v1
    :try_end_14d
    .catchall {:try_start_120 .. :try_end_14d} :catchall_14b

    throw v0

    .line 1273
    :cond_14e
    :goto_14e
    return-void
.end method

.method public blacklist setUidAutoStartState(IZ)Z
    .registers 6
    .param p1, "uid"    # I
    .param p2, "enable"    # Z

    .line 614
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAutoStartDisabledUids:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 615
    const/4 v1, 0x1

    if-eqz p2, :cond_c

    .line 616
    :try_start_6
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAutoStartDisabledUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto :goto_11

    .line 618
    :cond_c
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAutoStartDisabledUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 620
    :goto_11
    monitor-exit v0

    return v1

    .line 621
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public blacklist startLeScan(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 948
    return-void
.end method

.method public blacklist startRecord(ZII)V
    .registers 12
    .param p1, "action"    # Z
    .param p2, "fd"    # I
    .param p3, "uid"    # I

    .line 952
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startRecord action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fd ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerKeeperPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    sget v3, Lmiui/process/ProcessManager;->BLE_TYPE_SOCKET:I

    .line 955
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 954
    const-string v6, ""

    move v2, p1

    move v4, p3

    move v7, p2

    invoke-static/range {v2 .. v7}, Lmiui/process/ProcessManager;->notifyBluetoothEvent(ZIIILjava/lang/String;I)V

    .line 956
    const/4 v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/miui/whetstone/PowerKeeperPolicy;->notifyBluetooth(IILjava/lang/String;I)V

    .line 957
    return-void
.end method

.method public blacklist stopLeScan(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 961
    return-void
.end method

.method public blacklist updateWakelockBlockedUid(ILjava/lang/String;Z)V
    .registers 12
    .param p1, "uid"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "isBlocked"    # Z

    .line 513
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 514
    .local v0, "callingUid":I
    const-string v1, "PowerKeeperPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caller["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] updateWakelockBlockedUid:uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", block="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_3f

    .line 518
    return-void

    .line 521
    :cond_3f
    const/4 v1, 0x0

    .line 522
    .local v1, "changed":Z
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 523
    :try_start_43
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_ba

    .line 524
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 526
    .local v3, "otags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p3, :cond_70

    .line 527
    if-nez p2, :cond_61

    if-eqz v3, :cond_61

    .line 529
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 530
    const/4 v1, 0x1

    goto :goto_b9

    .line 531
    :cond_61
    if-eqz p2, :cond_b9

    if-eqz v3, :cond_b9

    .line 532
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b9

    .line 533
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    const/4 v1, 0x1

    goto :goto_b9

    .line 542
    :cond_70
    if-nez p2, :cond_79

    .line 544
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 545
    const/4 v1, 0x1

    goto :goto_b9

    .line 546
    :cond_79
    if-eqz v3, :cond_91

    .line 547
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b9

    .line 548
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 549
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_8f

    .line 550
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 552
    :cond_8f
    const/4 v1, 0x1

    goto :goto_b9

    .line 555
    :cond_91
    const-string v4, "PowerKeeperPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot unblock the wakelock["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] for uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", please unblock all the wakelock with a null tag"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    .end local v3    # "otags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_b9
    :goto_b9
    goto :goto_ce

    .line 560
    :cond_ba
    if-eqz p3, :cond_ce

    .line 561
    const/4 v1, 0x1

    .line 562
    const/4 v3, 0x0

    .line 563
    .local v3, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p2, :cond_c9

    .line 564
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    .line 565
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    :cond_c9
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 570
    .end local v3    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_ce
    :goto_ce
    monitor-exit v2
    :try_end_cf
    .catchall {:try_start_43 .. :try_end_cf} :catchall_fa

    .line 573
    if-eqz v1, :cond_f9

    .line 575
    :try_start_d1
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->powerManagerServiceImpl:Ljava/lang/Object;

    if-eqz v2, :cond_f0

    .line 576
    const-string v3, "setUidPartialWakeLockDisabledState"

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 578
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    .line 576
    invoke-static {v2, v3, v4, v5}, Lmiui/util/ReflectionUtils;->callMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_f0} :catch_f1

    .line 582
    :cond_f0
    goto :goto_f9

    .line 580
    :catch_f1
    move-exception v2

    .line 581
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "PowerKeeperPolicy"

    const-string v4, "updateWakelockBlockedUid"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 584
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_f9
    :goto_f9
    return-void

    .line 570
    :catchall_fa
    move-exception v3

    :try_start_fb
    monitor-exit v2
    :try_end_fc
    .catchall {:try_start_fb .. :try_end_fc} :catchall_fa

    throw v3
.end method
