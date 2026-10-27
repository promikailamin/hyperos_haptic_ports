.class final Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;
.super Landroid/view/IDisplayWindowListener$Stub;
.source "CameraServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/camera/CameraServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayWindowListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/camera/CameraServiceProxy;


# direct methods
.method private constructor <init>(Lcom/android/server/camera/CameraServiceProxy;)V
    .registers 2

    .line 296
    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-direct {p0}, Landroid/view/IDisplayWindowListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/camera/CameraServiceProxy;Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;-><init>(Lcom/android/server/camera/CameraServiceProxy;)V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 312
    return-void
.end method

.method public onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .registers 7
    .param p1, "displayId"    # I
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 300
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-static {v0}, Lcom/android/server/camera/CameraServiceProxy;->-$$Nest$mgetCameraServiceRawLocked(Lcom/android/server/camera/CameraServiceProxy;)Landroid/hardware/ICameraService;

    move-result-object v0

    .line 301
    .local v0, "cs":Landroid/hardware/ICameraService;
    if-nez v0, :cond_9

    return-void

    .line 304
    :cond_9
    :try_start_9
    invoke-interface {v0}, Landroid/hardware/ICameraService;->notifyDisplayConfigurationChange()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_d

    .line 308
    goto :goto_26

    .line 305
    :catch_d
    move-exception v1

    .line 306
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not notify cameraserver, remote exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CameraService_proxy"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_26
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 315
    return-void
.end method

.method public onFixedRotationFinished(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 321
    return-void
.end method

.method public onFixedRotationStarted(II)V
    .registers 3
    .param p1, "displayId"    # I
    .param p2, "newRotation"    # I

    .line 318
    return-void
.end method

.method public onKeepClearAreasChanged(ILjava/util/List;Ljava/util/List;)V
    .registers 4
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 325
    .local p2, "restricted":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .local p3, "unrestricted":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    return-void
.end method
