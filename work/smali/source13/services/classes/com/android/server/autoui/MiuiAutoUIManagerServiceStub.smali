.class public interface abstract Lcom/android/server/autoui/MiuiAutoUIManagerServiceStub;
.super Ljava/lang/Object;
.source "MiuiAutoUIManagerServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autoui/MiuiAutoUIManagerServiceStub$SingletonHolder;
    }
.end annotation


# direct methods
.method public static get()Lcom/android/server/autoui/MiuiAutoUIManagerServiceStub;
    .registers 1

    .line 32
    invoke-static {}, Lcom/android/server/autoui/MiuiAutoUIManagerServiceStubHead;->isAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 33
    const-class v0, Lcom/android/server/autoui/MiuiAutoUIManagerServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autoui/MiuiAutoUIManagerServiceStub;

    return-object v0

    .line 35
    :cond_f
    new-instance v0, Lcom/android/server/autoui/MiuiAutoUIManagerServiceStub$1;

    invoke-direct {v0}, Lcom/android/server/autoui/MiuiAutoUIManagerServiceStub$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowManagerService;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "atms"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p3, "wms"    # Lcom/android/server/wm/WindowManagerService;

    .line 42
    return-void
.end method

.method public onSystemReady()V
    .registers 1

    .line 44
    return-void
.end method
