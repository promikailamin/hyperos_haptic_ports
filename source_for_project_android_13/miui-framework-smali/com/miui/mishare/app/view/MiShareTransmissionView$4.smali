.class Lcom/miui/mishare/app/view/MiShareTransmissionView$4;
.super Ljava/lang/Object;
.source "MiShareTransmissionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/mishare/app/view/MiShareTransmissionView;->send(Lcom/miui/mishare/app/model/MiShareDevice;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

.field final synthetic blacklist val$device:Lcom/miui/mishare/app/model/MiShareDevice;

.field final synthetic blacklist val$deviceX:I

.field final synthetic blacklist val$deviceY:I


# direct methods
.method constructor blacklist <init>(Lcom/miui/mishare/app/view/MiShareTransmissionView;Lcom/miui/mishare/app/model/MiShareDevice;II)V
    .registers 5
    .param p1, "this$0"    # Lcom/miui/mishare/app/view/MiShareTransmissionView;

    .line 666
    iput-object p1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$4;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    iput-object p2, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$4;->val$device:Lcom/miui/mishare/app/model/MiShareDevice;

    iput p3, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$4;->val$deviceX:I

    iput p4, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$4;->val$deviceY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 6

    .line 669
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 670
    .local v0, "filesToClean":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 671
    .local v1, "files":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v2, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$4;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    invoke-static {v2}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->-$$Nest$fgetmFiles(Lcom/miui/mishare/app/view/MiShareTransmissionView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 672
    .local v3, "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$4;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    invoke-virtual {v4}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/miui/mishare/app/util/MiShareFileHelper;->isFileImageOverview(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 673
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 675
    :cond_30
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 677
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_33
    goto :goto_14

    .line 678
    :cond_34
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_47

    .line 679
    iget-object v2, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$4;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    invoke-virtual {v2}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/miui/securityshare/SecurityShareHelper;->cleanImageInfo(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 680
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 683
    :cond_47
    iget-object v2, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$4;->val$device:Lcom/miui/mishare/app/model/MiShareDevice;

    iput-object v1, v2, Lcom/miui/mishare/app/model/MiShareDevice;->files:Ljava/util/List;

    .line 685
    iget-object v2, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$4;->val$device:Lcom/miui/mishare/app/model/MiShareDevice;

    iget-object v2, v2, Lcom/miui/mishare/app/model/MiShareDevice;->files:Ljava/util/List;

    if-eqz v2, :cond_87

    .line 686
    new-instance v2, Lcom/miui/mishare/MiShareTask;

    invoke-direct {v2}, Lcom/miui/mishare/MiShareTask;-><init>()V

    .line 687
    .local v2, "task":Lcom/miui/mishare/MiShareTask;
    iget-object v3, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$4;->val$device:Lcom/miui/mishare/app/model/MiShareDevice;

    iget-object v3, v3, Lcom/miui/mishare/app/model/MiShareDevice;->remoteDevice:Lcom/miui/mishare/RemoteDevice;

    iput-object v3, v2, Lcom/miui/mishare/MiShareTask;->device:Lcom/miui/mishare/RemoteDevice;

    .line 688
    iget-object v3, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$4;->val$device:Lcom/miui/mishare/app/model/MiShareDevice;

    iget-object v3, v3, Lcom/miui/mishare/app/model/MiShareDevice;->files:Ljava/util/List;

    invoke-static {v3}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getClipData(Ljava/util/List;)Landroid/content/ClipData;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/mishare/MiShareTask;->clipData:Landroid/content/ClipData;

    .line 689
    iget-object v3, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$4;->val$device:Lcom/miui/mishare/app/model/MiShareDevice;

    iget-object v3, v3, Lcom/miui/mishare/app/model/MiShareDevice;->taskId:Ljava/lang/String;

    iput-object v3, v2, Lcom/miui/mishare/MiShareTask;->taskId:Ljava/lang/String;

    .line 690
    iget v3, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$4;->val$deviceX:I

    iput v3, v2, Lcom/miui/mishare/MiShareTask;->deviceX:I

    .line 691
    iget v3, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$4;->val$deviceY:I

    iput v3, v2, Lcom/miui/mishare/MiShareTask;->deviceY:I

    .line 692
    iget-object v3, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$4;->val$device:Lcom/miui/mishare/app/model/MiShareDevice;

    iget-object v3, v3, Lcom/miui/mishare/app/model/MiShareDevice;->files:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, v2, Lcom/miui/mishare/MiShareTask;->count:I

    .line 694
    iget-object v3, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$4;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    invoke-static {v3}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->-$$Nest$fgetmConnectivity(Lcom/miui/mishare/app/view/MiShareTransmissionView;)Lcom/miui/mishare/app/connect/MiShareConnectivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->sendData(Lcom/miui/mishare/MiShareTask;)V

    .line 696
    .end local v2    # "task":Lcom/miui/mishare/MiShareTask;
    :cond_87
    return-void
.end method
