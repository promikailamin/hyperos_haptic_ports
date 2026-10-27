.class public interface abstract Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;
.super Ljava/lang/Object;
.source "LocalAnimationAdapter.java"


# virtual methods
.method public abstract apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V
.end method

.method public canSkipFirstFrame()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 4

    .line 177
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 178
    invoke-interface {p0, p1}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->dumpDebugInner(Landroid/util/proto/ProtoOutputStream;)V

    .line 179
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public abstract dumpDebugInner(Landroid/util/proto/ProtoOutputStream;)V
.end method

.method public abstract getDuration()J
.end method

.method public getFraction(F)F
    .registers 4

    .line 170
    invoke-interface {p0}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->getDuration()J

    move-result-wide v0

    long-to-float p0, v0

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_c

    div-float/2addr p1, p0

    return p1

    :cond_c
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method
