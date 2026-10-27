.class public final Landroid/window/TaskSnapshot$Builder;
.super Ljava/lang/Object;
.source "TaskSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TaskSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAppearance:I

.field private blacklist mColorSpace:Landroid/graphics/ColorSpace;

.field private blacklist mContentInsets:Landroid/graphics/Rect;

.field private blacklist mFreeformScale:F

.field private blacklist mFreeformTaskBounds:Landroid/graphics/Rect;

.field private blacklist mHasImeSurface:Z

.field private blacklist mId:J

.field private blacklist mIsQs:Z

.field private blacklist mIsRealSnapshot:Z

.field private blacklist mIsTranslucent:Z

.field private blacklist mLetterboxInsets:Landroid/graphics/Rect;

.field private blacklist mOrientation:I

.field private blacklist mPixelFormat:I

.field private blacklist mRotation:I

.field private blacklist mSnapshot:Landroid/hardware/HardwareBuffer;

.field private blacklist mTaskSize:Landroid/graphics/Point;

.field private blacklist mTopActivity:Landroid/content/ComponentName;

.field private blacklist mWindowingMode:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/window/TaskSnapshot$Builder;->mFreeformScale:F

    .line 386
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/TaskSnapshot$Builder;->mFreeformTaskBounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/window/TaskSnapshot;
    .registers 22

    .line 502
    move-object/from16 v0, p0

    new-instance v20, Landroid/window/TaskSnapshot;

    move-object/from16 v1, v20

    iget-wide v2, v0, Landroid/window/TaskSnapshot$Builder;->mId:J

    iget-object v4, v0, Landroid/window/TaskSnapshot$Builder;->mTopActivity:Landroid/content/ComponentName;

    iget-object v5, v0, Landroid/window/TaskSnapshot$Builder;->mSnapshot:Landroid/hardware/HardwareBuffer;

    iget-object v6, v0, Landroid/window/TaskSnapshot$Builder;->mColorSpace:Landroid/graphics/ColorSpace;

    iget v7, v0, Landroid/window/TaskSnapshot$Builder;->mOrientation:I

    iget v8, v0, Landroid/window/TaskSnapshot$Builder;->mRotation:I

    iget-object v9, v0, Landroid/window/TaskSnapshot$Builder;->mTaskSize:Landroid/graphics/Point;

    iget-object v10, v0, Landroid/window/TaskSnapshot$Builder;->mContentInsets:Landroid/graphics/Rect;

    iget-object v11, v0, Landroid/window/TaskSnapshot$Builder;->mLetterboxInsets:Landroid/graphics/Rect;

    iget-boolean v13, v0, Landroid/window/TaskSnapshot$Builder;->mIsRealSnapshot:Z

    iget v14, v0, Landroid/window/TaskSnapshot$Builder;->mWindowingMode:I

    iget v15, v0, Landroid/window/TaskSnapshot$Builder;->mAppearance:I

    iget-boolean v12, v0, Landroid/window/TaskSnapshot$Builder;->mIsTranslucent:Z

    move/from16 v16, v12

    iget-boolean v12, v0, Landroid/window/TaskSnapshot$Builder;->mHasImeSurface:Z

    move/from16 v17, v12

    iget v12, v0, Landroid/window/TaskSnapshot$Builder;->mFreeformScale:F

    move/from16 v18, v12

    iget-object v12, v0, Landroid/window/TaskSnapshot$Builder;->mFreeformTaskBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v12

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v19}, Landroid/window/TaskSnapshot;-><init>(JLandroid/content/ComponentName;Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;IILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZIIZZFLandroid/graphics/Rect;)V

    return-object v20
.end method

.method public blacklist getFreeformScale()F
    .registers 2

    .line 394
    iget v0, p0, Landroid/window/TaskSnapshot$Builder;->mFreeformScale:F

    return v0
.end method

.method public blacklist getFreeformTaskBounds()Landroid/graphics/Rect;
    .registers 2

    .line 403
    iget-object v0, p0, Landroid/window/TaskSnapshot$Builder;->mFreeformTaskBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getPixelFormat()I
    .registers 2

    .line 484
    iget v0, p0, Landroid/window/TaskSnapshot$Builder;->mPixelFormat:I

    return v0
.end method

.method public blacklist isQs()Z
    .registers 2

    .line 493
    iget-boolean v0, p0, Landroid/window/TaskSnapshot$Builder;->mIsQs:Z

    return v0
.end method

.method public blacklist setAppearance(I)Landroid/window/TaskSnapshot$Builder;
    .registers 2
    .param p1, "appearance"    # I

    .line 466
    iput p1, p0, Landroid/window/TaskSnapshot$Builder;->mAppearance:I

    .line 467
    return-object p0
.end method

.method public blacklist setColorSpace(Landroid/graphics/ColorSpace;)Landroid/window/TaskSnapshot$Builder;
    .registers 2
    .param p1, "colorSpace"    # Landroid/graphics/ColorSpace;

    .line 423
    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 424
    return-object p0
.end method

