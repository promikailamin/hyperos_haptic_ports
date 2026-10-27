.class public Lcom/android/server/wm/AppCompatCameraStateSource;
.super Ljava/lang/Object;
.source "AppCompatCameraStateSource.java"

# interfaces
.implements Lcom/android/server/wm/AppCompatCameraStatePolicy;


# instance fields
.field public final mCameraStatePolicies:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppCompatCameraStateSource;->mCameraStatePolicies:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addCameraStatePolicy(Lcom/android/server/wm/AppCompatCameraStatePolicy;)V
    .registers 2

    .line 32
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraStateSource;->mCameraStatePolicies:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public canCameraBeClosed(Ljava/lang/String;Lcom/android/server/wm/Task;)Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 52
    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/AppCompatCameraStateSource;->mCameraStatePolicies:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 53
    iget-object v2, p0, Lcom/android/server/wm/AppCompatCameraStateSource;->mCameraStatePolicies:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppCompatCameraStatePolicy;

    invoke-interface {v2, p1, p2}, Lcom/android/server/wm/AppCompatCameraStatePolicy;->canCameraBeClosed(Ljava/lang/String;Lcom/android/server/wm/Task;)Z

    move-result v2

    if-nez v2, :cond_19

    return v0

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1c
    const/4 p0, 0x1

    return p0
.end method

.method public onCameraClosed(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/Task;)V
    .registers 5

    const/4 v0, 0x0

    .line 62
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/AppCompatCameraStateSource;->mCameraStatePolicies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 63
    iget-object v1, p0, Lcom/android/server/wm/AppCompatCameraStateSource;->mCameraStatePolicies:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppCompatCameraStatePolicy;

    invoke-interface {v1, p1, p2}, Lcom/android/server/wm/AppCompatCameraStatePolicy;->onCameraClosed(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/Task;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public onCameraOpened(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/Task;)V
    .registers 5

    const/4 v0, 0x0

    .line 42
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/AppCompatCameraStateSource;->mCameraStatePolicies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 43
    iget-object v1, p0, Lcom/android/server/wm/AppCompatCameraStateSource;->mCameraStatePolicies:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppCompatCameraStatePolicy;

    invoke-interface {v1, p1, p2}, Lcom/android/server/wm/AppCompatCameraStatePolicy;->onCameraOpened(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/Task;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public removeCameraStatePolicy(Lcom/android/server/wm/AppCompatCameraStatePolicy;)V
    .registers 2

    .line 37
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraStateSource;->mCameraStatePolicies:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
