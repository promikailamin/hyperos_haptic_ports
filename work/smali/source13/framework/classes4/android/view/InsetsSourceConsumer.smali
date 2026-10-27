.class public Landroid/view/InsetsSourceConsumer;
.super Ljava/lang/Object;
.source "InsetsSourceConsumer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InsetsSourceConsumer$ShowResult;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "InsetsSourceConsumer"


# instance fields
.field protected final blacklist mController:Landroid/view/InsetsController;

.field private blacklist mHasViewFocusWhenWindowFocusGain:Z

.field private blacklist mHasWindowFocus:Z

.field private blacklist mIsAnimationPending:Z

.field private blacklist mIsLeashChanged:Z

.field private blacklist mPendingFrame:Landroid/graphics/Rect;

.field private blacklist mPendingVisibleFrame:Landroid/graphics/Rect;

.field protected blacklist mRequestedVisible:Z

.field private blacklist mSourceControl:Landroid/view/InsetsSourceControl;

.field protected final blacklist mState:Landroid/view/InsetsState;

.field private final blacklist mTransactionSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field protected final blacklist mType:I


# direct methods
.method public constructor blacklist <init>(ILandroid/view/InsetsState;Ljava/util/function/Supplier;Landroid/view/InsetsController;)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "state"    # Landroid/view/InsetsState;
    .param p4, "controller"    # Landroid/view/InsetsController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/InsetsState;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;",
            "Landroid/view/InsetsController;",
            ")V"
        }
    .end annotation

    .line 116
    .local p3, "transactionSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/view/SurfaceControl$Transaction;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput p1, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    .line 118
    iput-object p2, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    .line 119
    iput-object p3, p0, Landroid/view/InsetsSourceConsumer;->mTransactionSupplier:Ljava/util/function/Supplier;

    .line 120
    iput-object p4, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    .line 121
    invoke-static {p1}, Landroid/view/InsetsState;->getDefaultVisibility(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    .line 122
    return-void
.end method

.method private blacklist applyRequestedVisibilityToControl()V
    .registers 4

    .line 453
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    if-eqz v0, :cond_55

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_55

    .line 457
    :cond_b
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mTransactionSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 459
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    :try_start_13
    iget-boolean v1, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    if-eqz v1, :cond_21

    .line 460
    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_2a

    .line 462
    :cond_21
    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 465
    :goto_2a
    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    if-eqz v2, :cond_37

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_38

    :cond_37
    const/4 v2, 0x0

    :goto_38
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 466
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_3e
    .catchall {:try_start_13 .. :try_end_3e} :catchall_49

    .line 467
    if-eqz v0, :cond_43

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 468
    .end local v0    # "t":Landroid/view/SurfaceControl$Transaction;
    :cond_43
    iget-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    invoke-virtual {p0, v0}, Landroid/view/InsetsSourceConsumer;->onPerceptible(Z)V

    .line 469
    return-void

    .line 457
    .restart local v0    # "t":Landroid/view/SurfaceControl$Transaction;
    :catchall_49
    move-exception v1

    if-eqz v0, :cond_54

    :try_start_4c
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_50

    goto :goto_54

    :catchall_50
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_54
    :goto_54
    throw v1

    .line 454
    .end local v0    # "t":Landroid/view/SurfaceControl$Transaction;
    :cond_55
    :goto_55
    return-void
.end method

.method private blacklist updateCompatSysUiVisibility(ZLandroid/view/InsetsSource;Z)V
    .registers 9
    .param p1, "hasControl"    # Z
    .param p2, "source"    # Landroid/view/InsetsSource;
    .param p3, "visible"    # Z

    .line 311
    iget v0, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-static {v0}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v0

    .line 312
    .local v0, "publicType":I
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    if-eq v0, v1, :cond_13

    .line 313
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    if-eq v0, v1, :cond_13

    .line 315
    return-void

    .line 318
    :cond_13
    if-eqz p1, :cond_18

    .line 319
    iget-boolean v1, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    .local v1, "compatVisible":Z
    goto :goto_55

    .line 320
    .end local v1    # "compatVisible":Z
    :cond_18
    if-eqz p2, :cond_26

    invoke-virtual {p2}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_26

    .line 321
    move v1, p3

    .restart local v1    # "compatVisible":Z
    goto :goto_55

    .line 323
    .end local v1    # "compatVisible":Z
    :cond_26
    invoke-static {v0}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v1

    .line 324
    .local v1, "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_30
    if-ltz v2, :cond_52

    .line 325
    iget-object v3, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v3

    .line 326
    .local v3, "s":Landroid/view/InsetsSource;
    if-eqz v3, :cond_4f

    invoke-virtual {v3}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4f

    .line 329
    return-void

    .line 324
    .end local v3    # "s":Landroid/view/InsetsSource;
    :cond_4f
    add-int/lit8 v2, v2, -0x1

    goto :goto_30

    .line 334
    .end local v2    # "i":I
    :cond_52
    iget-boolean v2, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    move v1, v2

    .line 336
    .local v1, "compatVisible":Z
    :goto_55
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    iget v3, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-virtual {v2, v3, v1, p1}, Landroid/view/InsetsController;->updateCompatSysUiVisibility(IZZ)V

    .line 337
    return-void
.end method


# virtual methods
.method blacklist applyLocalVisibilityOverride()Z
    .registers 10

    .line 281
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    iget v1, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    .line 282
    .local v0, "source":Landroid/view/InsetsSource;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v1

    goto :goto_15

    :cond_f
    iget v1, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-static {v1}, Landroid/view/InsetsState;->getDefaultVisibility(I)Z

    move-result v1

    .line 283
    .local v1, "isVisible":Z
    :goto_15
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1d

    move v2, v3

    goto :goto_1e

    :cond_1d
    move v2, v4

    .line 285
    .local v2, "hasControl":Z
    :goto_1e
    iget v5, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    const/16 v6, 0x13

    if-ne v5, v6, :cond_38

    .line 286
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v5

    iget-object v6, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    .line 288
    invoke-virtual {v6}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v6

    const/4 v7, 0x0

    .line 286
    const-string v8, "InsetsSourceConsumer#applyLocalVisibilityOverride"

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 291
    :cond_38
    invoke-direct {p0, v2, v0, v1}, Landroid/view/InsetsSourceConsumer;->updateCompatSysUiVisibility(ZLandroid/view/InsetsSource;Z)V

    .line 294
    if-nez v2, :cond_3e

    .line 298
    return v4

    .line 300
    :cond_3e
    iget-boolean v5, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    if-ne v1, v5, :cond_43

    .line 301
    return v4

    .line 305
    :cond_43
    iget-object v4, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    iget v5, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-virtual {v4, v5}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v4

    iget-boolean v5, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    invoke-virtual {v4, v5}, Landroid/view/InsetsSource;->setVisible(Z)V

    .line 306
    return v3
.end method

.method blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 472
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 473
    .local v0, "token":J
    iget v2, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-static {v2}, Landroid/view/InsetsState;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 474
    iget-boolean v2, p0, Landroid/view/InsetsSourceConsumer;->mHasWindowFocus:Z

    const-wide v3, 0x10800000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 475
    iget-boolean v2, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    const-wide v3, 0x10800000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 476
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    if-eqz v2, :cond_32

    .line 477
    const-wide v3, 0x10b00000004L

    invoke-virtual {v2, p1, v3, v4}, Landroid/view/InsetsSourceControl;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 479
    :cond_32
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    if-eqz v2, :cond_3e

    .line 480
    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 482
    :cond_3e
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mPendingVisibleFrame:Landroid/graphics/Rect;

    if-eqz v2, :cond_4a

    .line 483
    const-wide v3, 0x10b00000006L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 485
    :cond_4a
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 486
    return-void
.end method

.method public blacklist getControl()Landroid/view/InsetsSourceControl;
    .registers 2

    .line 226
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    return-object v0
.end method

.method blacklist getType()I
    .registers 2

    .line 240
    iget v0, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    return v0
.end method

.method blacklist hasViewFocusWhenWindowFocusGain()Z
    .registers 2

    .line 277
    iget-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mHasViewFocusWhenWindowFocusGain:Z

    return v0
.end method

.method public blacklist hide()V
    .registers 2

    .line 254
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/InsetsSourceConsumer;->setRequestedVisible(Z)V

    .line 255
    return-void
.end method

.method blacklist hide(ZI)V
    .registers 3
    .param p1, "animationFinished"    # Z
    .param p2, "animationType"    # I

    .line 258
    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->hide()V

    .line 259
    return-void
.end method

.method public blacklist isRequestedVisible()Z
    .registers 2

    .line 341
    iget-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    return v0
.end method

.method protected blacklist isRequestedVisibleAwaitingControl()Z
    .registers 2

    .line 236
    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->isRequestedVisible()Z

    move-result v0

    return v0
.end method

.method public blacklist notifyAnimationFinished()Z
    .registers 3

    .line 406
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    if-eqz v0, :cond_1d

    .line 407
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    iget v1, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    .line 408
    .local v0, "source":Landroid/view/InsetsSource;
    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)V

    .line 409
    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mPendingVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/InsetsSource;->setVisibleFrame(Landroid/graphics/Rect;)V

    .line 410
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    .line 411
    iput-object v1, p0, Landroid/view/InsetsSourceConsumer;->mPendingVisibleFrame:Landroid/graphics/Rect;

    .line 412
    const/4 v1, 0x1

    return v1

    .line 414
    .end local v0    # "source":Landroid/view/InsetsSource;
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method blacklist notifyHidden()V
    .registers 1

    .line 371
    return-void
