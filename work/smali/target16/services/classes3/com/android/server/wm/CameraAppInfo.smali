.class public final Lcom/android/server/wm/CameraAppInfo;
.super Ljava/lang/Object;
.source "CameraAppInfo.java"


# instance fields
.field public final mCameraId:Ljava/lang/String;

.field public final mPackageName:Ljava/lang/String;

.field public final mPid:I

.field public final mTaskId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/server/wm/CameraAppInfo;->mCameraId:Ljava/lang/String;

    .line 42
    iput p2, p0, Lcom/android/server/wm/CameraAppInfo;->mPid:I

    .line 43
    iput p3, p0, Lcom/android/server/wm/CameraAppInfo;->mTaskId:I

    .line 44
    iput-object p4, p0, Lcom/android/server/wm/CameraAppInfo;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 57
    :cond_4
    instance-of v1, p1, Lcom/android/server/wm/CameraAppInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_2c

    check-cast p1, Lcom/android/server/wm/CameraAppInfo;

    .line 60
    iget v1, p0, Lcom/android/server/wm/CameraAppInfo;->mPid:I

    iget v3, p1, Lcom/android/server/wm/CameraAppInfo;->mPid:I

    if-ne v1, v3, :cond_2c

    iget v1, p0, Lcom/android/server/wm/CameraAppInfo;->mTaskId:I

    iget v3, p1, Lcom/android/server/wm/CameraAppInfo;->mTaskId:I

    if-ne v1, v3, :cond_2c

    iget-object v1, p0, Lcom/android/server/wm/CameraAppInfo;->mCameraId:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/wm/CameraAppInfo;->mCameraId:Ljava/lang/String;

    .line 61
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object p0, p0, Lcom/android/server/wm/CameraAppInfo;->mPackageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/wm/CameraAppInfo;->mPackageName:Ljava/lang/String;

    .line 62
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2c

    return v0

    :cond_2c
    return v2
.end method

.method public hashCode()I
    .registers 4

    .line 49
    iget-object v0, p0, Lcom/android/server/wm/CameraAppInfo;->mCameraId:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/wm/CameraAppInfo;->mPid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/CameraAppInfo;->mTaskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/wm/CameraAppInfo;->mPackageName:Ljava/lang/String;

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{mCameraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/CameraAppInfo;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/CameraAppInfo;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/CameraAppInfo;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/CameraAppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
