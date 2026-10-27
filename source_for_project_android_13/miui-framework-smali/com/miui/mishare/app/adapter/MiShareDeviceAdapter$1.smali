.class Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$1;
.super Ljava/lang/Object;
.source "MiShareDeviceAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;


# direct methods
.method constructor blacklist <init>(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    .line 73
    iput-object p1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$1;->this$0:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 76
    iget-object v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$1;->this$0:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    invoke-static {v0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->-$$Nest$fgetmStopSort(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;)Z

    move-result v0

    if-nez v0, :cond_69

    iget-object v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$1;->this$0:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    invoke-static {v0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->-$$Nest$fgetmDevices(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$1;->this$0:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    invoke-static {v0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->-$$Nest$fgetmDevices(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_69

    .line 77
    sget-object v0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->sLastSendDevice:Landroid/util/Pair;

    if-eqz v0, :cond_3a

    sget-object v0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->sLastSendDevice:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 78
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3a

    .line 79
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->setLastSendDevice(Landroid/util/Pair;)V

    .line 82
    :cond_3a
    iget-object v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$1;->this$0:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    invoke-static {v0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->-$$Nest$fgetmDevices(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->-$$Nest$mstoreDevice(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 84
    .local v0, "oldDevices":Ljava/util/List;, "Ljava/util/List<Lcom/miui/mishare/app/model/MiShareDevice;>;"
    iget-object v1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$1;->this$0:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    invoke-static {v1}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->-$$Nest$fgetmDevices(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$1;->this$0:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    invoke-static {v2}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->-$$Nest$fgetmComparator(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;)Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$DeviceRssiComparator;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 86
    iget-object v1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$1;->this$0:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    invoke-static {v1}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->-$$Nest$fgetmDevices(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->-$$Nest$misNeedNotify(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 87
    iget-object v1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$1;->this$0:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    invoke-virtual {v1}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->notifyDataSetChanged()V

    .line 90
    :cond_64
    iget-object v1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$1;->this$0:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    invoke-static {v1}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->-$$Nest$mstartSort(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;)V

    .line 92
    .end local v0    # "oldDevices":Ljava/util/List;, "Ljava/util/List<Lcom/miui/mishare/app/model/MiShareDevice;>;"
    :cond_69
    return-void
.end method
