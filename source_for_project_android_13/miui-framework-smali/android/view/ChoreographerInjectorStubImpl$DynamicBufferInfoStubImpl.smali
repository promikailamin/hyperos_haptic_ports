.class public Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;
.super Ljava/lang/Object;
.source "ChoreographerInjectorStubImpl.java"

# interfaces
.implements Landroid/view/animation/ChoreographerInjectorStub$DynamicBufferInfoStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ChoreographerInjectorStubImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DynamicBufferInfoStubImpl"
.end annotation


# instance fields
.field private blacklist mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

.field private blacklist mContinuousActionMoveCount:I

.field private blacklist mIsPageScroll:Z

.field private blacklist mLastAdjustedMaxDequeuedBuffers:I

.field private blacklist mLastMotionEventType:I

.field private blacklist mNeedResetFrameDroppedCallback:Z

.field private blacklist mNeedSetFrameDroppedCallback:Z

.field private blacklist mNumOfTimesToDropFrames:I

.field private blacklist mSetFrameDroppedCallback:Landroid/view/animation/ChoreographerInjectorStub$DynamicBufferInfoStub$SetFrameDroppedCallback;

.field final synthetic blacklist this$0:Landroid/view/ChoreographerInjectorStubImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/view/ChoreographerInjectorStubImpl;Landroid/graphics/BLASTBufferQueue;Landroid/view/animation/ChoreographerInjectorStub$DynamicBufferInfoStub$SetFrameDroppedCallback;)V
    .registers 6
    .param p1, "this$0"    # Landroid/view/ChoreographerInjectorStubImpl;
    .param p2, "blastBufferQueue"    # Landroid/graphics/BLASTBufferQueue;
    .param p3, "callback"    # Landroid/view/animation/ChoreographerInjectorStub$DynamicBufferInfoStub$SetFrameDroppedCallback;

    .line 277
    iput-object p1, p0, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;->this$0:Landroid/view/ChoreographerInjectorStubImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;->mContinuousActionMoveCount:I

    .line 254
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;->mLastMotionEventType:I

    .line 258
    iput v0, p0, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;->mLastAdjustedMaxDequeuedBuffers:I

    .line 262
    iput-boolean v0, p0, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;->mNeedSetFrameDroppedCallback:Z

    .line 266
    iput-boolean v0, p0, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;->mNeedResetFrameDroppedCallback:Z

    .line 270
    iput-boolean v0, p0, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;->mIsPageScroll:Z

    .line 274
    iput v0, p0, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;->mNumOfTimesToDropFrames:I

    .line 278
    iput-object p2, p0, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 279
    iput-object p3, p0, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;->mSetFrameDroppedCallback:Landroid/view/animation/ChoreographerInjectorStub$DynamicBufferInfoStub$SetFrameDroppedCallback;

    .line 280
    return-void
.end method

.method private blacklist getNumOfAdjustBuffers(I)I
    .registers 4
    .param p1, "dropFrameCount"    # I

    .line 318
    const/4 v0, 0x3

    if-ge p1, v0, :cond_5

    .line 319
    const/4 v0, 0x0

    return v0

    .line 321
    :cond_5
    add-int/lit8 v0, p1, -0x3

    add-int/lit8 v0, v0, 0x1

    invoke-static {}, Landroid/view/ChoreographerInjectorStubImpl;->-$$Nest$sfgetMAX_NUM_TO_ADJUST()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist addFrameDroppedCallbackIfNeeded()V
    .registers 3

    .line 339
    iget-object v0, p0, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;->mSetFrameDroppedCallback:Landroid/view/animation/ChoreographerInjectorStub$DynamicBufferInfoStub$SetFrameDroppedCallback;

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;->mNeedSetFrameDroppedCallback:Z

    if-eqz v0, :cond_20

    iget v0, p0, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;->mLastAdjustedMaxDequeuedBuffers:I

    invoke-static {}, Landroid/view/ChoreographerInjectorStubImpl;->-$$Nest$sfgetMAX_NUM_TO_ADJUST()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 341
    iget-object v0, p0, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;->mSetFrameDroppedCallback:Landroid/view/animation/ChoreographerInjectorStub$DynamicBufferInfoStub$SetFrameDroppedCallback;

    new-instance v1, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl$$ExternalSyntheticLambda0;-><init>(Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;)V

    invoke-interface {v0, v1}, Landroid/view/animation/ChoreographerInjectorStub$DynamicBufferInfoStub$SetFrameDroppedCallback;->onSetFrameDroppedCallback(Landroid/graphics/HardwareRenderer$FrameDroppedCallback;)V

    .line 345
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;->mNeedSetFrameDroppedCallback:Z

    .line 346
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;->mNeedResetFrameDroppedCallback:Z

    .line 348
    :cond_20
    return-void
.end method

