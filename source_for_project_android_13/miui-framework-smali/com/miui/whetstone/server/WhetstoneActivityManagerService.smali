.class public Lcom/miui/whetstone/server/WhetstoneActivityManagerService;
.super Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;
.source "WhetstoneActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/server/WhetstoneActivityManagerService$VideoFpsInfo;,
        Lcom/miui/whetstone/server/WhetstoneActivityManagerService$GnssStatusCallback;,
        Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;,
        Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PkDeathToken;
    }
.end annotation


# static fields
.field public static final blacklist APP_SERVICE_NAME:Ljava/lang/String; = "miui.whetstone"

.field public static final blacklist D:Z

.field private static final blacklist FROZEN_APP:I = 0x1

.field private static final blacklist GPS_TIME_THRESHOLD:I = 0x5

.field private static final blacklist MSG_ON_SCROLL:I = 0x4

.field private static final blacklist MSG_SYSTEM_UPDATE_CURRENT_PROCESS_PSS:I = 0x3

.field private static final blacklist MSG_USER_CLEAR_DEAD_NATIVE_PROCESS:I = 0x2

.field private static final blacklist MSG_USER_REMOVE_PROMOTE_LEVEL:I = 0x1

.field private static final blacklist MSG_VIDEO_FPS:I = 0x8

.field private static final blacklist PER_USER_RANGE:I = 0x186a0

.field public static final blacklist PROMOTE_LEVEL_HIGH:I = 0x2

.field public static final blacklist PROMOTE_LEVEL_MIDDLE:I = 0x1

.field public static final blacklist PROMOTE_LEVEL_NORMAL:I = 0x0

.field public static final blacklist SERVICE:Ljava/lang/String; = "whetstone.activity"

.field private static final blacklist TAG:Ljava/lang/String; = "whetstone.activity"

.field public static blacklist mGpsStopTime:I

.field private static blacklist mSelf:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;


# instance fields
.field private blacklist MiuiNetworkManagementService:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private blacklist mAM:Landroid/os/IBinder;

.field private final blacklist mCallbacksVideoFps:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/miui/whetstone/IVideoFpsCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDeviceIdleChangeReceiver:Landroid/content/BroadcastReceiver;

.field private final blacklist mDisplayScrollListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/miui/whetstone/IDisplayScrollListener;",
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

.field private blacklist mGetConnProviderNames:Ljava/lang/reflect/Method;

.field private blacklist mGnssCallback:Landroid/location/GnssStatus$Callback;

.field public blacklist mGpsCallback:Landroid/location/GnssStatus$Callback;

.field private blacklist mGpsPkg:Ljava/lang/String;

.field private blacklist mGpsStartTime:I

.field private blacklist mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

.field private blacklist mNetService:Ljava/lang/Object;

.field private blacklist mPidsSelfLocked:Landroid/util/SparseArray;

.field private blacklist mPowerKeeperPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;

.field private blacklist mPowerManager:Landroid/os/PowerManager;

.field private blacklist mRemoveTask:Ljava/lang/reflect/Method;

.field private blacklist mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;

.field private blacklist mScheduleDestroyActivities:Ljava/lang/reflect/Method;

.field private blacklist mSnr:I

.field private blacklist mSystemServiceClassLoader:Ljava/lang/ClassLoader;

.field private final blacklist mUidFrozenState:Landroid/util/SparseBooleanArray;

