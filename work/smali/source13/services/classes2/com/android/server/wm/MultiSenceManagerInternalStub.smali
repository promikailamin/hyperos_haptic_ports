.class public interface abstract Lcom/android/server/wm/MultiSenceManagerInternalStub;
.super Ljava/lang/Object;
.source "MultiSenceManagerInternalStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/MultiSenceManagerInternalStub$SingletonHolder;
    }
.end annotation


# direct methods
.method public static getInstance()Lcom/android/server/wm/MultiSenceManagerInternalStub;
    .registers 2

    .line 20
    const-string v0, "MultiSenceManagerInternalStub"

    const-string v1, "getInstance"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-static {}, Lcom/android/server/wm/MultiSenceManagerInternalStub$SingletonHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/wm/MultiSenceManagerInternalStub;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract updateScreenStatusWithFoucs(Lcom/android/server/wm/WindowState;)V
.end method