.end method

.method public blacklist onPerceptible(Z)V
    .registers 2
    .param p1, "perceptible"    # Z

    .line 364
    return-void
.end method

.method public blacklist onWindowFocusGained(Z)V
    .registers 3
    .param p1, "hasViewFocus"    # Z

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mHasWindowFocus:Z

    .line 266
    iput-boolean p1, p0, Landroid/view/InsetsSourceConsumer;->mHasViewFocusWhenWindowFocusGain:Z

    .line 267
    return-void
.end method

.method public blacklist onWindowFocusLost()V
    .registers 2

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mHasWindowFocus:Z

    .line 274
    return-void
.end method

.method public blacklist removeSurface()V
    .registers 1

    .line 378
    return-void
.end method

.method public blacklist requestShow(Z)I
    .registers 3
    .param p1, "fromController"    # Z

    .line 354
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setControl(Landroid/view/InsetsSourceControl;[I[I)Z
    .registers 15
    .param p1, "control"    # Landroid/view/InsetsSourceControl;
    .param p2, "showTypes"    # [I
    .param p3, "hideTypes"    # [I

    .line 135
    iget v0, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-ne v0, v2, :cond_1a

    .line 136
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    .line 137
    invoke-virtual {v2}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 136
    const-string v3, "InsetsSourceConsumer#setControl"

    invoke-virtual {v0, v3, v2, v1}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 139
    :cond_1a
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_34

    .line 140
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    if-eqz v0, :cond_33

    if-eq v0, p1, :cond_33

    .line 141
    new-instance v1, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/InsetsSourceControl;->release(Ljava/util/function/Consumer;)V

    .line 142
    iput-object p1, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    .line 144
    :cond_33
    return v2

    .line 146
    :cond_34
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    :cond_3c
    move-object v0, v1

    .line 148
    .local v0, "oldLeash":Landroid/view/SurfaceControl;
    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    .line 149
    .local v1, "lastControl":Landroid/view/InsetsSourceControl;
    iput-object p1, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    .line 150
    nop

    .line 155
    const/4 v3, 0x1

    if-nez p1, :cond_71

    .line 157
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v2, p0}, Landroid/view/InsetsController;->notifyControlRevoked(Landroid/view/InsetsSourceConsumer;)V

    .line 160
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    iget v4, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-virtual {v2, v4}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v2

    .line 161
    .local v2, "source":Landroid/view/InsetsSource;
    iget-object v4, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    .line 162
    invoke-virtual {v4}, Landroid/view/InsetsController;->getLastDispatchedState()Landroid/view/InsetsState;

    move-result-object v4

    iget v5, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-virtual {v4, v5}, Landroid/view/InsetsState;->getSourceOrDefaultVisibility(I)Z

    move-result v4

    .line 163
    .local v4, "serverVisibility":Z
    invoke-virtual {v2}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v5

    if-eq v5, v4, :cond_6c

    .line 164
    invoke-virtual {v2, v4}, Landroid/view/InsetsSource;->setVisible(Z)V

    .line 165
    iget-object v5, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v5}, Landroid/view/InsetsController;->notifyVisibilityChanged()V

    .line 169
    :cond_6c
    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->applyLocalVisibilityOverride()Z

    .line 170
    .end local v2    # "source":Landroid/view/InsetsSource;
    .end local v4    # "serverVisibility":Z
    goto/16 :goto_105

    .line 173
    :cond_71
    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->isRequestedVisibleAwaitingControl()Z

    move-result v4

    .line 174
    .local v4, "requestedVisible":Z
    sget-object v5, Landroid/view/InsetsSourceControl;->INVALID_HINTS:Landroid/graphics/Insets;

    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getInsetsHint()Landroid/graphics/Insets;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 175
    .local v5, "fakeControl":Z
    iget-object v6, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    iget v7, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-virtual {v6, v7}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v6

    if-eq v4, v6, :cond_91

    if-nez v5, :cond_91

    move v6, v3

    goto :goto_92

    :cond_91
    move v6, v2

    .line 177
    .local v6, "needsAnimation":Z
    :goto_92
    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v7

    if-eqz v7, :cond_be

    if-nez v6, :cond_9e

    iget-boolean v7, p0, Landroid/view/InsetsSourceConsumer;->mIsAnimationPending:Z

    if-eqz v7, :cond_be

    .line 180
    :cond_9e
    if-eqz v4, :cond_ae

    .line 181
    aget v7, p2, v2

    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v8

    invoke-static {v8}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v8

    or-int/2addr v7, v8

    aput v7, p2, v2

    goto :goto_bb

    .line 183
    :cond_ae
    aget v7, p3, v2

    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v8

    invoke-static {v8}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v8

    or-int/2addr v7, v8

    aput v7, p3, v2

    .line 185
    :goto_bb
    iput-boolean v2, p0, Landroid/view/InsetsSourceConsumer;->mIsAnimationPending:Z

    goto :goto_105

    .line 187
    :cond_be
    if-eqz v6, :cond_c2

    .line 190
    iput-boolean v3, p0, Landroid/view/InsetsSourceConsumer;->mIsAnimationPending:Z

    .line 194
    :cond_c2
    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->applyLocalVisibilityOverride()Z

    move-result v2

    if-eqz v2, :cond_cd

    .line 195
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v2}, Landroid/view/InsetsController;->notifyVisibilityChanged()V

    .line 199
    :cond_cd
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/view/InsetsController;->getAnimationType(I)I

    move-result v2

    if-nez v2, :cond_f7

    iget-boolean v2, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    if-nez v2, :cond_f7

    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    .line 201
    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    if-eqz v2, :cond_f7

    if-eqz v0, :cond_f7

    iget-wide v7, v0, Landroid/view/SurfaceControl;->mNativeObject:J

    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    .line 203
    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    iget-wide v9, v2, Landroid/view/SurfaceControl;->mNativeObject:J

    cmp-long v2, v7, v9

    if-eqz v2, :cond_f7

    .line 204
    iput-boolean v3, p0, Landroid/view/InsetsSourceConsumer;->mIsLeashChanged:Z

    .line 210
    :cond_f7
    invoke-direct {p0}, Landroid/view/InsetsSourceConsumer;->applyRequestedVisibilityToControl()V

    .line 213
    if-nez v4, :cond_105

    iget-boolean v2, p0, Landroid/view/InsetsSourceConsumer;->mIsAnimationPending:Z

    if-nez v2, :cond_105

    if-nez v1, :cond_105

    .line 214
    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->removeSurface()V

    .line 218
    .end local v4    # "requestedVisible":Z
    .end local v5    # "fakeControl":Z
    .end local v6    # "needsAnimation":Z
    :cond_105
    :goto_105
    if-eqz v1, :cond_10f

    .line 219
    new-instance v2, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/InsetsSourceControl;->release(Ljava/util/function/Consumer;)V

    .line 221
    :cond_10f
    return v3
