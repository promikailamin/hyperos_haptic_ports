.class public Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;
.super Ljava/lang/Object;
.source "FullScreenMagnificationController.java"


# instance fields
.field public mActivated:Z

.field public mBounds:Landroid/graphics/Rect;

.field public mMaxOffsetX:F

.field public mMaxOffsetY:F

.field public mMinOffsetX:F

.field public mMinOffsetY:F

.field public mOffsetX:F

.field public mOffsetY:F

.field public mScale:F


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBounds(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;)Landroid/graphics/Rect;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->mBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmActivated(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->mActivated:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMaxOffsetX(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->mMaxOffsetX:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMaxOffsetY(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->mMaxOffsetY:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMinOffsetX(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->mMinOffsetX:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMinOffsetY(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->mMinOffsetY:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmOffsetX(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->mOffsetX:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmOffsetY(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->mOffsetY:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmScale(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->mScale:F

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->mBounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getBounds()Landroid/graphics/Rect;
    .registers 1

    .line 165
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->mBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getMaxOffsetX()F
    .registers 1

    .line 189
    iget p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->mMaxOffsetX:F

    return p0
.end method

.method public getMaxOffsetY()F
    .registers 1

    .line 213
    iget p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->mMaxOffsetY:F

    return p0
.end method

.method public getMinOffsetX()F
    .registers 1

    .line 181
    iget p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->mMinOffsetX:F

    return p0
.end method

.method public getMinOffsetY()F
    .registers 1

    .line 205
    iget p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->mMinOffsetY:F

    return p0
.end method

.method public getOffsetX()F
    .registers 1

    .line 173
    iget p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->mOffsetX:F

    return p0
.end method

.method public getOffsetY()F
    .registers 1

    .line 197
    iget p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->mOffsetY:F

    return p0
.end method

.method public getScale()F
    .registers 1

    .line 156
    iget p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->mScale:F

    return p0
.end method

.method public isActivated()Z
    .registers 1

    .line 148
    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->mActivated:Z

    return p0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 225
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->mActivated:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 226
    iput v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->mScale:F

    .line 227
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v0, 0x0

    .line 228
    iput v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->mOffsetX:F

    .line 229
    iput v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->mMinOffsetX:F

    .line 230
    iput v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->mMaxOffsetX:F

    .line 231
    iput v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->mOffsetY:F

    .line 232
    iput v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->mMinOffsetY:F

    .line 233
    iput v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$FullScreenMagnificationData;->mMaxOffsetY:F

    return-void
.end method
