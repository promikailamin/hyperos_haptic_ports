.class public Lcom/miui/mishare/DeviceModel;
.super Ljava/lang/Object;
.source "DeviceModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/mishare/DeviceModel$Lenovo;,
        Lcom/miui/mishare/DeviceModel$Samsung;,
        Lcom/miui/mishare/DeviceModel$Smartisan;,
        Lcom/miui/mishare/DeviceModel$Asus;,
        Lcom/miui/mishare/DeviceModel$Hisense;,
        Lcom/miui/mishare/DeviceModel$Nubia;,
        Lcom/miui/mishare/DeviceModel$Zte;,
        Lcom/miui/mishare/DeviceModel$Oneplus;,
        Lcom/miui/mishare/DeviceModel$Meizu;,
        Lcom/miui/mishare/DeviceModel$BlackShark;,
        Lcom/miui/mishare/DeviceModel$Xiaomi;,
        Lcom/miui/mishare/DeviceModel$Vivo;,
        Lcom/miui/mishare/DeviceModel$Oppo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final blacklist MANUFACTURE_UNDEFINED:B

.field private static final blacklist sSupportUwb:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 418
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "odin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/mishare/DeviceModel;->sSupportUwb:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getDeviceName(Landroid/content/Context;BI)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "manufactureCode"    # B
    .param p2, "deviceCode"    # I

    .line 299
    invoke-static {p1, p2}, Lcom/miui/mishare/DeviceModel;->getDeviceRes(BI)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getDeviceRes(BI)I
    .registers 4
    .param p0, "manufactureCode"    # B
    .param p1, "deviceCode"    # I

    .line 303
    const/16 v0, 0x14

    if-lt p0, v0, :cond_c

    const/16 v0, 0x1d

    if-gt p0, v0, :cond_c

    .line 304
    const v0, 0x110f03d5

    return v0

    .line 305
    :cond_c
    const/16 v0, 0xa

    if-lt p0, v0, :cond_20

    const/16 v0, 0x13

    if-gt p0, v0, :cond_20

    .line 306
    const/16 v0, 0xb

    if-ne p0, v0, :cond_1c

    .line 307
    const v0, 0x110f02f2

    return v0

    .line 309
    :cond_1c
    const v0, 0x110f02c4

    return v0

    .line 310
    :cond_20
    const/16 v0, 0x32

    if-lt p0, v0, :cond_2c

    const/16 v0, 0x3b

    if-gt p0, v0, :cond_2c

    .line 311
    const v0, 0x110f0281

    return v0

    .line 312
    :cond_2c
    const/16 v0, 0x29

    if-lt p0, v0, :cond_38

    const/16 v0, 0x2d

    if-gt p0, v0, :cond_38

    .line 313
    const v0, 0x110f02bf

    return v0

    .line 314
    :cond_38
    const/16 v0, 0x50

    if-lt p0, v0, :cond_44

    const/16 v0, 0x59

    if-gt p0, v0, :cond_44

    .line 315
    const v0, 0x110f0420

    return v0

    .line 316
    :cond_44
    const/16 v0, 0x3c

    if-lt p0, v0, :cond_50

    const/16 v0, 0x45

    if-gt p0, v0, :cond_50

    .line 317
    const v0, 0x110f02bc

    return v0

    .line 318
    :cond_50
    const/16 v0, -0x56

    if-lt p0, v0, :cond_5c

    const/16 v0, -0x4d

    if-gt p0, v0, :cond_5c

    .line 319
    const v0, 0x110f022d

    return v0

    .line 320
    :cond_5c
    const/16 v0, -0x60

    if-lt p0, v0, :cond_6e

    const/16 v1, -0x57

    if-gt p0, v1, :cond_6e

    .line 321
    if-ne p0, v0, :cond_6a

    .line 322
    const v0, 0x110f031e

    return v0

    .line 324
    :cond_6a
    const v0, 0x110f0055

    return v0

    .line 325
    :cond_6e
    const/16 v0, 0x5a

    if-lt p0, v0, :cond_7a

    const/16 v0, 0x5f

    if-gt p0, v0, :cond_7a

    .line 326
    const v0, 0x110f0366

    return v0

    .line 327
    :cond_7a
    const/16 v0, 0x46

    if-lt p0, v0, :cond_86

    const/16 v0, 0x4b

    if-gt p0, v0, :cond_86

    .line 328
    const v0, 0x110f0320

    return v0

    .line 329
    :cond_86
    const/16 v0, 0x64

    if-lt p0, v0, :cond_92

    const/16 v0, 0x6d

    if-gt p0, v0, :cond_92

    .line 330
    const v0, 0x110f026a

    return v0

    .line 331
    :cond_92
    const/16 v0, 0x1e

    if-lt p0, v0, :cond_13c

    const/16 v0, 0x27

    if-gt p0, v0, :cond_13c

    .line 332
    sparse-switch p1, :sswitch_data_140

    .line 408
    invoke-static {}, Lcom/miui/mishare/DeviceModel;->isBlackShark()Z

    move-result v0

    if-eqz v0, :cond_138

    const v0, 0x110f0079

    goto/16 :goto_13b

    .line 405
    :sswitch_a8
    const v0, 0x110f0077

    return v0

    .line 403
    :sswitch_ac
    const v0, 0x110f0076

    return v0

    .line 401
    :sswitch_b0
    const v0, 0x110f0075

    return v0

    .line 399
    :sswitch_b4
    const v0, 0x110f0074

    return v0

    .line 397
    :sswitch_b8
    const v0, 0x110f0078

    return v0

    .line 395
    :sswitch_bc
    const v0, 0x110f0073

    return v0

    .line 392
    :sswitch_c0
    const v0, 0x110f0289

    return v0

    .line 390
    :sswitch_c4
    const v0, 0x110f0288

    return v0

    .line 388
    :sswitch_c8
    const v0, 0x110f0287

    return v0

    .line 386
    :sswitch_cc
    const v0, 0x110f02fd

    return v0

    .line 384
    :sswitch_d0
    const v0, 0x110f02fc

    return v0

    .line 382
    :sswitch_d4
    const v0, 0x110f02fe

    return v0

    .line 380
    :sswitch_d8
    const v0, 0x110f02fb

    return v0

    .line 378
    :sswitch_dc
    const v0, 0x110f02f9

    return v0

    .line 376
    :sswitch_e0
    const v0, 0x110f02fa

    return v0

    .line 374
    :sswitch_e4
    const v0, 0x110f02f8

    return v0

    .line 372
    :sswitch_e8
    const v0, 0x110f0300

    return v0

    .line 370
    :sswitch_ec
    const v0, 0x110f02ff

    return v0

    .line 368
    :sswitch_f0
    const v0, 0x110f0418

    return v0

    .line 366
    :sswitch_f4
    const v0, 0x110f0412

    return v0

    .line 364
    :sswitch_f8
    const v0, 0x110f041a

    return v0

    .line 360
    :sswitch_fc
    const v0, 0x110f0410

    return v0

    .line 362
    :sswitch_100
    const v0, 0x110f0411

    return v0

    .line 358
    :sswitch_104
    const v0, 0x110f040f

    return v0

    .line 356
    :sswitch_108
    const v0, 0x110f0416

    return v0

    .line 354
    :sswitch_10c
    const v0, 0x110f0415

    return v0

    .line 352
    :sswitch_110
    const v0, 0x110f0414

    return v0

    .line 350
    :sswitch_114
    const v0, 0x110f0413

    return v0

    .line 348
    :sswitch_118
    const v0, 0x110f0407

    return v0

    .line 346
    :sswitch_11c
    const v0, 0x110f0409

    return v0

    .line 344
    :sswitch_120
    const v0, 0x110f040c

    return v0

    .line 342
    :sswitch_124
    const v0, 0x110f040b

    return v0

    .line 340
    :sswitch_128
    const v0, 0x110f040a

    return v0

    .line 338
    :sswitch_12c
    const v0, 0x110f0408

    return v0

    .line 336
    :sswitch_130
    const v0, 0x110f040e

    return v0

    .line 334
    :sswitch_134
    const v0, 0x110f040d

    return v0

    .line 408
    :cond_138
    const v0, 0x110f0419

    :goto_13b
    return v0

    .line 411
    :cond_13c
    const v0, 0x110f03cd

    return v0

    :sswitch_data_140
    .sparse-switch
        0x1 -> :sswitch_134
        0x2 -> :sswitch_130
        0x3 -> :sswitch_12c
        0x4 -> :sswitch_128
        0x5 -> :sswitch_124
        0x6 -> :sswitch_120
        0x7 -> :sswitch_11c
        0x8 -> :sswitch_118
        0x101 -> :sswitch_114
        0x102 -> :sswitch_110
        0x103 -> :sswitch_10c
        0x104 -> :sswitch_108
        0x201 -> :sswitch_104
        0x202 -> :sswitch_100
        0x203 -> :sswitch_fc
        0xf01 -> :sswitch_f8
        0xf02 -> :sswitch_f4
        0xf03 -> :sswitch_f0
        0x1001 -> :sswitch_ec
        0x1002 -> :sswitch_e8
        0x1003 -> :sswitch_e4
        0x1004 -> :sswitch_e0
        0x1005 -> :sswitch_dc
        0x1006 -> :sswitch_d8
        0x1007 -> :sswitch_d4
        0x1008 -> :sswitch_d0
        0x1009 -> :sswitch_cc
        0x2001 -> :sswitch_c8
        0x2002 -> :sswitch_c4
        0x2003 -> :sswitch_c0
        0x3001 -> :sswitch_bc
        0x3002 -> :sswitch_b8
        0x3003 -> :sswitch_b4
        0x3004 -> :sswitch_b0
        0x3005 -> :sswitch_ac
        0x3006 -> :sswitch_a8
    .end sparse-switch
