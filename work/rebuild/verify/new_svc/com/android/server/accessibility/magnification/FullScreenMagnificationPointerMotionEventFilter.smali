.class public Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;
.super Ljava/lang/Object;
.source "FullScreenMagnificationPointerMotionEventFilter.java"

# interfaces
.implements Lcom/android/server/input/InputManagerInternal$AccessibilityPointerMotionFilter;


# static fields
.field static final EDGE_MODE_MARGIN_PX:F = 100.0f

.field public static final TAG:Ljava/lang/String; = "FullScreenMagnificationPointerMotionEventFilter"


# instance fields
.field public final mController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

.field public final mMagnificationData:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;

.field public final mMode:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)V
    .registers 4

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;->mMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 58
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;->mController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 59
    new-instance p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;

    invoke-direct {p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;->mMagnificationData:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;

    return-void
.end method


# virtual methods
.method public filterPointerMotionEvent(FFFFI)[F
    .registers 13

    .line 79
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;->mController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;->mMagnificationData:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;

    invoke-virtual {v0, p5, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getFullScreenMagnificationData(ILcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;)V

    .line 82
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;->mMagnificationData:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->isActivated()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_19

    .line 83
    new-array p0, v1, [F

    aput p1, p0, v3

    aput p2, p0, v2

    return-object p0

    .line 86
    :cond_19
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;->mMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_23

    move v4, v2

    goto :goto_24

    :cond_23
    move v4, v3

    :goto_24
    if-ne v0, v2, :cond_28

    move v5, v2

    goto :goto_29

    :cond_28
    move v5, v3

    :goto_29
    if-ne v0, v1, :cond_2d

    move v6, v2

    goto :goto_2e

    :cond_2d
    move v6, v3

    :goto_2e
    if-nez v5, :cond_69

    if-eqz v6, :cond_33

    goto :goto_69

    :cond_33
    if-nez v4, :cond_4b

    .line 150
    sget-object v4, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Magnification cursor following falling back to continuous mode with unexpected mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    add-float/2addr p3, p1

    add-float/2addr p4, p2

    .line 157
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;->mController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    iget-object v4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;->mMagnificationData:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;

    invoke-virtual {v4}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->getScale()F

    move-result v4

    mul-float/2addr v4, p3

    sub-float/2addr p3, v4

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;->mMagnificationData:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;

    .line 158
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->getScale()F

    move-result p0

    mul-float/2addr p0, p4

    sub-float/2addr p4, p0

    .line 157
    invoke-virtual {v0, p5, p3, p4, v3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setOffset(IFFI)V

    .line 163
    new-array p0, v1, [F

    aput p1, p0, v3

    aput p2, p0, v2

    return-object p0

    :cond_69
    :goto_69
    if-eqz v5, :cond_86

    .line 99
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;->mMagnificationData:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    .line 100
    iget-object v5, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;->mMagnificationData:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;

    invoke-virtual {v5}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    goto :goto_89

    :cond_86
    const/high16 v0, 0x42c80000    # 100.0f

    move v5, v0

    :goto_89
    const/4 v4, 0x0

    cmpl-float v6, p1, v4

    if-lez v6, :cond_cd

    .line 108
    iget-object v6, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;->mMagnificationData:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;

    invoke-virtual {v6}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    sub-float/2addr v6, v0

    cmpl-float v6, p3, v6

    if-ltz v6, :cond_cd

    .line 109
    iget-object p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;->mMagnificationData:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;

    invoke-virtual {p3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->getScale()F

    move-result p3

    mul-float/2addr p3, p1

    .line 111
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;->mMagnificationData:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->getOffsetX()F

    move-result v0

    iget-object v6, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;->mMagnificationData:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;

    invoke-virtual {v6}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->getMinOffsetX()F

    move-result v6

    sub-float/2addr v0, v6

    cmpl-float v0, p3, v0

    if-lez v0, :cond_cb

    .line 112
    iget-object p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;->mMagnificationData:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;

    invoke-virtual {p3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->getOffsetX()F

    move-result p3

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;->mMagnificationData:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->getMinOffsetX()F

    move-result v0

    sub-float/2addr p3, v0

    .line 113
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;->mMagnificationData:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->getScale()F

    move-result v0

    :goto_c7
    div-float v0, p3, v0

    sub-float/2addr p1, v0

    goto :goto_10c

    :cond_cb
    move p1, v4

    goto :goto_10c

    :cond_cd
    cmpg-float v6, p1, v4

    if-gez v6, :cond_10b

    .line 115
    iget-object v6, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;->mMagnificationData:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;

    invoke-virtual {v6}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    add-float/2addr v6, v0

    cmpg-float p3, p3, v6

    if-gtz p3, :cond_10b

    .line 116
    iget-object p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;->mMagnificationData:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;

    invoke-virtual {p3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->getScale()F

    move-result p3

    mul-float/2addr p3, p1

    .line 118
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;->mMagnificationData:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->getOffsetX()F

    move-result v0

    iget-object v6, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;->mMagnificationData:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;

    invoke-virtual {v6}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->getMaxOffsetX()F

    move-result v6

    sub-float/2addr v0, v6

    cmpg-float v0, p3, v0

    if-gez v0, :cond_cb

    .line 119
    iget-object p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;->mMagnificationData:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;

    invoke-virtual {p3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->getOffsetX()F

    move-result p3

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;->mMagnificationData:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->getMaxOffsetX()F

    move-result v0

    sub-float/2addr p3, v0

    .line 120
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;->mMagnificationData:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->getScale()F

    move-result v0

    goto :goto_c7

    :cond_10b
    move p3, v4

    :goto_10c
    cmpl-float v0, p2, v4

    if-lez v0, :cond_151

    .line 126
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;->mMagnificationData:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sub-float/2addr v0, v5

    cmpl-float v0, p4, v0

    if-ltz v0, :cond_151

    .line 127
    iget-object p4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;->mMagnificationData:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;

    invoke-virtual {p4}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->getScale()F

    move-result p4

    mul-float/2addr p4, p2

    .line 129
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;->mMagnificationData:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->getOffsetY()F

    move-result v0

    iget-object v5, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;->mMagnificationData:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;

    invoke-virtual {v5}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->getMinOffsetY()F

    move-result v5

    sub-float/2addr v0, v5

    cmpl-float v0, p4, v0

    if-lez v0, :cond_14e

    .line 130
    iget-object p4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;->mMagnificationData:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;

    invoke-virtual {p4}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->getOffsetY()F

    move-result p4

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;->mMagnificationData:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->getMinOffsetY()F

    move-result v0

    sub-float v4, p4, v0

    .line 131
    iget-object p4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;->mMagnificationData:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;

    invoke-virtual {p4}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->getScale()F

    move-result p4

    :goto_14a
    div-float p4, v4, p4

    sub-float/2addr p2, p4

    goto :goto_190

    :cond_14e
    move p2, v4

    move v4, p4

    goto :goto_190

    :cond_151
    cmpg-float v0, p2, v4

    if-gez v0, :cond_190

    .line 133
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;->mMagnificationData:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float/2addr v0, v5

    cmpg-float p4, p4, v0

    if-gtz p4, :cond_190

    .line 134
    iget-object p4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;->mMagnificationData:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;

    invoke-virtual {p4}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->getScale()F

    move-result p4

    mul-float/2addr p4, p2

    .line 136
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;->mMagnificationData:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->getOffsetY()F

    move-result v0

    iget-object v5, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;->mMagnificationData:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;

    invoke-virtual {v5}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->getMaxOffsetY()F

    move-result v5

    sub-float/2addr v0, v5

    cmpg-float v0, p4, v0

    if-gez v0, :cond_14e

    .line 137
    iget-object p4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;->mMagnificationData:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;

    invoke-virtual {p4}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->getOffsetY()F

    move-result p4

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;->mMagnificationData:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->getMaxOffsetY()F

    move-result v0

    sub-float v4, p4, v0

    .line 138
    iget-object p4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;->mMagnificationData:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;

    invoke-virtual {p4}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->getScale()F

    move-result p4

    goto :goto_14a

    .line 142
    :cond_190
    :goto_190
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;->mController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-virtual {p0, p5, p3, v4, v3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->offsetMagnifiedRegion(IFFI)V

    .line 145
    new-array p0, v1, [F

    aput p1, p0, v3

    aput p2, p0, v2

    return-object p0
.end method

.method public setMode(I)V
    .registers 2

    .line 68
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;->mMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
