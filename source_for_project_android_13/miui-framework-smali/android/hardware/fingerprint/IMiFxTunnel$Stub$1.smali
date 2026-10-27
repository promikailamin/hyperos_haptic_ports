.class Landroid/hardware/fingerprint/IMiFxTunnel$Stub$1;
.super Ljava/lang/Object;
.source "IMiFxTunnel.java"

# interfaces
.implements Landroid/hardware/fingerprint/IMiFxTunnel$invokeCommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/fingerprint/IMiFxTunnel$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/fingerprint/IMiFxTunnel$Stub;

.field final synthetic blacklist val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/fingerprint/IMiFxTunnel$Stub;Landroid/os/HwParcel;)V
    .registers 3
    .param p1, "this$0"    # Landroid/hardware/fingerprint/IMiFxTunnel$Stub;

    .line 561
    iput-object p1, p0, Landroid/hardware/fingerprint/IMiFxTunnel$Stub$1;->this$0:Landroid/hardware/fingerprint/IMiFxTunnel$Stub;

    iput-object p2, p0, Landroid/hardware/fingerprint/IMiFxTunnel$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onValues(ILjava/util/ArrayList;)V
    .registers 5
    .param p1, "resultCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 564
    .local p2, "out_buf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Landroid/hardware/fingerprint/IMiFxTunnel$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 565
    iget-object v0, p0, Landroid/hardware/fingerprint/IMiFxTunnel$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 566
    iget-object v0, p0, Landroid/hardware/fingerprint/IMiFxTunnel$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 567
    iget-object v0, p0, Landroid/hardware/fingerprint/IMiFxTunnel$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 568
    return-void
.end method