.field private blacklist powerManagerServiceImpl:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDisplayScrollListeners(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)Landroid/os/RemoteCallbackList;
    .registers 1

    iget-object p0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mDisplayScrollListeners:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGpsPkg(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mGpsPkg:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPowerManager(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)Landroid/os/PowerManager;
    .registers 1

    iget-object p0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSnr(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)I
    .registers 1

    iget p0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSnr:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetpowerManagerServiceImpl(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->powerManagerServiceImpl:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmGpsPkg(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mGpsPkg:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPowerManager(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;Landroid/os/PowerManager;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSnr(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSnr:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleClearDeadAppFromNative(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->handleClearDeadAppFromNative()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mprocessVideoFpsCallback(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->processVideoFpsCallback(Ljava/lang/Object;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 70
    const-string v0, "whetstone.activity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->D:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;

    .line 127
    const-string v0, "WhetstoneActivityManagerService"

    const-string v1, "whetstone.activity"

    invoke-direct {p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;-><init>()V

    .line 93
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mUidFrozenState:Landroid/util/SparseBooleanArray;

    .line 109
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mGpsPkg:Ljava/lang/String;

    .line 110
    const/4 v3, 0x0

    iput v3, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mGpsStartTime:I

    .line 111
    iput v3, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSnr:I

    .line 114
    new-instance v4, Landroid/os/RemoteCallbackList;

    invoke-direct {v4}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mDisplayScrollListeners:Landroid/os/RemoteCallbackList;

    .line 218
    new-instance v4, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1;

    invoke-direct {v4, p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1;-><init>(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)V

    iput-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mDeviceIdleChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 234
    new-instance v4, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$2;

    invoke-direct {v4, p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$2;-><init>(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)V

    iput-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mGnssCallback:Landroid/location/GnssStatus$Callback;

    .line 1264
    new-instance v4, Landroid/os/RemoteCallbackList;

    invoke-direct {v4}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mCallbacksVideoFps:Landroid/os/RemoteCallbackList;

    .line 128
    iput-object p1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mContext:Landroid/content/Context;

    .line 129
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    .line 131
    const/4 v5, 0x1

    :try_start_3f
    const-string v6, "com.android.server.am.ExtraActivityManagerService"

    invoke-static {v6, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    .line 132
    const-string v4, "android.os.ServiceManager"

    invoke-static {v4, v2}, Lmiui/util/ReflectionUtils;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    const-string v6, "getService"

    new-array v7, v5, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v3

    invoke-static {v4, v6, v7}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_59
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3f .. :try_end_59} :catch_e1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3f .. :try_end_59} :catch_dc
    .catch Ljava/lang/IllegalAccessException; {:try_start_3f .. :try_end_59} :catch_d7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3f .. :try_end_59} :catch_d2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3f .. :try_end_59} :catch_cd

    .line 135
    .local v4, "getService":Ljava/lang/reflect/Method;
    :try_start_59
    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "activity"

    aput-object v7, v6, v3

    invoke-virtual {v4, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    iput-object v6, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mAM:Landroid/os/IBinder;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_67} :catch_bd
    .catch Ljava/lang/IllegalArgumentException; {:try_start_59 .. :try_end_67} :catch_e1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_59 .. :try_end_67} :catch_dc
    .catch Ljava/lang/IllegalAccessException; {:try_start_59 .. :try_end_67} :catch_d7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_59 .. :try_end_67} :catch_d2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_59 .. :try_end_67} :catch_cd

    .line 140
    nop

    .line 141
    const/4 v6, 0x0

    .line 142
    .local v6, "field":Ljava/lang/reflect/Field;
    :try_start_69
    const-string v7, "com.android.server.am.ActivityManagerService"

    iget-object v8, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v7, v8}, Lmiui/util/ReflectionUtils;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    const-string v8, "mPidsSelfLocked"

    invoke-static {v7, v8}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    move-object v6, v7

    .line 144
    if-eqz v6, :cond_b5

    .line 145
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1d

    if-lt v7, v8, :cond_a7

    .line 146
    const-string v7, "com.android.server.am.ActivityManagerService$PidMap"

    iget-object v8, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v7, v8}, Lmiui/util/ReflectionUtils;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    const-string v8, "mPidMap"

    invoke-static {v7, v8}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 148
    .local v7, "fieldMap":Ljava/lang/reflect/Field;
    if-eqz v7, :cond_9f

    .line 149
    iget-object v8, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mAM:Landroid/os/IBinder;

    invoke-virtual {v6, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseArray;

    iput-object v8, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    .line 153
    .end local v7    # "fieldMap":Ljava/lang/reflect/Field;
    goto :goto_b1

    .line 151
    .restart local v7    # "fieldMap":Ljava/lang/reflect/Field;
    :cond_9f
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Error: mPidMap not found in AcivityManagerService$PidMap"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/miui/whetstone/server/WhetstoneActivityManagerService;
    .end local p1    # "context":Landroid/content/Context;
    throw v8

    .line 154
    .end local v7    # "fieldMap":Ljava/lang/reflect/Field;
    .restart local p0    # "this":Lcom/miui/whetstone/server/WhetstoneActivityManagerService;
    .restart local p1    # "context":Landroid/content/Context;
    :cond_a7
    iget-object v7, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mAM:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseArray;

    iput-object v7, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    .line 160
    :goto_b1
    invoke-direct {p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->findRemoveTaskMethod()V

    .end local v4    # "getService":Ljava/lang/reflect/Method;
    .end local v6    # "field":Ljava/lang/reflect/Field;
    goto :goto_e5

    .line 157
    .restart local v4    # "getService":Ljava/lang/reflect/Method;
    .restart local v6    # "field":Ljava/lang/reflect/Field;
    :cond_b5
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Error: mPidsSelfLocked not found in AcivityManagerService"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/miui/whetstone/server/WhetstoneActivityManagerService;
    .end local p1    # "context":Landroid/content/Context;
    throw v7

    .line 136
    .end local v6    # "field":Ljava/lang/reflect/Field;
    .restart local p0    # "this":Lcom/miui/whetstone/server/WhetstoneActivityManagerService;
    .restart local p1    # "context":Landroid/content/Context;
    :catch_bd
    move-exception v6

    .line 137
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Error: can not found AcivityManagerService"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/miui/whetstone/server/WhetstoneActivityManagerService;
    .end local p1    # "context":Landroid/content/Context;
    throw v7
    :try_end_cd
    .catch Ljava/lang/IllegalArgumentException; {:try_start_69 .. :try_end_cd} :catch_e1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_69 .. :try_end_cd} :catch_dc
    .catch Ljava/lang/IllegalAccessException; {:try_start_69 .. :try_end_cd} :catch_d7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_69 .. :try_end_cd} :catch_d2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_69 .. :try_end_cd} :catch_cd

    .line 169
    .end local v4    # "getService":Ljava/lang/reflect/Method;
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/miui/whetstone/server/WhetstoneActivityManagerService;
    .restart local p1    # "context":Landroid/content/Context;
    :catch_cd
    move-exception v4

    .line 170
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e6

    .line 167
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :catch_d2
    move-exception v4

    .line 168
    .local v4, "e":Ljava/lang/NoSuchFieldException;
    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v4    # "e":Ljava/lang/NoSuchFieldException;
    goto :goto_e5

    .line 165
    :catch_d7
    move-exception v4

    .line 166
    .local v4, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_e5

    .line 163
    :catch_dc
    move-exception v4

    .line 164
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_e5

    .line 161
    :catch_e1
    move-exception v4

    .line 162
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :goto_e5
    nop

    .line 174
    :goto_e6
    :try_start_e6
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    const-string v4, "scheduleDestroyActivities"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v5

    const/4 v5, 0x2

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v5

    .line 175
    invoke-static {v0, v4, v6}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mScheduleDestroyActivities:Ljava/lang/reflect/Method;

    .line 177
    if-eqz v0, :cond_111

    .line 180
    const-string v0, "com.android.server.power.PowerManagerServiceImpl"

    .line 181
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    .line 180
    invoke-static {v0, v4}, Lmiui/util/ReflectionUtils;->tryNewInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->powerManagerServiceImpl:Ljava/lang/Object;

    .line 184
    goto :goto_121

    .line 178
    :cond_111
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v4, "mScheduleDestroyActivities not found in AcivityManagerService"

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/miui/whetstone/server/WhetstoneActivityManagerService;
    .end local p1    # "context":Landroid/content/Context;
    throw v0
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_119} :catch_119

    .line 182
    .restart local p0    # "this":Lcom/miui/whetstone/server/WhetstoneActivityManagerService;
    .restart local p1    # "context":Landroid/content/Context;
    :catch_119
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_121
    :try_start_121
    const-string v0, "com.android.server.MiuiNetworkManagementService"

    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->MiuiNetworkManagementService:Ljava/lang/Class;

    .line 188
    const-string v4, "getInstance"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-static {v0, v4, v5}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 189
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_13f

    .line 190
    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->MiuiNetworkManagementService:Ljava/lang/Class;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mNetService:Ljava/lang/Object;
    :try_end_13f
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_13f} :catch_140

    .line 194
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_13f
    goto :goto_148

    .line 192
    :catch_140
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_148
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->getInstance()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPowerKeeperPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;

    .line 197
    iget-object v3, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->setContext(Landroid/content/Context;)V

    .line 198
    new-instance v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;-><init>(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    .line 201
    :try_start_162
    const-class v0, Landroid/os/PowerManager;

    const-string v3, "ACTION_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 202
    .local v0, "idleModeChange":Ljava/lang/String;
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 203
    .local v3, "deviceIdleFilter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mDeviceIdleChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    invoke-virtual {p1, v4, v3, v2, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_17c
    .catch Ljava/lang/Exception; {:try_start_162 .. :try_end_17c} :catch_17e

    .line 206
    nop

    .end local v0    # "idleModeChange":Ljava/lang/String;
    .end local v3    # "deviceIdleFilter":Landroid/content/IntentFilter;
    goto :goto_186

    .line 204
    :catch_17e
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_186
    :try_start_186
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 210
    .local v0, "locationManager":Landroid/location/LocationManager;
    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mGnssCallback:Landroid/location/GnssStatus$Callback;

    iget-object v3, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    invoke-virtual {v0, v2, v3}, Landroid/location/LocationManager;->registerGnssStatusCallback(Landroid/location/GnssStatus$Callback;Landroid/os/Handler;)Z
    :try_end_195
    .catch Ljava/lang/Exception; {:try_start_186 .. :try_end_195} :catch_197

    .line 213
    nop

    .end local v0    # "locationManager":Landroid/location/LocationManager;
    goto :goto_19f

    .line 211
    :catch_197
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_19f
    sput-object p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSelf:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    .line 216
    return-void
.end method

.method private blacklist checkCallInterfacePermission()Z
    .registers 3

    .line 117
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 119
    .local v0, "callingUid":I
    const v1, 0x186a0

    rem-int/2addr v0, v1

    .line 121
    const/16 v1, 0x2710

    if-le v0, v1, :cond_e

    .line 122
    const/4 v1, 0x0

    return v1

    .line 124
    :cond_e
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist enforceCallingPermission(Ljava/lang/String;)V
    .registers 5
    .param p1, "permission"    # Ljava/lang/String;

    .line 1186
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    .line 1192
    return-void

    .line 1188
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enforceCallingPermission is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", permission is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "whetstone.activity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission denial: writing to settings requires:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist findRemoveTaskMethod()V
    .registers 13

    .line 1003
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x2

    const-string v2, "removeTask"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "WhetstoneActivityManagerService"

    const-string v6, "whetstone.activity"

    const/16 v7, 0x15

    if-gt v0, v7, :cond_2b

    .line 1005
    :try_start_f
    const-class v0, Landroid/app/ActivityManager;

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v1, v3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v4

    invoke-static {v0, v2, v1}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTask:Ljava/lang/reflect/Method;

    .line 1006
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;
    :try_end_24
    .catch Ljava/lang/NoSuchMethodException; {:try_start_f .. :try_end_24} :catch_25

    goto :goto_29

    .line 1007
    :catch_25
    move-exception v0

    .line 1008
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {v6, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1009
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_29
    goto/16 :goto_dd

    .line 1011
    :cond_2b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    const-string v8, "com.android.server.am.ActivityManagerService"

    const-string v9, "removeTaskByIdLocked"

    if-gt v0, v7, :cond_6a

    .line 1013
    :try_start_35
    const-class v0, Landroid/app/ActivityManager;

    new-array v7, v4, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v7, v3

    invoke-static {v0, v2, v7}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTask:Ljava/lang/reflect/Method;

    .line 1014
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    .line 1015
    invoke-static {v8, v0}, Lmiui/util/ReflectionUtils;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    .line 1014
    invoke-static {v0, v9, v1}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;
    :try_end_59
    .catch Ljava/lang/NoSuchMethodException; {:try_start_35 .. :try_end_59} :catch_64
    .catch Ljava/lang/ClassNotFoundException; {:try_start_35 .. :try_end_59} :catch_5f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_35 .. :try_end_59} :catch_5a

    goto :goto_68

    .line 1021
    :catch_5a
    move-exception v0

    .line 1022
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v6, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_68

    .line 1019
    :catch_5f
    move-exception v0

    .line 1020
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {v6, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_68

    .line 1017
    :catch_64
    move-exception v0

    .line 1018
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {v6, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1023
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_68
    goto/16 :goto_dd

    .line 1024
    :cond_6a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    const/4 v10, 0x3

    if-ge v0, v7, :cond_a9

    .line 1026
    :try_start_71
    const-class v0, Landroid/app/ActivityManager;

    new-array v7, v4, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v7, v3

    invoke-static {v0, v2, v7}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTask:Ljava/lang/reflect/Method;

    .line 1027
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    .line 1028
    invoke-static {v8, v0}, Lmiui/util/ReflectionUtils;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    new-array v2, v10, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v2, v3

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v1

    .line 1027
    invoke-static {v0, v9, v2}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;
    :try_end_99
    .catch Ljava/lang/NoSuchMethodException; {:try_start_71 .. :try_end_99} :catch_a4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_71 .. :try_end_99} :catch_9f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_71 .. :try_end_99} :catch_9a

    goto :goto_a8

    .line 1034
    :catch_9a
    move-exception v0

    .line 1035
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v6, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_a8

    .line 1032
    :catch_9f
    move-exception v0

    .line 1033
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {v6, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_a8

    .line 1030
    :catch_a4
    move-exception v0

    .line 1031
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {v6, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1036
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_a8
    goto :goto_dd

    .line 1039
    :cond_a9
    :try_start_a9
    const-class v0, Landroid/app/ActivityManager;

    new-array v7, v4, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    invoke-static {v0, v2, v7}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTask:Ljava/lang/reflect/Method;

    .line 1040
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    new-array v2, v10, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v2, v3

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v1

    invoke-static {v0, v9, v2}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;
    :try_end_cd
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a9 .. :try_end_cd} :catch_d8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a9 .. :try_end_cd} :catch_d3
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_cd} :catch_ce

    goto :goto_dc

    .line 1046
    :catch_ce
    move-exception v0

    .line 1047
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v6, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_dd

    .line 1044
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_d3
    move-exception v0

    .line 1045
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v6, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_dc

    .line 1042
    :catch_d8
    move-exception v0

    .line 1043
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {v6, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1048
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_dc
    nop

    .line 1055
    :goto_dd
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTask:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_e5

    .line 1056
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    goto :goto_ea

    .line 1058
    :cond_e5
    const-string v0, "could not find removeTask"

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :goto_ea
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_f2

    .line 1062
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    goto :goto_f7

    .line 1064
    :cond_f2
    const-string v0, "could not find removeTaskByIdLocked"

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    :goto_f7
    return-void
.end method

.method private blacklist getProcessPidByPackageNameLocked(Ljava/lang/String;I)I
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 314
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 316
    .local v0, "n":I
    :try_start_6
    const-string v1, "com.android.server.am.ProcessRecord"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_f} :catch_96

    .line 318
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_11
    const-string v3, "pid"

    if-ltz v2, :cond_55

    .line 319
    :try_start_15
    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 320
    .local v4, "processRecord":Ljava/lang/Object;
    if-eqz v4, :cond_52

    .line 321
    const-string v5, "processName"

    invoke-static {v1, v5}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 322
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 323
    .local v5, "name":Ljava/lang/String;
    const-string v6, "userId"

    invoke-static {v1, v6}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 324
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 325
    .local v6, "uId":Ljava/lang/Integer;
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_52

    if-eqz v6, :cond_52

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, p2, :cond_52

    .line 326
    invoke-static {v1, v3}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 327
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 328
    .local v3, "pid":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    return v7

    .line 318
    .end local v3    # "pid":Ljava/lang/Integer;
    .end local v4    # "processRecord":Ljava/lang/Object;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "uId":Ljava/lang/Integer;
    :cond_52
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 333
    .end local v2    # "i":I
    :cond_55
    const/4 v2, 0x0

    .local v2, "count":I
    const/4 v4, -0x1

    .line 334
    .local v4, "value":I
    add-int/lit8 v5, v0, -0x1

    .local v5, "i":I
    :goto_59
    if-ltz v5, :cond_91

    .line 335
    iget-object v6, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    .line 336
    .local v6, "processRecord":Ljava/lang/Object;
    if-eqz v6, :cond_8e

    .line 337
    const-string v7, "info"

    invoke-static {v1, v7}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 338
    invoke-virtual {v7, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    .line 339
    .local v7, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v7, :cond_8e

    .line 340
    iget-object v8, v7, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-eqz v8, :cond_8e

    iget-object v8, v7, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8e

    .line 341
    add-int/lit8 v2, v2, 0x1

    .line 342
    invoke-static {v1, v3}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 343
    invoke-virtual {v8, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 344
    .local v8, "pid":Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_8d} :catch_96

    move v4, v9

    .line 334
    .end local v6    # "processRecord":Ljava/lang/Object;
    .end local v7    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "pid":Ljava/lang/Integer;
    :cond_8e
    add-int/lit8 v5, v5, -0x1

    goto :goto_59

    .line 349
    .end local v5    # "i":I
    :cond_91
    const/4 v3, 0x1

    if-ne v2, v3, :cond_95

    .line 350
    return v4

    .line 354
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "count":I
    .end local v4    # "value":I
    :cond_95
    goto :goto_a0

    .line 352
    :catch_96
    move-exception v1

    .line 353
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "whetstone.activity"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_a0
    const/4 v1, -0x1

    return v1
.end method

.method public static blacklist getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;
    .registers 1

    .line 926
    sget-object v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSelf:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    return-object v0
.end method

.method private blacklist handleClearDeadAppFromNative()V
    .registers 5

    .line 269
    :try_start_0
    const-string v0, "com.android.server.am.ActivityManagerService"

    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lmiui/util/ReflectionUtils;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "clearDeadAppFromNative"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v3}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 271
    .local v0, "clearMethod":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_1a

    .line 272
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mAM:Landroid/os/IBinder;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 277
    :cond_1a
    goto :goto_23

    .line 274
    .end local v0    # "clearMethod":Ljava/lang/reflect/Method;
    :catch_1b
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "whetstone.activity"

    const-string v2, "handleClearDeadAppFromNative"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 278
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_23
    return-void
