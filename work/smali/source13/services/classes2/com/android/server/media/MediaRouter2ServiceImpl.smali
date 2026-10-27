.class Lcom/android/server/media/MediaRouter2ServiceImpl;
.super Ljava/lang/Object;
.source "MediaRouter2ServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;,
        Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;,
        Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;,
        Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;,
        Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DUMMY_REQUEST_ID:J = -0x1L

.field private static final PACKAGE_IMPORTANCE_FOR_DISCOVERY:I = 0x7d

.field private static final TAG:Ljava/lang/String; = "MR2ServiceImpl"


# instance fields
.field final mActivityManager:Landroid/app/ActivityManager;

.field private final mAllManagerRecords:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllRouterRecords:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mLock:Ljava/lang/Object;

.field final mNextRouterOrManagerId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mOnUidImportanceListener:Landroid/app/ActivityManager$OnUidImportanceListener;

.field final mPowerManager:Landroid/os/PowerManager;

.field private final mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

.field private final mUserRecords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/media/MediaRouter2ServiceImpl;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/media/MediaRouter2ServiceImpl;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserRecords(Lcom/android/server/media/MediaRouter2ServiceImpl;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mUserRecords:Landroid/util/SparseArray;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 82
    const-string v0, "MR2ServiceImpl"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/MediaRouter2ServiceImpl;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    .line 91
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mNextRouterOrManagerId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 95
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mUserRecords:Landroid/util/SparseArray;

    .line 97
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    .line 99
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mCurrentUserId:I

    .line 104
    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/media/MediaRouter2ServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mOnUidImportanceListener:Landroid/app/ActivityManager$OnUidImportanceListener;

    .line 114
    new-instance v1, Lcom/android/server/media/MediaRouter2ServiceImpl$1;

    invoke-direct {v1, p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$1;-><init>(Lcom/android/server/media/MediaRouter2ServiceImpl;)V

    iput-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    .line 129
    iput-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mContext:Landroid/content/Context;

    .line 130
    const-class v2, Landroid/app/ActivityManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mActivityManager:Landroid/app/ActivityManager;

    .line 131
    const/16 v3, 0x7d

    invoke-virtual {v2, v0, v3}, Landroid/app/ActivityManager;->addOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;I)V

    .line 133
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 135
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 136
    .local v0, "screenOnOffIntentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    return-void
.end method

.method private deselectRouteWithManagerLocked(ILandroid/media/IMediaRouter2Manager;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 20
    .param p1, "requestId"    # I
    .param p2, "manager"    # Landroid/media/IMediaRouter2Manager;
    .param p3, "uniqueSessionId"    # Ljava/lang/String;
    .param p4, "route"    # Landroid/media/MediaRoute2Info;

    .line 1047
    invoke-interface/range {p2 .. p2}, Landroid/media/IMediaRouter2Manager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1048
    .local v0, "binder":Landroid/os/IBinder;
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 1050
    .local v2, "managerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    if-nez v2, :cond_10

    .line 1051
    return-void

    .line 1055
    :cond_10
    iget-object v3, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v3, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 1056
    move-object/from16 v10, p3

    invoke-virtual {v3, v10}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findRouterWithSessionLocked(Ljava/lang/String;)Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    move-result-object v3

    .line 1058
    .local v3, "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    iget v4, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    move/from16 v11, p1

    invoke-static {v4, v11}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toUniqueRequestId(II)J

    move-result-wide v12

    .line 1059
    .local v12, "uniqueRequestId":J
    iget-object v4, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v14, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance v4, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda18;

    invoke-direct {v4}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda18;-><init>()V

    iget-object v5, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v5, v5, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 1062
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1060
    move-object v7, v3

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1059
    invoke-virtual {v14, v4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1063
    return-void
.end method

.method private deselectRouteWithRouter2Locked(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 13
    .param p1, "router"    # Landroid/media/IMediaRouter2;
    .param p2, "uniqueSessionId"    # Ljava/lang/String;
    .param p3, "route"    # Landroid/media/MediaRoute2Info;

    .line 802
    invoke-interface {p1}, Landroid/media/IMediaRouter2;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 803
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 805
    .local v1, "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    if-nez v1, :cond_f

    .line 806
    return-void

    .line 809
    :cond_f
    iget-object v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v8, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance v2, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda6;-><init>()V

    iget-object v3, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v3, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    const-wide/16 v4, -0x1

    .line 812
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 810
    move-object v5, v1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 809
    invoke-virtual {v8, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 813
    return-void
.end method

.method private disposeUserIfNeededLocked(Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;)V
    .registers 5
    .param p1, "userRecord"    # Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 1147
    iget v0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mUserId:I

    iget v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mCurrentUserId:I

    if-eq v0, v1, :cond_49

    iget-object v0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mRouterRecords:Ljava/util/ArrayList;

    .line 1148
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mManagerRecords:Ljava/util/ArrayList;

    .line 1149
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1150
    sget-boolean v0, Lcom/android/server/media/MediaRouter2ServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_32

    .line 1151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Disposed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MR2ServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    :cond_32
    iget-object v0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance v1, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda15;-><init>()V

    iget-object v2, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 1154
    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1153
    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1155
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mUserRecords:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 1158
    :cond_49
    return-void
.end method

.method private getOrCreateUserRecordLocked(I)Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;
    .registers 6
    .param p1, "userId"    # I

    .line 1129
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 1130
    .local v0, "userRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;
    if-nez v0, :cond_2c

    .line 1131
    new-instance v1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    invoke-direct {v1, p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;-><init>(Lcom/android/server/media/MediaRouter2ServiceImpl;I)V

    move-object v0, v1

    .line 1132
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1133
    invoke-virtual {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->init()V

    .line 1134
    iget v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mCurrentUserId:I

    if-ne p1, v1, :cond_2c

    .line 1135
    iget-object v1, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance v2, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda0;-><init>()V

    iget-object v3, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 1136
    invoke-static {v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1135
    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1139
    :cond_2c
    return-object v0
.end method

.method private getRemoteSessionsLocked(Landroid/media/IMediaRouter2Manager;)Ljava/util/List;
    .registers 8
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/IMediaRouter2Manager;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/RoutingSessionInfo;",
            ">;"
        }
    .end annotation

    .line 877
    invoke-interface {p1}, Landroid/media/IMediaRouter2Manager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 878
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 880
    .local v1, "managerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    if-nez v1, :cond_1a

    .line 881
    const-string v2, "MR2ServiceImpl"

    const-string v3, "getRemoteSessionLocked: Ignoring unknown manager"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 885
    :cond_1a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 886
    .local v2, "sessionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/media/RoutingSessionInfo;>;"
    iget-object v3, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v3, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$fgetmRouteProviders(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/MediaRoute2Provider;

    .line 887
    .local v4, "provider":Lcom/android/server/media/MediaRoute2Provider;
    iget-boolean v5, v4, Lcom/android/server/media/MediaRoute2Provider;->mIsSystemRouteProvider:Z

    if-nez v5, :cond_42

    .line 888
    invoke-virtual {v4}, Lcom/android/server/media/MediaRoute2Provider;->getSessionInfos()Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 890
    .end local v4    # "provider":Lcom/android/server/media/MediaRoute2Provider;
    :cond_42
    goto :goto_2b

    .line 891
    :cond_43
    return-object v2
.end method

.method static synthetic lambda$deselectRouteWithManagerLocked$21(Ljava/lang/Object;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 12
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # J
    .param p3, "x$1"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p4, "x$2"    # Ljava/lang/String;
    .param p5, "x$3"    # Landroid/media/MediaRoute2Info;

    .line 1060
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mdeselectRouteOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method static synthetic lambda$deselectRouteWithRouter2Locked$11(Ljava/lang/Object;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 12
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # J
    .param p3, "x$1"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p4, "x$2"    # Ljava/lang/String;
    .param p5, "x$3"    # Landroid/media/MediaRoute2Info;

    .line 810
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mdeselectRouteOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method static synthetic lambda$disposeUserIfNeededLocked$26(Ljava/lang/Object;)V
    .registers 2
    .param p0, "rec$"    # Ljava/lang/Object;

    .line 1154
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mstop(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)V

    return-void
.end method

.method static synthetic lambda$getOrCreateUserRecordLocked$25(Ljava/lang/Object;)V
    .registers 2
    .param p0, "rec$"    # Ljava/lang/Object;

    .line 1136
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mstart(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)V

    return-void
.end method

.method static synthetic lambda$registerManagerLocked$16(Ljava/lang/Object;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/IMediaRouter2Manager;)V
    .registers 4
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p2, "x$1"    # Landroid/media/IMediaRouter2Manager;

    .line 926
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mnotifyDiscoveryPreferenceChangedToManager(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/IMediaRouter2Manager;)V

    return-void
.end method

.method static synthetic lambda$registerManagerLocked$17(Ljava/lang/Object;Landroid/media/IMediaRouter2Manager;)V
    .registers 3
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Landroid/media/IMediaRouter2Manager;

    .line 930
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mnotifyRoutesToManager(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Landroid/media/IMediaRouter2Manager;)V

    return-void
.end method

.method static synthetic lambda$registerRouter2Locked$3(Ljava/lang/Object;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)V
    .registers 3
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 668
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mnotifyRouterRegistered(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)V

    return-void
.end method

.method static synthetic lambda$releaseSessionWithManagerLocked$24(Ljava/lang/Object;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;)V
    .registers 6
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # J
    .param p3, "x$1"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p4, "x$2"    # Ljava/lang/String;

    .line 1118
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mreleaseSessionOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$releaseSessionWithRouter2Locked$15(Ljava/lang/Object;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;)V
    .registers 6
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # J
    .param p3, "x$1"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p4, "x$2"    # Ljava/lang/String;

    .line 865
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mreleaseSessionOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$requestCreateSessionWithManagerLocked$19(Ljava/lang/Object;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .registers 14
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # J
    .param p3, "x$1"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p4, "x$2"    # Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    .param p5, "x$3"    # Landroid/media/RoutingSessionInfo;
    .param p6, "x$4"    # Landroid/media/MediaRoute2Info;

    .line 1019
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mrequestRouterCreateSessionOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method static synthetic lambda$requestCreateSessionWithRouter2Locked$9(Ljava/lang/Object;JJLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/Bundle;)V
    .registers 18
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # J
    .param p3, "x$1"    # J
    .param p5, "x$2"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p6, "x$3"    # Landroid/media/RoutingSessionInfo;
    .param p7, "x$4"    # Landroid/media/MediaRoute2Info;
    .param p8, "x$5"    # Landroid/os/Bundle;

    .line 779
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mrequestCreateSessionWithRouter2OnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JJLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic lambda$selectRouteWithManagerLocked$20(Ljava/lang/Object;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 12
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # J
    .param p3, "x$1"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p4, "x$2"    # Ljava/lang/String;
    .param p5, "x$3"    # Landroid/media/MediaRoute2Info;

    .line 1039
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mselectRouteOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method static synthetic lambda$selectRouteWithRouter2Locked$10(Ljava/lang/Object;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 12
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # J
    .param p3, "x$1"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p4, "x$2"    # Ljava/lang/String;
    .param p5, "x$3"    # Landroid/media/MediaRoute2Info;

    .line 795
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mselectRouteOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method static synthetic lambda$setDiscoveryRequestWithRouter2Locked$6(Ljava/lang/Object;Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V
    .registers 4
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Ljava/lang/String;
    .param p2, "x$1"    # Landroid/media/RouteDiscoveryPreference;

    .line 699
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mnotifyDiscoveryPreferenceChangedToManagers(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V

    return-void
.end method

.method static synthetic lambda$setDiscoveryRequestWithRouter2Locked$7(Ljava/lang/Object;)V
    .registers 2
    .param p0, "rec$"    # Ljava/lang/Object;

    .line 704
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mupdateDiscoveryPreferenceOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)V

    return-void
.end method

.method static synthetic lambda$setRouteVolumeWithManagerLocked$18(Ljava/lang/Object;JLandroid/media/MediaRoute2Info;I)V
    .registers 6
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # J
    .param p3, "x$1"    # Landroid/media/MediaRoute2Info;
    .param p4, "x$2"    # I

    .line 975
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$msetRouteVolumeOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLandroid/media/MediaRoute2Info;I)V

    return-void
.end method

.method static synthetic lambda$setRouteVolumeWithRouter2Locked$8(Ljava/lang/Object;JLandroid/media/MediaRoute2Info;I)V
    .registers 6
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # J
    .param p3, "x$1"    # Landroid/media/MediaRoute2Info;
    .param p4, "x$2"    # I

    .line 715
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$msetRouteVolumeOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLandroid/media/MediaRoute2Info;I)V

    return-void
.end method

.method static synthetic lambda$setSessionVolumeWithManagerLocked$23(Ljava/lang/Object;JLjava/lang/String;I)V
    .registers 6
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # J
    .param p3, "x$1"    # Ljava/lang/String;
    .param p4, "x$2"    # I

    .line 1098
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$msetSessionVolumeOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLjava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$setSessionVolumeWithRouter2Locked$14(Ljava/lang/Object;JLjava/lang/String;I)V
    .registers 6
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # J
    .param p3, "x$1"    # Ljava/lang/String;
    .param p4, "x$2"    # I

    .line 850
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$msetSessionVolumeOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLjava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$switchUser$1(Ljava/lang/Object;)V
    .registers 2
    .param p0, "rec$"    # Ljava/lang/Object;

    .line 615
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mstop(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)V

    return-void
.end method

.method static synthetic lambda$switchUser$2(Ljava/lang/Object;)V
    .registers 2
    .param p0, "rec$"    # Ljava/lang/Object;

    .line 622
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mstart(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)V

    return-void
.end method

.method static synthetic lambda$transferToRouteWithManagerLocked$22(Ljava/lang/Object;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 12
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # J
    .param p3, "x$1"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p4, "x$2"    # Ljava/lang/String;
    .param p5, "x$3"    # Landroid/media/MediaRoute2Info;

    .line 1081
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mtransferToRouteOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method static synthetic lambda$transferToRouteWithRouter2Locked$12(Ljava/lang/Object;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;I)V
    .registers 4
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p2, "x$1"    # I

    .line 829
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mnotifySessionCreationFailedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;I)V

    return-void
.end method

.method static synthetic lambda$transferToRouteWithRouter2Locked$13(Ljava/lang/Object;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 12
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # J
    .param p3, "x$1"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p4, "x$2"    # Ljava/lang/String;
    .param p5, "x$3"    # Landroid/media/MediaRoute2Info;

    .line 834
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mtransferToRouteOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method static synthetic lambda$unregisterRouter2Locked$4(Ljava/lang/Object;Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V
    .registers 4
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Ljava/lang/String;
    .param p2, "x$1"    # Landroid/media/RouteDiscoveryPreference;

    .line 682
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mnotifyDiscoveryPreferenceChangedToManagers(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V

    return-void
.end method

.method static synthetic lambda$unregisterRouter2Locked$5(Ljava/lang/Object;)V
    .registers 2
    .param p0, "rec$"    # Ljava/lang/Object;

    .line 686
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mupdateDiscoveryPreferenceOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)V

    return-void
.end method

.method private registerManagerLocked(Landroid/media/IMediaRouter2Manager;IILjava/lang/String;I)V
    .registers 23
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .line 896
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-interface/range {p1 .. p1}, Landroid/media/IMediaRouter2Manager;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 897
    .local v10, "binder":Landroid/os/IBinder;
    iget-object v0, v8, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 899
    .local v0, "managerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    if-eqz v0, :cond_2e

    .line 900
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerManagerLocked: Same manager already exists. packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v11, p4

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MR2ServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    return-void

    .line 905
    :cond_2e
    move-object/from16 v11, p4

    iget-object v1, v8, Lcom/android/server/media/MediaRouter2ServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MEDIA_CONTENT_CONTROL"

    const-string v3, "Must hold MEDIA_CONTENT_CONTROL permission."

    move/from16 v12, p2

    move/from16 v13, p3

    invoke-virtual {v1, v2, v13, v12, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 908
    move/from16 v14, p5

    invoke-direct {v8, v14}, Lcom/android/server/media/MediaRouter2ServiceImpl;->getOrCreateUserRecordLocked(I)Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    move-result-object v15

    .line 909
    .local v15, "userRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;
    new-instance v16, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object v3, v15

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;-><init>(Lcom/android/server/media/MediaRouter2ServiceImpl;Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;Landroid/media/IMediaRouter2Manager;IILjava/lang/String;)V

    .line 911
    .end local v0    # "managerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    .local v1, "managerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    const/4 v0, 0x0

    :try_start_56
    invoke-interface {v10, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_59} :catch_9c

    .line 914
    nop

    .line 916
    iget-object v0, v15, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mManagerRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 917
    iget-object v0, v8, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0, v10, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    iget-object v0, v15, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mRouterRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 925
    .local v2, "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    iget-object v3, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v3, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance v4, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda11;

    invoke-direct {v4}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda11;-><init>()V

    iget-object v5, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v5, v5, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 926
    invoke-static {v4, v5, v2, v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 925
    invoke-virtual {v3, v4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 928
    .end local v2    # "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    goto :goto_6a

    .line 930
    :cond_8b
    iget-object v0, v15, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance v2, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda12;

    invoke-direct {v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda12;-><init>()V

    iget-object v3, v15, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v2, v3, v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 932
    return-void

    .line 912
    :catch_9c
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 913
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Media router manager died prematurely."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private registerRouter2Locked(Landroid/media/IMediaRouter2;IILjava/lang/String;IZZ)V
    .registers 23
    .param p1, "router"    # Landroid/media/IMediaRouter2;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "hasConfigureWifiDisplayPermission"    # Z
    .param p7, "hasModifyAudioRoutingPermission"    # Z

    .line 648
    move-object v10, p0

    invoke-interface/range {p1 .. p1}, Landroid/media/IMediaRouter2;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 649
    .local v11, "binder":Landroid/os/IBinder;
    iget-object v0, v10, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerRouter2Locked: Same router already exists. packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v12, p4

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MR2ServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    return-void

    .line 655
    :cond_29
    move-object/from16 v12, p4

    move/from16 v13, p5

    invoke-direct {p0, v13}, Lcom/android/server/media/MediaRouter2ServiceImpl;->getOrCreateUserRecordLocked(I)Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    move-result-object v14

    .line 656
    .local v14, "userRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;
    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    move-object v1, v0

    move-object v2, p0

    move-object v3, v14

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;-><init>(Lcom/android/server/media/MediaRouter2ServiceImpl;Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;Landroid/media/IMediaRouter2;IILjava/lang/String;ZZ)V

    .line 659
    .local v1, "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    const/4 v0, 0x0

    :try_start_46
    invoke-interface {v11, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_49} :catch_65

    .line 662
    nop

    .line 664
    iget-object v0, v14, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mRouterRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 665
    iget-object v0, v10, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0, v11, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    iget-object v0, v14, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance v2, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda5;-><init>()V

    iget-object v3, v14, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 668
    invoke-static {v2, v3, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 667
    invoke-virtual {v0, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 670
    return-void

    .line 660
    :catch_65
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 661
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "MediaRouter2 died prematurely."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private releaseSessionWithManagerLocked(ILandroid/media/IMediaRouter2Manager;Ljava/lang/String;)V
    .registers 13
    .param p1, "requestId"    # I
    .param p2, "manager"    # Landroid/media/IMediaRouter2Manager;
    .param p3, "uniqueSessionId"    # Ljava/lang/String;

    .line 1106
    invoke-interface {p2}, Landroid/media/IMediaRouter2Manager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1107
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 1109
    .local v1, "managerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    if-nez v1, :cond_f

    .line 1110
    return-void

    .line 1113
    :cond_f
    iget-object v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 1114
    invoke-virtual {v2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findRouterWithSessionLocked(Ljava/lang/String;)Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    move-result-object v2

    .line 1116
    .local v2, "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    iget v3, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    invoke-static {v3, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toUniqueRequestId(II)J

    move-result-wide v3

    .line 1117
    .local v3, "uniqueRequestId":J
    iget-object v5, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v5, v5, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance v6, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda3;

    invoke-direct {v6}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda3;-><init>()V

    iget-object v7, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v7, v7, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 1120
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 1118
    invoke-static {v6, v7, v8, v2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 1117
    invoke-virtual {v5, v6}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1121
    return-void
.end method

.method private releaseSessionWithRouter2Locked(Landroid/media/IMediaRouter2;Ljava/lang/String;)V
    .registers 10
    .param p1, "router"    # Landroid/media/IMediaRouter2;
    .param p2, "uniqueSessionId"    # Ljava/lang/String;

    .line 857
    invoke-interface {p1}, Landroid/media/IMediaRouter2;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 858
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 860
    .local v1, "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    if-nez v1, :cond_f

    .line 861
    return-void

    .line 864
    :cond_f
    iget-object v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance v3, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda8;

    invoke-direct {v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda8;-><init>()V

    iget-object v4, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v4, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    const-wide/16 v5, -0x1

    .line 867
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 865
    invoke-static {v3, v4, v5, v1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 864
    invoke-virtual {v2, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 868
    return-void
.end method

.method private requestCreateSessionWithManagerLocked(ILandroid/media/IMediaRouter2Manager;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .registers 27
    .param p1, "requestId"    # I
    .param p2, "manager"    # Landroid/media/IMediaRouter2Manager;
    .param p3, "oldSession"    # Landroid/media/RoutingSessionInfo;
    .param p4, "route"    # Landroid/media/MediaRoute2Info;

    .line 983
    move/from16 v1, p1

    move-object/from16 v2, p0

    iget-object v0, v2, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    invoke-interface/range {p2 .. p2}, Landroid/media/IMediaRouter2Manager;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 984
    .local v10, "managerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    if-nez v10, :cond_14

    .line 985
    return-void

    .line 988
    :cond_14
    invoke-virtual/range {p3 .. p3}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v11

    .line 990
    .local v11, "packageName":Ljava/lang/String;
    iget-object v0, v10, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    invoke-virtual {v0, v11}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->findRouterRecordLocked(Ljava/lang/String;)Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    move-result-object v9

    .line 991
    .local v9, "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    const/4 v0, 0x0

    if-nez v9, :cond_37

    .line 992
    const-string v3, "MR2ServiceImpl"

    const-string/jumbo v4, "requestCreateSessionWithManagerLocked: Ignoring session creation for unknown router."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    :try_start_29
    iget-object v4, v10, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManager:Landroid/media/IMediaRouter2Manager;

    invoke-interface {v4, v1, v0}, Landroid/media/IMediaRouter2Manager;->notifyRequestFailed(II)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2e} :catch_2f

    .line 999
    goto :goto_36

    .line 996
    :catch_2f
    move-exception v0

    .line 997
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v4, "requestCreateSessionWithManagerLocked: Failed to notify failure. Manager probably died."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_36
    return-void

    .line 1003
    :cond_37
    iget v3, v10, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    invoke-static {v3, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toUniqueRequestId(II)J

    move-result-wide v20

    .line 1004
    .local v20, "uniqueRequestId":J
    iget-object v3, v10, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mLastSessionCreationRequest:Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    if-eqz v3, :cond_55

    .line 1005
    iget-object v3, v10, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v3, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    iget-object v4, v10, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManager:Landroid/media/IMediaRouter2Manager;

    iget-object v5, v10, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mLastSessionCreationRequest:Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    iget-wide v5, v5, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mManagerRequestId:J

    .line 1007
    invoke-static {v5, v6}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toOriginalRequestId(J)I

    move-result v5

    .line 1005
    invoke-static {v3, v4, v5, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mnotifyRequestFailedToManager(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Landroid/media/IMediaRouter2Manager;II)V

    .line 1010
    const/4 v0, 0x0

    iput-object v0, v10, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mLastSessionCreationRequest:Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    .line 1012
    :cond_55
    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    const-wide/16 v14, 0x0

    move-object v12, v0

    move-object v13, v9

    move-wide/from16 v16, v20

    move-object/from16 v18, p3

    move-object/from16 v19, p4

    invoke-direct/range {v12 .. v19}, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;-><init>(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;JJLandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    iput-object v0, v10, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mLastSessionCreationRequest:Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    .line 1018
    iget-object v0, v9, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v0, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance v3, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda26;

    invoke-direct {v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda26;-><init>()V

    iget-object v4, v9, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v4, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 1021
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 1019
    move-object v6, v9

    move-object v7, v10

    move-object/from16 v8, p3

    move-object v12, v9

    .end local v9    # "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .local v12, "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    move-object/from16 v9, p4

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1018
    invoke-virtual {v0, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1022
    return-void
.end method

.method private requestCreateSessionWithRouter2Locked(IJLandroid/media/IMediaRouter2;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/Bundle;)V
    .registers 24
    .param p1, "requestId"    # I
    .param p2, "managerRequestId"    # J
    .param p4, "router"    # Landroid/media/IMediaRouter2;
    .param p5, "oldSession"    # Landroid/media/RoutingSessionInfo;
    .param p6, "route"    # Landroid/media/MediaRoute2Info;
    .param p7, "sessionHints"    # Landroid/os/Bundle;

    .line 724
    move/from16 v0, p1

    invoke-interface/range {p4 .. p4}, Landroid/media/IMediaRouter2;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 725
    .local v1, "binder":Landroid/os/IBinder;
    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 727
    .local v3, "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    if-nez v3, :cond_13

    .line 728
    return-void

    .line 731
    :cond_13
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    const-string v5, "MR2ServiceImpl"

    if-eqz v4, :cond_9c

    .line 732
    iget-object v4, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v4, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 733
    invoke-static/range {p2 .. p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toRequesterId(J)I

    move-result v6

    .line 732
    invoke-virtual {v4, v6}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findManagerWithId(I)Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    move-result-object v4

    .line 734
    .local v4, "manager":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    if-eqz v4, :cond_8e

    iget-object v6, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mLastSessionCreationRequest:Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    if-nez v6, :cond_2e

    goto :goto_8e

    .line 741
    :cond_2e
    iget-object v6, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mLastSessionCreationRequest:Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    iget-object v6, v6, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mOldSession:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v6}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v6

    .line 742
    invoke-virtual/range {p5 .. p5}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v7

    .line 741
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4e

    .line 743
    const-string/jumbo v6, "requestCreateSessionWithRouter2Locked: Ignoring unmatched routing session."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iget-object v5, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v5, v5, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v5, v3, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mnotifySessionCreationFailedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;I)V

    .line 747
    return-void

    .line 749
    :cond_4e
    iget-object v6, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mLastSessionCreationRequest:Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    iget-object v6, v6, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRoute:Landroid/media/MediaRoute2Info;

    invoke-virtual {v6}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v6

    .line 750
    invoke-virtual/range {p6 .. p6}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v7

    .line 749
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_87

    .line 752
    iget-boolean v6, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mHasModifyAudioRoutingPermission:Z

    if-nez v6, :cond_79

    iget-object v6, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mLastSessionCreationRequest:Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    iget-object v6, v6, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRoute:Landroid/media/MediaRoute2Info;

    .line 753
    invoke-virtual {v6}, Landroid/media/MediaRoute2Info;->isSystemRoute()Z

    move-result v6

    if-eqz v6, :cond_79

    .line 754
    invoke-virtual/range {p6 .. p6}, Landroid/media/MediaRoute2Info;->isSystemRoute()Z

    move-result v6

    if-eqz v6, :cond_79

    .line 755
    iget-object v5, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mLastSessionCreationRequest:Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    iget-object v5, v5, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRoute:Landroid/media/MediaRoute2Info;

    .end local p6    # "route":Landroid/media/MediaRoute2Info;
    .local v5, "route":Landroid/media/MediaRoute2Info;
    goto :goto_89

    .line 757
    .end local v5    # "route":Landroid/media/MediaRoute2Info;
    .restart local p6    # "route":Landroid/media/MediaRoute2Info;
    :cond_79
    const-string/jumbo v6, "requestCreateSessionWithRouter2Locked: Ignoring unmatched route."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iget-object v5, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v5, v5, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v5, v3, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mnotifySessionCreationFailedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;I)V

    .line 761
    return-void

    .line 749
    :cond_87
    move-object/from16 v5, p6

    .line 764
    .end local p6    # "route":Landroid/media/MediaRoute2Info;
    .restart local v5    # "route":Landroid/media/MediaRoute2Info;
    :goto_89
    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mLastSessionCreationRequest:Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    .line 765
    .end local v4    # "manager":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    move-object v12, v5

    goto :goto_e6

    .line 735
    .end local v5    # "route":Landroid/media/MediaRoute2Info;
    .restart local v4    # "manager":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    .restart local p6    # "route":Landroid/media/MediaRoute2Info;
    :cond_8e
    :goto_8e
    const-string/jumbo v6, "requestCreateSessionWithRouter2Locked: Ignoring unknown request."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-object v5, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v5, v5, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v5, v3, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mnotifySessionCreationFailedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;I)V

    .line 739
    return-void

    .line 766
    .end local v4    # "manager":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    :cond_9c
    invoke-virtual/range {p6 .. p6}, Landroid/media/MediaRoute2Info;->isSystemRoute()Z

    move-result v4

    if-eqz v4, :cond_e3

    iget-boolean v4, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mHasModifyAudioRoutingPermission:Z

    if-nez v4, :cond_e3

    .line 767
    invoke-virtual/range {p6 .. p6}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v6, v6, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v6}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$fgetmSystemProvider(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)Lcom/android/server/media/SystemMediaRoute2Provider;

    move-result-object v6

    .line 768
    invoke-virtual {v6}, Lcom/android/server/media/SystemMediaRoute2Provider;->getDefaultRoute()Landroid/media/MediaRoute2Info;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v6

    .line 767
    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e0

    .line 769
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MODIFY_AUDIO_ROUTING permission is required to transfer to"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v6, p6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    iget-object v4, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v4, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v4, v3, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mnotifySessionCreationFailedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;I)V

    .line 773
    return-void

    .line 767
    :cond_e0
    move-object/from16 v6, p6

    goto :goto_e5

    .line 766
    :cond_e3
    move-object/from16 v6, p6

    .line 777
    :goto_e5
    move-object v12, v6

    .end local p6    # "route":Landroid/media/MediaRoute2Info;
    .local v12, "route":Landroid/media/MediaRoute2Info;
    :goto_e6
    iget v4, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouterId:I

    invoke-static {v4, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toUniqueRequestId(II)J

    move-result-wide v13

    .line 778
    .local v13, "uniqueRequestId":J
    iget-object v4, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v15, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance v4, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda21;

    invoke-direct {v4}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda21;-><init>()V

    iget-object v5, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v5, v5, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 781
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 779
    move-object v8, v3

    move-object/from16 v9, p5

    move-object v10, v12

    move-object/from16 v11, p7

    invoke-static/range {v4 .. v11}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HeptConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 778
    invoke-virtual {v15, v4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 783
    return-void
.end method

.method private selectRouteWithManagerLocked(ILandroid/media/IMediaRouter2Manager;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 20
    .param p1, "requestId"    # I
    .param p2, "manager"    # Landroid/media/IMediaRouter2Manager;
    .param p3, "uniqueSessionId"    # Ljava/lang/String;
    .param p4, "route"    # Landroid/media/MediaRoute2Info;

    .line 1026
    invoke-interface/range {p2 .. p2}, Landroid/media/IMediaRouter2Manager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1027
    .local v0, "binder":Landroid/os/IBinder;
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 1029
    .local v2, "managerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    if-nez v2, :cond_10

    .line 1030
    return-void

    .line 1034
    :cond_10
    iget-object v3, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v3, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 1035
    move-object/from16 v10, p3

    invoke-virtual {v3, v10}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findRouterWithSessionLocked(Ljava/lang/String;)Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    move-result-object v3

    .line 1037
    .local v3, "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    iget v4, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    move/from16 v11, p1

    invoke-static {v4, v11}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toUniqueRequestId(II)J

    move-result-wide v12

    .line 1038
    .local v12, "uniqueRequestId":J
    iget-object v4, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v14, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance v4, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda7;

    invoke-direct {v4}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda7;-><init>()V

    iget-object v5, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v5, v5, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 1041
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1039
    move-object v7, v3

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1038
    invoke-virtual {v14, v4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1042
    return-void
.end method

.method private selectRouteWithRouter2Locked(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 13
    .param p1, "router"    # Landroid/media/IMediaRouter2;
    .param p2, "uniqueSessionId"    # Ljava/lang/String;
    .param p3, "route"    # Landroid/media/MediaRoute2Info;

    .line 787
    invoke-interface {p1}, Landroid/media/IMediaRouter2;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 788
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 790
    .local v1, "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    if-nez v1, :cond_f

    .line 791
    return-void

    .line 794
    :cond_f
    iget-object v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v8, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance v2, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda23;

    invoke-direct {v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda23;-><init>()V

    iget-object v3, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v3, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    const-wide/16 v4, -0x1

    .line 797
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 795
    move-object v5, v1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 794
    invoke-virtual {v8, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 798
    return-void
.end method

.method private setDiscoveryRequestWithRouter2Locked(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/RouteDiscoveryPreference;)V
    .registers 8
    .param p1, "routerRecord"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p2, "discoveryRequest"    # Landroid/media/RouteDiscoveryPreference;

    .line 694
    iget-object v0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    invoke-virtual {v0, p2}, Landroid/media/RouteDiscoveryPreference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 695
    return-void

    .line 697
    :cond_9
    iput-object p2, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 698
    iget-object v0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v0, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance v1, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda19;

    invoke-direct {v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda19;-><init>()V

    iget-object v2, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    iget-object v3, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 699
    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 698
    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 703
    iget-object v0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v0, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance v1, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda20;

    invoke-direct {v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda20;-><init>()V

    iget-object v2, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 704
    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 703
    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 706
    return-void
.end method

.method private setRouteVolumeWithManagerLocked(ILandroid/media/IMediaRouter2Manager;Landroid/media/MediaRoute2Info;I)V
    .registers 14
    .param p1, "requestId"    # I
    .param p2, "manager"    # Landroid/media/IMediaRouter2Manager;
    .param p3, "route"    # Landroid/media/MediaRoute2Info;
    .param p4, "volume"    # I

    .line 966
    invoke-interface {p2}, Landroid/media/IMediaRouter2Manager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 967
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 969
    .local v1, "managerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    if-nez v1, :cond_f

    .line 970
    return-void

    .line 973
    :cond_f
    iget v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    invoke-static {v2, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toUniqueRequestId(II)J

    move-result-wide v2

    .line 974
    .local v2, "uniqueRequestId":J
    iget-object v4, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v4, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance v5, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda1;-><init>()V

    iget-object v6, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v6, v6, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 977
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 975
    invoke-static {v5, v6, v7, p3, v8}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 974
    invoke-virtual {v4, v5}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 978
    return-void
.end method

.method private setRouteVolumeWithRouter2Locked(Landroid/media/IMediaRouter2;Landroid/media/MediaRoute2Info;I)V
    .registers 11
    .param p1, "router"    # Landroid/media/IMediaRouter2;
    .param p2, "route"    # Landroid/media/MediaRoute2Info;
    .param p3, "volume"    # I

    .line 710
    invoke-interface {p1}, Landroid/media/IMediaRouter2;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 711
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 713
    .local v1, "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    if-eqz v1, :cond_2c

    .line 714
    iget-object v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance v3, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda2;-><init>()V

    iget-object v4, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v4, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    const-wide/16 v5, -0x1

    .line 717
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 715
    invoke-static {v3, v4, v5, p2, v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 714
    invoke-virtual {v2, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 719
    :cond_2c
    return-void
.end method

.method private setSessionVolumeWithManagerLocked(ILandroid/media/IMediaRouter2Manager;Ljava/lang/String;I)V
    .registers 14
    .param p1, "requestId"    # I
    .param p2, "manager"    # Landroid/media/IMediaRouter2Manager;
    .param p3, "uniqueSessionId"    # Ljava/lang/String;
    .param p4, "volume"    # I

    .line 1089
    invoke-interface {p2}, Landroid/media/IMediaRouter2Manager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1090
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 1092
    .local v1, "managerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    if-nez v1, :cond_f

    .line 1093
    return-void

    .line 1096
    :cond_f
    iget v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    invoke-static {v2, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toUniqueRequestId(II)J

    move-result-wide v2

    .line 1097
    .local v2, "uniqueRequestId":J
    iget-object v4, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v4, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance v5, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda9;

    invoke-direct {v5}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda9;-><init>()V

    iget-object v6, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v6, v6, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 1100
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1098
    invoke-static {v5, v6, v7, p3, v8}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1097
    invoke-virtual {v4, v5}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1101
    return-void
.end method

.method private setSessionVolumeWithRouter2Locked(Landroid/media/IMediaRouter2;Ljava/lang/String;I)V
    .registers 11
    .param p1, "router"    # Landroid/media/IMediaRouter2;
    .param p2, "uniqueSessionId"    # Ljava/lang/String;
    .param p3, "volume"    # I

    .line 842
    invoke-interface {p1}, Landroid/media/IMediaRouter2;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 843
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 845
    .local v1, "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    if-nez v1, :cond_f

    .line 846
    return-void

    .line 849
    :cond_f
    iget-object v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance v3, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda4;-><init>()V

    iget-object v4, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v4, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    const-wide/16 v5, -0x1

    .line 852
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 850
    invoke-static {v3, v4, v5, p2, v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 849
    invoke-virtual {v2, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 853
    return-void
.end method

.method private startScanLocked(Landroid/media/IMediaRouter2Manager;)V
    .registers 4
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;

    .line 946
    invoke-interface {p1}, Landroid/media/IMediaRouter2Manager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 947
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 948
    .local v1, "managerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    if-nez v1, :cond_f

    .line 949
    return-void

    .line 951
    :cond_f
    invoke-virtual {v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->startScan()V

    .line 952
    return-void
.end method

.method private stopScanLocked(Landroid/media/IMediaRouter2Manager;)V
    .registers 4
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;

    .line 955
    invoke-interface {p1}, Landroid/media/IMediaRouter2Manager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 956
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 957
    .local v1, "managerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    if-nez v1, :cond_f

    .line 958
    return-void

    .line 960
    :cond_f
    invoke-virtual {v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->stopScan()V

    .line 961
    return-void
.end method

.method static toOriginalRequestId(J)I
    .registers 3
    .param p0, "uniqueRequestId"    # J

    .line 1169
    long-to-int v0, p0

    return v0
.end method

.method static toRequesterId(J)I
    .registers 4
    .param p0, "uniqueRequestId"    # J

    .line 1165
    const/16 v0, 0x20

    shr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method static toUniqueRequestId(II)J
    .registers 6
    .param p0, "requesterId"    # I
    .param p1, "originalRequestId"    # I

    .line 1161
    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private transferToRouteWithManagerLocked(ILandroid/media/IMediaRouter2Manager;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 20
    .param p1, "requestId"    # I
    .param p2, "manager"    # Landroid/media/IMediaRouter2Manager;
    .param p3, "uniqueSessionId"    # Ljava/lang/String;
    .param p4, "route"    # Landroid/media/MediaRoute2Info;

    .line 1068
    invoke-interface/range {p2 .. p2}, Landroid/media/IMediaRouter2Manager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1069
    .local v0, "binder":Landroid/os/IBinder;
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 1071
    .local v2, "managerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    if-nez v2, :cond_10

    .line 1072
    return-void

    .line 1076
    :cond_10
    iget-object v3, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v3, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 1077
    move-object/from16 v10, p3

    invoke-virtual {v3, v10}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findRouterWithSessionLocked(Ljava/lang/String;)Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    move-result-object v3

    .line 1079
    .local v3, "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    iget v4, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    move/from16 v11, p1

    invoke-static {v4, v11}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toUniqueRequestId(II)J

    move-result-wide v12

    .line 1080
    .local v12, "uniqueRequestId":J
    iget-object v4, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v14, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance v4, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda22;

    invoke-direct {v4}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda22;-><init>()V

    iget-object v5, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v5, v5, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 1083
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1081
    move-object v7, v3

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1080
    invoke-virtual {v14, v4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1084
    return-void
.end method

.method private transferToRouteWithRouter2Locked(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 14
    .param p1, "router"    # Landroid/media/IMediaRouter2;
    .param p2, "uniqueSessionId"    # Ljava/lang/String;
    .param p3, "route"    # Landroid/media/MediaRoute2Info;

    .line 817
    invoke-interface {p1}, Landroid/media/IMediaRouter2;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 818
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 820
    .local v1, "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    if-nez v1, :cond_f

    .line 821
    return-void

    .line 824
    :cond_f
    iget-object v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$fgetmSystemProvider(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)Lcom/android/server/media/SystemMediaRoute2Provider;

    move-result-object v2

    .line 825
    invoke-virtual {v2}, Lcom/android/server/media/SystemMediaRoute2Provider;->getDefaultRoute()Landroid/media/MediaRoute2Info;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v8

    .line 826
    .local v8, "defaultRouteId":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/media/MediaRoute2Info;->isSystemRoute()Z

    move-result v2

    const-wide/16 v3, -0x1

    if-eqz v2, :cond_52

    iget-boolean v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mHasModifyAudioRoutingPermission:Z

    if-nez v2, :cond_52

    .line 827
    invoke-virtual {p3}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_52

    .line 828
    iget-object v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance v5, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda16;

    invoke-direct {v5}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda16;-><init>()V

    iget-object v6, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v6, v6, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 831
    invoke-static {v3, v4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toOriginalRequestId(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 829
    invoke-static {v5, v6, v1, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 828
    invoke-virtual {v2, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6e

    .line 833
    :cond_52
    iget-object v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v9, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance v2, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda17;

    invoke-direct {v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda17;-><init>()V

    iget-object v5, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v5, v5, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 836
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 834
    move-object v3, v5

    move-object v5, v1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 833
    invoke-virtual {v9, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 838
    :goto_6e
    return-void
.end method

.method private unregisterManagerLocked(Landroid/media/IMediaRouter2Manager;Z)V
    .registers 6
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;
    .param p2, "died"    # Z

    .line 935
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/media/IMediaRouter2Manager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 936
    .local v0, "managerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    if-nez v0, :cond_f

    .line 937
    return-void

    .line 939
    :cond_f
    iget-object v1, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 940
    .local v1, "userRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;
    iget-object v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mManagerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 941
    invoke-virtual {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->dispose()V

    .line 942
    invoke-direct {p0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->disposeUserIfNeededLocked(Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;)V

    .line 943
    return-void
.end method

.method private unregisterRouter2Locked(Landroid/media/IMediaRouter2;Z)V
    .registers 10
    .param p1, "router"    # Landroid/media/IMediaRouter2;
    .param p2, "died"    # Z

    .line 673
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/media/IMediaRouter2;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 674
    .local v0, "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    if-nez v0, :cond_16

    .line 675
    const-string v1, "MR2ServiceImpl"

    const-string v2, "Ignoring unregistering unknown router2"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    return-void

    .line 679
    :cond_16
    iget-object v1, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 680
    .local v1, "userRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;
    iget-object v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mRouterRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 681
    iget-object v2, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance v3, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda13;

    invoke-direct {v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda13;-><init>()V

    iget-object v4, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v4, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    iget-object v5, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    const/4 v6, 0x0

    .line 682
    invoke-static {v3, v4, v5, v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 681
    invoke-virtual {v2, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 685
    iget-object v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance v3, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda14;

    invoke-direct {v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda14;-><init>()V

    iget-object v4, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 686
    invoke-static {v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 685
    invoke-virtual {v2, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 688
    invoke-virtual {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->dispose()V

    .line 689
    invoke-direct {p0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->disposeUserIfNeededLocked(Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;)V

    .line 690
    return-void
.end method


# virtual methods
.method public deselectRouteWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 9
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;
    .param p2, "requestId"    # I
    .param p3, "uniqueSessionId"    # Ljava/lang/String;
    .param p4, "route"    # Landroid/media/MediaRoute2Info;

    .line 536
    const-string/jumbo v0, "manager must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 537
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 540
    const-string/jumbo v0, "route must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 542
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 544
    .local v0, "token":J
    :try_start_16
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_25

    .line 545
    :try_start_19
    invoke-direct {p0, p2, p1, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->deselectRouteWithManagerLocked(ILandroid/media/IMediaRouter2Manager;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    .line 546
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_22

    .line 548
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 549
    nop

    .line 550
    return-void

    .line 546
    :catchall_22
    move-exception v3

    :try_start_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .end local p1    # "manager":Landroid/media/IMediaRouter2Manager;
    .end local p2    # "requestId":I
    .end local p3    # "uniqueSessionId":Ljava/lang/String;
    .end local p4    # "route":Landroid/media/MediaRoute2Info;
    :try_start_24
    throw v3
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_25

    .line 548
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .restart local p1    # "manager":Landroid/media/IMediaRouter2Manager;
    .restart local p2    # "requestId":I
    .restart local p3    # "uniqueSessionId":Ljava/lang/String;
    .restart local p4    # "route":Landroid/media/MediaRoute2Info;
    :catchall_25
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 549
    throw v2

    .line 538
    .end local v0    # "token":J
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "uniqueSessionId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deselectRouteWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 8
    .param p1, "router"    # Landroid/media/IMediaRouter2;
    .param p2, "uniqueSessionId"    # Ljava/lang/String;
    .param p3, "route"    # Landroid/media/MediaRoute2Info;

    .line 346
    const-string/jumbo v0, "router must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 347
    const-string/jumbo v0, "route must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 348
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 352
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 354
    .local v0, "token":J
    :try_start_16
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_25

    .line 355
    :try_start_19
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->deselectRouteWithRouter2Locked(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    .line 356
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_22

    .line 358
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 359
    nop

    .line 360
    return-void

    .line 356
    :catchall_22
    move-exception v3

    :try_start_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .end local p1    # "router":Landroid/media/IMediaRouter2;
    .end local p2    # "uniqueSessionId":Ljava/lang/String;
    .end local p3    # "route":Landroid/media/MediaRoute2Info;
    :try_start_24
    throw v3
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_25

    .line 358
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .restart local p1    # "router":Landroid/media/IMediaRouter2;
    .restart local p2    # "uniqueSessionId":Ljava/lang/String;
    .restart local p3    # "route":Landroid/media/MediaRoute2Info;
    :catchall_25
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 359
    throw v2

    .line 349
    .end local v0    # "token":J
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "uniqueSessionId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enforceMediaContentControlPermission()V
    .registers 8

    .line 149
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 150
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 151
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 154
    .local v2, "token":J
    :try_start_c
    iget-object v4, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.MEDIA_CONTENT_CONTROL"

    const-string v6, "Must hold MEDIA_CONTENT_CONTROL permission."

    invoke-virtual {v4, v5, v0, v1, v6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_1a

    .line 157
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 158
    nop

    .line 159
    return-void

    .line 157
    :catchall_1a
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 158
    throw v4
.end method

.method public getRemoteSessions(Landroid/media/IMediaRouter2Manager;)Ljava/util/List;
    .registers 6
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/IMediaRouter2Manager;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/RoutingSessionInfo;",
            ">;"
        }
    .end annotation

    .line 418
    const-string/jumbo v0, "manager must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 419
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 421
    .local v0, "token":J
    :try_start_a
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_19

    .line 422
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->getRemoteSessionsLocked(Landroid/media/IMediaRouter2Manager;)Ljava/util/List;

    move-result-object v3

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_16

    .line 425
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 422
    return-object v3

    .line 423
    :catchall_16
    move-exception v3

    :try_start_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .end local p1    # "manager":Landroid/media/IMediaRouter2Manager;
    :try_start_18
    throw v3
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_19

    .line 425
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .restart local p1    # "manager":Landroid/media/IMediaRouter2Manager;
    :catchall_19
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 426
    throw v2
.end method

.method public getSystemRoutes()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 163
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 164
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 165
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_18

    const/4 v2, 0x1

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    .line 169
    .local v2, "hasModifyAudioRoutingPermission":Z
    :goto_19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 172
    .local v3, "token":J
    :try_start_1d
    iget-object v5, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_5c

    .line 173
    :try_start_20
    invoke-direct {p0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->getOrCreateUserRecordLocked(I)Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    move-result-object v6

    .line 174
    .local v6, "userRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;
    if-eqz v2, :cond_3c

    .line 175
    iget-object v7, v6, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v7}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$fgetmSystemProvider(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)Lcom/android/server/media/SystemMediaRoute2Provider;

    move-result-object v7

    .line 176
    invoke-virtual {v7}, Lcom/android/server/media/SystemMediaRoute2Provider;->getProviderInfo()Landroid/media/MediaRoute2ProviderInfo;

    move-result-object v7

    .line 177
    .local v7, "providerInfo":Landroid/media/MediaRoute2ProviderInfo;
    if-eqz v7, :cond_37

    .line 178
    invoke-virtual {v7}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    move-result-object v8

    .local v8, "systemRoutes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/media/MediaRoute2Info;>;"
    goto :goto_3b

    .line 180
    .end local v8    # "systemRoutes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/media/MediaRoute2Info;>;"
    :cond_37
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 182
    .end local v7    # "providerInfo":Landroid/media/MediaRoute2ProviderInfo;
    .restart local v8    # "systemRoutes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/media/MediaRoute2Info;>;"
    :goto_3b
    goto :goto_4f

    .line 183
    .end local v8    # "systemRoutes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/media/MediaRoute2Info;>;"
    :cond_3c
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v7

    .line 184
    .restart local v8    # "systemRoutes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/media/MediaRoute2Info;>;"
    iget-object v7, v6, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v7}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$fgetmSystemProvider(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)Lcom/android/server/media/SystemMediaRoute2Provider;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/media/SystemMediaRoute2Provider;->getDefaultRoute()Landroid/media/MediaRoute2Info;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 186
    .end local v6    # "userRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;
    :goto_4f
    monitor-exit v5
    :try_end_50
    .catchall {:try_start_20 .. :try_end_50} :catchall_59

    .line 187
    :try_start_50
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_55
    .catchall {:try_start_50 .. :try_end_55} :catchall_5c

    .line 189
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 187
    return-object v5

    .line 186
    .end local v8    # "systemRoutes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/media/MediaRoute2Info;>;"
    :catchall_59
    move-exception v6

    :try_start_5a
    monitor-exit v5
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    .end local v0    # "uid":I
    .end local v1    # "userId":I
    .end local v2    # "hasModifyAudioRoutingPermission":Z
    .end local v3    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    :try_start_5b
    throw v6
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5c

    .line 189
    .restart local v0    # "uid":I
    .restart local v1    # "userId":I
    .restart local v2    # "hasModifyAudioRoutingPermission":Z
    .restart local v3    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    :catchall_5c
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 190
    throw v5
.end method

.method public getSystemSessionInfo(Ljava/lang/String;Z)Landroid/media/RoutingSessionInfo;
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "setDeviceRouteSelected"    # Z

    .line 196
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 197
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 198
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_19

    const/4 v2, 0x1

    goto :goto_1a

    :cond_19
    move v2, v3

    .line 202
    .local v2, "hasModifyAudioRoutingPermission":Z
    :goto_1a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 204
    .local v4, "token":J
    const/4 v6, 0x0

    .line 205
    .local v6, "systemSessionInfo":Landroid/media/RoutingSessionInfo;
    :try_start_1f
    iget-object v7, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_86

    .line 206
    :try_start_22
    invoke-direct {p0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->getOrCreateUserRecordLocked(I)Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    move-result-object v8

    .line 208
    .local v8, "userRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;
    if-eqz v2, :cond_65

    .line 209
    if-eqz p2, :cond_36

    .line 210
    iget-object v3, v8, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$fgetmSystemProvider(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)Lcom/android/server/media/SystemMediaRoute2Provider;

    move-result-object v3

    .line 211
    invoke-virtual {v3, p1}, Lcom/android/server/media/SystemMediaRoute2Provider;->generateDeviceRouteSelectedSessionInfo(Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object v3

    move-object v6, v3

    .end local v6    # "systemSessionInfo":Landroid/media/RoutingSessionInfo;
    .local v3, "systemSessionInfo":Landroid/media/RoutingSessionInfo;
    goto :goto_7d

    .line 213
    .end local v3    # "systemSessionInfo":Landroid/media/RoutingSessionInfo;
    .restart local v6    # "systemSessionInfo":Landroid/media/RoutingSessionInfo;
    :cond_36
    iget-object v9, v8, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v9}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$fgetmSystemProvider(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)Lcom/android/server/media/SystemMediaRoute2Provider;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/media/SystemMediaRoute2Provider;->getSessionInfos()Ljava/util/List;

    move-result-object v9

    .line 214
    .local v9, "sessionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/media/RoutingSessionInfo;>;"
    if-eqz v9, :cond_5d

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5d

    .line 215
    new-instance v10, Landroid/media/RoutingSessionInfo$Builder;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/RoutingSessionInfo;

    invoke-direct {v10, v3}, Landroid/media/RoutingSessionInfo$Builder;-><init>(Landroid/media/RoutingSessionInfo;)V

    .line 216
    invoke-virtual {v10, p1}, Landroid/media/RoutingSessionInfo$Builder;->setClientPackageName(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/RoutingSessionInfo$Builder;->build()Landroid/media/RoutingSessionInfo;

    move-result-object v3

    move-object v6, v3

    .end local v6    # "systemSessionInfo":Landroid/media/RoutingSessionInfo;
    .restart local v3    # "systemSessionInfo":Landroid/media/RoutingSessionInfo;
    goto :goto_7d

    .line 218
    .end local v3    # "systemSessionInfo":Landroid/media/RoutingSessionInfo;
    .restart local v6    # "systemSessionInfo":Landroid/media/RoutingSessionInfo;
    :cond_5d
    const-string v3, "MR2ServiceImpl"

    const-string v10, "System provider does not have any session info."

    invoke-static {v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7d

    .line 222
    .end local v9    # "sessionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/media/RoutingSessionInfo;>;"
    :cond_65
    new-instance v3, Landroid/media/RoutingSessionInfo$Builder;

    iget-object v9, v8, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v9}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$fgetmSystemProvider(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)Lcom/android/server/media/SystemMediaRoute2Provider;

    move-result-object v9

    .line 223
    invoke-virtual {v9}, Lcom/android/server/media/SystemMediaRoute2Provider;->getDefaultSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v9

    invoke-direct {v3, v9}, Landroid/media/RoutingSessionInfo$Builder;-><init>(Landroid/media/RoutingSessionInfo;)V

    .line 224
    invoke-virtual {v3, p1}, Landroid/media/RoutingSessionInfo$Builder;->setClientPackageName(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/RoutingSessionInfo$Builder;->build()Landroid/media/RoutingSessionInfo;

    move-result-object v3

    move-object v6, v3

    .line 226
    .end local v8    # "userRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;
    :goto_7d
    monitor-exit v7
    :try_end_7e
    .catchall {:try_start_22 .. :try_end_7e} :catchall_83

    .line 227
    nop

    .line 229
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 227
    return-object v6

    .line 226
    :catchall_83
    move-exception v3

    :try_start_84
    monitor-exit v7
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    .end local v0    # "uid":I
    .end local v1    # "userId":I
    .end local v2    # "hasModifyAudioRoutingPermission":Z
    .end local v4    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "setDeviceRouteSelected":Z
    :try_start_85
    throw v3
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_86

    .line 229
    .end local v6    # "systemSessionInfo":Landroid/media/RoutingSessionInfo;
    .restart local v0    # "uid":I
    .restart local v1    # "userId":I
    .restart local v2    # "hasModifyAudioRoutingPermission":Z
    .restart local v4    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "setDeviceRouteSelected":Z
    :catchall_86
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 230
    throw v3
.end method

.method synthetic lambda$new$0$com-android-server-media-MediaRouter2ServiceImpl(II)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "importance"    # I

    .line 106
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_3
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 108
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_1c

    .line 109
    iget-object v3, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v3, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-virtual {v3, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->maybeUpdateDiscoveryPreferenceForUid(I)V

    .line 108
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 111
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1c
    monitor-exit v0

    .line 112
    return-void

    .line 111
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method managerDied(Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;)V
    .registers 5
    .param p1, "managerRecord"    # Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 635
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 636
    :try_start_3
    iget-object v1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManager:Landroid/media/IMediaRouter2Manager;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->unregisterManagerLocked(Landroid/media/IMediaRouter2Manager;Z)V

    .line 637
    monitor-exit v0

    .line 638
    return-void

    .line 637
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public registerManager(Landroid/media/IMediaRouter2Manager;Ljava/lang/String;)V
    .registers 15
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 430
    const-string/jumbo v0, "manager must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 431
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 435
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 436
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 437
    .local v7, "pid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 439
    .local v8, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 441
    .local v9, "token":J
    :try_start_20
    iget-object v11, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_35

    .line 442
    move-object v1, p0

    move-object v2, p1

    move v3, v0

    move v4, v7

    move-object v5, p2

    move v6, v8

    :try_start_29
    invoke-direct/range {v1 .. v6}, Lcom/android/server/media/MediaRouter2ServiceImpl;->registerManagerLocked(Landroid/media/IMediaRouter2Manager;IILjava/lang/String;I)V

    .line 443
    monitor-exit v11
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_32

    .line 445
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 446
    nop

    .line 447
    return-void

    .line 443
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v11
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    .end local v0    # "uid":I
    .end local v7    # "pid":I
    .end local v8    # "userId":I
    .end local v9    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .end local p1    # "manager":Landroid/media/IMediaRouter2Manager;
    .end local p2    # "packageName":Ljava/lang/String;
    :try_start_34
    throw v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_35

    .line 445
    .restart local v0    # "uid":I
    .restart local v7    # "pid":I
    .restart local v8    # "userId":I
    .restart local v9    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .restart local p1    # "manager":Landroid/media/IMediaRouter2Manager;
    .restart local p2    # "packageName":Ljava/lang/String;
    :catchall_35
    move-exception v1

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 446
    throw v1

    .line 432
    .end local v0    # "uid":I
    .end local v7    # "pid":I
    .end local v8    # "userId":I
    .end local v9    # "token":J
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "packageName must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;)V
    .registers 20
    .param p1, "router"    # Landroid/media/IMediaRouter2;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 234
    move-object/from16 v9, p0

    const-string/jumbo v0, "router must not be null"

    move-object/from16 v10, p1

    invoke-static {v10, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 235
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 239
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 240
    .local v11, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 241
    .local v12, "pid":I
    invoke-static {v11}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v13

    .line 242
    .local v13, "userId":I
    iget-object v0, v9, Lcom/android/server/media/MediaRouter2ServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2e

    move v7, v1

    goto :goto_2f

    :cond_2e
    move v7, v2

    .line 245
    .local v7, "hasConfigureWifiDisplayPermission":Z
    :goto_2f
    iget-object v0, v9, Lcom/android/server/media/MediaRouter2ServiceImpl;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3b

    move v8, v1

    goto :goto_3c

    :cond_3b
    move v8, v2

    .line 249
    .local v8, "hasModifyAudioRoutingPermission":Z
    :goto_3c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 251
    .local v14, "token":J
    :try_start_40
    iget-object v6, v9, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_5a

    .line 252
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v11

    move v4, v12

    move-object/from16 v5, p2

    move-object/from16 v16, v6

    move v6, v13

    :try_start_4e
    invoke-direct/range {v1 .. v8}, Lcom/android/server/media/MediaRouter2ServiceImpl;->registerRouter2Locked(Landroid/media/IMediaRouter2;IILjava/lang/String;IZZ)V

    .line 254
    monitor-exit v16
    :try_end_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_57

    .line 256
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 257
    nop

    .line 258
    return-void

    .line 254
    :catchall_57
    move-exception v0

    :try_start_58
    monitor-exit v16
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    .end local v7    # "hasConfigureWifiDisplayPermission":Z
    .end local v8    # "hasModifyAudioRoutingPermission":Z
    .end local v11    # "uid":I
    .end local v12    # "pid":I
    .end local v13    # "userId":I
    .end local v14    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .end local p1    # "router":Landroid/media/IMediaRouter2;
    .end local p2    # "packageName":Ljava/lang/String;
    :try_start_59
    throw v0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_5a

    .line 256
    .restart local v7    # "hasConfigureWifiDisplayPermission":Z
    .restart local v8    # "hasModifyAudioRoutingPermission":Z
    .restart local v11    # "uid":I
    .restart local v12    # "pid":I
    .restart local v13    # "userId":I
    .restart local v14    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .restart local p1    # "router":Landroid/media/IMediaRouter2;
    .restart local p2    # "packageName":Ljava/lang/String;
    :catchall_5a
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 257
    throw v0

    .line 236
    .end local v7    # "hasConfigureWifiDisplayPermission":Z
    .end local v8    # "hasModifyAudioRoutingPermission":Z
    .end local v11    # "uid":I
    .end local v12    # "pid":I
    .end local v13    # "userId":I
    .end local v14    # "token":J
    :cond_5f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "packageName must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public releaseSessionWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;)V
    .registers 8
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;
    .param p2, "requestId"    # I
    .param p3, "uniqueSessionId"    # Ljava/lang/String;

    .line 589
    const-string/jumbo v0, "manager must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 590
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 594
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 596
    .local v0, "token":J
    :try_start_10
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_1f

    .line 597
    :try_start_13
    invoke-direct {p0, p2, p1, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->releaseSessionWithManagerLocked(ILandroid/media/IMediaRouter2Manager;Ljava/lang/String;)V

    .line 598
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_1c

    .line 600
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 601
    nop

    .line 602
    return-void

    .line 598
    :catchall_1c
    move-exception v3

    :try_start_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .end local p1    # "manager":Landroid/media/IMediaRouter2Manager;
    .end local p2    # "requestId":I
    .end local p3    # "uniqueSessionId":Ljava/lang/String;
    :try_start_1e
    throw v3
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    .line 600
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .restart local p1    # "manager":Landroid/media/IMediaRouter2Manager;
    .restart local p2    # "requestId":I
    .restart local p3    # "uniqueSessionId":Ljava/lang/String;
    :catchall_1f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 601
    throw v2

    .line 591
    .end local v0    # "token":J
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "uniqueSessionId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public releaseSessionWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;)V
    .registers 7
    .param p1, "router"    # Landroid/media/IMediaRouter2;
    .param p2, "uniqueSessionId"    # Ljava/lang/String;

    .line 396
    const-string/jumbo v0, "router must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 397
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 401
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 403
    .local v0, "token":J
    :try_start_10
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_1f

    .line 404
    :try_start_13
    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->releaseSessionWithRouter2Locked(Landroid/media/IMediaRouter2;Ljava/lang/String;)V

    .line 405
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_1c

    .line 407
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 408
    nop

    .line 409
    return-void

    .line 405
    :catchall_1c
    move-exception v3

    :try_start_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .end local p1    # "router":Landroid/media/IMediaRouter2;
    .end local p2    # "uniqueSessionId":Ljava/lang/String;
    :try_start_1e
    throw v3
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    .line 407
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .restart local p1    # "router":Landroid/media/IMediaRouter2;
    .restart local p2    # "uniqueSessionId":Ljava/lang/String;
    :catchall_1f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 408
    throw v2

    .line 398
    .end local v0    # "token":J
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "uniqueSessionId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestCreateSessionWithManager(Landroid/media/IMediaRouter2Manager;ILandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .registers 9
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;
    .param p2, "requestId"    # I
    .param p3, "oldSession"    # Landroid/media/RoutingSessionInfo;
    .param p4, "route"    # Landroid/media/MediaRoute2Info;

    .line 503
    const-string/jumbo v0, "manager must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 504
    const-string/jumbo v0, "oldSession must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 506
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 508
    .local v0, "token":J
    :try_start_10
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_1f

    .line 509
    :try_start_13
    invoke-direct {p0, p2, p1, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->requestCreateSessionWithManagerLocked(ILandroid/media/IMediaRouter2Manager;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 510
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_1c

    .line 512
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 513
    nop

    .line 514
    return-void

    .line 510
    :catchall_1c
    move-exception v3

    :try_start_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .end local p1    # "manager":Landroid/media/IMediaRouter2Manager;
    .end local p2    # "requestId":I
    .end local p3    # "oldSession":Landroid/media/RoutingSessionInfo;
    .end local p4    # "route":Landroid/media/MediaRoute2Info;
    :try_start_1e
    throw v3
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    .line 512
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .restart local p1    # "manager":Landroid/media/IMediaRouter2Manager;
    .restart local p2    # "requestId":I
    .restart local p3    # "oldSession":Landroid/media/RoutingSessionInfo;
    .restart local p4    # "route":Landroid/media/MediaRoute2Info;
    :catchall_1f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 513
    throw v2
.end method

.method public requestCreateSessionWithRouter2(Landroid/media/IMediaRouter2;IJLandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/Bundle;)V
    .registers 24
    .param p1, "router"    # Landroid/media/IMediaRouter2;
    .param p2, "requestId"    # I
    .param p3, "managerRequestId"    # J
    .param p5, "oldSession"    # Landroid/media/RoutingSessionInfo;
    .param p6, "route"    # Landroid/media/MediaRoute2Info;
    .param p7, "sessionHints"    # Landroid/os/Bundle;

    .line 311
    const-string/jumbo v0, "router must not be null"

    move-object/from16 v9, p1

    invoke-static {v9, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 312
    const-string/jumbo v0, "oldSession must not be null"

    move-object/from16 v10, p5

    invoke-static {v10, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 313
    const-string/jumbo v0, "route must not be null"

    move-object/from16 v11, p6

    invoke-static {v11, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 315
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 317
    .local v12, "token":J
    move-object/from16 v14, p0

    :try_start_1e
    iget-object v15, v14, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_3b

    .line 318
    move-object/from16 v1, p0

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    :try_start_2f
    invoke-direct/range {v1 .. v8}, Lcom/android/server/media/MediaRouter2ServiceImpl;->requestCreateSessionWithRouter2Locked(IJLandroid/media/IMediaRouter2;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/Bundle;)V

    .line 320
    monitor-exit v15
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_38

    .line 322
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 323
    nop

    .line 324
    return-void

    .line 320
    :catchall_38
    move-exception v0

    :try_start_39
    monitor-exit v15
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    .end local v12    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .end local p1    # "router":Landroid/media/IMediaRouter2;
    .end local p2    # "requestId":I
    .end local p3    # "managerRequestId":J
    .end local p5    # "oldSession":Landroid/media/RoutingSessionInfo;
    .end local p6    # "route":Landroid/media/MediaRoute2Info;
    .end local p7    # "sessionHints":Landroid/os/Bundle;
    :try_start_3a
    throw v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    .line 322
    .restart local v12    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .restart local p1    # "router":Landroid/media/IMediaRouter2;
    .restart local p2    # "requestId":I
    .restart local p3    # "managerRequestId":J
    .restart local p5    # "oldSession":Landroid/media/RoutingSessionInfo;
    .restart local p6    # "route":Landroid/media/MediaRoute2Info;
    .restart local p7    # "sessionHints":Landroid/os/Bundle;
    :catchall_3b
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 323
    throw v0
.end method

.method routerDied(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)V
    .registers 5
    .param p1, "routerRecord"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 629
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 630
    :try_start_3
    iget-object v1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouter:Landroid/media/IMediaRouter2;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->unregisterRouter2Locked(Landroid/media/IMediaRouter2;Z)V

    .line 631
    monitor-exit v0

    .line 632
    return-void

    .line 631
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public selectRouteWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 9
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;
    .param p2, "requestId"    # I
    .param p3, "uniqueSessionId"    # Ljava/lang/String;
    .param p4, "route"    # Landroid/media/MediaRoute2Info;

    .line 518
    const-string/jumbo v0, "manager must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 519
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 522
    const-string/jumbo v0, "route must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 524
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 526
    .local v0, "token":J
    :try_start_16
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_25

    .line 527
    :try_start_19
    invoke-direct {p0, p2, p1, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->selectRouteWithManagerLocked(ILandroid/media/IMediaRouter2Manager;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    .line 528
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_22

    .line 530
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 531
    nop

    .line 532
    return-void

    .line 528
    :catchall_22
    move-exception v3

    :try_start_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .end local p1    # "manager":Landroid/media/IMediaRouter2Manager;
    .end local p2    # "requestId":I
    .end local p3    # "uniqueSessionId":Ljava/lang/String;
    .end local p4    # "route":Landroid/media/MediaRoute2Info;
    :try_start_24
    throw v3
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_25

    .line 530
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .restart local p1    # "manager":Landroid/media/IMediaRouter2Manager;
    .restart local p2    # "requestId":I
    .restart local p3    # "uniqueSessionId":Ljava/lang/String;
    .restart local p4    # "route":Landroid/media/MediaRoute2Info;
    :catchall_25
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 531
    throw v2

    .line 520
    .end local v0    # "token":J
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "uniqueSessionId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public selectRouteWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 8
    .param p1, "router"    # Landroid/media/IMediaRouter2;
    .param p2, "uniqueSessionId"    # Ljava/lang/String;
    .param p3, "route"    # Landroid/media/MediaRoute2Info;

    .line 328
    const-string/jumbo v0, "router must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 329
    const-string/jumbo v0, "route must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 330
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 334
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 336
    .local v0, "token":J
    :try_start_16
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_25

    .line 337
    :try_start_19
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->selectRouteWithRouter2Locked(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    .line 338
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_22

    .line 340
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 341
    nop

    .line 342
    return-void

    .line 338
    :catchall_22
    move-exception v3

    :try_start_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .end local p1    # "router":Landroid/media/IMediaRouter2;
    .end local p2    # "uniqueSessionId":Ljava/lang/String;
    .end local p3    # "route":Landroid/media/MediaRoute2Info;
    :try_start_24
    throw v3
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_25

    .line 340
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .restart local p1    # "router":Landroid/media/IMediaRouter2;
    .restart local p2    # "uniqueSessionId":Ljava/lang/String;
    .restart local p3    # "route":Landroid/media/MediaRoute2Info;
    :catchall_25
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 341
    throw v2

    .line 331
    .end local v0    # "token":J
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "uniqueSessionId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDiscoveryRequestWithRouter2(Landroid/media/IMediaRouter2;Landroid/media/RouteDiscoveryPreference;)V
    .registers 9
    .param p1, "router"    # Landroid/media/IMediaRouter2;
    .param p2, "preference"    # Landroid/media/RouteDiscoveryPreference;

    .line 275
    const-string/jumbo v0, "router must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 276
    const-string/jumbo v0, "preference must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 278
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 280
    .local v0, "token":J
    :try_start_10
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_39

    .line 281
    :try_start_13
    iget-object v3, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/media/IMediaRouter2;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 282
    .local v3, "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    if-nez v3, :cond_2d

    .line 283
    const-string v4, "MR2ServiceImpl"

    const-string v5, "Ignoring updating discoveryRequest of null routerRecord."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_13 .. :try_end_29} :catchall_36

    .line 289
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 284
    return-void

    .line 286
    :cond_2d
    :try_start_2d
    invoke-direct {p0, v3, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->setDiscoveryRequestWithRouter2Locked(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/RouteDiscoveryPreference;)V

    .line 287
    .end local v3    # "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_36

    .line 289
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 290
    nop

    .line 291
    return-void

    .line 287
    :catchall_36
    move-exception v3

    :try_start_37
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .end local p1    # "router":Landroid/media/IMediaRouter2;
    .end local p2    # "preference":Landroid/media/RouteDiscoveryPreference;
    :try_start_38
    throw v3
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_39

    .line 289
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .restart local p1    # "router":Landroid/media/IMediaRouter2;
    .restart local p2    # "preference":Landroid/media/RouteDiscoveryPreference;
    :catchall_39
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 290
    throw v2
.end method

.method public setRouteVolumeWithManager(Landroid/media/IMediaRouter2Manager;ILandroid/media/MediaRoute2Info;I)V
    .registers 9
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;
    .param p2, "requestId"    # I
    .param p3, "route"    # Landroid/media/MediaRoute2Info;
    .param p4, "volume"    # I

    .line 488
    const-string/jumbo v0, "manager must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 489
    const-string/jumbo v0, "route must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 491
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 493
    .local v0, "token":J
    :try_start_10
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_1f

    .line 494
    :try_start_13
    invoke-direct {p0, p2, p1, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->setRouteVolumeWithManagerLocked(ILandroid/media/IMediaRouter2Manager;Landroid/media/MediaRoute2Info;I)V

    .line 495
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_1c

    .line 497
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 498
    nop

    .line 499
    return-void

    .line 495
    :catchall_1c
    move-exception v3

    :try_start_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .end local p1    # "manager":Landroid/media/IMediaRouter2Manager;
    .end local p2    # "requestId":I
    .end local p3    # "route":Landroid/media/MediaRoute2Info;
    .end local p4    # "volume":I
    :try_start_1e
    throw v3
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    .line 497
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .restart local p1    # "manager":Landroid/media/IMediaRouter2Manager;
    .restart local p2    # "requestId":I
    .restart local p3    # "route":Landroid/media/MediaRoute2Info;
    .restart local p4    # "volume":I
    :catchall_1f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 498
    throw v2
.end method

.method public setRouteVolumeWithRouter2(Landroid/media/IMediaRouter2;Landroid/media/MediaRoute2Info;I)V
    .registers 8
    .param p1, "router"    # Landroid/media/IMediaRouter2;
    .param p2, "route"    # Landroid/media/MediaRoute2Info;
    .param p3, "volume"    # I

    .line 295
    const-string/jumbo v0, "router must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 296
    const-string/jumbo v0, "route must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 298
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 300
    .local v0, "token":J
    :try_start_10
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_1f

    .line 301
    :try_start_13
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->setRouteVolumeWithRouter2Locked(Landroid/media/IMediaRouter2;Landroid/media/MediaRoute2Info;I)V

    .line 302
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_1c

    .line 304
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 305
    nop

    .line 306
    return-void

    .line 302
    :catchall_1c
    move-exception v3

    :try_start_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .end local p1    # "router":Landroid/media/IMediaRouter2;
    .end local p2    # "route":Landroid/media/MediaRoute2Info;
    .end local p3    # "volume":I
    :try_start_1e
    throw v3
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    .line 304
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .restart local p1    # "router":Landroid/media/IMediaRouter2;
    .restart local p2    # "route":Landroid/media/MediaRoute2Info;
    .restart local p3    # "volume":I
    :catchall_1f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 305
    throw v2
.end method

.method public setSessionVolumeWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;I)V
    .registers 9
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;
    .param p2, "requestId"    # I
    .param p3, "uniqueSessionId"    # Ljava/lang/String;
    .param p4, "volume"    # I

    .line 572
    const-string/jumbo v0, "manager must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 573
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 577
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 579
    .local v0, "token":J
    :try_start_10
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_1f

    .line 580
    :try_start_13
    invoke-direct {p0, p2, p1, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->setSessionVolumeWithManagerLocked(ILandroid/media/IMediaRouter2Manager;Ljava/lang/String;I)V

    .line 581
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_1c

    .line 583
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 584
    nop

    .line 585
    return-void

    .line 581
    :catchall_1c
    move-exception v3

    :try_start_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .end local p1    # "manager":Landroid/media/IMediaRouter2Manager;
    .end local p2    # "requestId":I
    .end local p3    # "uniqueSessionId":Ljava/lang/String;
    .end local p4    # "volume":I
    :try_start_1e
    throw v3
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    .line 583
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .restart local p1    # "manager":Landroid/media/IMediaRouter2Manager;
    .restart local p2    # "requestId":I
    .restart local p3    # "uniqueSessionId":Ljava/lang/String;
    .restart local p4    # "volume":I
    :catchall_1f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 584
    throw v2

    .line 574
    .end local v0    # "token":J
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "uniqueSessionId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSessionVolumeWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;I)V
    .registers 8
    .param p1, "router"    # Landroid/media/IMediaRouter2;
    .param p2, "uniqueSessionId"    # Ljava/lang/String;
    .param p3, "volume"    # I

    .line 382
    const-string/jumbo v0, "router must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 383
    const-string/jumbo v0, "uniqueSessionId must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 385
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 387
    .local v0, "token":J
    :try_start_10
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_1f

    .line 388
    :try_start_13
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->setSessionVolumeWithRouter2Locked(Landroid/media/IMediaRouter2;Ljava/lang/String;I)V

    .line 389
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_1c

    .line 391
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 392
    nop

    .line 393
    return-void

    .line 389
    :catchall_1c
    move-exception v3

    :try_start_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .end local p1    # "router":Landroid/media/IMediaRouter2;
    .end local p2    # "uniqueSessionId":Ljava/lang/String;
    .end local p3    # "volume":I
    :try_start_1e
    throw v3
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    .line 391
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .restart local p1    # "router":Landroid/media/IMediaRouter2;
    .restart local p2    # "uniqueSessionId":Ljava/lang/String;
    .restart local p3    # "volume":I
    :catchall_1f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 392
    throw v2
.end method

.method public startScan(Landroid/media/IMediaRouter2Manager;)V
    .registers 6
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;

    .line 463
    const-string/jumbo v0, "manager must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 464
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 466
    .local v0, "token":J
    :try_start_a
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_19

    .line 467
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->startScanLocked(Landroid/media/IMediaRouter2Manager;)V

    .line 468
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_16

    .line 470
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 471
    nop

    .line 472
    return-void

    .line 468
    :catchall_16
    move-exception v3

    :try_start_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .end local p1    # "manager":Landroid/media/IMediaRouter2Manager;
    :try_start_18
    throw v3
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_19

    .line 470
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .restart local p1    # "manager":Landroid/media/IMediaRouter2Manager;
    :catchall_19
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 471
    throw v2
.end method

.method public stopScan(Landroid/media/IMediaRouter2Manager;)V
    .registers 6
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;

    .line 475
    const-string/jumbo v0, "manager must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 476
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 478
    .local v0, "token":J
    :try_start_a
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_19

    .line 479
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->stopScanLocked(Landroid/media/IMediaRouter2Manager;)V

    .line 480
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_16

    .line 482
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 483
    nop

    .line 484
    return-void

    .line 480
    :catchall_16
    move-exception v3

    :try_start_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .end local p1    # "manager":Landroid/media/IMediaRouter2Manager;
    :try_start_18
    throw v3
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_19

    .line 482
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .restart local p1    # "manager":Landroid/media/IMediaRouter2Manager;
    :catchall_19
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 483
    throw v2
.end method

.method switchUser()V
    .registers 9

    .line 606
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 607
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 608
    .local v1, "userId":I
    iget v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mCurrentUserId:I

    if-eq v2, v1, :cond_45

    .line 609
    nop

    .line 610
    .local v2, "oldUserId":I
    iput v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mCurrentUserId:I

    .line 612
    iget-object v3, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 613
    .local v3, "oldUser":Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;
    if-eqz v3, :cond_2b

    .line 614
    iget-object v4, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance v5, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda24;

    invoke-direct {v5}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda24;-><init>()V

    iget-object v6, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 615
    invoke-static {v5, v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 614
    invoke-virtual {v4, v5}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 616
    invoke-direct {p0, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->disposeUserIfNeededLocked(Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;)V

    .line 619
    :cond_2b
    iget-object v4, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 620
    .local v4, "newUser":Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;
    if-eqz v4, :cond_45

    .line 621
    iget-object v5, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance v6, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda25;

    invoke-direct {v6}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda25;-><init>()V

    iget-object v7, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 622
    invoke-static {v6, v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 621
    invoke-virtual {v5, v6}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 625
    .end local v1    # "userId":I
    .end local v2    # "oldUserId":I
    .end local v3    # "oldUser":Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;
    .end local v4    # "newUser":Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;
    :cond_45
    monitor-exit v0

    .line 626
    return-void

    .line 625
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw v1
.end method

.method public transferToRouteWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 9
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;
    .param p2, "requestId"    # I
    .param p3, "uniqueSessionId"    # Ljava/lang/String;
    .param p4, "route"    # Landroid/media/MediaRoute2Info;

    .line 554
    const-string/jumbo v0, "manager must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 555
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 558
    const-string/jumbo v0, "route must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 560
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 562
    .local v0, "token":J
    :try_start_16
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_25

    .line 563
    :try_start_19
    invoke-direct {p0, p2, p1, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->transferToRouteWithManagerLocked(ILandroid/media/IMediaRouter2Manager;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    .line 564
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_22

    .line 566
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 567
    nop

    .line 568
    return-void

    .line 564
    :catchall_22
    move-exception v3

    :try_start_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .end local p1    # "manager":Landroid/media/IMediaRouter2Manager;
    .end local p2    # "requestId":I
    .end local p3    # "uniqueSessionId":Ljava/lang/String;
    .end local p4    # "route":Landroid/media/MediaRoute2Info;
    :try_start_24
    throw v3
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_25

    .line 566
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .restart local p1    # "manager":Landroid/media/IMediaRouter2Manager;
    .restart local p2    # "requestId":I
    .restart local p3    # "uniqueSessionId":Ljava/lang/String;
    .restart local p4    # "route":Landroid/media/MediaRoute2Info;
    :catchall_25
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 567
    throw v2

    .line 556
    .end local v0    # "token":J
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "uniqueSessionId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public transferToRouteWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 8
    .param p1, "router"    # Landroid/media/IMediaRouter2;
    .param p2, "uniqueSessionId"    # Ljava/lang/String;
    .param p3, "route"    # Landroid/media/MediaRoute2Info;

    .line 364
    const-string/jumbo v0, "router must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 365
    const-string/jumbo v0, "route must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 366
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 370
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 372
    .local v0, "token":J
    :try_start_16
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_25

    .line 373
    :try_start_19
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->transferToRouteWithRouter2Locked(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    .line 374
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_22

    .line 376
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 377
    nop

    .line 378
    return-void

    .line 374
    :catchall_22
    move-exception v3

    :try_start_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .end local p1    # "router":Landroid/media/IMediaRouter2;
    .end local p2    # "uniqueSessionId":Ljava/lang/String;
    .end local p3    # "route":Landroid/media/MediaRoute2Info;
    :try_start_24
    throw v3
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_25

    .line 376
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .restart local p1    # "router":Landroid/media/IMediaRouter2;
    .restart local p2    # "uniqueSessionId":Ljava/lang/String;
    .restart local p3    # "route":Landroid/media/MediaRoute2Info;
    :catchall_25
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 377
    throw v2

    .line 367
    .end local v0    # "token":J
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "uniqueSessionId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterManager(Landroid/media/IMediaRouter2Manager;)V
    .registers 6
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;

    .line 450
    const-string/jumbo v0, "manager must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 452
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 454
    .local v0, "token":J
    :try_start_a
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_1a

    .line 455
    const/4 v3, 0x0

    :try_start_e
    invoke-direct {p0, p1, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->unregisterManagerLocked(Landroid/media/IMediaRouter2Manager;Z)V

    .line 456
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_17

    .line 458
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 459
    nop

    .line 460
    return-void

    .line 456
    :catchall_17
    move-exception v3

    :try_start_18
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .end local p1    # "manager":Landroid/media/IMediaRouter2Manager;
    :try_start_19
    throw v3
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1a

    .line 458
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .restart local p1    # "manager":Landroid/media/IMediaRouter2Manager;
    :catchall_1a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 459
    throw v2
.end method

.method public unregisterRouter2(Landroid/media/IMediaRouter2;)V
    .registers 6
    .param p1, "router"    # Landroid/media/IMediaRouter2;

    .line 261
    const-string/jumbo v0, "router must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 263
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 265
    .local v0, "token":J
    :try_start_a
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_1a

    .line 266
    const/4 v3, 0x0

    :try_start_e
    invoke-direct {p0, p1, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->unregisterRouter2Locked(Landroid/media/IMediaRouter2;Z)V

    .line 267
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_17

    .line 269
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 270
    nop

    .line 271
    return-void

    .line 267
    :catchall_17
    move-exception v3

    :try_start_18
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .end local p1    # "router":Landroid/media/IMediaRouter2;
    :try_start_19
    throw v3
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1a

    .line 269
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .restart local p1    # "router":Landroid/media/IMediaRouter2;
    :catchall_1a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 270
    throw v2
.end method
