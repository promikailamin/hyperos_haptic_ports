.class public interface abstract Lcom/android/server/media/MediaSessionServiceStub;
.super Ljava/lang/Object;
.source "MediaSessionServiceStub.java"


# direct methods
.method public static get()Lcom/android/server/media/MediaSessionServiceStub;
    .registers 1

    .line 11
    const-class v0, Lcom/android/server/media/MediaSessionServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaSessionServiceStub;

    return-object v0
.end method


# virtual methods
.method public abstract notifyPowerKeeperKeyEvent(ILandroid/view/KeyEvent;)V
.end method

.method public startVoiceAssistant(Landroid/content/Context;)Z
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 15
    const/4 v0, 0x0

    return v0
.end method