.end method

.method private blacklist processVideoFpsCallback(Ljava/lang/Object;)V
    .registers 8
    .param p1, "object"    # Ljava/lang/Object;

    .line 1280
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$VideoFpsInfo;

    .line 1281
    .local v0, "videoFpsInfo":Lcom/miui/whetstone/server/WhetstoneActivityManagerService$VideoFpsInfo;
    const-string v1, "whetstone.activity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "noteVideoFps processVideoFpsCallback, uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$VideoFpsInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " video fps = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$VideoFpsInfo;->fps:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mCallbacksVideoFps:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 1283
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_30
    if-ge v2, v1, :cond_44

    .line 1284
    iget-object v3, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mCallbacksVideoFps:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/miui/whetstone/IVideoFpsCallBack;

    iget v4, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$VideoFpsInfo;->uid:I

    iget v5, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$VideoFpsInfo;->fps:I

    invoke-interface {v3, v4, v5}, Lcom/miui/whetstone/IVideoFpsCallBack;->onVideoFpsChange(II)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_41} :catch_47
    .catchall {:try_start_0 .. :try_end_41} :catchall_45

    .line 1283
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .end local v0    # "videoFpsInfo":Lcom/miui/whetstone/server/WhetstoneActivityManagerService$VideoFpsInfo;
    .end local v1    # "n":I
    .end local v2    # "i":I
    :cond_44
    goto :goto_4b

    .line 1289
    :catchall_45
    move-exception v0

    goto :goto_52

    .line 1286
    :catch_47
    move-exception v0

    .line 1287
    .local v0, "e":Ljava/lang/Exception;
    :try_start_48
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_45

    .line 1289
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4b
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mCallbacksVideoFps:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1290
    nop

    .line 1291
    return-void

    .line 1289
    :goto_52
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mCallbacksVideoFps:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1290
    throw v0
.end method

.method private blacklist removeTaskByIdInternal(IZZ)Z
    .registers 11
    .param p1, "taskId"    # I
    .param p2, "killProcess"    # Z
    .param p3, "removeFromRecents"    # Z

    .line 978
    const-string v0, "android.permission.REMOVE_TASKS"

    const-string v1, "whetstone.activity"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x1

    const/16 v4, 0x15

    if-gt v2, v4, :cond_10

    .line 979
    invoke-direct {p0, p1, p2, v3}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->removeTaskByIdL(IZZ)Z

    move-result v0

    return v0

    .line 983
    :cond_10
    const/4 v2, 0x0

    :try_start_11
    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mAM:Landroid/os/IBinder;

    check-cast v4, Landroid/app/IActivityManager;

    .line 984
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    .line 983
    invoke-interface {v4, v0, v5, v6}, Landroid/app/IActivityManager;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_5a

    .line 987
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: removeTaskById from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 988
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 989
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requires "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 991
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_59} :catch_60

    .line 992
    return v2

    .line 997
    .end local v0    # "msg":Ljava/lang/String;
    :cond_5a
    nop

    .line 998
    invoke-direct {p0, p1, p2, v3}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->removeTaskByIdLocked(IZZ)Z

    move-result v0

    return v0

    .line 994
    :catch_60
    move-exception v0

    .line 995
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    return v2
.end method

