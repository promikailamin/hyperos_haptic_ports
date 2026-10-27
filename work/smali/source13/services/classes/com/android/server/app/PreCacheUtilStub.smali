.class public interface abstract Lcom/android/server/app/PreCacheUtilStub;
.super Ljava/lang/Object;
.source "PreCacheUtilStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/app/PreCacheUtilStub$SingletonHolder;
    }
.end annotation


# direct methods
.method public static getInstance()Lcom/android/server/app/PreCacheUtilStub;
    .registers 1

    .line 18
    invoke-static {}, Lcom/android/server/app/PreCacheUtilStub$SingletonHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/app/PreCacheUtilStub;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract registerPreCacheObserver(Landroid/content/Context;Landroid/os/Handler;)V
.end method
