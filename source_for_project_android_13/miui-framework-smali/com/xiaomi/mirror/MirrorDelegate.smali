.class public abstract Lcom/xiaomi/mirror/MirrorDelegate;
.super Ljava/lang/Object;
.source "MirrorDelegate.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist onAcceptableChanged(IZ)V
.end method

.method public abstract blacklist onDelegatePermissionReleased(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract blacklist onDragResult(Z)V
.end method

.method public abstract blacklist onDragStart(Landroid/content/ClipData;III)V
.end method

.method public abstract blacklist onPointerIconChanged(ILandroid/view/PointerIcon;)V
.end method

.method public abstract blacklist onRemoteMenuActionCall(Lcom/xiaomi/mirror/MirrorMenu;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onShadowChanged(Landroid/graphics/Bitmap;)V
.end method

.method public abstract blacklist tryToShareDrag(Ljava/lang/String;ILandroid/content/ClipData;)Z
.end method
