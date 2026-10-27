.class final Landroid/hardware/camera2/CameraManager$FoldStateListener;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FoldStateListener"
.end annotation


# instance fields
.field private final blacklist mFoldedDeviceStates:[I

.field final synthetic blacklist this$0:Landroid/hardware/camera2/CameraManager;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/camera2/CameraManager;Landroid/content/Context;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;

    .line 170
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1070070

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->mFoldedDeviceStates:[I

    .line 173
    return-void
.end method

.method private blacklist handleStateChange(I)V
    .registers 8
    .param p1, "state"    # I

    .line 176
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->mFoldedDeviceStates:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    .line 177
    .local v0, "folded":Z
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-static {v1}, Landroid/hardware/camera2/CameraManager;->-$$Nest$fgetmLock(Landroid/hardware/camera2/CameraManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 178
    :try_start_d
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-static {v2, v0}, Landroid/hardware/camera2/CameraManager;->-$$Nest$fputmFoldedDeviceState(Landroid/hardware/camera2/CameraManager;Z)V

    .line 179
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v2, "invalidListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/hardware/camera2/CameraManager$DeviceStateListener;>;>;"
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-static {v3}, Landroid/hardware/camera2/CameraManager;->-$$Nest$fgetmDeviceStateListeners(Landroid/hardware/camera2/CameraManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 181
    .local v4, "listener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/hardware/camera2/CameraManager$DeviceStateListener;>;"
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/CameraManager$DeviceStateListener;

    .line 182
    .local v5, "callback":Landroid/hardware/camera2/CameraManager$DeviceStateListener;
    if-eqz v5, :cond_39

    .line 183
    invoke-interface {v5, v0}, Landroid/hardware/camera2/CameraManager$DeviceStateListener;->onDeviceStateChanged(Z)V

    goto :goto_3c

    .line 185
    :cond_39
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    .end local v4    # "listener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/hardware/camera2/CameraManager$DeviceStateListener;>;"
    .end local v5    # "callback":Landroid/hardware/camera2/CameraManager$DeviceStateListener;
    :goto_3c
    goto :goto_21

    .line 188
    :cond_3d
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4c

    .line 189
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-static {v3}, Landroid/hardware/camera2/CameraManager;->-$$Nest$fgetmDeviceStateListeners(Landroid/hardware/camera2/CameraManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 191
    .end local v2    # "invalidListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/hardware/camera2/CameraManager$DeviceStateListener;>;>;"
    :cond_4c
    monitor-exit v1

    .line 192
    return-void

    .line 191
    :catchall_4e
    move-exception v2

    monitor-exit v1
    :try_end_50
    .catchall {:try_start_d .. :try_end_50} :catchall_4e

    throw v2
.end method


# virtual methods
.method public final blacklist onBaseStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .line 196
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$FoldStateListener;->handleStateChange(I)V

    .line 197
    return-void
.end method

.method public final blacklist onStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .line 201
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$FoldStateListener;->handleStateChange(I)V

    .line 202
    return-void
.end method