.end method

.method public static blacklist getManufactureName(Landroid/content/Context;B)Ljava/lang/String;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "manufactureCode"    # B

    .line 257
    invoke-static {p1}, Lcom/miui/mishare/DeviceModel;->getManufactureRes(B)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getManufactureRes(B)I
    .registers 3
    .param p0, "manufactureCode"    # B

    .line 261
    const/16 v0, 0x14

    if-lt p0, v0, :cond_c

    const/16 v0, 0x1d

    if-gt p0, v0, :cond_c

    .line 262
    const v0, 0x110f03d4

    return v0

    .line 263
    :cond_c
    const/16 v0, 0xa

    if-lt p0, v0, :cond_20

    const/16 v0, 0x13

    if-gt p0, v0, :cond_20

    .line 264
    const/16 v0, 0xb

    if-ne p0, v0, :cond_1c

    .line 265
    const v0, 0x110f02f2

    return v0

    .line 267
    :cond_1c
    const v0, 0x110f02c3

    return v0

    .line 268
    :cond_20
    const/16 v0, 0x1e

    if-lt p0, v0, :cond_34

    const/16 v0, 0x27

    if-gt p0, v0, :cond_34

    .line 269
    const/16 v0, 0x20

    if-ne p0, v0, :cond_30

    .line 270
    const v0, 0x110f0072

    return v0

    .line 272
    :cond_30
    const v0, 0x110f0406

    return v0

    .line 273
    :cond_34
    const/16 v0, 0x32

    if-lt p0, v0, :cond_40

    const/16 v0, 0x3b

    if-gt p0, v0, :cond_40

    .line 274
    const v0, 0x110f0280

    return v0

    .line 275
    :cond_40
    const/16 v0, 0x29

    if-lt p0, v0, :cond_4c

    const/16 v0, 0x2d

    if-gt p0, v0, :cond_4c

    .line 276
    const v0, 0x110f02be

    return v0

    .line 277
    :cond_4c
    const/16 v0, 0x50

    if-lt p0, v0, :cond_58

    const/16 v0, 0x59

    if-gt p0, v0, :cond_58

    .line 278
    const v0, 0x110f041f

    return v0

    .line 279
    :cond_58
    const/16 v0, 0x3c

    if-lt p0, v0, :cond_64

    const/16 v0, 0x45

    if-gt p0, v0, :cond_64

    .line 280
    const v0, 0x110f02bb

    return v0

    .line 281
    :cond_64
    const/16 v0, -0x56

    if-lt p0, v0, :cond_70

    const/16 v0, -0x4d

    if-gt p0, v0, :cond_70

    .line 282
    const v0, 0x110f022c

    return v0

    .line 283
    :cond_70
    const/16 v0, -0x60

    if-lt p0, v0, :cond_82

    const/16 v1, -0x57

    if-gt p0, v1, :cond_82

    .line 284
    if-ne p0, v0, :cond_7e

    .line 285
    const v0, 0x110f031d

    return v0

    .line 287
    :cond_7e
    const v0, 0x110f0054

    return v0

    .line 288
    :cond_82
    const/16 v0, 0x5a

    if-lt p0, v0, :cond_8e

    const/16 v0, 0x5f

    if-gt p0, v0, :cond_8e

    .line 289
    const v0, 0x110f0365

    return v0

    .line 290
    :cond_8e
    const/16 v0, 0x46

    if-lt p0, v0, :cond_9a

    const/16 v0, 0x4b

    if-gt p0, v0, :cond_9a

    .line 291
    const v0, 0x110f031f

    return v0

    .line 292
    :cond_9a
    const/16 v0, 0x64

    if-lt p0, v0, :cond_a6

    const/16 v0, 0x6d

    if-gt p0, v0, :cond_a6

    .line 293
    const v0, 0x110f0269

    return v0

    .line 295
    :cond_a6
    const v0, 0x110f03cc

    return v0
