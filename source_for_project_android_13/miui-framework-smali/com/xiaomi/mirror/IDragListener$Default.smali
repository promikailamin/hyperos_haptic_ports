.class public Lcom/xiaomi/mirror/IDragListener$Default;
.super Ljava/lang/Object;
.source "IDragListener.java"

# interfaces
.implements Lcom/xiaomi/mirror/IDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/IDragListener;
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

    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onDragFinish(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "dragResult"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public blacklist onDragStart(Landroid/content/ClipData;IIILandroid/graphics/Bitmap;)V
    .registers 6
    .param p1, "data"    # Landroid/content/ClipData;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "flag"    # I
    .param p5, "shadowImage"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method
