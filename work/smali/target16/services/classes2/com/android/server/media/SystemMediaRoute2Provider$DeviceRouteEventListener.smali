.class public Lcom/android/server/media/SystemMediaRoute2Provider$DeviceRouteEventListener;
.super Ljava/lang/Object;
.source "SystemMediaRoute2Provider.java"

# interfaces
.implements Lcom/android/server/media/DeviceRouteController$EventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/SystemMediaRoute2Provider;


# direct methods
.method public static synthetic $r8$lambda$ZOmSu51UNWgv3S-c-RG9YCqUS7s(Lcom/android/server/media/SystemMediaRoute2Provider$DeviceRouteEventListener;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider$DeviceRouteEventListener;->lambda$onDeviceRouteChanged$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/media/SystemMediaRoute2Provider;)V
    .registers 2

    .line 685
    iput-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider$DeviceRouteEventListener;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/SystemMediaRoute2Provider;Lcom/android/server/media/SystemMediaRoute2Provider-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/SystemMediaRoute2Provider$DeviceRouteEventListener;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider;)V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onDeviceRouteChanged$0()V
    .registers 2

    .line 691
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider$DeviceRouteEventListener;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-virtual {v0}, Lcom/android/server/media/SystemMediaRoute2Provider;->publishProviderState()V

    .line 692
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider$DeviceRouteEventListener;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-virtual {v0}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateSessionInfosIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 693
    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider$DeviceRouteEventListener;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->notifyGlobalSessionInfoUpdated()V

    :cond_12
    return-void
.end method

.method public onDeviceRouteChanged()V
    .registers 3

    .line 689
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider$DeviceRouteEventListener;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    iget-object v0, v0, Lcom/android/server/media/SystemMediaRoute2Provider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/media/SystemMediaRoute2Provider$DeviceRouteEventListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/media/SystemMediaRoute2Provider$DeviceRouteEventListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider$DeviceRouteEventListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDeviceRouteRequestFailed(JI)V
    .registers 4

    .line 700
    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider$DeviceRouteEventListener;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaRoute2Provider;->notifyRequestFailed(JI)V

    return-void
.end method