.end method

.method protected blacklist setRequestedVisible(Z)V
    .registers 5
    .param p1, "requestedVisible"    # Z

    .line 422
    iget-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    const/4 v1, 0x0

    if-eq v0, p1, :cond_3d

    .line 423
    iput-boolean p1, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    .line 429
    iget-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mIsAnimationPending:Z

    if-nez v0, :cond_25

    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    if-eqz v0, :cond_25

    .line 431
    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_25

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    .line 432
    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getInsetsHint()Landroid/graphics/Insets;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const/4 v0, 0x1

    goto :goto_26

    :cond_25
    move v0, v1

    :goto_26
    iput-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mIsAnimationPending:Z

    .line 434
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0, p0}, Landroid/view/InsetsController;->onRequestedVisibilityChanged(Landroid/view/InsetsSourceConsumer;)V

    .line 438
    iget-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mIsLeashChanged:Z

    if-eqz v0, :cond_3d

    if-eqz p1, :cond_3d

    .line 439
    const-string v0, "InsetsSourceConsumer"

    const-string v2, "leash changed, apply visible to the right leash"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-direct {p0}, Landroid/view/InsetsSourceConsumer;->applyRequestedVisibilityToControl()V

    .line 445
    :cond_3d
    iput-boolean v1, p0, Landroid/view/InsetsSourceConsumer;->mIsLeashChanged:Z

    .line 447
    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->applyLocalVisibilityOverride()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 448
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->notifyVisibilityChanged()V

    .line 450
    :cond_4a
    return-void
