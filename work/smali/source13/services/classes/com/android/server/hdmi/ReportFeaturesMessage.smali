.class public Lcom/android/server/hdmi/ReportFeaturesMessage;
.super Lcom/android/server/hdmi/HdmiCecMessage;
.source "ReportFeaturesMessage.java"


# instance fields
.field private final mCecVersion:I

.field private final mDeviceFeatures:Landroid/hardware/hdmi/DeviceFeatures;


# direct methods
.method private constructor <init>(II[BILandroid/hardware/hdmi/DeviceFeatures;)V
    .registers 12
    .param p1, "source"    # I
    .param p2, "destination"    # I
    .param p3, "params"    # [B
    .param p4, "cecVersion"    # I
    .param p5, "deviceFeatures"    # Landroid/hardware/hdmi/DeviceFeatures;

    .line 48
    const/16 v3, 0xa6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[BI)V

    .line 49
    iput p4, p0, Lcom/android/server/hdmi/ReportFeaturesMessage;->mCecVersion:I

    .line 50
    iput-object p5, p0, Lcom/android/server/hdmi/ReportFeaturesMessage;->mDeviceFeatures:Landroid/hardware/hdmi/DeviceFeatures;

    .line 51
    return-void
.end method

.method public static build(IILjava/util/List;ILjava/util/List;Landroid/hardware/hdmi/DeviceFeatures;)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 27
    .param p0, "source"    # I
    .param p1, "cecVersion"    # I
    .param p3, "rcProfile"    # I
    .param p5, "deviceFeatures"    # Landroid/hardware/hdmi/DeviceFeatures;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/hardware/hdmi/DeviceFeatures;",
            ")",
            "Lcom/android/server/hdmi/HdmiCecMessage;"
        }
    .end annotation

    .line 65
    .local p2, "allDeviceTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p4, "rcFeatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move/from16 v0, p3

    move/from16 v7, p1

    and-int/lit16 v1, v7, 0xff

    int-to-byte v8, v1

    .line 66
    .local v8, "cecVersionByte":B
    const/4 v1, 0x0

    .line 67
    .local v1, "deviceTypes":B
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v9, v1

    .end local v1    # "deviceTypes":B
    .local v9, "deviceTypes":B
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 68
    .local v1, "deviceType":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/hdmi/ReportFeaturesMessage;->hdmiDeviceInfoDeviceTypeToShiftValue(I)I

    move-result v4

    shl-int/2addr v3, v4

    int-to-byte v3, v3

    or-int/2addr v3, v9

    int-to-byte v9, v3

    .line 69
    .end local v1    # "deviceType":Ljava/lang/Integer;
    goto :goto_d

    .line 71
    :cond_27
    const/4 v1, 0x0

    .line 72
    .local v1, "rcProfileByte":B
    shl-int/lit8 v2, v0, 0x6

    int-to-byte v2, v2

    or-int/2addr v2, v1

    int-to-byte v1, v2

    .line 73
    const/4 v2, 0x0

    if-ne v0, v3, :cond_4e

    .line 74
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_34
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 75
    .local v5, "rcFeature":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    shl-int v6, v3, v6

    int-to-byte v6, v6

    or-int/2addr v6, v1

    int-to-byte v1, v6

    .line 76
    .end local v5    # "rcFeature":Ljava/lang/Integer;
    goto :goto_34

    :cond_4a
    move-object/from16 v10, p4

    move v11, v1

    goto :goto_63

    .line 78
    :cond_4e
    move-object/from16 v10, p4

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const v5, 0xffff

    and-int/2addr v4, v5

    int-to-byte v4, v4

    .line 79
    .local v4, "rcProfileTv":B
    or-int v5, v1, v4

    int-to-byte v1, v5

    move v11, v1

    .line 82
    .end local v1    # "rcProfileByte":B
    .end local v4    # "rcProfileTv":B
    .local v11, "rcProfileByte":B
    :goto_63
    const/4 v1, 0x3

    new-array v1, v1, [B

    aput-byte v8, v1, v2

    aput-byte v9, v1, v3

    const/4 v3, 0x2

    aput-byte v11, v1, v3

    move-object v12, v1

    .line 83
    .local v12, "fixedOperands":[B
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/hdmi/DeviceFeatures;->toOperand()[B

    move-result-object v13

    .line 86
    .local v13, "deviceFeaturesBytes":[B
    array-length v1, v12

    array-length v3, v13

    add-int/2addr v1, v3

    invoke-static {v12, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    .line 88
    .local v6, "params":[B
    array-length v1, v12

    array-length v3, v13

    invoke-static {v13, v2, v6, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    const/16 v1, 0xf

    move/from16 v5, p0

    invoke-static {v5, v1}, Lcom/android/server/hdmi/ReportFeaturesMessage;->validateAddress(II)I

    move-result v20

    .line 93
    .local v20, "addressValidationResult":I
    if-eqz v20, :cond_99

    .line 94
    new-instance v1, Lcom/android/server/hdmi/HdmiCecMessage;

    const/16 v16, 0xf

    const/16 v17, 0xa6

    move-object v14, v1

    move/from16 v15, p0

    move-object/from16 v18, v6

    move/from16 v19, v20

    invoke-direct/range {v14 .. v19}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[BI)V

    return-object v1

    .line 97
    :cond_99
    new-instance v14, Lcom/android/server/hdmi/ReportFeaturesMessage;

    const/16 v3, 0xf

    move-object v1, v14

    move/from16 v2, p0

    move-object v4, v6

    move/from16 v5, p1

    move-object v15, v6

    .end local v6    # "params":[B
    .local v15, "params":[B
    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/hdmi/ReportFeaturesMessage;-><init>(II[BILandroid/hardware/hdmi/DeviceFeatures;)V

    return-object v14
.end method

.method static build(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 21
    .param p0, "source"    # I
    .param p1, "destination"    # I
    .param p2, "params"    # [B

    .line 134
    move-object/from16 v6, p2

    new-instance v0, Lcom/android/server/hdmi/ReportFeaturesMessage$$ExternalSyntheticLambda0;

    move/from16 v7, p0

    move/from16 v8, p1

    invoke-direct {v0, v7, v8, v6}, Lcom/android/server/hdmi/ReportFeaturesMessage$$ExternalSyntheticLambda0;-><init>(II[B)V

    move-object v9, v0

    .line 138
    .local v9, "invalidMessage":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Integer;Lcom/android/server/hdmi/HdmiCecMessage;>;"
    invoke-static/range {p0 .. p1}, Lcom/android/server/hdmi/ReportFeaturesMessage;->validateAddress(II)I

    move-result v10

    .line 139
    .local v10, "addressValidationResult":I
    if-eqz v10, :cond_1d

    .line 140
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecMessage;

    return-object v0

    .line 143
    :cond_1d
    array-length v0, v6

    const/4 v1, 0x4

    if-ge v0, v1, :cond_2c

    .line 144
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecMessage;

    return-object v0

    .line 147
    :cond_2c
    const/4 v0, 0x0

    aget-byte v0, v6, v0

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v11

    .line 149
    .local v11, "cecVersion":I
    const/4 v0, 0x2

    invoke-static {v6, v0}, Lcom/android/server/hdmi/HdmiUtils;->getEndOfSequence([BI)I

    move-result v12

    .line 150
    .local v12, "rcProfileEnd":I
    const/4 v2, -0x1

    if-ne v12, v2, :cond_46

    .line 151
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecMessage;

    return-object v0

    .line 153
    :cond_46
    add-int/lit8 v3, v12, 0x1

    invoke-static {v6, v3}, Lcom/android/server/hdmi/HdmiUtils;->getEndOfSequence([BI)I

    move-result v13

    .line 155
    .local v13, "deviceFeaturesEnd":I
    if-ne v13, v2, :cond_59

    .line 156
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecMessage;

    return-object v0

    .line 158
    :cond_59
    invoke-static {v6, v0}, Lcom/android/server/hdmi/HdmiUtils;->getEndOfSequence([BI)I

    move-result v0

    add-int/lit8 v14, v0, 0x1

    .line 159
    .local v14, "deviceFeaturesStart":I
    array-length v0, v6

    invoke-static {v6, v14, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v15

    .line 160
    .local v15, "deviceFeaturesBytes":[B
    invoke-static {v15}, Landroid/hardware/hdmi/DeviceFeatures;->fromOperand([B)Landroid/hardware/hdmi/DeviceFeatures;

    move-result-object v16

    .line 162
    .local v16, "deviceFeatures":Landroid/hardware/hdmi/DeviceFeatures;
    new-instance v17, Lcom/android/server/hdmi/ReportFeaturesMessage;

    move-object/from16 v0, v17

    move/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v11

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/server/hdmi/ReportFeaturesMessage;-><init>(II[BILandroid/hardware/hdmi/DeviceFeatures;)V

    return-object v17
.end method

.method private static hdmiDeviceInfoDeviceTypeToShiftValue(I)I
    .registers 4
    .param p0, "deviceType"    # I

    .line 104
    packed-switch p0, :pswitch_data_28

    .line 118
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled device type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :pswitch_1c
    const/4 v0, 0x2

    return v0

    .line 114
    :pswitch_1e
    const/4 v0, 0x3

    return v0

    .line 112
    :pswitch_20
    const/4 v0, 0x4

    return v0

    .line 110
    :pswitch_22
    const/4 v0, 0x5

    return v0

    .line 108
    :pswitch_24
    const/4 v0, 0x6

    return v0

    .line 106
    :pswitch_26
    const/4 v0, 0x7

    return v0

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_26
        :pswitch_24
        :pswitch_3
        :pswitch_22
        :pswitch_20
        :pswitch_1e
        :pswitch_1c
    .end packed-switch
.end method

.method static synthetic lambda$build$0(II[BLjava/lang/Integer;)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 11
    .param p0, "source"    # I
    .param p1, "destination"    # I
    .param p2, "params"    # [B
    .param p3, "validationResult"    # Ljava/lang/Integer;

    .line 135
    new-instance v6, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 136
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v3, 0xa6

    move-object v0, v6

    move v1, p0

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[BI)V

    .line 135
    return-object v6
.end method

.method public static validateAddress(II)I
    .registers 3
    .param p0, "source"    # I
    .param p1, "destination"    # I

    .line 169
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->validateAddress(III)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getCecVersion()I
    .registers 2

    .line 179
    iget v0, p0, Lcom/android/server/hdmi/ReportFeaturesMessage;->mCecVersion:I

    return v0
.end method

.method public getDeviceFeatures()Landroid/hardware/hdmi/DeviceFeatures;
    .registers 2

    .line 187
    iget-object v0, p0, Lcom/android/server/hdmi/ReportFeaturesMessage;->mDeviceFeatures:Landroid/hardware/hdmi/DeviceFeatures;

    return-object v0
.end method
