.class public interface abstract Lcom/android/server/wm/ProcessCompatControllerStub;
.super Ljava/lang/Object;
.source "ProcessCompatControllerStub.java"


# direct methods
.method public static newInstance()Lcom/android/server/wm/ProcessCompatControllerStub;
    .registers 1

    .line 15
    const-class v0, Lcom/android/server/wm/ProcessCompatControllerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ProcessCompatControllerStub;

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 34
    return-void
.end method

.method public getCompatConfiguration(Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .registers 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 21
    return-object p1
.end method

.method public abstract initBoundsCompatController(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowProcessController;)V
.end method

.method public isFixedAspectRatioEnabled()Z
    .registers 2

    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onSetThread()V
.end method

.method public abstract sendCompatState()V
.end method

.method public abstract updateConfiguration(Landroid/content/res/Configuration;)V
.end method
