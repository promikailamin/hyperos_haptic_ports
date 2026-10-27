.class public interface abstract Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;
.super Ljava/lang/Object;
.source "WindowManagerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/WindowManagerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ScreenOnListener"
.end annotation


# virtual methods
.method public abstract onScreenOn()V
.end method

.method public onScreenOn(J)V
    .registers 3
    .param p1, "delay"    # J

    .line 851
    return-void
.end method
