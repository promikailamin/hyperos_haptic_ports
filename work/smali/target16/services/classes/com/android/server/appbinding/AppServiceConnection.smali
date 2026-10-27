.class public Lcom/android/server/appbinding/AppServiceConnection;
.super Lcom/android/server/am/PersistentConnection;
.source "AppServiceConnection.java"


# instance fields
.field public final mCallbacks:Ljava/util/Queue;

.field public final mConditionVariable:Landroid/os/ConditionVariable;

.field public final mConstants:Lcom/android/server/appbinding/AppBindingConstants;

.field public final mFinder:Lcom/android/server/appbinding/finders/AppServiceFinder;

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/server/appbinding/AppBindingConstants;Landroid/os/Handler;Lcom/android/server/appbinding/finders/AppServiceFinder;Ljava/lang/String;Landroid/content/ComponentName;)V
    .registers 23

    move-object/from16 v0, p3

    .line 57
    iget-wide v7, v0, Lcom/android/server/appbinding/AppBindingConstants;->SERVICE_RECONNECT_BACKOFF_SEC:J

    iget-wide v9, v0, Lcom/android/server/appbinding/AppBindingConstants;->SERVICE_RECONNECT_BACKOFF_INCREASE:D

    iget-wide v11, v0, Lcom/android/server/appbinding/AppBindingConstants;->SERVICE_RECONNECT_MAX_BACKOFF_SEC:J

    iget-wide v13, v0, Lcom/android/server/appbinding/AppBindingConstants;->SERVICE_STABLE_CONNECTION_THRESHOLD_SEC:J

    const-string v2, "AppServiceConnection"

    move-object v1, p0

    move-object/from16 v3, p1

    move/from16 v5, p2

    move-object/from16 v4, p4

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v14}, Lcom/android/server/am/PersistentConnection;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;ILandroid/content/ComponentName;JDJJ)V

    .line 48
    new-instance v2, Landroid/os/ConditionVariable;

    invoke-direct {v2}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v2, p0, Lcom/android/server/appbinding/AppServiceConnection;->mConditionVariable:Landroid/os/ConditionVariable;

    .line 50
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, p0, Lcom/android/server/appbinding/AppServiceConnection;->mCallbacks:Ljava/util/Queue;

    .line 52
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/appbinding/AppServiceConnection;->mLock:Ljava/lang/Object;

    move-object/from16 v2, p5

    .line 62
    iput-object v2, p0, Lcom/android/server/appbinding/AppServiceConnection;->mFinder:Lcom/android/server/appbinding/finders/AppServiceFinder;

    .line 63
    iput-object v0, p0, Lcom/android/server/appbinding/AppServiceConnection;->mConstants:Lcom/android/server/appbinding/AppBindingConstants;

    move-object/from16 v0, p6

    .line 64
    iput-object v0, p0, Lcom/android/server/appbinding/AppServiceConnection;->mPackageName:Ljava/lang/String;

    .line 65
    iput-object v4, p0, Lcom/android/server/appbinding/AppServiceConnection;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 4

    .line 75
    iget-object v0, p0, Lcom/android/server/appbinding/AppServiceConnection;->mFinder:Lcom/android/server/appbinding/finders/AppServiceFinder;

    invoke-virtual {v0, p1}, Lcom/android/server/appbinding/finders/AppServiceFinder;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p1

    if-nez p1, :cond_17

    .line 77
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "AppServiceConnection"

    const-string v1, "Service for %s is null."

    invoke-static {v0, v1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_17
    return-object p1
.end method

.method public bridge synthetic asInterface(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 2

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/server/appbinding/AppServiceConnection;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p0

    return-object p0
.end method

.method public awaitConnection()Z
    .registers 5

    .line 148
    iget-object v0, p0, Lcom/android/server/appbinding/AppServiceConnection;->mConstants:Lcom/android/server/appbinding/AppBindingConstants;

    iget-wide v0, v0, Lcom/android/server/appbinding/AppBindingConstants;->SERVICE_RECONNECT_MAX_BACKOFF_SEC:J

    const-wide/16 v2, 0x2710

    mul-long/2addr v0, v2

    .line 149
    iget-object v2, p0, Lcom/android/server/appbinding/AppServiceConnection;->mConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v2, v0, v1}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public getBindFlags()I
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/android/server/appbinding/AppServiceConnection;->mFinder:Lcom/android/server/appbinding/finders/AppServiceFinder;

    iget-object p0, p0, Lcom/android/server/appbinding/AppServiceConnection;->mConstants:Lcom/android/server/appbinding/AppBindingConstants;

    invoke-virtual {v0, p0}, Lcom/android/server/appbinding/finders/AppServiceFinder;->getBindFlags(Lcom/android/server/appbinding/AppBindingConstants;)I

    move-result p0

    return p0
.end method

.method public getFinder()Lcom/android/server/appbinding/finders/AppServiceFinder;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/android/server/appbinding/AppServiceConnection;->mFinder:Lcom/android/server/appbinding/finders/AppServiceFinder;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/android/server/appbinding/AppServiceConnection;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public onConnected(Landroid/os/IInterface;)V
    .registers 2

    .line 87
    iget-object p0, p0, Lcom/android/server/appbinding/AppServiceConnection;->mConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public bridge synthetic onConnected(Ljava/lang/Object;)V
    .registers 2

    .line 43
    check-cast p1, Landroid/os/IInterface;

    invoke-virtual {p0, p1}, Lcom/android/server/appbinding/AppServiceConnection;->onConnected(Landroid/os/IInterface;)V

    return-void
.end method

.method public onDisconnected()V
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/android/server/appbinding/AppServiceConnection;->mConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->close()V

    return-void
.end method
