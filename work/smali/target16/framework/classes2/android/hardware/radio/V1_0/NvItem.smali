.class public final Landroid/hardware/radio/V1_0/NvItem;
.super Ljava/lang/Object;
.source "NvItem.java"


# static fields
.field public static final blacklist CDMA_1X_ADVANCED_ENABLED:I = 0x39

.field public static final blacklist CDMA_ACCOLC:I = 0x4

.field public static final blacklist CDMA_BC10:I = 0x34

.field public static final blacklist CDMA_BC14:I = 0x35

.field public static final blacklist CDMA_EHRPD_ENABLED:I = 0x3a

.field public static final blacklist CDMA_EHRPD_FORCED:I = 0x3b

.field public static final blacklist CDMA_MDN:I = 0x3

.field public static final blacklist CDMA_MEID:I = 0x1

.field public static final blacklist CDMA_MIN:I = 0x2

.field public static final blacklist CDMA_PRL_VERSION:I = 0x33

.field public static final blacklist CDMA_SO68:I = 0x36

.field public static final blacklist CDMA_SO73_COP0:I = 0x37

.field public static final blacklist CDMA_SO73_COP1TO7:I = 0x38

.field public static final blacklist DEVICE_MSL:I = 0xb

.field public static final blacklist LTE_BAND_ENABLE_25:I = 0x47

.field public static final blacklist LTE_BAND_ENABLE_26:I = 0x48

.field public static final blacklist LTE_BAND_ENABLE_41:I = 0x49

.field public static final blacklist LTE_HIDDEN_BAND_PRIORITY_25:I = 0x4d

.field public static final blacklist LTE_HIDDEN_BAND_PRIORITY_26:I = 0x4e

.field public static final blacklist LTE_HIDDEN_BAND_PRIORITY_41:I = 0x4f

.field public static final blacklist LTE_SCAN_PRIORITY_25:I = 0x4a

.field public static final blacklist LTE_SCAN_PRIORITY_26:I = 0x4b

.field public static final blacklist LTE_SCAN_PRIORITY_41:I = 0x4c

.field public static final blacklist MIP_PROFILE_AAA_AUTH:I = 0x21

.field public static final blacklist MIP_PROFILE_AAA_SPI:I = 0x27

.field public static final blacklist MIP_PROFILE_HA_AUTH:I = 0x22

.field public static final blacklist MIP_PROFILE_HA_SPI:I = 0x26

.field public static final blacklist MIP_PROFILE_HOME_ADDRESS:I = 0x20

.field public static final blacklist MIP_PROFILE_MN_AAA_SS:I = 0x29

.field public static final blacklist MIP_PROFILE_MN_HA_SS:I = 0x28

.field public static final blacklist MIP_PROFILE_NAI:I = 0x1f

.field public static final blacklist MIP_PROFILE_PRI_HA_ADDR:I = 0x23

.field public static final blacklist MIP_PROFILE_REV_TUN_PREF:I = 0x25

.field public static final blacklist MIP_PROFILE_SEC_HA_ADDR:I = 0x24

.field public static final blacklist OMADM_HFA_LEVEL:I = 0x12

.field public static final blacklist RTN_ACTIVATION_DATE:I = 0xd

.field public static final blacklist RTN_LIFE_CALLS:I = 0xf

.field public static final blacklist RTN_LIFE_DATA_RX:I = 0x11

.field public static final blacklist RTN_LIFE_DATA_TX:I = 0x10

.field public static final blacklist RTN_LIFE_TIMER:I = 0xe

