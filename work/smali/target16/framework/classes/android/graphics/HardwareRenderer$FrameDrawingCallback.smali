.class public interface abstract Landroid/graphics/HardwareRenderer$FrameDrawingCallback;
.super Ljava/lang/Object;
.source "HardwareRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/HardwareRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FrameDrawingCallback"
.end annotation


# virtual methods
.method public blacklist onFrameDraw(IJ)Landroid/graphics/HardwareRenderer$FrameCommitCallback;
    .registers 4

    .line 1043
    invoke-interface {p0, p2, p3}, Landroid/graphics/HardwareRenderer$FrameDrawingCallback;->onFrameDraw(J)V

    .line 1044
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract blacklist onFrameDraw(J)V
.end method
