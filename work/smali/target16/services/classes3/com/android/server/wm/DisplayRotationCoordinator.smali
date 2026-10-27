.class public Lcom/android/server/wm/DisplayRotationCoordinator;
.super Ljava/lang/Object;
.source "DisplayRotationCoordinator.java"


# instance fields
.field public mDefaultDisplayCurrentRotation:I

.field public mDefaultDisplayDefaultRotation:I

.field final mDefaultDisplayRotationChangedCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayRotationChangedCallbacks:Landroid/util/SparseArray;

    return-void
.end method

.method public static isSecondaryInternalDisplay(Lcom/android/server/wm/DisplayContent;)Z
    .registers 3

    .line 94
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 96
    :cond_6
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    if-nez p0, :cond_b

    return v1

    .line 99
    :cond_b
    invoke-virtual {p0}, Landroid/view/Display;->getType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_13

    return v0

    :cond_13
    return v1
.end method


# virtual methods
.method public getDefaultDisplayCurrentRotation()I
    .registers 1

    .line 65
    iget p0, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayCurrentRotation:I

    return p0
.end method

.method public onDefaultDisplayRotationChanged(I)V
    .registers 3

    .line 52
    iput p1, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayCurrentRotation:I

    const/4 p1, 0x0

    .line 54
    :goto_3
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayRotationChangedCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_19

    .line 55
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayRotationChangedCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_19
    return-void
.end method

.method public removeDefaultDisplayRotationChangedCallback(ILjava/lang/Runnable;)V
    .registers 4

    .line 85
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayRotationChangedCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 86
    invoke-interface {p2, v0}, Ljava/lang/Runnable;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_25

    .line 87
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Attempted to remove non-matching callback. DisplayId: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisplayRotationCoordinator"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 90
    :cond_25
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayRotationChangedCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public setDefaultDisplayDefaultRotation(I)V
    .registers 2

    .line 60
    iput p1, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayDefaultRotation:I

    return-void
.end method

.method public setDefaultDisplayRotationChangedCallback(ILjava/lang/Runnable;)V
    .registers 4

    .line 73
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayRotationChangedCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    iget p1, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayCurrentRotation:I

    iget p0, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayDefaultRotation:I

    if-eq p1, p0, :cond_e

    .line 76
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_e
    return-void
.end method