.field public static final blacklist RTN_RECONDITIONED_STATUS:I = 0xc


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    nop

    .line 176
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 177
    const-string v1, "CDMA_MEID"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    goto :goto_12

    .line 176
    :cond_11
    const/4 v2, 0x0

    .line 180
    :goto_12
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1e

    .line 181
    const-string v1, "CDMA_MIN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    or-int/lit8 v2, v2, 0x2

    .line 184
    :cond_1e
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_29

    .line 185
    const-string v1, "CDMA_MDN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    move v2, v3

    .line 188
    :cond_29
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_35

    .line 189
    const-string v1, "CDMA_ACCOLC"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    or-int/lit8 v2, v2, 0x4

    .line 192
    :cond_35
    and-int/lit8 v1, p0, 0xb

    const/16 v3, 0xb

    if-ne v1, v3, :cond_42

    .line 193
    const-string v1, "DEVICE_MSL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    or-int/lit8 v2, v2, 0xb

    .line 196
    :cond_42
    and-int/lit8 v1, p0, 0xc

    const/16 v3, 0xc

    if-ne v1, v3, :cond_4f

    .line 197
    const-string v1, "RTN_RECONDITIONED_STATUS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    or-int/lit8 v2, v2, 0xc

    .line 200
    :cond_4f
    and-int/lit8 v1, p0, 0xd

    const/16 v3, 0xd

    if-ne v1, v3, :cond_5c

    .line 201
    const-string v1, "RTN_ACTIVATION_DATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    or-int/lit8 v2, v2, 0xd

    .line 204
    :cond_5c
    and-int/lit8 v1, p0, 0xe

    const/16 v3, 0xe

    if-ne v1, v3, :cond_69

    .line 205
    const-string v1, "RTN_LIFE_TIMER"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    or-int/lit8 v2, v2, 0xe

    .line 208
    :cond_69
    and-int/lit8 v1, p0, 0xf

    const/16 v3, 0xf

    if-ne v1, v3, :cond_75

    .line 209
    const-string v1, "RTN_LIFE_CALLS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    move v2, v3

    .line 212
    :cond_75
    and-int/lit8 v1, p0, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_82

    .line 213
    const-string v1, "RTN_LIFE_DATA_TX"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    or-int/lit8 v2, v2, 0x10

    .line 216
    :cond_82
    and-int/lit8 v1, p0, 0x11

    const/16 v3, 0x11

    if-ne v1, v3, :cond_8f

    .line 217
    const-string v1, "RTN_LIFE_DATA_RX"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    or-int/lit8 v2, v2, 0x11

    .line 220
    :cond_8f
    and-int/lit8 v1, p0, 0x12

    const/16 v3, 0x12

    if-ne v1, v3, :cond_9c

    .line 221
    const-string v1, "OMADM_HFA_LEVEL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    or-int/lit8 v2, v2, 0x12

    .line 224
    :cond_9c
    and-int/lit8 v1, p0, 0x1f

    const/16 v3, 0x1f

    if-ne v1, v3, :cond_a8

    .line 225
    const-string v1, "MIP_PROFILE_NAI"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    move v2, v3

    .line 228
    :cond_a8
    and-int/lit8 v1, p0, 0x20

    const/16 v3, 0x20

    if-ne v1, v3, :cond_b5

    .line 229
    const-string v1, "MIP_PROFILE_HOME_ADDRESS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    or-int/lit8 v2, v2, 0x20

    .line 232
    :cond_b5
    and-int/lit8 v1, p0, 0x21

    const/16 v3, 0x21

    if-ne v1, v3, :cond_c2

    .line 233
    const-string v1, "MIP_PROFILE_AAA_AUTH"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    or-int/lit8 v2, v2, 0x21

    .line 236
    :cond_c2
    and-int/lit8 v1, p0, 0x22

    const/16 v3, 0x22

    if-ne v1, v3, :cond_cf

    .line 237
    const-string v1, "MIP_PROFILE_HA_AUTH"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    or-int/lit8 v2, v2, 0x22

    .line 240
    :cond_cf
    and-int/lit8 v1, p0, 0x23

    const/16 v3, 0x23

    if-ne v1, v3, :cond_dc

    .line 241
    const-string v1, "MIP_PROFILE_PRI_HA_ADDR"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    or-int/lit8 v2, v2, 0x23

    .line 244
    :cond_dc
    and-int/lit8 v1, p0, 0x24

    const/16 v3, 0x24

    if-ne v1, v3, :cond_e9

    .line 245
    const-string v1, "MIP_PROFILE_SEC_HA_ADDR"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    or-int/lit8 v2, v2, 0x24

    .line 248
    :cond_e9
    and-int/lit8 v1, p0, 0x25

    const/16 v3, 0x25

    if-ne v1, v3, :cond_f6

    .line 249
    const-string v1, "MIP_PROFILE_REV_TUN_PREF"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    or-int/lit8 v2, v2, 0x25

    .line 252
    :cond_f6
    and-int/lit8 v1, p0, 0x26

    const/16 v3, 0x26

    if-ne v1, v3, :cond_103

    .line 253
    const-string v1, "MIP_PROFILE_HA_SPI"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    or-int/lit8 v2, v2, 0x26

    .line 256
    :cond_103
    and-int/lit8 v1, p0, 0x27

    const/16 v3, 0x27

    if-ne v1, v3, :cond_110

    .line 257
    const-string v1, "MIP_PROFILE_AAA_SPI"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    or-int/lit8 v2, v2, 0x27

    .line 260
    :cond_110
    and-int/lit8 v1, p0, 0x28

    const/16 v3, 0x28

    if-ne v1, v3, :cond_11d

    .line 261
    const-string v1, "MIP_PROFILE_MN_HA_SS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    or-int/lit8 v2, v2, 0x28

    .line 264
    :cond_11d
    and-int/lit8 v1, p0, 0x29

    const/16 v3, 0x29

    if-ne v1, v3, :cond_12a

    .line 265
    const-string v1, "MIP_PROFILE_MN_AAA_SS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    or-int/lit8 v2, v2, 0x29

    .line 268
    :cond_12a
    and-int/lit8 v1, p0, 0x33

    const/16 v3, 0x33

    if-ne v1, v3, :cond_137

    .line 269
    const-string v1, "CDMA_PRL_VERSION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    or-int/lit8 v2, v2, 0x33

    .line 272
    :cond_137
    and-int/lit8 v1, p0, 0x34

    const/16 v3, 0x34

    if-ne v1, v3, :cond_144

    .line 273
    const-string v1, "CDMA_BC10"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    or-int/lit8 v2, v2, 0x34

    .line 276
    :cond_144
    and-int/lit8 v1, p0, 0x35

    const/16 v3, 0x35

    if-ne v1, v3, :cond_151

    .line 277
    const-string v1, "CDMA_BC14"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    or-int/lit8 v2, v2, 0x35

    .line 280
    :cond_151
    and-int/lit8 v1, p0, 0x36

    const/16 v3, 0x36

    if-ne v1, v3, :cond_15e

    .line 281
    const-string v1, "CDMA_SO68"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    or-int/lit8 v2, v2, 0x36

    .line 284
    :cond_15e
    and-int/lit8 v1, p0, 0x37

    const/16 v3, 0x37

    if-ne v1, v3, :cond_16b

    .line 285
    const-string v1, "CDMA_SO73_COP0"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    or-int/lit8 v2, v2, 0x37

    .line 288
    :cond_16b
    and-int/lit8 v1, p0, 0x38

    const/16 v3, 0x38

    if-ne v1, v3, :cond_178

    .line 289
    const-string v1, "CDMA_SO73_COP1TO7"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    or-int/lit8 v2, v2, 0x38

    .line 292
    :cond_178
    and-int/lit8 v1, p0, 0x39

    const/16 v3, 0x39

    if-ne v1, v3, :cond_185

    .line 293
    const-string v1, "CDMA_1X_ADVANCED_ENABLED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    or-int/lit8 v2, v2, 0x39

    .line 296
    :cond_185
    and-int/lit8 v1, p0, 0x3a

    const/16 v3, 0x3a

    if-ne v1, v3, :cond_192

    .line 297
    const-string v1, "CDMA_EHRPD_ENABLED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    or-int/lit8 v2, v2, 0x3a

    .line 300
    :cond_192
    and-int/lit8 v1, p0, 0x3b

    const/16 v3, 0x3b

    if-ne v1, v3, :cond_19f

    .line 301
    const-string v1, "CDMA_EHRPD_FORCED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    or-int/lit8 v2, v2, 0x3b

    .line 304
    :cond_19f
    and-int/lit8 v1, p0, 0x47

    const/16 v3, 0x47

    if-ne v1, v3, :cond_1ac

    .line 305
    const-string v1, "LTE_BAND_ENABLE_25"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    or-int/lit8 v2, v2, 0x47

    .line 308
    :cond_1ac
    and-int/lit8 v1, p0, 0x48

    const/16 v3, 0x48

    if-ne v1, v3, :cond_1b9

    .line 309
    const-string v1, "LTE_BAND_ENABLE_26"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    or-int/lit8 v2, v2, 0x48

    .line 312
    :cond_1b9
    and-int/lit8 v1, p0, 0x49

    const/16 v3, 0x49

    if-ne v1, v3, :cond_1c6

    .line 313
    const-string v1, "LTE_BAND_ENABLE_41"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    or-int/lit8 v2, v2, 0x49

    .line 316
    :cond_1c6
    and-int/lit8 v1, p0, 0x4a

    const/16 v3, 0x4a

    if-ne v1, v3, :cond_1d3

    .line 317
    const-string v1, "LTE_SCAN_PRIORITY_25"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    or-int/lit8 v2, v2, 0x4a

    .line 320
    :cond_1d3
    and-int/lit8 v1, p0, 0x4b

    const/16 v3, 0x4b

    if-ne v1, v3, :cond_1e0

    .line 321
    const-string v1, "LTE_SCAN_PRIORITY_26"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    or-int/lit8 v2, v2, 0x4b

    .line 324
    :cond_1e0
    and-int/lit8 v1, p0, 0x4c

    const/16 v3, 0x4c

    if-ne v1, v3, :cond_1ed

    .line 325
    const-string v1, "LTE_SCAN_PRIORITY_41"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    or-int/lit8 v2, v2, 0x4c

    .line 328
    :cond_1ed
    and-int/lit8 v1, p0, 0x4d

    const/16 v3, 0x4d

    if-ne v1, v3, :cond_1fa

    .line 329
    const-string v1, "LTE_HIDDEN_BAND_PRIORITY_25"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    or-int/lit8 v2, v2, 0x4d

    .line 332
    :cond_1fa
    and-int/lit8 v1, p0, 0x4e

    const/16 v3, 0x4e

    if-ne v1, v3, :cond_207

    .line 333
    const-string v1, "LTE_HIDDEN_BAND_PRIORITY_26"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    or-int/lit8 v2, v2, 0x4e

    .line 336
    :cond_207
    and-int/lit8 v1, p0, 0x4f

    const/16 v3, 0x4f

    if-ne v1, v3, :cond_214

    .line 337
    const-string v1, "LTE_HIDDEN_BAND_PRIORITY_41"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    or-int/lit8 v2, v2, 0x4f

    .line 340
    :cond_214
    if-eq p0, v2, :cond_232

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    not-int v2, v2

    and-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    :cond_232
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3

    .line 47
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .line 48
    const-string p0, "CDMA_MEID"

    return-object p0

    .line 50
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    .line 51
    const-string p0, "CDMA_MIN"

    return-object p0

    .line 53
    :cond_c
    const/4 v0, 0x3

    if-ne p0, v0, :cond_12

    .line 54
    const-string p0, "CDMA_MDN"

    return-object p0

    .line 56
    :cond_12
    const/4 v0, 0x4

    if-ne p0, v0, :cond_18

    .line 57
    const-string p0, "CDMA_ACCOLC"

    return-object p0

    .line 59
    :cond_18
    const/16 v0, 0xb

    if-ne p0, v0, :cond_1f

    .line 60
    const-string p0, "DEVICE_MSL"

    return-object p0

    .line 62
    :cond_1f
    const/16 v0, 0xc

    if-ne p0, v0, :cond_26

    .line 63
    const-string p0, "RTN_RECONDITIONED_STATUS"

    return-object p0

    .line 65
    :cond_26
    const/16 v0, 0xd

    if-ne p0, v0, :cond_2d

    .line 66
    const-string p0, "RTN_ACTIVATION_DATE"

    return-object p0

    .line 68
    :cond_2d
    const/16 v0, 0xe

    if-ne p0, v0, :cond_34

    .line 69
    const-string p0, "RTN_LIFE_TIMER"

    return-object p0

    .line 71
    :cond_34
    const/16 v0, 0xf

    if-ne p0, v0, :cond_3b

    .line 72
    const-string p0, "RTN_LIFE_CALLS"

    return-object p0

    .line 74
    :cond_3b
    const/16 v0, 0x10

    if-ne p0, v0, :cond_42

    .line 75
    const-string p0, "RTN_LIFE_DATA_TX"

    return-object p0

    .line 77
    :cond_42
    const/16 v0, 0x11

    if-ne p0, v0, :cond_49

    .line 78
    const-string p0, "RTN_LIFE_DATA_RX"

    return-object p0

    .line 80
    :cond_49
    const/16 v0, 0x12

    if-ne p0, v0, :cond_50

    .line 81
    const-string p0, "OMADM_HFA_LEVEL"

    return-object p0

    .line 83
    :cond_50
    const/16 v0, 0x1f

    if-ne p0, v0, :cond_57

    .line 84
    const-string p0, "MIP_PROFILE_NAI"

    return-object p0

    .line 86
    :cond_57
    const/16 v0, 0x20

    if-ne p0, v0, :cond_5e

    .line 87
    const-string p0, "MIP_PROFILE_HOME_ADDRESS"

    return-object p0

    .line 89
    :cond_5e
    const/16 v0, 0x21

    if-ne p0, v0, :cond_65

    .line 90
    const-string p0, "MIP_PROFILE_AAA_AUTH"

    return-object p0

    .line 92
    :cond_65
    const/16 v0, 0x22

    if-ne p0, v0, :cond_6c

    .line 93
    const-string p0, "MIP_PROFILE_HA_AUTH"

    return-object p0

    .line 95
    :cond_6c
    const/16 v0, 0x23

    if-ne p0, v0, :cond_73

    .line 96
    const-string p0, "MIP_PROFILE_PRI_HA_ADDR"

    return-object p0

    .line 98
    :cond_73
    const/16 v0, 0x24

    if-ne p0, v0, :cond_7a

    .line 99
    const-string p0, "MIP_PROFILE_SEC_HA_ADDR"

    return-object p0

    .line 101
    :cond_7a
    const/16 v0, 0x25

    if-ne p0, v0, :cond_81

    .line 102
    const-string p0, "MIP_PROFILE_REV_TUN_PREF"

    return-object p0

    .line 104
    :cond_81
    const/16 v0, 0x26

    if-ne p0, v0, :cond_88

    .line 105
    const-string p0, "MIP_PROFILE_HA_SPI"

    return-object p0

    .line 107
    :cond_88
    const/16 v0, 0x27

    if-ne p0, v0, :cond_8f

    .line 108
    const-string p0, "MIP_PROFILE_AAA_SPI"

    return-object p0

    .line 110
    :cond_8f
    const/16 v0, 0x28

    if-ne p0, v0, :cond_96

    .line 111
    const-string p0, "MIP_PROFILE_MN_HA_SS"

    return-object p0

    .line 113
    :cond_96
    const/16 v0, 0x29

    if-ne p0, v0, :cond_9d

    .line 114
    const-string p0, "MIP_PROFILE_MN_AAA_SS"

    return-object p0

    .line 116
    :cond_9d
    const/16 v0, 0x33

    if-ne p0, v0, :cond_a4

    .line 117
    const-string p0, "CDMA_PRL_VERSION"

    return-object p0

    .line 119
    :cond_a4
    const/16 v0, 0x34

    if-ne p0, v0, :cond_ab

    .line 120
    const-string p0, "CDMA_BC10"

    return-object p0

    .line 122
    :cond_ab
    const/16 v0, 0x35

    if-ne p0, v0, :cond_b2

    .line 123
    const-string p0, "CDMA_BC14"

    return-object p0

    .line 125
    :cond_b2
    const/16 v0, 0x36

    if-ne p0, v0, :cond_b9

    .line 126
    const-string p0, "CDMA_SO68"

    return-object p0

    .line 128
    :cond_b9
    const/16 v0, 0x37

    if-ne p0, v0, :cond_c0

    .line 129
    const-string p0, "CDMA_SO73_COP0"

    return-object p0

    .line 131
    :cond_c0
    const/16 v0, 0x38

    if-ne p0, v0, :cond_c7

    .line 132
    const-string p0, "CDMA_SO73_COP1TO7"

    return-object p0

    .line 134
    :cond_c7
    const/16 v0, 0x39

    if-ne p0, v0, :cond_ce

    .line 135
    const-string p0, "CDMA_1X_ADVANCED_ENABLED"

    return-object p0

    .line 137
    :cond_ce
    const/16 v0, 0x3a

    if-ne p0, v0, :cond_d5

    .line 138
    const-string p0, "CDMA_EHRPD_ENABLED"

    return-object p0

    .line 140
    :cond_d5
    const/16 v0, 0x3b

    if-ne p0, v0, :cond_dc

    .line 141
    const-string p0, "CDMA_EHRPD_FORCED"

    return-object p0

    .line 143
    :cond_dc
    const/16 v0, 0x47

    if-ne p0, v0, :cond_e3

    .line 144
    const-string p0, "LTE_BAND_ENABLE_25"

    return-object p0

    .line 146
    :cond_e3
    const/16 v0, 0x48

    if-ne p0, v0, :cond_ea

    .line 147
    const-string p0, "LTE_BAND_ENABLE_26"

    return-object p0

    .line 149
    :cond_ea
    const/16 v0, 0x49

    if-ne p0, v0, :cond_f1

    .line 150
    const-string p0, "LTE_BAND_ENABLE_41"

    return-object p0

    .line 152
    :cond_f1
    const/16 v0, 0x4a

    if-ne p0, v0, :cond_f8

    .line 153
    const-string p0, "LTE_SCAN_PRIORITY_25"

    return-object p0

    .line 155
    :cond_f8
    const/16 v0, 0x4b

    if-ne p0, v0, :cond_ff

    .line 156
    const-string p0, "LTE_SCAN_PRIORITY_26"

    return-object p0

    .line 158
    :cond_ff
    const/16 v0, 0x4c

    if-ne p0, v0, :cond_106

    .line 159
    const-string p0, "LTE_SCAN_PRIORITY_41"

    return-object p0

    .line 161
    :cond_106
    const/16 v0, 0x4d

    if-ne p0, v0, :cond_10d

    .line 162
    const-string p0, "LTE_HIDDEN_BAND_PRIORITY_25"

    return-object p0

    .line 164
    :cond_10d
    const/16 v0, 0x4e

    if-ne p0, v0, :cond_114

    .line 165
    const-string p0, "LTE_HIDDEN_BAND_PRIORITY_26"

    return-object p0

    .line 167
    :cond_114
    const/16 v0, 0x4f

    if-ne p0, v0, :cond_11b

    .line 168
    const-string p0, "LTE_HIDDEN_BAND_PRIORITY_41"

    return-object p0

    .line 170
    :cond_11b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
