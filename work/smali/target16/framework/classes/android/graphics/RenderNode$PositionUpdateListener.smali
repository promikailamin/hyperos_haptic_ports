.class public interface abstract Landroid/graphics/RenderNode$PositionUpdateListener;
.super Ljava/lang/Object;
.source "RenderNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/RenderNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PositionUpdateListener"
.end annotation


# direct methods
.method public static blacklist callApplyStretch(Ljava/lang/ref/WeakReference;JFFFFFFFFFF)Z
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/RenderNode$PositionUpdateListener;",
            ">;JFFFFFFFFFF)Z"
        }
    .end annotation

    .line 344
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/graphics/RenderNode$PositionUpdateListener;

    .line 345
    if-eqz v0, :cond_23

    .line 346
    move-wide v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-interface/range {v0 .. v12}, Landroid/graphics/RenderNode$PositionUpdateListener;->applyStretch(JFFFFFFFFFF)V

    .line 349
    const/4 p0, 0x1

    return p0

    .line 351
    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist callPositionChanged(Ljava/lang/ref/WeakReference;JIIII)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/RenderNode$PositionUpdateListener;",
            ">;JIIII)Z"
        }
    .end annotation

    .line 294
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/graphics/RenderNode$PositionUpdateListener;

    .line 295
    if-eqz v0, :cond_13

    .line 296
    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/graphics/RenderNode$PositionUpdateListener;->positionChanged(JIIII)V

    .line 297
    const/4 p0, 0x1

    return p0

    .line 299
    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist callPositionChanged2(Ljava/lang/ref/WeakReference;JIIIIIIIIII)Z
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/RenderNode$PositionUpdateListener;",
            ">;JIIIIIIIIII)Z"
        }
    .end annotation

    .line 311
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/graphics/RenderNode$PositionUpdateListener;

    .line 312
    if-eqz v0, :cond_23

    .line 313
    move-wide v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-interface/range {v0 .. v12}, Landroid/graphics/RenderNode$PositionUpdateListener;->positionChanged(JIIIIIIIIII)V

    .line 315
    const/4 p0, 0x1

    return p0

    .line 317
    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist callPositionLost(Ljava/lang/ref/WeakReference;J)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/RenderNode$PositionUpdateListener;",
            ">;J)Z"
        }
    .end annotation

    .line 369
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/RenderNode$PositionUpdateListener;

    .line 370
    if-eqz p0, :cond_d

    .line 371
    invoke-interface {p0, p1, p2}, Landroid/graphics/RenderNode$PositionUpdateListener;->positionLost(J)V

    .line 372
    const/4 p0, 0x1

    return p0

    .line 374
    :cond_d
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist applyStretch(JFFFFFFFFFF)V
    .registers 13

    .line 333
    return-void
.end method

.method public abstract blacklist positionChanged(JIIII)V
.end method

.method public blacklist positionChanged(JIIIIIIIIII)V
    .registers 13

    .line 285
    invoke-interface/range {p0 .. p6}, Landroid/graphics/RenderNode$PositionUpdateListener;->positionChanged(JIIII)V

    .line 286
    return-void
.end method

.method public abstract blacklist positionLost(J)V
.end method
