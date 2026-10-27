.class Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$DeviceStateAutoRotateSettingImpl;
.super Ljava/lang/Object;
.source "DeviceStateAutoRotateSettingManagerImpl.java"

# interfaces
.implements Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;


# instance fields
.field public final mDeviceStateAutoRotateSetting:Landroid/util/SparseIntArray;

.field public final synthetic this$0:Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;Landroid/util/SparseIntArray;)V
    .registers 3

    .line 379
    iput-object p1, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$DeviceStateAutoRotateSettingImpl;->this$0:Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$DeviceStateAutoRotateSettingImpl;->mDeviceStateAutoRotateSetting:Landroid/util/SparseIntArray;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;Landroid/util/SparseIntArray;Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$DeviceStateAutoRotateSettingImpl;-><init>(Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;Landroid/util/SparseIntArray;)V

    return-void
.end method

.method public static equals(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_35

    if-eqz p1, :cond_35

    .line 492
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-eq v2, v3, :cond_14

    goto :goto_35

    :cond_14
    move v2, v1

    .line 494
    :goto_15
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_34

    .line 495
    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    if-ne v3, v4, :cond_33

    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-virtual {p0, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    if-eq v3, v4, :cond_30

    goto :goto_33

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_33
    :goto_33
    return v1

    :cond_34
    return v0

    :cond_35
    :goto_35
    return v1
.end method


# virtual methods
.method public clone()Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;
    .registers 3

    .line 446
    new-instance v0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$DeviceStateAutoRotateSettingImpl;

    iget-object v1, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$DeviceStateAutoRotateSettingImpl;->this$0:Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;

    iget-object p0, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$DeviceStateAutoRotateSettingImpl;->mDeviceStateAutoRotateSetting:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$DeviceStateAutoRotateSettingImpl;-><init>(Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;Landroid/util/SparseIntArray;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1

    .line 374
    invoke-virtual {p0}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$DeviceStateAutoRotateSettingImpl;->clone()Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 451
    instance-of v0, p1, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$DeviceStateAutoRotateSettingImpl;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 454
    :cond_6
    iget-object p0, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$DeviceStateAutoRotateSettingImpl;->mDeviceStateAutoRotateSetting:Landroid/util/SparseIntArray;

    check-cast p1, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$DeviceStateAutoRotateSettingImpl;

    .line 456
    invoke-virtual {p1}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$DeviceStateAutoRotateSettingImpl;->getDeviceStateAutoRotateSettingMap()Landroid/util/SparseIntArray;

    move-result-object p1

    .line 454
    invoke-static {p0, p1}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$DeviceStateAutoRotateSettingImpl;->equals(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)Z

    move-result p0

    return p0
.end method

.method public get(I)Z
    .registers 6

    .line 416
    invoke-static {p1}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->-$$Nest$smisValidDeviceStateAutoRotateSettingKey(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 421
    iget-object v0, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$DeviceStateAutoRotateSettingImpl;->mDeviceStateAutoRotateSetting:Landroid/util/SparseIntArray;

    invoke-static {p1, v0}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->-$$Nest$smgetValueFromIntArray(ILandroid/util/SparseIntArray;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_15

    if-ne v0, v3, :cond_14

    return v2

    :cond_14
    return v1

    .line 426
    :cond_15
    iget-object v0, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$DeviceStateAutoRotateSettingImpl;->this$0:Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;

    invoke-static {v0}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->-$$Nest$fgetmFallbackPostureMap(Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 427
    iget-object p0, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$DeviceStateAutoRotateSettingImpl;->mDeviceStateAutoRotateSetting:Landroid/util/SparseIntArray;

    invoke-static {v0, p0}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->-$$Nest$smgetValueFromIntArray(ILandroid/util/SparseIntArray;)I

    move-result p0

    if-eqz p0, :cond_2b

    if-ne p0, v3, :cond_2a

    return v2

    :cond_2a
    return v1

    .line 430
    :cond_2b
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Chained fallback map is not supported. Fallback posture for given ignored device posture is ignored.\nDevice posture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", fallback posture: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 417
    :cond_4a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to get auto rotate value of invalid device posture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getDeviceStateAutoRotateSettingMap()Landroid/util/SparseIntArray;
    .registers 1

    .line 487
    iget-object p0, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$DeviceStateAutoRotateSettingImpl;->mDeviceStateAutoRotateSetting:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 477
    :goto_2
    iget-object v2, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$DeviceStateAutoRotateSettingImpl;->mDeviceStateAutoRotateSetting:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2c

    .line 478
    iget-object v2, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$DeviceStateAutoRotateSettingImpl;->mDeviceStateAutoRotateSetting:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 479
    iget-object v3, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$DeviceStateAutoRotateSettingImpl;->mDeviceStateAutoRotateSetting:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    mul-int/lit8 v1, v1, 0x1f

    .line 481
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2c
    return v1
.end method

.method public set(II)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    .line 387
    :cond_3
    invoke-static {p1}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->-$$Nest$smisValidDeviceStateAutoRotateSettingKey(I)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 392
    invoke-static {p2}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->-$$Nest$smisValidDeviceStateAutoRotateSettingValue(I)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 396
    iget-object v0, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$DeviceStateAutoRotateSettingImpl;->mDeviceStateAutoRotateSetting:Landroid/util/SparseIntArray;

    invoke-static {p1, v0}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->-$$Nest$smgetValueFromIntArray(ILandroid/util/SparseIntArray;)I

    move-result v0

    if-eqz v0, :cond_1d

    .line 399
    iget-object p0, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$DeviceStateAutoRotateSettingImpl;->mDeviceStateAutoRotateSetting:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    .line 402
    :cond_1d
    iget-object v0, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$DeviceStateAutoRotateSettingImpl;->this$0:Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;

    invoke-static {v0}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->-$$Nest$fgetmFallbackPostureMap(Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 403
    iget-object v1, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$DeviceStateAutoRotateSettingImpl;->mDeviceStateAutoRotateSetting:Landroid/util/SparseIntArray;

    invoke-static {v0, v1}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->-$$Nest$smgetValueFromIntArray(ILandroid/util/SparseIntArray;)I

    move-result v1

    if-eqz v1, :cond_35

    .line 411
    iget-object p0, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$DeviceStateAutoRotateSettingImpl;->mDeviceStateAutoRotateSetting:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v0, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    .line 406
    :cond_35
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Chained fallback map is not supported. Fallback posture for given ignored device posture is ignored.\nDevice posture: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", fallback posture: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 393
    :cond_54
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Trying to set invalid auto rotate value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 388
    :cond_6b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Trying to set auto rotate value of invalid device posture: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceStateAutoRotateSetting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$DeviceStateAutoRotateSettingImpl;->mDeviceStateAutoRotateSetting:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public write()V
    .registers 2

    .line 440
    iget-object v0, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$DeviceStateAutoRotateSettingImpl;->this$0:Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;

    iget-object p0, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$DeviceStateAutoRotateSettingImpl;->mDeviceStateAutoRotateSetting:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->-$$Nest$mupdateSetting(Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;Landroid/util/SparseIntArray;)V

    return-void
.end method
