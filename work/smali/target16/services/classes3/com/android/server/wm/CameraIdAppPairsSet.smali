.class public final Lcom/android/server/wm/CameraIdAppPairsSet;
.super Ljava/lang/Object;
.source "CameraIdAppPairsSet.java"


# instance fields
.field public final mCameraAppInfoSet:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/CameraIdAppPairsSet;->mCameraAppInfoSet:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public add(Lcom/android/server/wm/CameraAppInfo;)V
    .registers 2

    .line 36
    iget-object p0, p0, Lcom/android/server/wm/CameraIdAppPairsSet;->mCameraAppInfoSet:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public containsAnyCameraForTaskId(I)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 40
    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/CameraIdAppPairsSet;->mCameraAppInfoSet:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_1b

    .line 41
    iget-object v2, p0, Lcom/android/server/wm/CameraIdAppPairsSet;->mCameraAppInfoSet:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/CameraAppInfo;

    .line 42
    iget v2, v2, Lcom/android/server/wm/CameraAppInfo;->mTaskId:I

    if-ne v2, p1, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1b
    return v0
.end method

.method public containsCameraIdAndTask(Ljava/lang/String;I)Z
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    .line 61
    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/CameraIdAppPairsSet;->mCameraAppInfoSet:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 62
    iget-object v2, p0, Lcom/android/server/wm/CameraIdAppPairsSet;->mCameraAppInfoSet:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/CameraAppInfo;

    .line 63
    iget-object v3, v2, Lcom/android/server/wm/CameraAppInfo;->mCameraId:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    iget v2, v2, Lcom/android/server/wm/CameraAppInfo;->mTaskId:I

    if-ne v2, p2, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_23
    return v0
.end method

.method public getAnyCameraAppStateForCameraId(Ljava/lang/String;)Lcom/android/server/wm/CameraAppInfo;
    .registers 5

    const/4 v0, 0x0

    .line 51
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/CameraIdAppPairsSet;->mCameraAppInfoSet:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 52
    iget-object v1, p0, Lcom/android/server/wm/CameraIdAppPairsSet;->mCameraAppInfoSet:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/CameraAppInfo;

    .line 53
    iget-object v2, v1, Lcom/android/server/wm/CameraAppInfo;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    return-object v1

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSummaryForDisplayRotationHistoryRecord()Ljava/lang/String;
    .registers 3

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ mCameraAppInfoSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/CameraIdAppPairsSet;->mCameraAppInfoSet:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public remove(Lcom/android/server/wm/CameraAppInfo;)Z
    .registers 2

    .line 71
    iget-object p0, p0, Lcom/android/server/wm/CameraIdAppPairsSet;->mCameraAppInfoSet:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 81
    invoke-virtual {p0}, Lcom/android/server/wm/CameraIdAppPairsSet;->getSummaryForDisplayRotationHistoryRecord()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