.method private blacklist removeTaskByIdL(IZZ)Z
    .registers 12
    .param p1, "taskId"    # I
    .param p2, "killProcess"    # Z
    .param p3, "removeFromRecents"    # Z

    .line 934
    const/4 v0, 0x0

    .line 935
    .local v0, "res":Z
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 936
    .local v1, "am":Landroid/app/ActivityManager;
    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTask:Ljava/lang/reflect/Method;

    const-string v3, "whetstone.activity"

    const/4 v4, 0x0

    if-nez v2, :cond_18

    .line 937
    const-string v2, "could not find removeTaskById L"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    return v4

    .line 942
    :cond_18
    const/4 v5, 0x2

    :try_start_19
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v6, 0x1

    if-eqz p2, :cond_26

    move v7, v6

    goto :goto_27

    :cond_26
    move v7, v4

    :goto_27
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_37} :catch_3a

    move v0, v2

    .line 946
    nop

    .line 947
    return v0

    .line 943
    :catch_3a
    move-exception v2

    .line 944
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    return v4
.end method

.method private blacklist removeTaskByIdLocked(IZZ)Z
    .registers 15
    .param p1, "taskId"    # I
    .param p2, "killProcess"    # Z
    .param p3, "removeFromRecents"    # Z

    .line 951
    const/4 v0, 0x0

    .line 952
    .local v0, "res":Z
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 953
    const-string v1, "whetstone.activity"

    const-string v3, "could not find removeTaskById M"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    return v2

    .line 956
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 958
    .local v3, "orig":J
    :try_start_12
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mAM:Landroid/os/IBinder;

    monitor-enter v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_93
    .catchall {:try_start_12 .. :try_end_15} :catchall_91

    .line 959
    :try_start_15
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-gt v5, v6, :cond_3b

    .line 960
    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mAM:Landroid/os/IBinder;

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-virtual {v5, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move v0, v5

    goto :goto_88

    .line 961
    :cond_3b
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    const/4 v9, 0x3

    if-ge v5, v6, :cond_66

    .line 962
    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mAM:Landroid/os/IBinder;

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v9, v8

    invoke-virtual {v5, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move v0, v5

    goto :goto_88

    .line 964
    :cond_66
    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;

    const/4 v6, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v9, v8

    invoke-virtual {v5, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move v0, v5

    .line 966
    :goto_88
    monitor-exit v1
    :try_end_89
    .catchall {:try_start_15 .. :try_end_89} :catchall_8e

    .line 971
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 972
    nop

    .line 973
    return v0

    .line 966
    :catchall_8e
    move-exception v5

    :try_start_8f
    monitor-exit v1
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8e

    .end local v0    # "res":Z
    .end local v3    # "orig":J
    .end local p0    # "this":Lcom/miui/whetstone/server/WhetstoneActivityManagerService;
    .end local p1    # "taskId":I
    .end local p2    # "killProcess":Z
    .end local p3    # "removeFromRecents":Z
    :try_start_90
    throw v5
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_91} :catch_93
    .catchall {:try_start_90 .. :try_end_91} :catchall_91

    .line 971
    .restart local v0    # "res":Z
    .restart local v3    # "orig":J
    .restart local p0    # "this":Lcom/miui/whetstone/server/WhetstoneActivityManagerService;
    .restart local p1    # "taskId":I
    .restart local p2    # "killProcess":Z
    .restart local p3    # "removeFromRecents":Z
    :catchall_91
    move-exception v1

    goto :goto_a2

    .line 967
    :catch_93
    move-exception v1

    .line 968
    .local v1, "e":Ljava/lang/Exception;
    :try_start_94
    const-string v5, "whetstone.activity"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catchall {:try_start_94 .. :try_end_9d} :catchall_91

    .line 969
    nop

    .line 971
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 969
    return v2

    .line 971
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_a2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 972
    throw v1
.end method

.method private blacklist updateCurrentProcessPss(IJ)V
    .registers 6
    .param p1, "pid"    # I
    .param p2, "pss"    # J

    .line 861
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 862
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 863
    long-to-int v1, p2

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 864
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    invoke-virtual {v1, v0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 865
    return-void
.end method


# virtual methods
.method public blacklist addAppToServiceControlWhitelist(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 824
    .local p1, "listPkg":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/miui/whetstone/process/WtServiceControlEntry;->addAppToServiceControlWhitelist(Ljava/util/List;)V

    .line 825
    return-void
.end method

.method public blacklist bindWhetstoneService(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "client"    # Landroid/os/IBinder;

    .line 804
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/whetstone/IWhetstoneClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IWhetstoneClient;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/miui/whetstone/client/WhetstoneClientManager;->init(Landroid/content/Context;Lcom/miui/whetstone/IWhetstoneClient;Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)V

    .line 805
    return-void
.end method

.method public blacklist checkApplicationsMemoryThreshold(Ljava/lang/String;IJ)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "threshold"    # J

    .line 869
    return-void
.end method

.method public blacklist checkIfPackageIsLocked(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 851
    invoke-static {p1}, Lcom/miui/whetstone/client/WhetstoneClientManager;->checkIfPackageIsLocked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist checkIfPackageIsLockedWithUserId(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 857
    invoke-static {p1, p2}, Lcom/miui/whetstone/client/WhetstoneClientManager;->checkIfPackageIsLocked(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public varargs blacklist checkPackageState(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "callerType"    # I
    .param p4, "userId"    # I
    .param p5, "componentName"    # Ljava/lang/String;
    .param p6, "processName"    # Ljava/lang/String;
    .param p7, "additionalArgs"    # [Ljava/lang/Object;

    .line 930
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist clearDeadAppFromNative()V
    .registers 5

    .line 282
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 283
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 284
    return-void
.end method

.method public blacklist distoryActivity(I)Z
    .registers 10
    .param p1, "pid"    # I

    .line 743
    const-string v0, "distoryActivity"

    const-string v1, "whetstone.activity"

    const/4 v2, 0x0

    .line 744
    .local v2, "ret":Z
    iget-object v3, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mScheduleDestroyActivities:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_34

    .line 746
    const/4 v4, 0x0

    const/4 v5, 0x3

    :try_start_b
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "whetstone"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_23} :catch_2f
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_23} :catch_2a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_23} :catch_25

    .line 747
    const/4 v2, 0x1

    .line 754
    :goto_24
    goto :goto_34

    .line 752
    :catch_25
    move-exception v3

    .line 753
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_34

    .line 750
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2a
    move-exception v3

    .line 751
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_24

    .line 748
    :catch_2f
    move-exception v3

    .line 749
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_24

    .line 756
    :cond_34
    :goto_34
    return v2
.end method

.method public blacklist doDesSocketForUid(Ljava/lang/String;[IZ)V
    .registers 12
    .param p1, "fwType"    # Ljava/lang/String;
    .param p2, "uids"    # [I
    .param p3, "isWhitelistUid"    # Z

    .line 425
    :try_start_0
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->MiuiNetworkManagementService:Ljava/lang/Class;

    const-string v1, "doDesSocketForUid"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, [I

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-static {v0, v1, v3}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 428
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_2d

    .line 429
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mNetService:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2e

    .line 434
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_2d
    goto :goto_38

    .line 432
    :catch_2e
    move-exception v0

    .line 433
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "whetstone.activity"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_38
    return-void
.end method

.method public blacklist doRestoreSockForUid(Ljava/lang/String;)V
    .registers 8
    .param p1, "fwType"    # Ljava/lang/String;

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->MiuiNetworkManagementService:Ljava/lang/Class;

    const-string v1, "doRestoreSockForUid"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 444
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_1b

    .line 445
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mNetService:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 450
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_1b
    goto :goto_26

    .line 448
    :catch_1c
    move-exception v0

    .line 449
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "whetstone.activity"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_26
    return-void
.end method

.method public whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 872
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_33

    .line 874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump whetstone.activity service from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 875
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 876
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 874
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 877
    return-void

    .line 880
    :cond_33
    const/4 v0, 0x0

    .line 881
    .local v0, "dumpAll":Z
    const/4 v1, 0x0

    .line 882
    .local v1, "component":Z
    const/4 v2, 0x0

    .line 883
    .local v2, "powerKeeper":Z
    if-eqz p3, :cond_5c

    .line 884
    array-length v3, p3

    const/4 v4, 0x0

    :goto_3a
    if-ge v4, v3, :cond_5d

    aget-object v5, p3, v4

    .line 885
    .local v5, "arg":Ljava/lang/String;
    const-string v6, "powerkeeper"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 886
    const/4 v2, 0x1

    goto :goto_59

    .line 887
    :cond_48
    const-string v6, "-a"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_58

    const-string v6, "all"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_59

    .line 888
    :cond_58
    const/4 v0, 0x1

    .line 884
    .end local v5    # "arg":Ljava/lang/String;
    :cond_59
    :goto_59
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    .line 892
    :cond_5c
    const/4 v0, 0x1

    .line 894
    :cond_5d
    if-nez v2, :cond_61

    if-eqz v0, :cond_6a

    .line 895
    :cond_61
    invoke-virtual {p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPowerKeeperPolicy()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v3

    .line 896
    .local v3, "p":Lcom/miui/whetstone/PowerKeeperPolicy;
    if-eqz v3, :cond_6a

    .line 897
    invoke-virtual {v3, p1, p2, p3}, Lcom/miui/whetstone/PowerKeeperPolicy;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 900
    .end local v3    # "p":Lcom/miui/whetstone/PowerKeeperPolicy;
    :cond_6a
    return-void
.end method

.method public blacklist getAndroidCachedEmptyProcessMemory()J
    .registers 3

    .line 819
    invoke-static {}, Lcom/miui/whetstone/client/WhetstoneClientManager;->getEmptyProcTotalMemoryInfo()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getAppOpsManager()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1198
    const-string v0, "android.permission.GET_APP_OPS_STATS"

    invoke-direct {p0, v0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1200
    .local v0, "appOpsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mGpsPkg:Ljava/lang/String;

    .line 1201
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mContext:Landroid/content/Context;

    const-string v2, "appops"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 1202
    .local v1, "opsManager":Landroid/app/AppOpsManager;
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x2

    aput v4, v2, v3

    .line 1203
    .local v2, "ops":[I
    invoke-virtual {v1, v2}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v3

    .line 1204
    .local v3, "appOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-nez v3, :cond_25

    .line 1205
    return-object v0

    .line 1207
    :cond_25
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$PackageOps;

    .line 1208
    .local v5, "pkgops":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v6

    .line 1209
    .local v6, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez v6, :cond_3c

    .line 1210
    goto :goto_29

    .line 1212
    :cond_3c
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_40
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$OpEntry;

    .line 1213
    .local v8, "entry":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v9

    if-eqz v9, :cond_7c

    .line 1214
    iget-object v9, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mGpsPkg:Ljava/lang/String;

    if-nez v9, :cond_5d

    .line 1215
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mGpsPkg:Ljava/lang/String;

    goto :goto_7c

    .line 1217
    :cond_5d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mGpsPkg:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mGpsPkg:Ljava/lang/String;

    .line 1220
    .end local v8    # "entry":Landroid/app/AppOpsManager$OpEntry;
    :cond_7c
    :goto_7c
    goto :goto_40

    .line 1221
    .end local v5    # "pkgops":Landroid/app/AppOpsManager$PackageOps;
    .end local v6    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_7d
    goto :goto_29

    .line 1222
    :cond_7e
    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mGpsPkg:Ljava/lang/String;

    if-eqz v4, :cond_b2

    .line 1223
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mGpsStartTime:I

    .line 1224
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Whetstone mGpsPkg is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mGpsPkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mGpsStartTime is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mGpsStartTime:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "whetstone.activity"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    :cond_b2
    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mGpsPkg:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1227
    iget v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mGpsStartTime:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1228
    return-object v0
.end method

.method public blacklist getAppStatusBarNotification(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1253
    const/4 v0, 0x0

    .line 1255
    .local v0, "sbns":[Landroid/service/notification/StatusBarNotification;
    :try_start_1
    const-string v1, "notification"

    .line 1256
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1255
    invoke-static {v1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 1257
    .local v1, "noMan":Landroid/app/INotificationManager;
    invoke-interface {v1, p1}, Landroid/app/INotificationManager;->getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v2
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_11

    move-object v0, v2

    .line 1260
    .end local v1    # "noMan":Landroid/app/INotificationManager;
    goto :goto_2a

    .line 1258
    :catch_11
    move-exception v1

    .line 1259
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " isHasNotification "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "whetstone.activity"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2a
    return-object v0
.end method

.method public blacklist getBackgroundAPPS()[Ljava/lang/String;
    .registers 2

    .line 666
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getConnProviderNames(Ljava/lang/String;ILjava/util/List;)Z
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1075
    .local p3, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "whetstone.activity"

    const/4 v1, 0x0

    .line 1076
    .local v1, "result":Z
    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    if-eqz v2, :cond_a3

    .line 1078
    const/4 v3, 0x0

    .line 1079
    .local v3, "serProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_8
    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mGetConnProviderNames:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-nez v4, :cond_21

    .line 1080
    const-string v4, "getConnProviderNamesLocked"

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v6

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    .line 1081
    invoke-static {v2, v4, v8}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mGetConnProviderNames:Ljava/lang/reflect/Method;

    .line 1083
    :cond_21
    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mGetConnProviderNames:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_37

    .line 1084
    const/4 v4, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v5

    invoke-virtual {v2, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object v3, v2

    .line 1086
    :cond_37
    if-eqz v3, :cond_7a

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7a

    .line 1087
    const/4 v1, 0x1

    .line 1088
    if-eqz p3, :cond_79

    .line 1089
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_61

    .line 1090
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_61

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1091
    .local v4, "name":Ljava/lang/String;
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_60

    .line 1092
    const/4 v1, 0x0

    .line 1093
    goto :goto_61

    .line 1095
    .end local v4    # "name":Ljava/lang/String;
    :cond_60
    goto :goto_4c

    .line 1097
    :cond_61
    :goto_61
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 1098
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_68
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_79

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1099
    .local v4, "provName":Ljava/lang/String;
    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1100
    nop

    .end local v4    # "provName":Ljava/lang/String;
    goto :goto_68

    .line 1102
    :cond_79
    return v1

    .line 1103
    :cond_7a
    if-eqz p3, :cond_a3

    .line 1104
    invoke-interface {p3}, Ljava/util/List;->clear()V
    :try_end_7f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_7f} :catch_9b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_7f} :catch_92
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_7f} :catch_89
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_7f} :catch_80

    goto :goto_a3

    .line 1112
    .end local v3    # "serProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_80
    move-exception v2

    .line 1113
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a3

    .line 1110
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_89
    move-exception v2

    .line 1111
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_a3

    .line 1108
    :catch_92
    move-exception v2

    .line 1109
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_a3

    .line 1106
    :catch_9b
    move-exception v2

    .line 1107
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_a3
    :goto_a3
    return v1
.end method

.method public blacklist getGnssStatus()I
    .registers 2

    .line 1314
    iget v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSnr:I

    return v0
.end method

.method public blacklist getGpsPkg()Ljava/lang/String;
    .registers 2

    .line 1248
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mGpsPkg:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPackageNamebyPid(I)Ljava/lang/String;
    .registers 9
    .param p1, "pid"    # I

    .line 288
    const/4 v0, 0x0

    .line 289
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v1

    .line 290
    :try_start_4
    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_51

    .line 291
    .local v2, "processRecord":Ljava/lang/Object;
    if-eqz v2, :cond_4f

    .line 293
    const/4 v3, 0x0

    .line 294
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_d
    const-string v4, "com.android.server.am.ProcessRecord"

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v4, v5, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    move-object v3, v4

    .line 295
    const-string v4, "info"

    invoke-static {v3, v4}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 296
    .local v4, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_28

    .line 297
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_27} :catch_46
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_27} :catch_3c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_d .. :try_end_27} :catch_32
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_27} :catch_29
    .catchall {:try_start_d .. :try_end_27} :catchall_51

    move-object v0, v5

    .line 307
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_28
    goto :goto_4f

    .line 305
    :catch_29
    move-exception v3

    .line 306
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    :try_start_2a
    const-string v4, "whetstone.activity"

    const-string v5, "getPackageNamebyPid"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4f

    .line 303
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :catch_32
    move-exception v3

    .line 304
    .local v3, "e":Ljava/lang/NoSuchFieldException;
    const-string v4, "whetstone.activity"

    const-string v5, "getPackageNamebyPid"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 307
    nop

    .end local v3    # "e":Ljava/lang/NoSuchFieldException;
    goto :goto_4f

    .line 301
    :catch_3c
    move-exception v3

    .line 302
    .local v3, "e":Ljava/lang/IllegalAccessException;
    const-string v4, "whetstone.activity"

    const-string v5, "getPackageNamebyPid"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 307
    nop

    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_4f

    .line 299
    :catch_46
    move-exception v3

    .line 300
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "whetstone.activity"

    const-string v5, "getPackageNamebyPid"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 307
    nop

    .line 309
    .end local v2    # "processRecord":Ljava/lang/Object;
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :cond_4f
    :goto_4f
    monitor-exit v1

    .line 310
    return-object v0

    .line 309
    :catchall_51
    move-exception v2

    monitor-exit v1
    :try_end_53
    .catchall {:try_start_2a .. :try_end_53} :catchall_51

    throw v2
.end method

.method public blacklist getPartialWakeLockHoldByUid(I)I
    .registers 10
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 904
    const-string v0, "whetstone.activity"

    const-string v1, "getPartialWakeLockHoldByUid"

    const/4 v2, 0x0

    .line 906
    .local v2, "ret":I
    :try_start_5
    iget-object v3, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->powerManagerServiceImpl:Ljava/lang/Object;

    const-class v4, Ljava/lang/Integer;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 907
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 906
    invoke-static {v3, v1, v4, v5}, Lmiui/util/ReflectionUtils;->callMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 908
    .local v3, "wakeLockCnt":Ljava/lang/Integer;
    if-eqz v3, :cond_20

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v2, v4

    .line 909
    :cond_20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "whetstone.activity ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_36} :catch_38

    .line 912
    nop

    .end local v3    # "wakeLockCnt":Ljava/lang/Integer;
    goto :goto_3c

    .line 910
    :catch_38
    move-exception v3

    .line 911
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 913
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_3c
    return v2
.end method

.method public bridge synthetic blacklist getPowerKeeperPolicy()Lcom/miui/whetstone/IPowerKeeperPolicy;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPowerKeeperPolicy()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPowerKeeperPolicy()Lcom/miui/whetstone/PowerKeeperPolicy;
    .registers 2

    .line 263
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPowerKeeperPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;

    return-object v0
.end method

.method public blacklist getProcessReceiverState(I)Z
    .registers 10
    .param p1, "pid"    # I

    .line 694
    const-string v0, "whetstone.activity"

    const/4 v1, -0x1

    .line 695
    .local v1, "ProcStat":I
    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_50

    .line 697
    :try_start_9
    const-string v5, "getProcStateByPid"

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-static {v2, v5, v6}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 698
    .local v2, "getProcStateByPid":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_2b

    .line 699
    const/4 v5, 0x0

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_2a} :catch_47
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_2a} :catch_3e
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_2a} :catch_35
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_2a} :catch_2c

    move v1, v0

    .line 709
    .end local v2    # "getProcStateByPid":Ljava/lang/reflect/Method;
    :cond_2b
    :goto_2b
    goto :goto_50

    .line 707
    :catch_2c
    move-exception v2

    .line 708
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    .line 705
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_35
    move-exception v2

    .line 706
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_2b

    .line 703
    :catch_3e
    move-exception v2

    .line 704
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_2b

    .line 701
    :catch_47
    move-exception v2

    .line 702
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_2b

    .line 711
    :cond_50
    :goto_50
    const/16 v0, 0xb

    if-ne v1, v0, :cond_55

    goto :goto_56

    :cond_55
    move v3, v4

    :goto_56
    return v3
.end method

.method public blacklist getSleepStateGpsStopTime()I
    .registers 2

    .line 1245
    sget v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mGpsStopTime:I

    return v0
.end method

.method public blacklist getSystemPid()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 809
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    return v0
.end method

.method public blacklist getTimeInStateByPid(I)[I
    .registers 3
    .param p1, "pid"    # I

    .line 1164
    invoke-static {p1}, Lcom/miui/whetstone/SystemInfo;->getTimeInStateByPid(I)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTimeInStateByUid(I)[I
    .registers 3
    .param p1, "uid"    # I

    .line 1160
    invoke-static {p1}, Lcom/miui/whetstone/SystemInfo;->getTimeInStateByUid(I)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUidFrozenState(I)Z
    .registers 5
    .param p1, "uid"    # I

    .line 768
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 769
    :cond_8
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mUidFrozenState:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 770
    :try_start_b
    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mUidFrozenState:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 771
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v1
.end method

.method public blacklist initGmsChain(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "rule"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 499
    const/4 v0, 0x0

    .line 501
    .local v0, "ret":Z
    :try_start_1
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->MiuiNetworkManagementService:Ljava/lang/Class;

    const-string v2, "initGmsChain"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-class v5, Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    invoke-static {v1, v2, v4}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 503
    .local v1, "method":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_36

    .line 504
    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mNetService:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    aput-object p3, v3, v8

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_35} :catch_37

    move v0, v2

    .line 508
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_36
    goto :goto_41

    .line 506
    :catch_37
    move-exception v1

    .line 507
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "whetstone.activity"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_41
    return v0
.end method

.method public blacklist isAlarmAllowedLocked(IILjava/lang/String;)Z
    .registers 8
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "tag"    # Ljava/lang/String;

    .line 775
    sget-boolean v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->D:Z

    const-string v1, "whetstone.activity"

    if-eqz v0, :cond_30

    .line 776
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAlarmAllowedLocked() for pid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", tag ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :cond_30
    invoke-virtual {p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPowerKeeperPolicy()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/miui/whetstone/PowerKeeperPolicy;->isAlarmAllowedLocked(IILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_68

    .line 779
    if-eqz v0, :cond_66

    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alarm restrict for pid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", uid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", tag = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :cond_66
    const/4 v0, 0x0

    return v0

    .line 785
    :cond_68
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isBroadcastAllowedLocked(IILjava/lang/String;)Z
    .registers 8
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "type"    # Ljava/lang/String;

    .line 789
    sget-boolean v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->D:Z

    const-string v1, "whetstone.activity"

    if-eqz v0, :cond_30

    .line 790
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBroadcastAllowedLocked() for pid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :cond_30
    invoke-virtual {p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPowerKeeperPolicy()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/miui/whetstone/PowerKeeperPolicy;->isBroadcastAllowedLocked(IILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_68

    .line 793
    if-eqz v0, :cond_66

    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcast restrict for pid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", uid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", type = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :cond_66
    const/4 v0, 0x0

    return v0

    .line 799
    :cond_68
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isEmptyOfGpsCallback()Z
    .registers 2

    .line 1242
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mGpsCallback:Landroid/location/GnssStatus$Callback;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist isProcessExecutingServices(I)Z
    .registers 10
    .param p1, "pid"    # I

    .line 716
    const-string v0, "whetstone.activity"

    const/4 v1, 0x0

    .line 717
    .local v1, "executingServicesN":I
    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_50

    .line 719
    :try_start_9
    const-string v5, "getExecutingServicesSize"

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-static {v2, v5, v6}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 720
    .local v2, "getExecutingServicesSize":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_2b

    .line 721
    const/4 v5, 0x0

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_2a} :catch_47
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_2a} :catch_3e
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_2a} :catch_35
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_2a} :catch_2c

    move v1, v0

    .line 731
    .end local v2    # "getExecutingServicesSize":Ljava/lang/reflect/Method;
    :cond_2b
    :goto_2b
    goto :goto_50

    .line 729
    :catch_2c
    move-exception v2

    .line 730
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    .line 727
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_35
    move-exception v2

    .line 728
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_2b

    .line 725
    :catch_3e
    move-exception v2

    .line 726
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_2b

    .line 723
    :catch_47
    move-exception v2

    .line 724
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_2b

    .line 733
    :cond_50
    :goto_50
    if-lez v1, :cond_53

    goto :goto_54

    :cond_53
    move v3, v4

    :goto_54
    return v3
.end method

.method public blacklist isUidTimeInStateAvailable()Z
    .registers 3

    .line 1155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isUidTimeInStateAvailable available = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/miui/whetstone/SystemInfo;->mUidTimeInStateAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "whetstone.activity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    sget-boolean v0, Lcom/miui/whetstone/SystemInfo;->mUidTimeInStateAvailable:Z

    return v0
.end method

.method public blacklist modifySuspendBaseTime()V
    .registers 6

    .line 468
    const-string v0, "whetstone.activity"

    :try_start_2
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->MiuiNetworkManagementService:Ljava/lang/Class;

    const-string v2, "modifySuspendBaseTime"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-static {v1, v2, v4}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 470
    .local v1, "method":Ljava/lang/reflect/Method;
    const-string v2, "modifySuspendBaseTime enter"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    if-eqz v1, :cond_20

    .line 472
    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mNetService:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    const-string v2, "modifySuspendBaseTime complete"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_21

    .line 477
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_20
    goto :goto_29

    .line 475
    :catch_21
    move-exception v1

    .line 476
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_29
    return-void
.end method

.method public blacklist notifyOnScroll(Z)V
    .registers 6
    .param p1, "started"    # Z

    .line 1145
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mDisplayScrollListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 1146
    :cond_9
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;->removeMessages(I)V

    .line 1147
    if-eqz p1, :cond_1f

    .line 1148
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2e

    .line 1150
    :cond_1f
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1152
    :goto_2e
    return-void
.end method

.method public blacklist notifyPkProcessDied(Landroid/os/IBinder;)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;

    .line 455
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 456
    .local v0, "callerUid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_9

    return-void

    .line 457
    :cond_9
    new-instance v1, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PkDeathToken;

    invoke-direct {v1, p0, p1}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PkDeathToken;-><init>(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;Landroid/os/IBinder;)V

    .line 459
    .local v1, "pkDeathToken":Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PkDeathToken;
    const/4 v2, 0x0

    :try_start_f
    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_13

    .line 462
    goto :goto_1d

    .line 460
    :catch_13
    move-exception v2

    .line 461
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "whetstone.activity"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1d
    return-void
.end method

.method public blacklist notifyVideoFps(II)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "fps"    # I

    .line 1266
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mCallbacksVideoFps:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 1267
    :cond_9
    new-instance v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$VideoFpsInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$VideoFpsInfo;-><init>(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;II)V

    .line 1268
    .local v0, "videoFpsInfo":Lcom/miui/whetstone/server/WhetstoneActivityManagerService$VideoFpsInfo;
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1269
    return-void
.end method

.method public blacklist putUidFrozenState(II)Z
    .registers 7
    .param p1, "uid"    # I
    .param p2, "state"    # I

    .line 760
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 761
    :cond_8
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mUidFrozenState:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 762
    :try_start_b
    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mUidFrozenState:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    if-ne v3, p2, :cond_11

    move v1, v3

    :cond_11
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 763
    monitor-exit v0

    .line 764
    return v3

    .line 763
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_16

    throw v1
.end method

.method public blacklist readSysNodeInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "nodePath"    # Ljava/lang/String;

    .line 1168
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_a

    .line 1169
    const/4 v0, 0x0

    return-object v0

    .line 1171
    :cond_a
    invoke-static {p1}, Lcom/miui/whetstone/SystemInfo;->readSysNodeInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist registVideoFpsCallBack(Lcom/miui/whetstone/IVideoFpsCallBack;)V
    .registers 5
    .param p1, "callback"    # Lcom/miui/whetstone/IVideoFpsCallBack;

    .line 1293
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_35

    .line 1294
    const-string v0, "whetstone.activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "noteVideoFps registVideoFpsCallBack, count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mCallbacksVideoFps:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    if-eqz p1, :cond_35

    .line 1296
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mCallbacksVideoFps:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 1297
    :try_start_2b
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mCallbacksVideoFps:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1298
    monitor-exit v0

    goto :goto_35

    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_32

    throw v1

    .line 1301
    :cond_35
    :goto_35
    return-void
.end method

.method public blacklist registerDisplayScroll(Lcom/miui/whetstone/IDisplayScrollListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/miui/whetstone/IDisplayScrollListener;

    .line 1126
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_17

    .line 1127
    if-eqz p1, :cond_17

    .line 1128
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mDisplayScrollListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 1129
    :try_start_d
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mDisplayScrollListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1130
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw v1

    .line 1133
    :cond_17
    :goto_17
    return-void
.end method

.method public blacklist registerGpsCallback()V
    .registers 4

    .line 620
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mGpsCallback:Landroid/location/GnssStatus$Callback;

    if-eqz v0, :cond_5

    .line 621
    return-void

    .line 623
    :cond_5
    const-string v0, "power.sleep"

    const-string v1, " WAMS registerGpsCallback"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    new-instance v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$GnssStatusCallback;

    invoke-direct {v0, p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$GnssStatusCallback;-><init>(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)V

    iput-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mGpsCallback:Landroid/location/GnssStatus$Callback;

    .line 625
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 626
    .local v0, "location":Landroid/location/LocationManager;
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mGpsCallback:Landroid/location/GnssStatus$Callback;

    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->registerGnssStatusCallback(Landroid/location/GnssStatus$Callback;Landroid/os/Handler;)Z

    .line 627
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 628
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mGpsCallback:Landroid/location/GnssStatus$Callback;

    invoke-virtual {v1}, Landroid/location/GnssStatus$Callback;->onStarted()V

    .line 630
    :cond_31
    return-void
.end method

.method public blacklist removeAppFromServiceControlWhitelist(Ljava/lang/String;)V
    .registers 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 829
    invoke-static {p1}, Lcom/miui/whetstone/process/WtServiceControlEntry;->removeAppFromServiceControlWhitelist(Ljava/lang/String;)V

    .line 830
    return-void
.end method

.method public blacklist removeTaskById(IZ)Z
    .registers 4
    .param p1, "taskId"    # I
    .param p2, "killProcess"    # Z

    .line 1070
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->removeTaskByIdInternal(IZZ)Z

    move-result v0

    return v0
.end method

.method public blacklist scheduleStopService(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "name"    # Landroid/content/ComponentName;

    .line 738
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist scheduleTrimMemory(II)Z
    .registers 11
    .param p1, "pid"    # I
    .param p2, "level"    # I

    .line 671
    const-string v0, "whetstone.activity"

    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    const/4 v2, 0x0

    if-eqz v1, :cond_52

    .line 673
    :try_start_7
    const-string v3, "scheduleTrimMemory"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v1, v3, v5}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 675
    .local v1, "scheduleTrimMemory":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_2e

    .line 676
    const/4 v3, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_2d} :catch_4a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_2d} :catch_41
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_2d} :catch_38
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_2d} :catch_2f

    .line 677
    return v7

    .line 675
    .end local v1    # "scheduleTrimMemory":Ljava/lang/reflect/Method;
    :cond_2e
    goto :goto_52

    .line 685
    :catch_2f
    move-exception v1

    .line 686
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 683
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_38
    move-exception v1

    .line 684
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_52

    .line 681
    :catch_41
    move-exception v1

    .line 682
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_52

    .line 679
    :catch_4a
    move-exception v1

    .line 680
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_52
    :goto_52
    return v2
.end method

.method public blacklist setGmsBlockerEnable(IZ)V
    .registers 10
    .param p1, "uid"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 412
    :try_start_0
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->MiuiNetworkManagementService:Ljava/lang/Class;

    const-string v1, "setGmsBlockerEnable"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v0, v1, v3}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 414
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_2a

    .line 415
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mNetService:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    .line 419
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_2a
    goto :goto_35

    .line 417
    :catch_2b
    move-exception v0

    .line 418
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "whetstone.activity"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_35
    return-void
.end method

.method public blacklist setGmsChainState(Ljava/lang/String;Z)Z
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 514
    const/4 v0, 0x0

    .line 516
    .local v0, "ret":Z
    :try_start_1
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->MiuiNetworkManagementService:Ljava/lang/Class;

    const-string v2, "setGmsChainState"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-static {v1, v2, v4}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 518
    .local v1, "method":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_2f

    .line 519
    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mNetService:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2e} :catch_30

    move v0, v2

    .line 523
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_2f
    goto :goto_3a

    .line 521
    :catch_30
    move-exception v1

    .line 522
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "whetstone.activity"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3a
    return v0
.end method

.method public blacklist setPerformanceComponents([Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "name"    # [Landroid/content/ComponentName;

    .line 814
    invoke-static {p1}, Lcom/miui/whetstone/client/WhetstoneClientManager;->setComponment([Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public blacklist setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "makeDefault"    # Z

    .line 1176
    const-string v0, "android.permission.WRITE_DEVICE_CONFIG"

    invoke-direct {p0, v0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1177
    invoke-static {p1, p2, p3, p4}, Landroid/provider/DeviceConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1178
    return-void
.end method

.method public blacklist setWhetstonePackageInfo(Ljava/util/List;Z)V
    .registers 3
    .param p2, "isAppend"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/whetstone/strategy/WhetstonePackageInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 1122
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/miui/whetstone/strategy/WhetstonePackageInfo;>;"
    return-void
.end method

.method public blacklist sleepModeRegisterGpsCallback()V
    .registers 1

    .line 1236
    invoke-virtual {p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->registerGpsCallback()V

    .line 1237
    return-void
.end method

.method public blacklist sleepModeUnregisterGpsCallback()V
    .registers 1

    .line 1239
    invoke-virtual {p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->unregisterGpsCallback()V

    .line 1240
    return-void
.end method

.method public blacklist unRegistVideoFpsCallBack(Lcom/miui/whetstone/IVideoFpsCallBack;)V
    .registers 5
    .param p1, "callback"    # Lcom/miui/whetstone/IVideoFpsCallBack;

    .line 1303
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_35

    .line 1304
    const-string v0, "whetstone.activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "noteVideoFps unRegistVideoFpsCallBack, count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mCallbacksVideoFps:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    if-eqz p1, :cond_35

    .line 1306
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mCallbacksVideoFps:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 1307
    :try_start_2b
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mCallbacksVideoFps:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1308
    monitor-exit v0

    goto :goto_35

    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_32

    throw v1

    .line 1311
    :cond_35
    :goto_35
    return-void
.end method

.method public blacklist unregisterDisplayScroll(Lcom/miui/whetstone/IDisplayScrollListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/miui/whetstone/IDisplayScrollListener;

    .line 1136
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_17

    .line 1137
    if-eqz p1, :cond_17

    .line 1138
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mDisplayScrollListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 1139
    :try_start_d
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mDisplayScrollListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1140
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw v1

    .line 1143
    :cond_17
    :goto_17
    return-void
.end method

.method public blacklist unregisterGpsCallback()V
    .registers 3

    .line 633
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mGpsCallback:Landroid/location/GnssStatus$Callback;

    if-nez v0, :cond_5

    .line 634
    return-void

    .line 636
    :cond_5
    const-string v0, "power.sleep"

    const-string v1, "WAMS unregisterGpsCallback"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 638
    .local v0, "lm":Landroid/location/LocationManager;
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mGpsCallback:Landroid/location/GnssStatus$Callback;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->unregisterGnssStatusCallback(Landroid/location/GnssStatus$Callback;)V

    .line 639
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mGpsCallback:Landroid/location/GnssStatus$Callback;

    .line 640
    return-void
.end method

.method public blacklist updateApplicationByLockedState(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "locked"    # Z

    .line 361
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->updateApplicationByLockedStateWithUserId(Ljava/lang/String;ZI)V

    .line 362
    return-void
.end method

.method public blacklist updateApplicationByLockedStateWithUserId(Ljava/lang/String;ZI)V
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "locked"    # Z
    .param p3, "userId"    # I

    .line 366
    invoke-direct {p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->checkCallInterfacePermission()Z

    move-result v0

    if-nez v0, :cond_7

    .line 367
    return-void

    .line 369
    :cond_7
    if-nez p1, :cond_a

    return-void

    .line 370
    :cond_a
    invoke-static {p1}, Lcom/miui/whetstone/client/WhetstoneClientManager;->isSystemProtectImportantApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 371
    invoke-static {p1, p2, p3}, Lcom/miui/whetstone/client/WhetstoneClientManager;->updatePackageLockedStatus(Ljava/lang/String;ZI)V

    .line 372
    return-void

    .line 374
    :cond_14
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 375
    .local v0, "callingPid":I
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v1

    .line 377
    :try_start_1b
    invoke-direct {p0, p1, p3}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getProcessPidByPackageNameLocked(Ljava/lang/String;I)I

    move-result v2
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1f} :catch_c6
    .catchall {:try_start_1b .. :try_end_1f} :catchall_c4

    .line 378
    .local v2, "pid":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_24

    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_c4

    return-void

    .line 379
    :cond_24
    :try_start_24
    iget-object v3, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 380
    .local v3, "processRecord":Ljava/lang/Object;
    if-eqz v3, :cond_c0

    .line 381
    const-string v4, "com.android.server.am.ProcessRecord"

    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    const/4 v6, 0x0

    invoke-static {v4, v6, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 383
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "com.android.server.am.ProcessList"

    iget-object v7, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v5, v6, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 385
    .local v5, "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "maxAdj"

    invoke-static {v4, v6}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 386
    .local v6, "value":Ljava/lang/Integer;
    const-string v7, "HEAVY_WEIGHT_APP_ADJ"

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v7, v8}, Lmiui/util/ReflectionUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 388
    .local v7, "value2":Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 389
    .local v8, "resultAdj":I
    if-eqz p2, :cond_72

    .line 390
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-le v9, v10, :cond_8a

    .line 391
    const-string v9, "maxAdj"

    invoke-static {v4, v9}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    invoke-virtual {v9, v3, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 392
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move v8, v9

    goto :goto_8a

    .line 395
    :cond_72
    const-string v9, "UNKNOWN_ADJ"

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v9, v10}, Lmiui/util/ReflectionUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 397
    .local v9, "value3":Ljava/lang/Integer;
    const-string v10, "maxAdj"

    invoke-static {v4, v10}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-virtual {v10, v3, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 398
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move v8, v10

    .line 400
    .end local v9    # "value3":Ljava/lang/Integer;
    :cond_8a
    :goto_8a
    const-string v9, "whetstone.activity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MaxAdj Changed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " From: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " by: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "value":Ljava/lang/Integer;
    .end local v7    # "value2":Ljava/lang/Integer;
    .end local v8    # "resultAdj":I
    :cond_c0
    invoke-static {p1, p2, p3}, Lcom/miui/whetstone/client/WhetstoneClientManager;->updatePackageLockedStatus(Ljava/lang/String;ZI)V
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_c3} :catch_c6
    .catchall {:try_start_24 .. :try_end_c3} :catchall_c4

    .line 405
    .end local v2    # "pid":I
    .end local v3    # "processRecord":Ljava/lang/Object;
    goto :goto_d0

    .line 406
    :catchall_c4
    move-exception v2

    goto :goto_d2

    .line 403
    :catch_c6
    move-exception v2

    .line 404
    .local v2, "e":Ljava/lang/Exception;
    :try_start_c7
    const-string v3, "whetstone.activity"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_d0
    monitor-exit v1

    .line 407
    return-void

    .line 406
    :goto_d2
    monitor-exit v1
    :try_end_d3
    .catchall {:try_start_c7 .. :try_end_d3} :catchall_c4

    throw v2
.end method

.method public blacklist updateApplicationsMemoryThreshold(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 833
    .local p1, "thresholds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/miui/whetstone/client/WhetstoneClientManager;->updateApplicationsMemoryThreshold(Ljava/util/List;)V

    .line 834
    return-void
.end method

.method public blacklist updateFrameworkCommonConfig(Ljava/lang/String;)V
    .registers 3
    .param p1, "json"    # Ljava/lang/String;

    .line 918
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mSetting:Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;

    invoke-virtual {v0, p1}, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->updateFrameworkCommonConfig(Ljava/lang/String;)V

    .line 919
    return-void
.end method

.method public blacklist updateUserLockedAppList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 838
    .local p1, "thresholds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->checkCallInterfacePermission()Z

    move-result v0

    if-nez v0, :cond_7

    .line 839
    return-void

    .line 841
    :cond_7
    invoke-static {p1}, Lcom/miui/whetstone/client/WhetstoneClientManager;->updateUserLockedAppList(Ljava/util/List;)V

    .line 842
    return-void
.end method

.method public blacklist updateUserLockedAppListWithUserId(Ljava/util/List;I)V
    .registers 3
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 846
    .local p1, "thresholds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1, p2}, Lcom/miui/whetstone/client/WhetstoneClientManager;->updateUserLockedAppList(Ljava/util/List;I)V

    .line 847
    return-void
.end method
