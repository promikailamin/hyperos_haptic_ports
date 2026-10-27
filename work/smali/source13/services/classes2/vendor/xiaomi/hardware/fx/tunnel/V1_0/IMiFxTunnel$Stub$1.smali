.class Lvendor/xiaomi/hardware/fx/tunnel/V1_0/IMiFxTunnel$Stub$1;
.super Ljava/lang/Object;
.source "IMiFxTunnel.java"

# interfaces
.implements Lvendor/xiaomi/hardware/fx/tunnel/V1_0/IMiFxTunnel$invokeCommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/xiaomi/hardware/fx/tunnel/V1_0/IMiFxTunnel$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/xiaomi/hardware/fx/tunnel/V1_0/IMiFxTunnel$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Lvendor/xiaomi/hardware/fx/tunnel/V1_0/IMiFxTunnel$Stub;Landroid/os/HwParcel;)V
    .registers 3
    .param p1, "this$0"    # Lvendor/xiaomi/hardware/fx/tunnel/V1_0/IMiFxTunnel$Stub;

    .line 565
    iput-object p1, p0, Lvendor/xiaomi/hardware/fx/tunnel/V1_0/IMiFxTunnel$Stub$1;->this$0:Lvendor/xiaomi/hardware/fx/tunnel/V1_0/IMiFxTunnel$Stub;

    iput-object p2, p0, Lvendor/xiaomi/hardware/fx/tunnel/V1_0/IMiFxTunnel$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ILjava/util/ArrayList;)V
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

    .line 568
    .local p2, "out_buf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lvendor/xiaomi/hardware/fx/tunnel/V1_0/IMiFxTunnel$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 569
    iget-object v0, p0, Lvendor/xiaomi/hardware/fx/tunnel/V1_0/IMiFxTunnel$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 570
    iget-object v0, p0, Lvendor/xiaomi/hardware/fx/tunnel/V1_0/IMiFxTunnel$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 571
    iget-object v0, p0, Lvendor/xiaomi/hardware/fx/tunnel/V1_0/IMiFxTunnel$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 572
    return-void
.end method
