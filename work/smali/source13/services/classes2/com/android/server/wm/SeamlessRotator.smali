.class public Lcom/android/server/wm/SeamlessRotator;
.super Ljava/lang/Object;
.source "SeamlessRotator.java"


# instance fields
.field private final mApplyFixedTransformHint:Z

.field private final mFixedTransformHint:I

.field private final mFloat9:[F

.field private final mNewRotation:I

.field private final mOldRotation:I

.field private final mTransform:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(IILandroid/view/DisplayInfo;Z)V
    .registers 10
    .param p1, "oldRotation"    # I
    .param p2, "newRotation"    # I
    .param p3, "info"    # Landroid/view/DisplayInfo;
    .param p4, "applyFixedTransformationHint"    # Z

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SeamlessRotator;->mTransform:Landroid/graphics/Matrix;

    .line 43
    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/server/wm/SeamlessRotator;->mFloat9:[F

    .line 58
    iput p1, p0, Lcom/android/server/wm/SeamlessRotator;->mOldRotation:I

    .line 59
    iput p2, p0, Lcom/android/server/wm/SeamlessRotator;->mNewRotation:I

    .line 60
    iput-boolean p4, p0, Lcom/android/server/wm/SeamlessRotator;->mApplyFixedTransformHint:Z

    .line 61
    iput p1, p0, Lcom/android/server/wm/SeamlessRotator;->mFixedTransformHint:I

    .line 62
    iget v1, p3, Landroid/view/DisplayInfo;->rotation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_24

    iget v1, p3, Landroid/view/DisplayInfo;->rotation:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_23

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    :cond_24
    :goto_24
    move v1, v2

    .line 63
    .local v1, "flipped":Z
    if-eqz v1, :cond_2a

    iget v2, p3, Landroid/view/DisplayInfo;->logicalWidth:I

    goto :goto_2c

    :cond_2a
    iget v2, p3, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 64
    .local v2, "pH":I
    :goto_2c
    if-eqz v1, :cond_31

    iget v3, p3, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_33

    :cond_31
    iget v3, p3, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 66
    .local v3, "pW":I
    :goto_33
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 67
    .local v4, "tmp":Landroid/graphics/Matrix;
    invoke-static {p1, v3, v2, v0}, Lcom/android/server/wm/utils/CoordinateTransforms;->transformLogicalToPhysicalCoordinates(IIILandroid/graphics/Matrix;)V

    .line 68
    invoke-static {p2, v3, v2, v4}, Lcom/android/server/wm/utils/CoordinateTransforms;->transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V

    .line 69
    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 70
    return-void
.end method


# virtual methods
.method applyTransform(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "sc"    # Landroid/view/SurfaceControl;

    .line 88
    iget-object v0, p0, Lcom/android/server/wm/SeamlessRotator;->mTransform:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/server/wm/SeamlessRotator;->mFloat9:[F

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 89
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 142
    const-string/jumbo v0, "{old="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/SeamlessRotator;->mOldRotation:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ", new="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/SeamlessRotator;->mNewRotation:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 143
    const-string/jumbo v0, "}"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method finish(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V
    .registers 6
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "win"    # Lcom/android/server/wm/WindowContainer;

    .line 110
    iget-object v0, p2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_ab

    iget-object v0, p2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_ab

    .line 114
    :cond_e
    iget-object v0, p2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/SeamlessRotator;->setIdentityMatrix(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 116
    instance-of v0, p2, Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_33

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->inFreeformSmallWinMode()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 117
    iget-object v0, p0, Lcom/android/server/wm/SeamlessRotator;->mTransform:Landroid/graphics/Matrix;

    move-object v1, p2

    check-cast v1, Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mLastHScale:F

    move-object v2, p2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget v2, v2, Lcom/android/server/wm/WindowState;->mLastVScale:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 118
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/SeamlessRotator;->applyTransform(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 120
    :cond_33
    instance-of v0, p2, Lcom/android/server/wm/WindowState;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_66

    move-object v0, p2

    check-cast v0, Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mHWScale:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_66

    .line 121
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->inFreeformSmallWinMode()Z

    move-result v0

    if-nez v0, :cond_66

    .line 122
    const-string v0, "FDST"

    const-string v1, "FDST seamlessr"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/android/server/wm/SeamlessRotator;->mTransform:Landroid/graphics/Matrix;

    move-object v1, p2

    check-cast v1, Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mHWScale:F

    move-object v2, p2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget v2, v2, Lcom/android/server/wm/WindowState;->mHWScale:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 124
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/SeamlessRotator;->applyTransform(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    goto :goto_92

    .line 125
    :cond_66
    instance-of v0, p2, Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_92

    move-object v0, p2

    check-cast v0, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->hasCompatScale()Z

    move-result v0

    if-eqz v0, :cond_92

    move-object v0, p2

    check-cast v0, Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_92

    .line 127
    iget-object v0, p0, Lcom/android/server/wm/SeamlessRotator;->mTransform:Landroid/graphics/Matrix;

    move-object v1, p2

    check-cast v1, Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mLastHScale:F

    move-object v2, p2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget v2, v2, Lcom/android/server/wm/WindowState;->mLastVScale:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 128
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/SeamlessRotator;->applyTransform(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 131
    :cond_92
    :goto_92
    iget-object v0, p2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p2, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p2, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 132
    iget-boolean v0, p0, Lcom/android/server/wm/SeamlessRotator;->mApplyFixedTransformHint:Z

    if-eqz v0, :cond_aa

    .line 133
    iget-object v0, p2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->unsetFixedTransformHint(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 135
    :cond_aa
    return-void

    .line 111
    :cond_ab
    :goto_ab
    return-void
.end method

.method public getOldRotation()I
    .registers 2

    .line 98
    iget v0, p0, Lcom/android/server/wm/SeamlessRotator;->mOldRotation:I

    return v0
.end method

.method setIdentityMatrix(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "sc"    # Landroid/view/SurfaceControl;

    .line 138
    sget-object v0, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/server/wm/SeamlessRotator;->mFloat9:[F

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 139
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 148
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 149
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/SeamlessRotator;->dump(Ljava/io/PrintWriter;)V

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ForcedSeamlessRotator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unrotate(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V
    .registers 7
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "win"    # Lcom/android/server/wm/WindowContainer;

    .line 77
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/SeamlessRotator;->applyTransform(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 79
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-object v1, p2, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p2, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 80
    .local v0, "winSurfacePos":[F
    iget-object v1, p0, Lcom/android/server/wm/SeamlessRotator;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 81
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    aget v2, v0, v2

    aget v3, v0, v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 82
    iget-boolean v1, p0, Lcom/android/server/wm/SeamlessRotator;->mApplyFixedTransformHint:Z

    if-eqz v1, :cond_35

    .line 83
    iget-object v1, p2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p0, Lcom/android/server/wm/SeamlessRotator;->mFixedTransformHint:I

    invoke-virtual {p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setFixedTransformHint(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 85
    :cond_35
    return-void
.end method
