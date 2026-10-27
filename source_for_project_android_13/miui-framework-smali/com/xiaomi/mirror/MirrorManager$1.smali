.class Lcom/xiaomi/mirror/MirrorManager$1;
.super Landroid/os/Binder;
.source "MirrorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/MirrorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/xiaomi/mirror/MirrorManager;


# direct methods
.method constructor blacklist <init>(Lcom/xiaomi/mirror/MirrorManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/xiaomi/mirror/MirrorManager;

    .line 413
    iput-object p1, p0, Lcom/xiaomi/mirror/MirrorManager$1;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 417
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_38

    .line 433
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 425
    :pswitch_9
    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorManager$1;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    invoke-static {v1}, Lcom/xiaomi/mirror/MirrorManager;->-$$Nest$fgetSERVICE_mBinder_DESCRIPTOR(Lcom/xiaomi/mirror/MirrorManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 427
    .local v1, "secureStatus":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 428
    .local v2, "secureDisplayId":I
    iget-object v3, p0, Lcom/xiaomi/mirror/MirrorManager$1;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    invoke-static {v3, v1, v2}, Lcom/xiaomi/mirror/MirrorManager;->-$$Nest$msendSecureWin(Lcom/xiaomi/mirror/MirrorManager;II)V

    .line 429
    return v0

    .line 419
    .end local v1    # "secureStatus":I
    .end local v2    # "secureDisplayId":I
    :pswitch_20
    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorManager$1;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    invoke-static {v1}, Lcom/xiaomi/mirror/MirrorManager;->-$$Nest$fgetSERVICE_mBinder_DESCRIPTOR(Lcom/xiaomi/mirror/MirrorManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 421
    .local v1, "inputStatus":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 422
    .local v2, "inputDisplayId":I
    iget-object v3, p0, Lcom/xiaomi/mirror/MirrorManager$1;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    invoke-static {v3, v1, v2}, Lcom/xiaomi/mirror/MirrorManager;->-$$Nest$msendAcceptInput(Lcom/xiaomi/mirror/MirrorManager;II)V

    .line 423
    return v0

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_20
        :pswitch_9
    .end packed-switch
.end method
