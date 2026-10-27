.class public interface abstract Lcom/miui/internal/os/MiuiHooks$IAbsListViewOverFlingRunnable;
.super Ljava/lang/Object;
.source "MiuiHooks.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/os/MiuiHooks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IAbsListViewOverFlingRunnable"
.end annotation


# virtual methods
.method public abstract blacklist endFling()V
.end method

.method public abstract blacklist getScroller()Landroid/widget/OverScroller;
.end method

.method public abstract blacklist start(I)V
.end method

.method public abstract blacklist superDoAnimationFrame()V
.end method