.method public blacklist adjustMaxDequeuedBufferCountIfNeeded(I)V
    .registers 6
    .param p1, "dropFrameCount"    # I

    .line 326
    iget-object v0, p0, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v0, :cond_21

    .line 327
    invoke-direct {p0, p1}, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;->getNumOfAdjustBuffers(I)I

    move-result v0

    .line 328
    .local v0, "currentAdjustNum":I
    iget v1, p0, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;->mLastAdjustedMaxDequeuedBuffers:I

    if-le v0, v1, :cond_21

    iget v2, p0, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;->mNumOfTimesToDropFrames:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;->mNumOfTimesToDropFrames:I

    const/4 v3, 0x2

    if-le v2, v3, :cond_21

    iget-object v2, p0, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    sub-int v1, v0, v1

    .line 330
    invoke-virtual {v2, v1}, Landroid/graphics/BLASTBufferQueue;->adjustMaxDequeuedBufferCount(I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 332
    iput v0, p0, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;->mLastAdjustedMaxDequeuedBuffers:I

    .line 335
    .end local v0    # "currentAdjustNum":I
    :cond_21
    return-void
.end method

.method public blacklist analyzeMotionInfo(Landroid/view/InputEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 288
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_2f

    .line 289
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    .line 290
    .local v0, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 291
    .local v1, "action":I
    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_30

    .line 306
    invoke-virtual {p0}, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;->reset()V

    goto :goto_2d

    .line 293
    :pswitch_13
    iget v3, p0, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;->mContinuousActionMoveCount:I

    add-int/2addr v3, v2

    iput v3, p0, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;->mContinuousActionMoveCount:I

    .line 294
    goto :goto_2d

    .line 298
    :pswitch_19
    iget v3, p0, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;->mLastMotionEventType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_29

    iget-boolean v3, p0, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;->mIsPageScroll:Z

    if-nez v3, :cond_29

    iget v3, p0, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;->mContinuousActionMoveCount:I

    const/4 v4, 0x3

    if-le v3, v4, :cond_29

    .line 301
    iput-boolean v2, p0, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;->mNeedSetFrameDroppedCallback:Z

    .line 303
    :cond_29
    const/4 v2, 0x0

    iput v2, p0, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;->mContinuousActionMoveCount:I

    .line 304
    nop

    .line 309
    :goto_2d
    iput v1, p0, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;->mLastMotionEventType:I

    .line 311
    .end local v0    # "motionEvent":Landroid/view/MotionEvent;
    .end local v1    # "action":I
    :cond_2f
    return-void

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_19
        :pswitch_13
    .end packed-switch
.end method

.method public blacklist destroy()V
    .registers 4

    .line 363
    iget-object v0, p0, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;->mSetFrameDroppedCallback:Landroid/view/animation/ChoreographerInjectorStub$DynamicBufferInfoStub$SetFrameDroppedCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-boolean v2, p0, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;->mNeedResetFrameDroppedCallback:Z

    if-eqz v2, :cond_c

    .line 364
    invoke-interface {v0, v1}, Landroid/view/animation/ChoreographerInjectorStub$DynamicBufferInfoStub$SetFrameDroppedCallback;->onSetFrameDroppedCallback(Landroid/graphics/HardwareRenderer$FrameDroppedCallback;)V

    .line 366
    :cond_c
    iput-object v1, p0, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;->mSetFrameDroppedCallback:Landroid/view/animation/ChoreographerInjectorStub$DynamicBufferInfoStub$SetFrameDroppedCallback;

    .line 367
    return-void
.end method

.method public blacklist finishInputEvent(Landroid/view/InputEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 284
    invoke-virtual {p0, p1}, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;->analyzeMotionInfo(Landroid/view/InputEvent;)V

    .line 285
    return-void
.end method

.method synthetic blacklist lambda$addFrameDroppedCallbackIfNeeded$0$android-view-ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl(I)V
    .registers 3
    .param p1, "dropFrameCount"    # I

    .line 342
    invoke-virtual {p0, p1}, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;->adjustMaxDequeuedBufferCountIfNeeded(I)V

    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;->mNeedSetFrameDroppedCallback:Z

    .line 344
    return-void
.end method

.method public blacklist reset()V
    .registers 4

    .line 351
    iget-object v0, p0, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;->this$0:Landroid/view/ChoreographerInjectorStubImpl;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Landroid/view/ChoreographerInjectorStubImpl;->-$$Nest$fputmCurrentDynamicBufferInfo(Landroid/view/ChoreographerInjectorStubImpl;Ljava/lang/ref/WeakReference;)V

    .line 352
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;->mIsPageScroll:Z

    .line 353
    iput-boolean v0, p0, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;->mNeedSetFrameDroppedCallback:Z

    .line 354
    iget-object v1, p0, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;->mSetFrameDroppedCallback:Landroid/view/animation/ChoreographerInjectorStub$DynamicBufferInfoStub$SetFrameDroppedCallback;

    if-eqz v1, :cond_1d

    iget-boolean v2, p0, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;->mNeedResetFrameDroppedCallback:Z

    if-eqz v2, :cond_1d

    .line 356
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/animation/ChoreographerInjectorStub$DynamicBufferInfoStub$SetFrameDroppedCallback;->onSetFrameDroppedCallback(Landroid/graphics/HardwareRenderer$FrameDroppedCallback;)V

    .line 357
    iput-boolean v0, p0, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;->mNeedResetFrameDroppedCallback:Z

    .line 359
    :cond_1d
    return-void
.end method

.method public blacklist setIsPageScroll(Z)V
    .registers 2
    .param p1, "isPageScroll"    # Z

    .line 314
    iput-boolean p1, p0, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;->mIsPageScroll:Z

    .line 315
    return-void
.end method