.end method

.method private static blacklist isBlackShark()Z
    .registers 2

    .line 415
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "blackshark"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist myDeviceCode()I
    .registers 11

    .line 192
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    sparse-switch v1, :sswitch_data_1ca

    :cond_12
    goto/16 :goto_16a

    :sswitch_14
    const-string v1, "davinciin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x1b

    goto/16 :goto_16b

    :sswitch_20
    const-string v1, "davinci"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x1a

    goto/16 :goto_16b

    :sswitch_2c
    const-string v1, "andromeda"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xb

    goto/16 :goto_16b

    :sswitch_38
    const-string v1, "raphaelin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x1d

    goto/16 :goto_16b

    :sswitch_44
    const-string v1, "raphael"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x1c

    goto/16 :goto_16b

    :sswitch_50
    const-string v1, "cepheus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    goto/16 :goto_16b

    :sswitch_5b
    const-string v1, "equuleus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v6

    goto/16 :goto_16b

    :sswitch_66
    const-string v1, "nitrogen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x10

    goto/16 :goto_16b

    :sswitch_72
    const-string v1, "beryllium"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xf

    goto/16 :goto_16b

    :sswitch_7e
    const-string v1, "sagit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v3

    goto/16 :goto_16b

    :sswitch_89
    const-string v1, "pyxis"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xc

    goto/16 :goto_16b

    :sswitch_95
    const-string v1, "jason"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x11

    goto/16 :goto_16b

    :sswitch_a1
    const-string v1, "vela"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xd

    goto/16 :goto_16b

    :sswitch_ad
    const-string v1, "ursa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v4

    goto/16 :goto_16b

    :sswitch_b8
    const-string v1, "pine"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x18

    goto/16 :goto_16b

    :sswitch_c4
    const-string v1, "grus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v9

    goto/16 :goto_16b

    :sswitch_cf
    const-string v1, "polaris"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x9

    goto/16 :goto_16b

    :sswitch_db
    const-string v1, "platina"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v5

    goto/16 :goto_16b

    :sswitch_e6
    const-string v1, "perseus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xa

    goto/16 :goto_16b

    :sswitch_f2
    const-string v1, "whyred"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x19

    goto/16 :goto_16b

    :sswitch_fe
    const-string v1, "violet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x13

    goto/16 :goto_16b

    :sswitch_10a
    const-string v1, "sirius"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v7

    goto :goto_16b

    :sswitch_114
    const-string v1, "sakura"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x16

    goto :goto_16b

    :sswitch_11f
    const-string v1, "laurus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xe

    goto :goto_16b

    :sswitch_12a
    const-string v1, "sakura_india"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x17

    goto :goto_16b

    :sswitch_135
    const-string v1, "dipper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v8

    goto :goto_16b

    :sswitch_13f
    const-string v1, "chiron"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v2

    goto :goto_16b

    :sswitch_149
    const-string v1, "cereus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x14

    goto :goto_16b

    :sswitch_154
    const-string v1, "cactus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x15

    goto :goto_16b

    :sswitch_15f
    const-string v1, "lavender"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x12

    goto :goto_16b

    :goto_16a
    const/4 v0, -0x1

    :goto_16b
    const/16 v1, 0x1009

    const/16 v10, 0x1008

    packed-switch v0, :pswitch_data_244

    .line 253
    const v0, 0xffff

    return v0

    .line 251
    :pswitch_176
    return v1

    .line 249
    :pswitch_177
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_17c

    goto :goto_17e

    :cond_17c
    const/16 v1, 0x2002

    :goto_17e
    return v1

    .line 247
    :pswitch_17f
    return v10

    .line 245
    :pswitch_180
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_185

    goto :goto_187

    :cond_185
    const/16 v10, 0x2001

    :goto_187
    return v10

    .line 243
    :pswitch_188
    const/16 v0, 0x1007

    return v0

    .line 241
    :pswitch_18b
    const/16 v0, 0x1006

    return v0

    .line 239
    :pswitch_18e
    const/16 v0, 0x1005

    return v0

    .line 236
    :pswitch_191
    const/16 v0, 0x1004

    return v0

    .line 234
    :pswitch_194
    const/16 v0, 0x1003

    return v0

    .line 232
    :pswitch_197
    const/16 v0, 0x1002

    return v0

    .line 230
    :pswitch_19a
    const/16 v0, 0x1001

    return v0

    .line 228
    :pswitch_19d
    const/16 v0, 0xf03

    return v0

    .line 226
    :pswitch_1a0
    const/16 v0, 0xf02

    return v0

    .line 224
    :pswitch_1a3
    const/16 v0, 0xf01

    return v0

    .line 222
    :pswitch_1a6
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1ad

    const/16 v0, 0x202

    goto :goto_1af

    :cond_1ad
    const/16 v0, 0x2003

    :goto_1af
    return v0

    .line 220
    :pswitch_1b0
    const/16 v0, 0x203

    return v0

    .line 218
    :pswitch_1b3
    const/16 v0, 0x201

    return v0

    .line 216
    :pswitch_1b6
    const/16 v0, 0x104

    return v0

    .line 214
    :pswitch_1b9
    const/16 v0, 0x103

    return v0

    .line 212
    :pswitch_1bc
    const/16 v0, 0x102

    return v0

    .line 210
    :pswitch_1bf
    const/16 v0, 0x101

    return v0

    .line 208
    :pswitch_1c2
    return v2

    .line 206
    :pswitch_1c3
    return v3

    .line 204
    :pswitch_1c4
    return v4

    .line 202
    :pswitch_1c5
    return v5

    .line 200
    :pswitch_1c6
    return v6

    .line 198
    :pswitch_1c7
    return v7

    .line 196
    :pswitch_1c8
    return v8

    .line 194
    :pswitch_1c9
    return v9

    :sswitch_data_1ca
    .sparse-switch
        -0x52a5fa39 -> :sswitch_15f
        -0x518a8fd3 -> :sswitch_154
        -0x514b988d -> :sswitch_149
        -0x51253953 -> :sswitch_13f
        -0x4f5f234e -> :sswitch_135
        -0x4cf7fca1 -> :sswitch_12a
        -0x4226cb10 -> :sswitch_11f
        -0x36395f99 -> :sswitch_114
        -0x35c5a195 -> :sswitch_10a
        -0x30a86b81 -> :sswitch_fe
        -0x2efd0837 -> :sswitch_f2
        -0x287054f3 -> :sswitch_e6
        -0x1d6d75b3 -> :sswitch_db
        -0x17bc6b18 -> :sswitch_cf
        0x308cc9 -> :sswitch_c4
        0x348170 -> :sswitch_b8
        0x36e9ab -> :sswitch_ad
        0x372c64 -> :sswitch_a1
        0x60390fb -> :sswitch_95
        0x66318f9 -> :sswitch_89
        0x68236c4 -> :sswitch_7e
        0x212e93b7 -> :sswitch_72
        0x219c397a -> :sswitch_66
        0x23c13c23 -> :sswitch_5b
        0x27bd79a9 -> :sswitch_50
        0x3a677f01 -> :sswitch_44
        0x3e83cfe6 -> :sswitch_38
        0x43763869 -> :sswitch_2c
        0x56257364 -> :sswitch_20
        0x62963789 -> :sswitch_14
    .end sparse-switch

    :pswitch_data_244
    .packed-switch 0x0
        :pswitch_1c9
        :pswitch_1c8
        :pswitch_1c7
        :pswitch_1c6
        :pswitch_1c5
        :pswitch_1c4
        :pswitch_1c3
        :pswitch_1c2
        :pswitch_1bf
        :pswitch_1bc
        :pswitch_1b9
        :pswitch_1b6
        :pswitch_1b3
        :pswitch_1b0
        :pswitch_1a6
        :pswitch_1a3
        :pswitch_1a0
        :pswitch_19d
        :pswitch_19a
        :pswitch_197
        :pswitch_194
        :pswitch_191
        :pswitch_18e
        :pswitch_18e
        :pswitch_18b
        :pswitch_188
        :pswitch_180
        :pswitch_17f
        :pswitch_177
        :pswitch_176
    .end packed-switch
