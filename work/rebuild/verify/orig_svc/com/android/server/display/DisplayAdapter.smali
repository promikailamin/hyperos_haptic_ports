.class public abstract Lcom/android/server/display/DisplayAdapter;
.super Ljava/lang/Object;
.source "DisplayAdapter.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mFeatureFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public final mHandler:Landroid/os/Handler;

.field public final mListener:Lcom/android/server/display/DisplayAdapter$Listener;

.field public final mName:Ljava/lang/String;

.field public final mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;


# direct methods
.method public static synthetic $r8$lambda$9V0Zb4R5pN2d6Ym6JsffUDuLT04(Lcom/android/server/display/DisplayAdapter;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayAdapter;->lambda$sendTraversalRequestLocked$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$m53kLy5P6p-BQH88mDK_wnWdYlc(Lcom/android/server/display/DisplayAdapter;Lcom/android/server/display/DisplayDevice;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayAdapter;->lambda$sendDisplayDeviceEventLocked$0(Lcom/android/server/display/DisplayDevice;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .registers 7

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 54
    iput-object p2, p0, Lcom/android/server/display/DisplayAdapter;->mContext:Landroid/content/Context;

    .line 55
    iput-object p3, p0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    .line 56
    iput-object p4, p0, Lcom/android/server/display/DisplayAdapter;->mListener:Lcom/android/server/display/DisplayAdapter$Listener;

    .line 57
    iput-object p5, p0, Lcom/android/server/display/DisplayAdapter;->mName:Ljava/lang/String;

    .line 58
    iput-object p6, p0, Lcom/android/server/display/DisplayAdapter;->mFeatureFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    return-void
.end method

.method public static getPowerModeForState(I)I
    .registers 4

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_11

    const/4 v1, 0x6

    const/4 v2, 0x4

    if-eq p0, v1, :cond_10

    const/4 v1, 0x3

    if-eq p0, v1, :cond_f

    if-eq p0, v2, :cond_e

    const/4 p0, 0x2

    return p0

    :cond_e
    return v1

    :cond_f
    return v0

    :cond_10
    return v2

    :cond_11
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 2

    .line 0
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/android/server/display/DisplayAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getFeatureFlags()Lcom/android/server/display/feature/DisplayManagerFlags;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/android/server/display/DisplayAdapter;->mFeatureFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    return-object p0
.end method

.method public final getHandler()Landroid/os/Handler;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .registers 1

    .line 87
    iget-object p0, p0, Lcom/android/server/display/DisplayAdapter;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public final getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    return-object p0
.end method

.method public final synthetic lambda$sendDisplayDeviceEventLocked$0(Lcom/android/server/display/DisplayDevice;I)V
    .registers 3

    .line 115
    iget-object p0, p0, Lcom/android/server/display/DisplayAdapter;->mListener:Lcom/android/server/display/DisplayAdapter$Listener;

    invoke-interface {p0, p1, p2}, Lcom/android/server/display/DisplayAdapter$Listener;->onDisplayDeviceEvent(Lcom/android/server/display/DisplayDevice;I)V

    return-void
.end method

.method public final synthetic lambda$sendTraversalRequestLocked$1()V
    .registers 1

    .line 122
    iget-object p0, p0, Lcom/android/server/display/DisplayAdapter;->mListener:Lcom/android/server/display/DisplayAdapter$Listener;

    invoke-interface {p0}, Lcom/android/server/display/DisplayAdapter$Listener;->onTraversalRequested()V

    return-void
.end method

.method public registerLocked()V
    .registers 1

    .line 0
    return-void
.end method

.method public final sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V
    .registers 5

    .line 115
    iget-object v0, p0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/DisplayAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/DisplayAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DisplayAdapter;Lcom/android/server/display/DisplayDevice;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendTraversalRequestLocked()V
    .registers 3

    .line 122
    iget-object v0, p0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/DisplayAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/DisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
