.class public interface abstract Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;
.super Ljava/lang/Object;
.source "AccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/AccessibilityService$MagnificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnMagnificationChangedListener"
.end annotation


# virtual methods
.method public abstract whitelist onMagnificationChanged(Landroid/accessibilityservice/AccessibilityService$MagnificationController;Landroid/graphics/Region;FFF)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist onMagnificationChanged(Landroid/accessibilityservice/AccessibilityService$MagnificationController;Landroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .registers 12

    .line 1995
    invoke-virtual {p3}, Landroid/accessibilityservice/MagnificationConfig;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 1996
    nop

    .line 1997
    invoke-virtual {p3}, Landroid/accessibilityservice/MagnificationConfig;->getScale()F

    move-result v5

    invoke-virtual {p3}, Landroid/accessibilityservice/MagnificationConfig;->getCenterX()F

    move-result v6

    invoke-virtual {p3}, Landroid/accessibilityservice/MagnificationConfig;->getCenterY()F

    move-result v7

    .line 1996
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-interface/range {v2 .. v7}, Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;->onMagnificationChanged(Landroid/accessibilityservice/AccessibilityService$MagnificationController;Landroid/graphics/Region;FFF)V

    .line 1999
    :cond_1a
    return-void
.end method
