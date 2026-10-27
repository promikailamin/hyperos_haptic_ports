.class public Lcom/android/server/hdmi/ReportFeaturesMessage;
.super Lcom/android/server/hdmi/HdmiCecMessage;
.source "ReportFeaturesMessage.java"


# instance fields
.field public final mCecVersion:I

.field public final mDeviceFeatures:Landroid/hardware/hdmi/DeviceFeatures;


# direct methods
.method public static synthetic $r8$lambda$EnZaG7E-UCHXFjP_nSsOC6uaXt4(II[BLjava/lang/Integer;)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 10

    .line 135
    new-instance v0, Lcom/android/server/hdmi/HdmiCecMessage;

    const/16 v3, 0xa6

    .line 136
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v1, p0

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[BI)V

    return-object v0
.end method

.method public constructor <init>(II[BILandroid/hardware/hdmi/DeviceFeatures;)V
    .registers 12

    const/16 v3, 0xa6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    .line 48
    invoke-direct/range {v0 .. v5}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[BI)V

    .line 49
    iput p4, v0, Lcom/android/server/hdmi/ReportFeaturesMessage;->mCecVersion:I

    .line 50
    iput-object p5, v0, Lcom/android/server/hdmi/ReportFeaturesMessage;->mDeviceFeatures:Landroid/hardware/hdmi/DeviceFeatures;

    return-void
.end method

.method public static build(IILjava/util/List;ILjava/util/List;Landroid/hardware/hdmi/DeviceFeatures;)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 14

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    .line 67
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_24

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 68
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/hdmi/ReportFeaturesMessage;->hdmiDeviceInfoDeviceTypeToShiftValue(I)I

    move-result v3

    shl-int v3, v4, v3

    int-to-byte v3, v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    goto :goto_9

    :cond_24
    shl-int/lit8 p2, p3, 0x6

    int-to-byte p2, p2

    int-to-byte p2, p2

    if-ne p3, v4, :cond_44

    .line 74
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_55

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    .line 75
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    shl-int p4, v4, p4

    int-to-byte p4, p4

    or-int/2addr p2, p4

    int-to-byte p2, p2

    goto :goto_2e

    .line 78
    :cond_44
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const p4, 0xffff

    and-int/2addr p3, p4

    int-to-byte p3, p3

    or-int/2addr p2, p3

    int-to-byte p2, p2

    :cond_55
    const/4 p3, 0x3

    .line 82
    new-array p4, p3, [B

    aput-byte v0, p4, v1

    aput-byte v2, p4, v4

    const/4 v0, 0x2

    aput-byte p2, p4, v0

    .line 83
    invoke-virtual {p5}, Landroid/hardware/hdmi/DeviceFeatures;->toOperand()[B

    move-result-object p2

    .line 86
    array-length v0, p2

    add-int/2addr v0, p3

    invoke-static {p4, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    .line 88
    array-length p4, p2

    invoke-static {p2, v1, v5, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p2, 0xf

    .line 92
    invoke-static {p0, p2}, Lcom/android/server/hdmi/ReportFeaturesMessage;->validateAddress(II)I

    move-result v7

    if-eqz v7, :cond_81

    .line 94
    new-instance v2, Lcom/android/server/hdmi/HdmiCecMessage;

    const/16 v4, 0xf

    move-object v6, v5

    const/16 v5, 0xa6

    move v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[BI)V

    return-object v2

    :cond_81
    move v3, p0

    move-object v6, v5

    .line 97
    new-instance v2, Lcom/android/server/hdmi/ReportFeaturesMessage;

    const/16 v4, 0xf

    move-object v7, p5

    move v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/hdmi/ReportFeaturesMessage;-><init>(II[BILandroid/hardware/hdmi/DeviceFeatures;)V

    return-object v2
.end method

.method public static build(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 12

    const/4 v0, 0x4

    .line 144
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 134
    new-instance v2, Lcom/android/server/hdmi/ReportFeaturesMessage$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/hdmi/ReportFeaturesMessage$$ExternalSyntheticLambda0;-><init>(II[B)V

    .line 138
    invoke-static {p0, p1}, Lcom/android/server/hdmi/ReportFeaturesMessage;->validateAddress(II)I

    move-result v3

    if-eqz v3, :cond_1b

    .line 140
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/hdmi/HdmiCecMessage;

    return-object p0

    .line 143
    :cond_1b
    array-length v3, p2

    if-ge v3, v0, :cond_25

    .line 144
    invoke-interface {v2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/hdmi/HdmiCecMessage;

    return-object p0

    :cond_25
    const/4 v0, 0x0

    .line 147
    aget-byte v0, p2, v0

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v7

    const/4 v0, 0x2

    .line 149
    invoke-static {p2, v0}, Lcom/android/server/hdmi/HdmiUtils;->getEndOfSequence([BI)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3b

    .line 151
    invoke-interface {v2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/hdmi/HdmiCecMessage;

    return-object p0

    :cond_3b
    add-int/lit8 v3, v3, 0x1

    .line 153
    invoke-static {p2, v3}, Lcom/android/server/hdmi/HdmiUtils;->getEndOfSequence([BI)I

    move-result v3

    if-ne v3, v4, :cond_4a

    .line 156
    invoke-interface {v2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/hdmi/HdmiCecMessage;

    return-object p0

    .line 158
    :cond_4a
    invoke-static {p2, v0}, Lcom/android/server/hdmi/HdmiUtils;->getEndOfSequence([BI)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 159
    array-length v1, p2

    invoke-static {p2, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 160
    invoke-static {v0}, Landroid/hardware/hdmi/DeviceFeatures;->fromOperand([B)Landroid/hardware/hdmi/DeviceFeatures;

    move-result-object v8

    .line 162
    new-instance v3, Lcom/android/server/hdmi/ReportFeaturesMessage;

    move v4, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/hdmi/ReportFeaturesMessage;-><init>(II[BILandroid/hardware/hdmi/DeviceFeatures;)V

    return-object v3
.end method

.method public static hdmiDeviceInfoDeviceTypeToShiftValue(I)I
    .registers 5

    if-eqz p0, :cond_2e

    const/4 v0, 0x1

    const/4 v1, 0x6

    if-eq p0, v0, :cond_2d

    const/4 v0, 0x5

    const/4 v2, 0x3

    if-eq p0, v2, :cond_2c

    const/4 v3, 0x4

    if-eq p0, v3, :cond_2b

    if-eq p0, v0, :cond_2a

    if-ne p0, v1, :cond_13

    const/4 p0, 0x2

    return p0

    .line 118
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled device type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    return v2

    :cond_2b
    return v3

    :cond_2c
    return v0

    :cond_2d
    return v1

    :cond_2e
    const/4 p0, 0x7

    return p0
.end method

.method public static validateAddress(II)I
    .registers 4

    const/16 v0, 0x7fff

    const v1, 0x8000

    .line 169
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->validateAddress(IIII)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getCecVersion()I
    .registers 1

    .line 180
    iget p0, p0, Lcom/android/server/hdmi/ReportFeaturesMessage;->mCecVersion:I

    return p0
.end method

.method public getDeviceFeatures()Landroid/hardware/hdmi/DeviceFeatures;
    .registers 1

    .line 188
    iget-object p0, p0, Lcom/android/server/hdmi/ReportFeaturesMessage;->mDeviceFeatures:Landroid/hardware/hdmi/DeviceFeatures;

    return-object p0
.end method
