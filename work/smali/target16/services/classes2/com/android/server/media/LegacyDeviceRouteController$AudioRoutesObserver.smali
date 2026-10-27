.class public Lcom/android/server/media/LegacyDeviceRouteController$AudioRoutesObserver;
.super Landroid/media/IAudioRoutesObserver$Stub;
.source "LegacyDeviceRouteController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/LegacyDeviceRouteController;


# direct methods
.method public constructor <init>(Lcom/android/server/media/LegacyDeviceRouteController;)V
    .registers 2

    .line 242
    iput-object p1, p0, Lcom/android/server/media/LegacyDeviceRouteController$AudioRoutesObserver;->this$0:Lcom/android/server/media/LegacyDeviceRouteController;

    invoke-direct {p0}, Landroid/media/IAudioRoutesObserver$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/LegacyDeviceRouteController;Lcom/android/server/media/LegacyDeviceRouteController-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/LegacyDeviceRouteController$AudioRoutesObserver;-><init>(Lcom/android/server/media/LegacyDeviceRouteController;)V

    return-void
.end method


# virtual methods
.method public dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
    .registers 4

    .line 246
    iget-object v0, p0, Lcom/android/server/media/LegacyDeviceRouteController$AudioRoutesObserver;->this$0:Lcom/android/server/media/LegacyDeviceRouteController;

    invoke-static {v0, p1}, Lcom/android/server/media/LegacyDeviceRouteController;->-$$Nest$mcreateRouteFromAudioInfo(Lcom/android/server/media/LegacyDeviceRouteController;Landroid/media/AudioRoutesInfo;)Landroid/media/MediaRoute2Info;

    move-result-object p1

    .line 247
    iget-object v0, p0, Lcom/android/server/media/LegacyDeviceRouteController$AudioRoutesObserver;->this$0:Lcom/android/server/media/LegacyDeviceRouteController;

    monitor-enter v0

    .line 248
    :try_start_9
    iget-object v1, p0, Lcom/android/server/media/LegacyDeviceRouteController$AudioRoutesObserver;->this$0:Lcom/android/server/media/LegacyDeviceRouteController;

    invoke-static {v1, p1}, Lcom/android/server/media/LegacyDeviceRouteController;->-$$Nest$fputmDeviceRoute(Lcom/android/server/media/LegacyDeviceRouteController;Landroid/media/MediaRoute2Info;)V

    .line 249
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_15

    .line 250
    iget-object p0, p0, Lcom/android/server/media/LegacyDeviceRouteController$AudioRoutesObserver;->this$0:Lcom/android/server/media/LegacyDeviceRouteController;

    invoke-static {p0}, Lcom/android/server/media/LegacyDeviceRouteController;->-$$Nest$mnotifyDeviceRouteUpdate(Lcom/android/server/media/LegacyDeviceRouteController;)V

    return-void

    :catchall_15
    move-exception p0

    .line 249
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p0
.end method
