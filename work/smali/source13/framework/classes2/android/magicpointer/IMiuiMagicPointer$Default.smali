.class public Landroid/magicpointer/IMiuiMagicPointer$Default;
.super Ljava/lang/Object;
.source "IMiuiMagicPointer.java"

# interfaces
.implements Landroid/magicpointer/IMiuiMagicPointer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/magicpointer/IMiuiMagicPointer;
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
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist removeMagicPointer(I)V
    .registers 2
    .param p1, "windowId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public blacklist setCustomPointerIcon(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist setPointerIcon(I)V
    .registers 2
    .param p1, "iconId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist updateMagicPointer(ILjava/util/List;)V
    .registers 3
    .param p1, "windowId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/magicpointer/MagicPointer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    .local p2, "points":Ljava/util/List;, "Ljava/util/List<Landroid/magicpointer/MagicPointer;>;"
    return-void
.end method

.method public blacklist updatePointerState(I)V
    .registers 2
    .param p1, "action"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method
