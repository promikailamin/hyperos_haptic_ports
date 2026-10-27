.class final Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$DeviceRssiComparator;
.super Ljava/lang/Object;
.source "MiShareDeviceAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeviceRssiComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/miui/mishare/app/model/MiShareDevice;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;


# direct methods
.method private constructor blacklist <init>(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;)V
    .registers 2

    .line 419
    iput-object p1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$DeviceRssiComparator;->this$0:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$DeviceRssiComparator-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$DeviceRssiComparator;-><init>(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;)V

    return-void
.end method


# virtual methods
.method public blacklist compare(Lcom/miui/mishare/app/model/MiShareDevice;Lcom/miui/mishare/app/model/MiShareDevice;)I
    .registers 9
    .param p1, "arg0"    # Lcom/miui/mishare/app/model/MiShareDevice;
    .param p2, "arg1"    # Lcom/miui/mishare/app/model/MiShareDevice;

    .line 422
    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_9e

    if-nez p2, :cond_9

    goto/16 :goto_9e

    .line 432
    :cond_9
    invoke-static {}, Lcom/miui/mishare/DeviceModel;->supportUwb()Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-boolean v3, p1, Lcom/miui/mishare/app/model/MiShareDevice;->isUwbHit:Z

    if-nez v3, :cond_17

    iget-boolean v3, p2, Lcom/miui/mishare/app/model/MiShareDevice;->isUwbHit:Z

    if-eqz v3, :cond_2a

    .line 433
    :cond_17
    iget-boolean v2, p2, Lcom/miui/mishare/app/model/MiShareDevice;->isUwbHit:Z

    if-nez v2, :cond_1c

    .line 434
    return v1

    .line 435
    :cond_1c
    iget-boolean v1, p1, Lcom/miui/mishare/app/model/MiShareDevice;->isUwbHit:Z

    if-nez v1, :cond_21

    .line 436
    return v0

    .line 438
    :cond_21
    iget v0, p1, Lcom/miui/mishare/app/model/MiShareDevice;->uwbRank:I

    iget v1, p2, Lcom/miui/mishare/app/model/MiShareDevice;->uwbRank:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0

    .line 441
    :cond_2a
    iget-boolean v3, p1, Lcom/miui/mishare/app/model/MiShareDevice;->isGlobalDevice:Z

    if-nez v3, :cond_93

    iget-boolean v3, p2, Lcom/miui/mishare/app/model/MiShareDevice;->isGlobalDevice:Z

    if-eqz v3, :cond_33

    goto :goto_93

    .line 450
    :cond_33
    sget-object v3, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->sLastSendDevice:Landroid/util/Pair;

    if-eqz v3, :cond_5a

    .line 451
    sget-object v3, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->sLastSendDevice:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, p1, Lcom/miui/mishare/app/model/MiShareDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 452
    .local v3, "b0":Z
    sget-object v4, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->sLastSendDevice:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, p2, Lcom/miui/mishare/app/model/MiShareDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 453
    .local v4, "b1":Z
    if-nez v3, :cond_53

    if-eqz v4, :cond_5a

    .line 454
    :cond_53
    if-nez v4, :cond_56

    .line 455
    return v1

    .line 456
    :cond_56
    if-nez v3, :cond_59

    .line 457
    return v0

    .line 459
    :cond_59
    return v2

    .line 463
    .end local v3    # "b0":Z
    .end local v4    # "b1":Z
    :cond_5a
    iget-object v0, p1, Lcom/miui/mishare/app/model/MiShareDevice;->remoteDevice:Lcom/miui/mishare/RemoteDevice;

    const-string v1, "rssi"

    if-eqz v0, :cond_74

    iget-object v0, p1, Lcom/miui/mishare/app/model/MiShareDevice;->remoteDevice:Lcom/miui/mishare/RemoteDevice;

    invoke-virtual {v0}, Lcom/miui/mishare/RemoteDevice;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_69

    goto :goto_74

    .line 464
    :cond_69
    iget-object v0, p1, Lcom/miui/mishare/app/model/MiShareDevice;->remoteDevice:Lcom/miui/mishare/RemoteDevice;

    invoke-virtual {v0}, Lcom/miui/mishare/RemoteDevice;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_75

    .line 463
    :cond_74
    :goto_74
    move v0, v2

    .line 464
    :goto_75
    nop

    .line 465
    .local v0, "rssiFirst":I
    iget-object v3, p2, Lcom/miui/mishare/app/model/MiShareDevice;->remoteDevice:Lcom/miui/mishare/RemoteDevice;

    if-eqz v3, :cond_8d

    iget-object v3, p2, Lcom/miui/mishare/app/model/MiShareDevice;->remoteDevice:Lcom/miui/mishare/RemoteDevice;

    invoke-virtual {v3}, Lcom/miui/mishare/RemoteDevice;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_83

    goto :goto_8d

    .line 466
    :cond_83
    iget-object v2, p2, Lcom/miui/mishare/app/model/MiShareDevice;->remoteDevice:Lcom/miui/mishare/RemoteDevice;

    invoke-virtual {v2}, Lcom/miui/mishare/RemoteDevice;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    :cond_8d
    :goto_8d
    move v1, v2

    .line 467
    .local v1, "rssiSecond":I
    invoke-static {v1, v0}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    return v2

    .line 442
    .end local v0    # "rssiFirst":I
    .end local v1    # "rssiSecond":I
    :cond_93
    :goto_93
    iget-boolean v3, p2, Lcom/miui/mishare/app/model/MiShareDevice;->isGlobalDevice:Z

    if-nez v3, :cond_98

    .line 443
    return v1

    .line 444
    :cond_98
    iget-boolean v1, p1, Lcom/miui/mishare/app/model/MiShareDevice;->isGlobalDevice:Z

    if-nez v1, :cond_9d

    .line 445
    return v0

    .line 447
    :cond_9d
    return v2

    .line 424
    :cond_9e
    :goto_9e
    if-eqz p1, :cond_a1

    .line 425
    return v1

    .line 426
    :cond_a1
    if-eqz p2, :cond_a4

    .line 427
    return v0

    .line 429
    :cond_a4
    return v2
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 419
    check-cast p1, Lcom/miui/mishare/app/model/MiShareDevice;

    check-cast p2, Lcom/miui/mishare/app/model/MiShareDevice;

    invoke-virtual {p0, p1, p2}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$DeviceRssiComparator;->compare(Lcom/miui/mishare/app/model/MiShareDevice;Lcom/miui/mishare/app/model/MiShareDevice;)I

    move-result p1

    return p1
.end method
