.class public interface abstract Lcom/miui/internal/os/MiuiHooks$IResources;
.super Ljava/lang/Object;
.source "MiuiHooks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/os/MiuiHooks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IResources"
.end annotation


# virtual methods
.method public abstract blacklist init()V
.end method

.method public abstract blacklist isPreloadOverlayed(I)Z
.end method

.method public abstract blacklist isPreloading()Z
.end method

.method public abstract blacklist loadOverlayDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract blacklist loadOverlayTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;
.end method

.method public abstract blacklist staticHooksClearPreloadedCache()V
.end method
