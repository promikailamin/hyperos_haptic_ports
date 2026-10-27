.class public Lcom/xiaomi/mirror/IMirrorService$Default;
.super Ljava/lang/Object;
.source "IMirrorService.java"

# interfaces
.implements Lcom/xiaomi/mirror/IMirrorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/IMirrorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addMirrorStateListener(Lcom/xiaomi/mirror/IMirrorStateListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/xiaomi/mirror/IMirrorStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist cancelCurrentDrag()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist cancelDragAndDrop(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "dragToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public blacklist grantUriPermissionsToPackage(Ljava/util/List;ILjava/lang/String;II)V
    .registers 6
    .param p2, "sourceUid"    # I
    .param p3, "targetPkg"    # Ljava/lang/String;
    .param p4, "targetUserId"    # I
    .param p5, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;I",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    return-void
.end method

.method public blacklist injectDragEvent(IIFF)V
    .registers 5
    .param p1, "action"    # I
    .param p2, "displayId"    # I
    .param p3, "newX"    # F
    .param p4, "newY"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public blacklist isInMouseShareMode()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist notifyMouseShareModeState(Z)V
    .registers 2
    .param p1, "isInMouseShareMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    return-void
.end method

.method public blacklist notifyShadowImage(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "shadowImage"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    return-void
.end method

.method public blacklist onRemoteMenuActionCall(Lcom/xiaomi/mirror/MirrorMenu;I)V
    .registers 3
    .param p1, "menu"    # Lcom/xiaomi/mirror/MirrorMenu;
    .param p2, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public blacklist performDrag(Landroid/view/IWindow;IILandroid/content/ClipData;Landroid/graphics/Bitmap;)Landroid/os/IBinder;
    .registers 7
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "flags"    # I
    .param p3, "sourceDisplayId"    # I
    .param p4, "data"    # Landroid/content/ClipData;
    .param p5, "shadow"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist registerCursorPositionChangedListener(Lcom/xiaomi/mirror/ICursorPositionChangedListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/xiaomi/mirror/ICursorPositionChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    return-void
.end method

.method public blacklist registerDelegate(Lcom/xiaomi/mirror/IMirrorDelegate;Ljava/lang/String;)V
    .registers 3
    .param p1, "delegate"    # Lcom/xiaomi/mirror/IMirrorDelegate;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public blacklist registerDragListener(Lcom/xiaomi/mirror/IDragListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/xiaomi/mirror/IDragListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    return-void
.end method

.method public blacklist removeMirrorStateListener(Lcom/xiaomi/mirror/IMirrorStateListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/xiaomi/mirror/IMirrorStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public blacklist reportDropResult(Landroid/view/IWindow;Z)V
    .registers 3
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "consumed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public blacklist revokePermissions(Landroid/content/ClipData;I)V
    .registers 3
    .param p1, "data"    # Landroid/content/ClipData;
    .param p2, "sourceUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist setDragAcceptable(Z)V
    .registers 2
    .param p1, "acceptable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method

.method public blacklist setDragSurfaceVisible(Z)Z
    .registers 3
    .param p1, "visible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setFinishAnimatorNeeded(Z)V
    .registers 2
    .param p1, "needFinishAnimator"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    return-void
.end method

.method public blacklist unregisterCursorPositionChangedListener(Lcom/xiaomi/mirror/ICursorPositionChangedListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/xiaomi/mirror/ICursorPositionChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public blacklist unregisterDelegate(Lcom/xiaomi/mirror/IMirrorDelegate;)V
    .registers 2
    .param p1, "delegate"    # Lcom/xiaomi/mirror/IMirrorDelegate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist unregisterDragListener(Lcom/xiaomi/mirror/IDragListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/xiaomi/mirror/IDragListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    return-void
.end method

.method public blacklist updateShadow(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "shadow"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method
