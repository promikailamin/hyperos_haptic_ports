.class public Lcom/android/server/media/AudioManagerRouteController$AudioDeviceCallbackImpl;
.super Landroid/media/AudioDeviceCallback;
.source "AudioManagerRouteController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/AudioManagerRouteController;


# direct methods
.method public constructor <init>(Lcom/android/server/media/AudioManagerRouteController;)V
    .registers 2

    .line 937
    iput-object p1, p0, Lcom/android/server/media/AudioManagerRouteController$AudioDeviceCallbackImpl;->this$0:Lcom/android/server/media/AudioManagerRouteController;

    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/AudioManagerRouteController;Lcom/android/server/media/AudioManagerRouteController-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/AudioManagerRouteController$AudioDeviceCallbackImpl;-><init>(Lcom/android/server/media/AudioManagerRouteController;)V

    return-void
.end method


# virtual methods
.method public onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .registers 6

    .line 941
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2c

    aget-object v2, p1, v1

    .line 942
    invoke-static {}, Lcom/android/server/media/AudioManagerRouteController;->-$$Nest$sfgetAUDIO_DEVICE_INFO_TYPE_TO_ROUTE_INFO()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 947
    iget-object p1, p0, Lcom/android/server/media/AudioManagerRouteController$AudioDeviceCallbackImpl;->this$0:Lcom/android/server/media/AudioManagerRouteController;

    invoke-static {p1}, Lcom/android/server/media/AudioManagerRouteController;->-$$Nest$fgetmAudioManager(Lcom/android/server/media/AudioManagerRouteController;)Landroid/media/AudioManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController$AudioDeviceCallbackImpl;->this$0:Lcom/android/server/media/AudioManagerRouteController;

    invoke-static {v0}, Lcom/android/server/media/AudioManagerRouteController;->-$$Nest$fgetmStrategyForMedia(Lcom/android/server/media/AudioManagerRouteController;)Landroid/media/audiopolicy/AudioProductStrategy;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->removePreferredDeviceForStrategy(Landroid/media/audiopolicy/AudioProductStrategy;)Z

    .line 948
    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController$AudioDeviceCallbackImpl;->this$0:Lcom/android/server/media/AudioManagerRouteController;

    invoke-static {p0}, Lcom/android/server/media/AudioManagerRouteController;->-$$Nest$mrebuildAvailableRoutesAndNotify(Lcom/android/server/media/AudioManagerRouteController;)V

    return-void

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2c
    return-void
.end method

.method public onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .registers 6

    .line 961
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_1d

    aget-object v2, p1, v1

    .line 962
    invoke-static {}, Lcom/android/server/media/AudioManagerRouteController;->-$$Nest$sfgetAUDIO_DEVICE_INFO_TYPE_TO_ROUTE_INFO()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 963
    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController$AudioDeviceCallbackImpl;->this$0:Lcom/android/server/media/AudioManagerRouteController;

    invoke-static {p0}, Lcom/android/server/media/AudioManagerRouteController;->-$$Nest$mrebuildAvailableRoutesAndNotify(Lcom/android/server/media/AudioManagerRouteController;)V

    return-void

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1d
    return-void
.end method
