.class public abstract Lcom/android/server/display/color/TintController;
.super Ljava/lang/Object;
.source "TintController.java"


# instance fields
.field public mAnimator:Landroid/animation/ValueAnimator;

.field public mIsActivated:Ljava/lang/Boolean;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/color/TintController;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static matrixToString([FI)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    .line 139
    const-string v1, ""

    if-eqz p0, :cond_34

    if-gtz p1, :cond_8

    goto :goto_34

    .line 146
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    :goto_d
    array-length v1, p0

    if-ge v0, v1, :cond_2f

    .line 148
    rem-int v1, v0, p1

    if-nez v1, :cond_19

    .line 149
    const-string v1, "\n      "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    :cond_19
    aget v1, p0, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "%9.6f"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 153
    :cond_2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 140
    :cond_34
    :goto_34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid arguments when formatting matrix to string, matrix is null: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_41

    const/4 v0, 0x1

    :cond_41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " columns: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ColorDisplayService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method


# virtual methods
.method public cancelAnimator()V
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/android/server/display/color/TintController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 57
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/color/TintController;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_d

    .line 58
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_d

    :catchall_b
    move-exception p0

    goto :goto_f

    .line 60
    :cond_d
    :goto_d
    monitor-exit v0

    return-void

    :goto_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_b

    throw p0
.end method

.method public endAnimator()V
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/android/server/display/color/TintController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 68
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/color/TintController;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_10

    .line 69
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    const/4 v1, 0x0

    .line 70
    iput-object v1, p0, Lcom/android/server/display/color/TintController;->mAnimator:Landroid/animation/ValueAnimator;

    goto :goto_10

    :catchall_e
    move-exception p0

    goto :goto_12

    .line 72
    :cond_10
    :goto_10
    monitor-exit v0

    return-void

    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_e

    throw p0
.end method

.method public abstract getLevel()I
.end method

.method public abstract getMatrix()[F
.end method

.method public getTransitionDurationMilliseconds()J
    .registers 3

    .line 0
    const-wide/16 v0, 0xbb8

    return-wide v0
.end method

.method public abstract getTransitionDurationMilliseconds(Z)J
.end method

.method public isActivated()Z
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/android/server/display/color/TintController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/color/TintController;->mIsActivated:Ljava/lang/Boolean;

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :catchall_f
    move-exception p0

    goto :goto_14

    :cond_11
    const/4 p0, 0x0

    :goto_12
    monitor-exit v0

    return p0

    .line 84
    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_f

    throw p0
.end method

.method public isActivatedStateNotSet()Z
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/android/server/display/color/TintController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/color/TintController;->mIsActivated:Ljava/lang/Boolean;

    if-nez p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    .line 90
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public abstract isAvailable(Landroid/content/Context;)Z
.end method

.method public setActivated(Ljava/lang/Boolean;)V
    .registers 3

    .line 76
    iget-object v0, p0, Lcom/android/server/display/color/TintController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_3
    iput-object p1, p0, Lcom/android/server/display/color/TintController;->mIsActivated:Ljava/lang/Boolean;

    .line 78
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public setAnimator(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 47
    iget-object v0, p0, Lcom/android/server/display/color/TintController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 48
    :try_start_3
    iput-object p1, p0, Lcom/android/server/display/color/TintController;->mAnimator:Landroid/animation/ValueAnimator;

    .line 49
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public abstract setMatrix(I)V
.end method
