.class final Lcom/android/server/audio/SpatializerHelper$SADeviceState;
.super Ljava/lang/Object;
.source "SpatializerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/SpatializerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SADeviceState"
.end annotation


# static fields
.field static final SETTING_DEVICE_SEPARATOR:Ljava/lang/String; = "\\|"

.field static final SETTING_DEVICE_SEPARATOR_CHAR:Ljava/lang/String; = "|"

.field static final SETTING_FIELD_SEPARATOR:Ljava/lang/String; = ","


# instance fields
.field final mDeviceAddress:Ljava/lang/String;

.field final mDeviceType:I

.field mEnabled:Z

.field mHasHeadTracker:Z

.field mHeadTrackerEnabled:Z


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .registers 5
    .param p1, "deviceType"    # I
    .param p2, "address"    # Ljava/lang/String;

    .line 1524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1517
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mEnabled:Z

    .line 1518
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHasHeadTracker:Z

    .line 1519
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHeadTrackerEnabled:Z

    .line 1525
    iput p1, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceType:I

    .line 1526
    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->-$$Nest$smisWireless(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1c

    :cond_1a
    const-string v0, ""

    :goto_1c
    iput-object v0, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceAddress:Ljava/lang/String;

    .line 1527
    return-void
.end method

.method static fromPersistedString(Ljava/lang/String;)Lcom/android/server/audio/SpatializerHelper$SADeviceState;
    .registers 8
    .param p0, "persistedString"    # Ljava/lang/String;

    .line 1571
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1572
    return-object v0

    .line 1574
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1575
    return-object v0

    .line 1577
    :cond_b
    const-string v1, ","

    invoke-static {p0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1578
    .local v1, "fields":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_16

    .line 1580
    return-object v0

    .line 1583
    :cond_16
    const/4 v2, 0x0

    :try_start_17
    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1584
    .local v3, "deviceType":I
    new-instance v4, Lcom/android/server/audio/SpatializerHelper$SADeviceState;

    const/4 v5, 0x1

    aget-object v6, v1, v5

    invoke-direct {v4, v3, v6}, Lcom/android/server/audio/SpatializerHelper$SADeviceState;-><init>(ILjava/lang/String;)V

    .line 1585
    .local v4, "deviceState":Lcom/android/server/audio/SpatializerHelper$SADeviceState;
    const/4 v6, 0x2

    aget-object v6, v1, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v5, :cond_30

    move v6, v5

    goto :goto_31

    :cond_30
    move v6, v2

    :goto_31
    iput-boolean v6, v4, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mEnabled:Z

    .line 1586
    const/4 v6, 0x3

    aget-object v6, v1, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v5, :cond_3e

    move v6, v5

    goto :goto_3f

    :cond_3e
    move v6, v2

    :goto_3f
    iput-boolean v6, v4, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHasHeadTracker:Z

    .line 1587
    const/4 v6, 0x4

    aget-object v6, v1, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v5, :cond_4b

    move v2, v5

    :cond_4b
    iput-boolean v2, v4, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHeadTrackerEnabled:Z
    :try_end_4d
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_4d} :catch_4e

    .line 1588
    return-object v4

    .line 1589
    .end local v3    # "deviceType":I
    .end local v4    # "deviceState":Lcom/android/server/audio/SpatializerHelper$SADeviceState;
    :catch_4e
    move-exception v2

    .line 1590
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to parse setting for SADeviceState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AS.SpatializerHelper"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1591
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1531
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1532
    return v0

    .line 1534
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 1535
    return v1

    .line 1538
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 1539
    return v1

    .line 1541
    :cond_13
    move-object v2, p1

    check-cast v2, Lcom/android/server/audio/SpatializerHelper$SADeviceState;

    .line 1542
    .local v2, "sads":Lcom/android/server/audio/SpatializerHelper$SADeviceState;
    iget v3, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceType:I

    iget v4, v2, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceType:I

    if-ne v3, v4, :cond_39

    iget-object v3, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceAddress:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceAddress:Ljava/lang/String;

    .line 1543
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    iget-boolean v3, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mEnabled:Z

    iget-boolean v4, v2, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mEnabled:Z

    if-ne v3, v4, :cond_39

    iget-boolean v3, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHasHeadTracker:Z

    iget-boolean v4, v2, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHasHeadTracker:Z

    if-ne v3, v4, :cond_39

    iget-boolean v3, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHeadTrackerEnabled:Z

    iget-boolean v4, v2, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHeadTrackerEnabled:Z

    if-ne v3, v4, :cond_39

    goto :goto_3a

    :cond_39
    move v0, v1

    .line 1542
    :goto_3a
    return v0
.end method

.method public getAudioDeviceAttributes()Landroid/media/AudioDeviceAttributes;
    .registers 5

    .line 1596
    new-instance v0, Landroid/media/AudioDeviceAttributes;

    iget v1, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceType:I

    .line 1597
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceAddress:Ljava/lang/String;

    if-nez v2, :cond_a

    const-string v2, ""

    :cond_a
    const/4 v3, 0x2

    invoke-direct {v0, v3, v1, v2}, Landroid/media/AudioDeviceAttributes;-><init>(IILjava/lang/String;)V

    .line 1596
    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 1551
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceAddress:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHasHeadTracker:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHeadTrackerEnabled:Z

    .line 1552
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 1551
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method toPersistableString()Ljava/lang/String;
    .registers 6

    .line 1562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1563
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1564
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mEnabled:Z

    const-string v3, "1"

    const-string v4, "0"

    if-eqz v2, :cond_25

    move-object v2, v3

    goto :goto_26

    :cond_25
    move-object v2, v4

    :goto_26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1565
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHasHeadTracker:Z

    if-eqz v2, :cond_34

    move-object v2, v3

    goto :goto_35

    :cond_34
    move-object v2, v4

    :goto_35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1566
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHeadTrackerEnabled:Z

    if-eqz v1, :cond_42

    goto :goto_43

    :cond_42
    move-object v3, v4

    :goto_43
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1567
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1562
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " addr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " HT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHasHeadTracker:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " HTenabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHeadTrackerEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
