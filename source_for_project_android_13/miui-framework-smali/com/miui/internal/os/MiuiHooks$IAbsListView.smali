.class public interface abstract Lcom/miui/internal/os/MiuiHooks$IAbsListView;
.super Ljava/lang/Object;
.source "MiuiHooks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/os/MiuiHooks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IAbsListView"
.end annotation


# virtual methods
.method public abstract blacklist isUsingMiuiTheme()Z
.end method

.method public abstract blacklist newAbsListViewOverFlingRunnable()Lcom/miui/internal/os/MiuiHooks$IAbsListViewOverFlingRunnable;
.end method

.method public abstract blacklist overScrollBy(IIIIIIIIZ)Z
.end method

.method public abstract blacklist setDefaultOverflingDistance(I)V
.end method

.method public abstract blacklist setDefaultOverscrollDistance(I)V
.end method

.method public abstract blacklist setEdgeGlowBottom(Landroid/widget/EdgeEffect;)V
.end method

.method public abstract blacklist setEdgeGlowTop(Landroid/widget/EdgeEffect;)V
.end method

.method public abstract blacklist setOverFlingRunnable(Lcom/miui/internal/os/MiuiHooks$IAbsListViewOverFlingRunnable;)V
.end method

.method public abstract blacklist setUsingMiuiTheme(Z)V
.end method

.method public abstract blacklist superOverScrollBy(IIIIIIIIZ)Z
.end method