.end method

.method public blacklist show(Z)V
    .registers 3
    .param p1, "fromIme"    # Z

    .line 247
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/InsetsSourceConsumer;->setRequestedVisible(Z)V

    .line 248
    return-void
.end method

.method public blacklist updateSource(Landroid/view/InsetsSource;I)V
    .registers 7
    .param p1, "newSource"    # Landroid/view/InsetsSource;
    .param p2, "animationType"    # I

    .line 382
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    iget v1, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    .line 383
    .local v0, "source":Landroid/view/InsetsSource;
    const/4 v1, 0x0

    if-eqz v0, :cond_55

    const/4 v2, -0x1

    if-eq p2, v2, :cond_55

    .line 384
    invoke-virtual {v0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_55

    .line 393
    :cond_1d
    new-instance v2, Landroid/view/InsetsSource;

    invoke-direct {v2, p1}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    move-object p1, v2

    .line 394
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    .line 395
    invoke-virtual {p1}, Landroid/view/InsetsSource;->getVisibleFrame()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_3e

    .line 396
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getVisibleFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_3f

    .line 397
    :cond_3e
    nop

    :goto_3f
    iput-object v1, p0, Landroid/view/InsetsSourceConsumer;->mPendingVisibleFrame:Landroid/graphics/Rect;

    .line 398
    invoke-virtual {v0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)V

    .line 399
    invoke-virtual {v0}, Landroid/view/InsetsSource;->getVisibleFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/InsetsSource;->setVisibleFrame(Landroid/graphics/Rect;)V

    .line 400
    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1, p1}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 402
    return-void

    .line 385
    :cond_55
    :goto_55
    iput-object v1, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    .line 386
    iput-object v1, p0, Landroid/view/InsetsSourceConsumer;->mPendingVisibleFrame:Landroid/graphics/Rect;

    .line 387
    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1, p1}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 388
    return-void
.end method