.end method

.method public static blacklist myManufactureCode()B
    .registers 5

    .line 144
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1f

    const/16 v3, 0x20

    const/16 v4, 0x1e

    sparse-switch v1, :sswitch_data_1bc

    :cond_f
    goto/16 :goto_1ad

    :sswitch_11
    const-string v1, "davinciin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x1b

    goto/16 :goto_1ae

    :sswitch_1d
    const-string v1, "davinci"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x1a

    goto/16 :goto_1ae

    :sswitch_29
    const-string v1, "andromeda"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xb

    goto/16 :goto_1ae

    :sswitch_35
    const-string v1, "raphaelin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x1d

    goto/16 :goto_1ae

    :sswitch_41
    const-string v1, "raphael"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x1c

    goto/16 :goto_1ae

    :sswitch_4d
    const-string v1, "darklighter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x21

    goto/16 :goto_1ae

    :sswitch_59
    const-string v1, "cepheus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    goto/16 :goto_1ae

    :sswitch_64
    const-string v1, "equuleus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x4

    goto/16 :goto_1ae

    :sswitch_6f
    const-string v1, "nitrogen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x10

    goto/16 :goto_1ae

    :sswitch_7b
    const-string v1, "beryllium"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xf

    goto/16 :goto_1ae

    :sswitch_87
    const-string v1, "shark"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v4

    goto/16 :goto_1ae

    :sswitch_92
    const-string v1, "sagit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x7

    goto/16 :goto_1ae

    :sswitch_9d
    const-string v1, "pyxis"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xc

    goto/16 :goto_1ae

    :sswitch_a9
    const-string v1, "klein"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x22

    goto/16 :goto_1ae

    :sswitch_b5
    const-string v1, "jason"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x11

    goto/16 :goto_1ae

    :sswitch_c1
    const-string v1, "vela"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xd

    goto/16 :goto_1ae

    :sswitch_cd
    const-string v1, "ursa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x6

    goto/16 :goto_1ae

    :sswitch_d8
    const-string v1, "pine"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x18

    goto/16 :goto_1ae

    :sswitch_e4
    const-string v1, "grus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto/16 :goto_1ae

    :sswitch_ef
    const-string v1, "polaris"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x9

    goto/16 :goto_1ae

    :sswitch_fb
    const-string v1, "platina"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x5

    goto/16 :goto_1ae

    :sswitch_106
    const-string v1, "perseus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xa

    goto/16 :goto_1ae

    :sswitch_112
    const-string v1, "skywalker"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v3

    goto/16 :goto_1ae

    :sswitch_11d
    const-string v1, "whyred"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x19

    goto/16 :goto_1ae

    :sswitch_129
    const-string v1, "violet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x13

    goto/16 :goto_1ae

    :sswitch_135
    const-string v1, "sirius"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x3

    goto/16 :goto_1ae

    :sswitch_140
    const-string v1, "sakura"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x16

    goto/16 :goto_1ae

    :sswitch_14c
    const-string v1, "mobius"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x23

    goto :goto_1ae

    :sswitch_157
    const-string v1, "laurus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xe

    goto :goto_1ae

    :sswitch_162
    const-string v1, "sakura_india"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x17

    goto :goto_1ae

    :sswitch_16d
    const-string v1, "dipper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x2

    goto :goto_1ae

    :sswitch_177
    const-string v1, "bullhead"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v2

    goto :goto_1ae

    :sswitch_181
    const-string v1, "chiron"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x8

    goto :goto_1ae

    :sswitch_18c
    const-string v1, "cereus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x14

    goto :goto_1ae

    :sswitch_197
    const-string v1, "cactus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x15

    goto :goto_1ae

    :sswitch_1a2
    const-string v1, "lavender"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x12

    goto :goto_1ae

    :goto_1ad
    const/4 v0, -0x1

    :goto_1ae
    packed-switch v0, :pswitch_data_24e

    .line 185
    invoke-static {}, Lcom/miui/mishare/DeviceModel;->isBlackShark()Z

    move-result v0

    if-eqz v0, :cond_1bb

    .line 186
    return v3

    .line 183
    :pswitch_1b8
    return v3

    .line 176
    :pswitch_1b9
    return v2

    .line 163
    :pswitch_1ba
    return v4

    .line 188
    :cond_1bb
    return v4

    :sswitch_data_1bc
    .sparse-switch
        -0x52a5fa39 -> :sswitch_1a2
        -0x518a8fd3 -> :sswitch_197
        -0x514b988d -> :sswitch_18c
        -0x51253953 -> :sswitch_181
        -0x5025a28d -> :sswitch_177
        -0x4f5f234e -> :sswitch_16d
        -0x4cf7fca1 -> :sswitch_162
        -0x4226cb10 -> :sswitch_157
        -0x3fb56e39 -> :sswitch_14c
        -0x36395f99 -> :sswitch_140
        -0x35c5a195 -> :sswitch_135
        -0x30a86b81 -> :sswitch_129
        -0x2efd0837 -> :sswitch_11d
        -0x28b80f69 -> :sswitch_112
        -0x287054f3 -> :sswitch_106
        -0x1d6d75b3 -> :sswitch_fb
        -0x17bc6b18 -> :sswitch_ef
        0x308cc9 -> :sswitch_e4
        0x348170 -> :sswitch_d8
        0x36e9ab -> :sswitch_cd
        0x372c64 -> :sswitch_c1
        0x60390fb -> :sswitch_b5
        0x6167349 -> :sswitch_a9
        0x66318f9 -> :sswitch_9d
        0x68236c4 -> :sswitch_92
        0x6854fe5 -> :sswitch_87
        0x212e93b7 -> :sswitch_7b
        0x219c397a -> :sswitch_6f
        0x23c13c23 -> :sswitch_64
        0x27bd79a9 -> :sswitch_59
        0x34eb340d -> :sswitch_4d
        0x3a677f01 -> :sswitch_41
        0x3e83cfe6 -> :sswitch_35
        0x43763869 -> :sswitch_29
        0x56257364 -> :sswitch_1d
        0x62963789 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_24e
    .packed-switch 0x0
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1b9
        :pswitch_1b9
        :pswitch_1b9
        :pswitch_1b9
        :pswitch_1b9
        :pswitch_1b9
        :pswitch_1b9
        :pswitch_1b9
        :pswitch_1b9
        :pswitch_1b9
        :pswitch_1b9
        :pswitch_1b9
        :pswitch_1b8
        :pswitch_1b8
        :pswitch_1b8
        :pswitch_1b8
        :pswitch_1b8
        :pswitch_1b8
    .end packed-switch
.end method

.method public static blacklist supportUwb()Z
    .registers 1

    .line 421
    sget-boolean v0, Lcom/miui/mishare/DeviceModel;->sSupportUwb:Z

    return v0
.end method
