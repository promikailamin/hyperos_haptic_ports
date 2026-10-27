.class public Lcom/android/server/media/MediaRouterService$AudioRoutesObserverImpl;
.super Landroid/media/IAudioRoutesObserver$Stub;
.source "MediaRouterService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/MediaRouterService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRouterService;)V
    .registers 2

    .line 2152
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$AudioRoutesObserverImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-direct {p0}, Landroid/media/IAudioRoutesObserver$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/MediaRouterService;Lcom/android/server/media/MediaRouterService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaRouterService$AudioRoutesObserverImpl;-><init>(Lcom/android/server/media/MediaRouterService;)V

    return-void
.end method


# virtual methods
.method public dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
    .registers 6

    .line 2161
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$AudioRoutesObserverImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v0}, Lcom/android/server/media/MediaRouterService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaRouterService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2162
    :try_start_7
    iget v1, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$AudioRoutesObserverImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    iget v2, p0, Lcom/android/server/media/MediaRouterService;->mAudioRouteMainType:I

    if-eq v1, v2, :cond_27

    and-int/lit8 v2, v1, 0x13

    const/4 v3, 0x0

    if-nez v2, :cond_23

    .line 2165
    iget-object p1, p1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    if-nez p1, :cond_1f

    iget-object p1, p0, Lcom/android/server/media/MediaRouterService;->mActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_20

    goto :goto_1f

    :catchall_1d
    move-exception p0

    goto :goto_29

    :cond_1f
    :goto_1f
    const/4 v3, 0x1

    :cond_20
    iput-boolean v3, p0, Lcom/android/server/media/MediaRouterService;->mGlobalBluetoothA2dpOn:Z

    goto :goto_25

    .line 2169
    :cond_23
    iput-boolean v3, p0, Lcom/android/server/media/MediaRouterService;->mGlobalBluetoothA2dpOn:Z

    .line 2171
    :goto_25
    iput v1, p0, Lcom/android/server/media/MediaRouterService;->mAudioRouteMainType:I

    .line 2176
    :cond_27
    monitor-exit v0

    return-void

    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_1d

    throw p0
.end method
