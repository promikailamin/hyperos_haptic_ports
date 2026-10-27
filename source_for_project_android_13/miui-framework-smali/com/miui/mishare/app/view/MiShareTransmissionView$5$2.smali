.class Lcom/miui/mishare/app/view/MiShareTransmissionView$5$2;
.super Ljava/lang/Object;
.source "MiShareTransmissionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/mishare/app/view/MiShareTransmissionView$5;->onDeviceUpdated(Lcom/miui/mishare/RemoteDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/miui/mishare/app/view/MiShareTransmissionView$5;

.field final synthetic blacklist val$remoteDevice:Lcom/miui/mishare/RemoteDevice;


# direct methods
.method constructor blacklist <init>(Lcom/miui/mishare/app/view/MiShareTransmissionView$5;Lcom/miui/mishare/RemoteDevice;)V
    .registers 3
    .param p1, "this$1"    # Lcom/miui/mishare/app/view/MiShareTransmissionView$5;

    .line 910
    iput-object p1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5$2;->this$1:Lcom/miui/mishare/app/view/MiShareTransmissionView$5;

    iput-object p2, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5$2;->val$remoteDevice:Lcom/miui/mishare/RemoteDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 7

    .line 913
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5$2;->val$remoteDevice:Lcom/miui/mishare/RemoteDevice;

    if-eqz v0, :cond_aa

    invoke-virtual {v0}, Lcom/miui/mishare/RemoteDevice;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_c

    goto/16 :goto_aa

    .line 917
    :cond_c
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5$2;->val$remoteDevice:Lcom/miui/mishare/RemoteDevice;

    invoke-virtual {v0}, Lcom/miui/mishare/RemoteDevice;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 918
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 919
    const-string v1, "sgnt"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 920
    .local v1, "guidingType":I
    new-instance v2, Lcom/miui/mishare/app/model/MiShareDevice;

    invoke-direct {v2, v1}, Lcom/miui/mishare/app/model/MiShareDevice;-><init>(I)V

    .line 921
    .local v2, "device":Lcom/miui/mishare/app/model/MiShareDevice;
    iget-object v3, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5$2;->val$remoteDevice:Lcom/miui/mishare/RemoteDevice;

    iput-object v3, v2, Lcom/miui/mishare/app/model/MiShareDevice;->remoteDevice:Lcom/miui/mishare/RemoteDevice;

    .line 922
    iget-object v3, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5$2;->val$remoteDevice:Lcom/miui/mishare/RemoteDevice;

    invoke-virtual {v3}, Lcom/miui/mishare/RemoteDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/mishare/app/model/MiShareDevice;->deviceId:Ljava/lang/String;

    .line 923
    const-string v3, "model"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/mishare/app/model/MiShareDevice;->deviceModelName:Ljava/lang/String;

    .line 924
    iget-object v3, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5$2;->this$1:Lcom/miui/mishare/app/view/MiShareTransmissionView$5;

    iget-object v3, v3, Lcom/miui/mishare/app/view/MiShareTransmissionView$5;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    const-string v4, "mc"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v4

    invoke-static {v3, v4}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->-$$Nest$mgetDeviceType(Lcom/miui/mishare/app/view/MiShareTransmissionView;B)I

    move-result v3

    iput v3, v2, Lcom/miui/mishare/app/model/MiShareDevice;->deviceType:I

    .line 925
    const-string v3, "nickname"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/mishare/app/model/MiShareDevice;->deviceName:Ljava/lang/String;

    .line 926
    const-string v3, "uwb_hit"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/miui/mishare/app/model/MiShareDevice;->isUwbHit:Z

    .line 927
    const-string v3, "uwb_rank"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/miui/mishare/app/model/MiShareDevice;->uwbRank:I

    .line 928
    const-string v3, "global_device"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/miui/mishare/app/model/MiShareDevice;->isGlobalDevice:Z

    .line 929
    const-string v3, "verdor_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/miui/mishare/app/model/MiShareDevice;->vendorId:I

    .line 930
    iget-boolean v3, v2, Lcom/miui/mishare/app/model/MiShareDevice;->isGlobalDevice:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_7b

    .line 931
    iput v4, v2, Lcom/miui/mishare/app/model/MiShareDevice;->deviceType:I

    .line 934
    :cond_7b
    iget-object v3, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5$2;->this$1:Lcom/miui/mishare/app/view/MiShareTransmissionView$5;

    iget-object v3, v3, Lcom/miui/mishare/app/view/MiShareTransmissionView$5;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    invoke-static {v3}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->-$$Nest$fgetmMiShareDisabled(Lcom/miui/mishare/app/view/MiShareTransmissionView;)Landroid/view/View;

    move-result-object v3

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 935
    iget-object v3, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5$2;->this$1:Lcom/miui/mishare/app/view/MiShareTransmissionView$5;

    iget-object v3, v3, Lcom/miui/mishare/app/view/MiShareTransmissionView$5;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    invoke-static {v3}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->-$$Nest$fgetmDeviceLv(Lcom/miui/mishare/app/view/MiShareTransmissionView;)Lcom/android/internal/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/RecyclerView;->setVisibility(I)V

    .line 937
    iget-object v3, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5$2;->this$1:Lcom/miui/mishare/app/view/MiShareTransmissionView$5;

    iget-object v3, v3, Lcom/miui/mishare/app/view/MiShareTransmissionView$5;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    invoke-static {v3}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->-$$Nest$fgetmAdapter(Lcom/miui/mishare/app/view/MiShareTransmissionView;)Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->addOrUpdateDevice(Lcom/miui/mishare/app/model/MiShareDevice;)V

    .line 938
    iget-object v3, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5$2;->this$1:Lcom/miui/mishare/app/view/MiShareTransmissionView$5;

    iget-object v3, v3, Lcom/miui/mishare/app/view/MiShareTransmissionView$5;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    invoke-static {v3}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->-$$Nest$fgetmAdapter(Lcom/miui/mishare/app/view/MiShareTransmissionView;)Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->notifyDataSetChanged()V

    .line 939
    return-void

    .line 914
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "guidingType":I
    .end local v2    # "device":Lcom/miui/mishare/app/model/MiShareDevice;
    :cond_aa
    :goto_aa
    return-void
.end method