.method public blacklist setContentInsets(Landroid/graphics/Rect;)Landroid/window/TaskSnapshot$Builder;
    .registers 2
    .param p1, "contentInsets"    # Landroid/graphics/Rect;

    .line 446
    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mContentInsets:Landroid/graphics/Rect;

    .line 447
    return-object p0
.end method

.method public blacklist setFreeformScale(F)Landroid/window/TaskSnapshot$Builder;
    .registers 2
    .param p1, "freeformScale"    # F

    .line 389
    iput p1, p0, Landroid/window/TaskSnapshot$Builder;->mFreeformScale:F

    .line 390
    return-object p0
.end method

.method public blacklist setFreeformTaskBounds(Landroid/graphics/Rect;)Landroid/window/TaskSnapshot$Builder;
    .registers 3
    .param p1, "freeformTaskBounds"    # Landroid/graphics/Rect;

    .line 398
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/window/TaskSnapshot$Builder;->mFreeformTaskBounds:Landroid/graphics/Rect;

    .line 399
    return-object p0
.end method

.method public blacklist setHasImeSurface(Z)Landroid/window/TaskSnapshot$Builder;
    .registers 2
    .param p1, "hasImeSurface"    # Z

    .line 479
    iput-boolean p1, p0, Landroid/window/TaskSnapshot$Builder;->mHasImeSurface:Z

    .line 480
    return-object p0
.end method

.method public blacklist setId(J)Landroid/window/TaskSnapshot$Builder;
    .registers 3
    .param p1, "id"    # J

    .line 408
    iput-wide p1, p0, Landroid/window/TaskSnapshot$Builder;->mId:J

    .line 409
    return-object p0
.end method

.method public blacklist setIsQs(Z)V
    .registers 2
    .param p1, "isQs"    # Z

    .line 497
    iput-boolean p1, p0, Landroid/window/TaskSnapshot$Builder;->mIsQs:Z

    .line 498
    return-void
.end method

.method public blacklist setIsRealSnapshot(Z)Landroid/window/TaskSnapshot$Builder;
    .registers 2
    .param p1, "realSnapshot"    # Z

    .line 456
    iput-boolean p1, p0, Landroid/window/TaskSnapshot$Builder;->mIsRealSnapshot:Z

    .line 457
    return-object p0
.end method

.method public blacklist setIsTranslucent(Z)Landroid/window/TaskSnapshot$Builder;
    .registers 2
    .param p1, "isTranslucent"    # Z

    .line 471
    iput-boolean p1, p0, Landroid/window/TaskSnapshot$Builder;->mIsTranslucent:Z

    .line 472
    return-object p0
.end method

.method public blacklist setLetterboxInsets(Landroid/graphics/Rect;)Landroid/window/TaskSnapshot$Builder;
    .registers 2
    .param p1, "letterboxInsets"    # Landroid/graphics/Rect;

    .line 451
    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mLetterboxInsets:Landroid/graphics/Rect;

    .line 452
    return-object p0
.end method

.method public blacklist setOrientation(I)Landroid/window/TaskSnapshot$Builder;
    .registers 2
    .param p1, "orientation"    # I

    .line 428
    iput p1, p0, Landroid/window/TaskSnapshot$Builder;->mOrientation:I

    .line 429
    return-object p0
.end method

.method public blacklist setPixelFormat(I)Landroid/window/TaskSnapshot$Builder;
    .registers 2
    .param p1, "pixelFormat"    # I

    .line 488
    iput p1, p0, Landroid/window/TaskSnapshot$Builder;->mPixelFormat:I

    .line 489
    return-object p0
.end method

.method public blacklist setRotation(I)Landroid/window/TaskSnapshot$Builder;
    .registers 2
    .param p1, "rotation"    # I

    .line 433
    iput p1, p0, Landroid/window/TaskSnapshot$Builder;->mRotation:I

    .line 434
    return-object p0
.end method

.method public blacklist setSnapshot(Landroid/hardware/HardwareBuffer;)Landroid/window/TaskSnapshot$Builder;
    .registers 2
    .param p1, "buffer"    # Landroid/hardware/HardwareBuffer;

    .line 418
    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mSnapshot:Landroid/hardware/HardwareBuffer;

    .line 419
    return-object p0
.end method

.method public blacklist setTaskSize(Landroid/graphics/Point;)Landroid/window/TaskSnapshot$Builder;
    .registers 2
    .param p1, "size"    # Landroid/graphics/Point;

    .line 441
    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mTaskSize:Landroid/graphics/Point;

    .line 442
    return-object p0
.end method

.method public blacklist setTopActivityComponent(Landroid/content/ComponentName;)Landroid/window/TaskSnapshot$Builder;
    .registers 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 413
    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mTopActivity:Landroid/content/ComponentName;

    .line 414
    return-object p0
.end method

.method public blacklist setWindowingMode(I)Landroid/window/TaskSnapshot$Builder;
    .registers 2
    .param p1, "windowingMode"    # I

    .line 461
    iput p1, p0, Landroid/window/TaskSnapshot$Builder;->mWindowingMode:I

    .line 462
    return-object p0
.end method
