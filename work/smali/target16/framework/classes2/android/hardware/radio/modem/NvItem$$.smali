.class public interface abstract Landroid/hardware/radio/modem/NvItem$$;
.super Ljava/lang/Object;
.source "NvItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/modem/NvItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "$"
.end annotation


# direct methods
.method public static blacklist arrayToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 7

    .line 313
    if-nez p0, :cond_5

    const-string p0, "null"

    return-object p0

    .line 314
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 316
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 317
    new-instance v2, Ljava/util/StringJoiner;

    const-string v3, "["

    const-string v4, "]"

    const-string v5, ", "

    invoke-direct {v2, v5, v3, v4}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 318
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3a

    .line 319
    nop

    :goto_26
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ge v3, v0, :cond_4f

    .line 320
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/radio/modem/NvItem$$;->arrayToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 319
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 323
    :cond_3a
    const-class v1, [I

    if-ne v0, v1, :cond_54

    .line 324
    check-cast p0, [I

    array-length v0, p0

    :goto_41
    if-ge v3, v0, :cond_4f

    aget v1, p0, v3

    .line 325
    invoke-static {v1}, Landroid/hardware/radio/modem/NvItem$$;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 324
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .line 328
    :cond_4f
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 323
    :cond_54
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrong type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 315
    :cond_6d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist toString(I)Ljava/lang/String;
    .registers 2

    .line 268
    if-nez p0, :cond_5

    const-string p0, "INVALID"

    return-object p0

    .line 269
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    const-string p0, "CDMA_MEID"

    return-object p0

    .line 270
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    const-string p0, "CDMA_MIN"

    return-object p0

    .line 271
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    const-string p0, "CDMA_MDN"

    return-object p0

    .line 272
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    const-string p0, "CDMA_ACCOLC"

    return-object p0

    .line 273
    :cond_1d
    const/16 v0, 0xb

    if-ne p0, v0, :cond_24

    const-string p0, "DEVICE_MSL"

    return-object p0

    .line 274
    :cond_24
    const/16 v0, 0xc

    if-ne p0, v0, :cond_2b

    const-string p0, "RTN_RECONDITIONED_STATUS"

    return-object p0

    .line 275
    :cond_2b
    const/16 v0, 0xd

    if-ne p0, v0, :cond_32

    const-string p0, "RTN_ACTIVATION_DATE"

    return-object p0

    .line 276
    :cond_32
    const/16 v0, 0xe

    if-ne p0, v0, :cond_39

    const-string p0, "RTN_LIFE_TIMER"

    return-object p0

    .line 277
    :cond_39
    const/16 v0, 0xf

    if-ne p0, v0, :cond_40

    const-string p0, "RTN_LIFE_CALLS"

    return-object p0

    .line 278
    :cond_40
    const/16 v0, 0x10

    if-ne p0, v0, :cond_47

    const-string p0, "RTN_LIFE_DATA_TX"

    return-object p0

    .line 279
    :cond_47
    const/16 v0, 0x11

    if-ne p0, v0, :cond_4e

    const-string p0, "RTN_LIFE_DATA_RX"

    return-object p0

    .line 280
    :cond_4e
    const/16 v0, 0x12

    if-ne p0, v0, :cond_55

    const-string p0, "OMADM_HFA_LEVEL"

    return-object p0

    .line 281
    :cond_55
    const/16 v0, 0x1f

    if-ne p0, v0, :cond_5c

    const-string p0, "MIP_PROFILE_NAI"

    return-object p0

    .line 282
    :cond_5c
    const/16 v0, 0x20

    if-ne p0, v0, :cond_63

    const-string p0, "MIP_PROFILE_HOME_ADDRESS"

    return-object p0

    .line 283
    :cond_63
    const/16 v0, 0x21

    if-ne p0, v0, :cond_6a

    const-string p0, "MIP_PROFILE_AAA_AUTH"

    return-object p0

    .line 284
    :cond_6a
    const/16 v0, 0x22

    if-ne p0, v0, :cond_71

    const-string p0, "MIP_PROFILE_HA_AUTH"

    return-object p0

    .line 285
    :cond_71
    const/16 v0, 0x23

    if-ne p0, v0, :cond_78

    const-string p0, "MIP_PROFILE_PRI_HA_ADDR"

    return-object p0

    .line 286
    :cond_78
    const/16 v0, 0x24

    if-ne p0, v0, :cond_7f

    const-string p0, "MIP_PROFILE_SEC_HA_ADDR"

    return-object p0

    .line 287
    :cond_7f
    const/16 v0, 0x25

    if-ne p0, v0, :cond_86

    const-string p0, "MIP_PROFILE_REV_TUN_PREF"

    return-object p0

    .line 288
    :cond_86
    const/16 v0, 0x26

    if-ne p0, v0, :cond_8d

    const-string p0, "MIP_PROFILE_HA_SPI"

    return-object p0

    .line 289
    :cond_8d
    const/16 v0, 0x27

    if-ne p0, v0, :cond_94

    const-string p0, "MIP_PROFILE_AAA_SPI"

    return-object p0

    .line 290
    :cond_94
    const/16 v0, 0x28

    if-ne p0, v0, :cond_9b

    const-string p0, "MIP_PROFILE_MN_HA_SS"

    return-object p0

    .line 291
    :cond_9b
    const/16 v0, 0x29

    if-ne p0, v0, :cond_a2

    const-string p0, "MIP_PROFILE_MN_AAA_SS"

    return-object p0

    .line 292
    :cond_a2
    const/16 v0, 0x33

    if-ne p0, v0, :cond_a9

    const-string p0, "CDMA_PRL_VERSION"

    return-object p0

    .line 293
    :cond_a9
    const/16 v0, 0x34

    if-ne p0, v0, :cond_b0

    const-string p0, "CDMA_BC10"

    return-object p0

    .line 294
    :cond_b0
    const/16 v0, 0x35

    if-ne p0, v0, :cond_b7

    const-string p0, "CDMA_BC14"

    return-object p0

    .line 295
    :cond_b7
    const/16 v0, 0x36

    if-ne p0, v0, :cond_be

    const-string p0, "CDMA_SO68"

    return-object p0

    .line 296
    :cond_be
    const/16 v0, 0x37

    if-ne p0, v0, :cond_c5

    const-string p0, "CDMA_SO73_COP0"

    return-object p0

    .line 297
    :cond_c5
    const/16 v0, 0x38

    if-ne p0, v0, :cond_cc

    const-string p0, "CDMA_SO73_COP1TO7"

    return-object p0

    .line 298
    :cond_cc
    const/16 v0, 0x39

    if-ne p0, v0, :cond_d3

    const-string p0, "CDMA_1X_ADVANCED_ENABLED"

    return-object p0

    .line 299
    :cond_d3
    const/16 v0, 0x3a

    if-ne p0, v0, :cond_da

    const-string p0, "CDMA_EHRPD_ENABLED"

    return-object p0

    .line 300
    :cond_da
    const/16 v0, 0x3b

    if-ne p0, v0, :cond_e1

    const-string p0, "CDMA_EHRPD_FORCED"

    return-object p0

    .line 301
    :cond_e1
    const/16 v0, 0x47

    if-ne p0, v0, :cond_e8

    const-string p0, "LTE_BAND_ENABLE_25"

    return-object p0

    .line 302
    :cond_e8
    const/16 v0, 0x48

    if-ne p0, v0, :cond_ef

    const-string p0, "LTE_BAND_ENABLE_26"

    return-object p0

    .line 303
    :cond_ef
    const/16 v0, 0x49

    if-ne p0, v0, :cond_f6

    const-string p0, "LTE_BAND_ENABLE_41"

    return-object p0

    .line 304
    :cond_f6
    const/16 v0, 0x4a

    if-ne p0, v0, :cond_fd

    const-string p0, "LTE_SCAN_PRIORITY_25"

    return-object p0

    .line 305
    :cond_fd
    const/16 v0, 0x4b

    if-ne p0, v0, :cond_104

    const-string p0, "LTE_SCAN_PRIORITY_26"

    return-object p0

    .line 306
    :cond_104
    const/16 v0, 0x4c

    if-ne p0, v0, :cond_10b

    const-string p0, "LTE_SCAN_PRIORITY_41"

    return-object p0

    .line 307
    :cond_10b
    const/16 v0, 0x4d

    if-ne p0, v0, :cond_112

    const-string p0, "LTE_HIDDEN_BAND_PRIORITY_25"

    return-object p0

    .line 308
    :cond_112
    const/16 v0, 0x4e

    if-ne p0, v0, :cond_119

    const-string p0, "LTE_HIDDEN_BAND_PRIORITY_26"

    return-object p0

    .line 309
    :cond_119
    const/16 v0, 0x4f

    if-ne p0, v0, :cond_120

    const-string p0, "LTE_HIDDEN_BAND_PRIORITY_41"

    return-object p0

    .line 310
    :cond_120
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
