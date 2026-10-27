.class public interface abstract Lcom/miui/autoui/policy/api/IAutoUIDraw;
.super Ljava/lang/Object;
.source "IAutoUIDraw.java"


# virtual methods
.method public abstract blacklist getCanvasSize(Landroid/view/View;II)[I
.end method

.method public abstract blacklist getDrawLocation(Landroid/view/View;[I)V
.end method

.method public abstract blacklist hookCanvas(Landroid/view/View;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)Lcom/miui/autoui/AutoUIParams;
.end method

.method public abstract blacklist onViewDetached(Landroid/view/View;)V
.end method

.method public abstract blacklist postViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
.end method

.method public abstract blacklist preViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
.end method

.method public abstract blacklist preViewDraw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/view/ViewGroup;J)V
.end method
