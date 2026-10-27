.class public interface abstract Lcom/android/server/wm/MiuiMultiWinSplitStub;
.super Ljava/lang/Object;
.source "MiuiMultiWinSplitStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/wm/MiuiMultiWinSplitStub;
    .registers 1

    .line 9
    const-class v0, Lcom/android/server/wm/MiuiMultiWinSplitStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/MiuiMultiWinSplitStub;

    return-object v0
.end method


# virtual methods
.method public abstract getMiuiMultiWinSplitService()Landroid/os/IBinder;
.end method

.method public abstract init(Lcom/android/server/wm/ActivityTaskManagerService;)V
.end method
