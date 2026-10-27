.class public interface abstract Landroid/view/VsyncRateControllerStub;
.super Ljava/lang/Object;
.source "VsyncRateControllerStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/VsyncRateControllerStub$ChoreographerStub;
    }
.end annotation


# direct methods
.method public static blacklist getInstance()Landroid/view/VsyncRateControllerStub;
    .registers 1

    .line 10
    const-class v0, Landroid/view/VsyncRateControllerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/VsyncRateControllerStub;

    return-object v0
.end method


# virtual methods
.method public abstract blacklist cancelSetVsyncRate()V
.end method

.method public abstract blacklist initialize(Landroid/view/ViewRootImpl;Landroid/view/VsyncRateControllerStub$ChoreographerStub;)V
.end method

.method public blacklist isEnabled()Z
    .registers 2

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public abstract blacklist onDisplayChanged(F)V
.end method

.method public abstract blacklist onInputEvent(Landroid/view/InputEvent;Landroid/view/View;Z)V
.end method

.method public abstract blacklist onWindowFocusChanged(Landroid/view/View;ZZ)V
.end method

.method public abstract blacklist onWindowModeChanged(II)V
.end method

.method public abstract blacklist resetVsyncRate()V
.end method

.method public abstract blacklist scheduleSetVsyncRateOnIdle(J)V
.end method

.method public abstract blacklist setVsyncRate(F)V
.end method

.method public abstract blacklist setVsyncRateDefault()V
.end method
