.class Lcom/android/server/media/SystemMediaRoute2Provider$1;
.super Landroid/media/IAudioRoutesObserver$Stub;
.source "SystemMediaRoute2Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/SystemMediaRoute2Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/SystemMediaRoute2Provider;


# direct methods
.method constructor <init>(Lcom/android/server/media/SystemMediaRoute2Provider;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 97
    iput-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider$1;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-direct {p0}, Landroid/media/IAudioRoutesObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
    .registers 4
    .param p1, "newRoutes"    # Landroid/media/AudioRoutesInfo;

    .line 100
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider$1;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-static {v0}, Lcom/android/server/media/SystemMediaRoute2Provider;->-$$Nest$fgetmHandler(Lcom/android/server/media/SystemMediaRoute2Provider;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/media/SystemMediaRoute2Provider$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/media/SystemMediaRoute2Provider$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider$1;Landroid/media/AudioRoutesInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 107
    return-void
.end method

.method synthetic lambda$dispatchAudioRoutesChanged$0$com-android-server-media-SystemMediaRoute2Provider$1(Landroid/media/AudioRoutesInfo;)V
    .registers 3
    .param p1, "newRoutes"    # Landroid/media/AudioRoutesInfo;

    .line 101
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider$1;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-static {v0, p1}, Lcom/android/server/media/SystemMediaRoute2Provider;->-$$Nest$mupdateDeviceRoute(Lcom/android/server/media/SystemMediaRoute2Provider;Landroid/media/AudioRoutesInfo;)V

    .line 102
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider$1;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-virtual {v0}, Lcom/android/server/media/SystemMediaRoute2Provider;->notifyProviderState()V

    .line 103
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider$1;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-virtual {v0}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateSessionInfosIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 104
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider$1;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-virtual {v0}, Lcom/android/server/media/SystemMediaRoute2Provider;->notifySessionInfoUpdated()V

    .line 106
    :cond_17
    return-void
.end method
