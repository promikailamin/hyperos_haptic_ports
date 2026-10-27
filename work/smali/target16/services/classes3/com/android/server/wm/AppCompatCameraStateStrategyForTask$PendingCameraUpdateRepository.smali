.class public Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository;
.super Ljava/lang/Object;
.source "AppCompatCameraStateStrategyForTask.java"


# instance fields
.field public final mPendingCameraStateMap:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository;->mPendingCameraStateMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public removePendingCameraClose(Lcom/android/server/wm/CameraAppInfo;)Z
    .registers 3

    .line 313
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository;->mPendingCameraStateMap:Ljava/util/HashMap;

    sget-object v0, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository$PendingCameraState;->CLOSED:Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository$PendingCameraState;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public removePendingCameraOpen(Lcom/android/server/wm/CameraAppInfo;)Z
    .registers 3

    .line 306
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository;->mPendingCameraStateMap:Ljava/util/HashMap;

    sget-object v0, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository$PendingCameraState;->OPENED:Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository$PendingCameraState;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public trackPendingCameraClose(Lcom/android/server/wm/CameraAppInfo;)V
    .registers 3

    .line 299
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository;->mPendingCameraStateMap:Ljava/util/HashMap;

    sget-object v0, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository$PendingCameraState;->CLOSED:Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository$PendingCameraState;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public trackPendingCameraOpen(Lcom/android/server/wm/CameraAppInfo;)V
    .registers 3

    .line 295
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository;->mPendingCameraStateMap:Ljava/util/HashMap;

    sget-object v0, Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository$PendingCameraState;->OPENED:Lcom/android/server/wm/AppCompatCameraStateStrategyForTask$PendingCameraUpdateRepository$PendingCameraState;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
