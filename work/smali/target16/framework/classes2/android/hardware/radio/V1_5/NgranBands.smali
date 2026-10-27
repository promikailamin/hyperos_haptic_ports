.class public final Landroid/hardware/radio/V1_5/NgranBands;
.super Ljava/lang/Object;
.source "NgranBands.java"


# static fields
.field public static final blacklist BAND_1:I = 0x1

.field public static final blacklist BAND_12:I = 0xc

.field public static final blacklist BAND_14:I = 0xe

.field public static final blacklist BAND_18:I = 0x12

.field public static final blacklist BAND_2:I = 0x2

.field public static final blacklist BAND_20:I = 0x14

.field public static final blacklist BAND_25:I = 0x19

.field public static final blacklist BAND_257:I = 0x101

.field public static final blacklist BAND_258:I = 0x102

.field public static final blacklist BAND_260:I = 0x104

.field public static final blacklist BAND_261:I = 0x105

.field public static final blacklist BAND_28:I = 0x1c

.field public static final blacklist BAND_29:I = 0x1d

.field public static final blacklist BAND_3:I = 0x3

.field public static final blacklist BAND_30:I = 0x1e

.field public static final blacklist BAND_34:I = 0x22

.field public static final blacklist BAND_38:I = 0x26

.field public static final blacklist BAND_39:I = 0x27

.field public static final blacklist BAND_40:I = 0x28

.field public static final blacklist BAND_41:I = 0x29

.field public static final blacklist BAND_48:I = 0x30

.field public static final blacklist BAND_5:I = 0x5

.field public static final blacklist BAND_50:I = 0x32

.field public static final blacklist BAND_51:I = 0x33

.field public static final blacklist BAND_65:I = 0x41

.field public static final blacklist BAND_66:I = 0x42

.field public static final blacklist BAND_7:I = 0x7

.field public static final blacklist BAND_70:I = 0x46

.field public static final blacklist BAND_71:I = 0x47

.field public static final blacklist BAND_74:I = 0x4a

.field public static final blacklist BAND_75:I = 0x4b

.field public static final blacklist BAND_76:I = 0x4c

.field public static final blacklist BAND_77:I = 0x4d

.field public static final blacklist BAND_78:I = 0x4e

.field public static final blacklist BAND_79:I = 0x4f

.field public static final blacklist BAND_8:I = 0x8

.field public static final blacklist BAND_80:I = 0x50

.field public static final blacklist BAND_81:I = 0x51

.field public static final blacklist BAND_82:I = 0x52

.field public static final blacklist BAND_83:I = 0x53

.field public static final blacklist BAND_84:I = 0x54

.field public static final blacklist BAND_86:I = 0x56

.field public static final blacklist BAND_89:I = 0x59

.field public static final blacklist BAND_90:I = 0x5a

.field public static final blacklist BAND_91:I = 0x5b

.field public static final blacklist BAND_92:I = 0x5c

.field public static final blacklist BAND_93:I = 0x5d

.field public static final blacklist BAND_94:I = 0x5e

.field public static final blacklist BAND_95:I = 0x5f


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 213
    nop

    .line 214
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 215
    const-string v1, "BAND_1"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    goto :goto_12

    .line 214
    :cond_11
    const/4 v2, 0x0

    .line 218
    :goto_12
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1e

    .line 219
    const-string v1, "BAND_2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    or-int/lit8 v2, v2, 0x2

    .line 222
    :cond_1e
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_29

    .line 223
    const-string v1, "BAND_3"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    move v2, v3

    .line 226
    :cond_29
    and-int/lit8 v1, p0, 0x5

    const/4 v3, 0x5

    if-ne v1, v3, :cond_35

    .line 227
    const-string v1, "BAND_5"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    or-int/lit8 v2, v2, 0x5

    .line 230
    :cond_35
    and-int/lit8 v1, p0, 0x7

    const/4 v3, 0x7

    if-ne v1, v3, :cond_40

    .line 231
    const-string v1, "BAND_7"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    move v2, v3

    .line 234
    :cond_40
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_4d

    .line 235
    const-string v1, "BAND_8"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    or-int/lit8 v2, v2, 0x8

    .line 238
    :cond_4d
    and-int/lit8 v1, p0, 0xc

    const/16 v3, 0xc

    if-ne v1, v3, :cond_5a

    .line 239
    const-string v1, "BAND_12"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    or-int/lit8 v2, v2, 0xc

    .line 242
    :cond_5a
    and-int/lit8 v1, p0, 0xe

    const/16 v3, 0xe

    if-ne v1, v3, :cond_67

    .line 243
    const-string v1, "BAND_14"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    or-int/lit8 v2, v2, 0xe

    .line 246
    :cond_67
    and-int/lit8 v1, p0, 0x12

    const/16 v3, 0x12

    if-ne v1, v3, :cond_74

    .line 247
    const-string v1, "BAND_18"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    or-int/lit8 v2, v2, 0x12

    .line 250
    :cond_74
    and-int/lit8 v1, p0, 0x14

    const/16 v3, 0x14

    if-ne v1, v3, :cond_81

    .line 251
    const-string v1, "BAND_20"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    or-int/lit8 v2, v2, 0x14

    .line 254
    :cond_81
    and-int/lit8 v1, p0, 0x19

    const/16 v3, 0x19

    if-ne v1, v3, :cond_8e

    .line 255
    const-string v1, "BAND_25"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    or-int/lit8 v2, v2, 0x19

    .line 258
    :cond_8e
    and-int/lit8 v1, p0, 0x1c

    const/16 v3, 0x1c

    if-ne v1, v3, :cond_9b

    .line 259
    const-string v1, "BAND_28"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    or-int/lit8 v2, v2, 0x1c

    .line 262
    :cond_9b
    and-int/lit8 v1, p0, 0x1d

    const/16 v3, 0x1d

    if-ne v1, v3, :cond_a8

    .line 263
    const-string v1, "BAND_29"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    or-int/lit8 v2, v2, 0x1d

    .line 266
    :cond_a8
    and-int/lit8 v1, p0, 0x1e

    const/16 v3, 0x1e

    if-ne v1, v3, :cond_b5

    .line 267
    const-string v1, "BAND_30"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    or-int/lit8 v2, v2, 0x1e

    .line 270
    :cond_b5
    and-int/lit8 v1, p0, 0x22

    const/16 v3, 0x22

    if-ne v1, v3, :cond_c2

    .line 271
    const-string v1, "BAND_34"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    or-int/lit8 v2, v2, 0x22

    .line 274
    :cond_c2
    and-int/lit8 v1, p0, 0x26

    const/16 v3, 0x26

    if-ne v1, v3, :cond_cf

    .line 275
    const-string v1, "BAND_38"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    or-int/lit8 v2, v2, 0x26

    .line 278
    :cond_cf
    and-int/lit8 v1, p0, 0x27

    const/16 v3, 0x27

    if-ne v1, v3, :cond_dc

    .line 279
    const-string v1, "BAND_39"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    or-int/lit8 v2, v2, 0x27

    .line 282
    :cond_dc
    and-int/lit8 v1, p0, 0x28

    const/16 v3, 0x28

    if-ne v1, v3, :cond_e9

    .line 283
    const-string v1, "BAND_40"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    or-int/lit8 v2, v2, 0x28

    .line 286
    :cond_e9
    and-int/lit8 v1, p0, 0x29

    const/16 v3, 0x29

    if-ne v1, v3, :cond_f6

    .line 287
    const-string v1, "BAND_41"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    or-int/lit8 v2, v2, 0x29

    .line 290
    :cond_f6
    and-int/lit8 v1, p0, 0x30

    const/16 v3, 0x30

    if-ne v1, v3, :cond_103

    .line 291
    const-string v1, "BAND_48"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    or-int/lit8 v2, v2, 0x30

    .line 294
    :cond_103
    and-int/lit8 v1, p0, 0x32

    const/16 v3, 0x32

    if-ne v1, v3, :cond_110

    .line 295
    const-string v1, "BAND_50"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    or-int/lit8 v2, v2, 0x32

    .line 298
    :cond_110
    and-int/lit8 v1, p0, 0x33

    const/16 v3, 0x33

    if-ne v1, v3, :cond_11d

    .line 299
    const-string v1, "BAND_51"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    or-int/lit8 v2, v2, 0x33

    .line 302
    :cond_11d
    and-int/lit8 v1, p0, 0x41

    const/16 v3, 0x41

    if-ne v1, v3, :cond_12a

    .line 303
    const-string v1, "BAND_65"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    or-int/lit8 v2, v2, 0x41

    .line 306
    :cond_12a
    and-int/lit8 v1, p0, 0x42

    const/16 v3, 0x42

    if-ne v1, v3, :cond_137

    .line 307
    const-string v1, "BAND_66"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    or-int/lit8 v2, v2, 0x42

    .line 310
    :cond_137
    and-int/lit8 v1, p0, 0x46

    const/16 v3, 0x46

    if-ne v1, v3, :cond_144

    .line 311
    const-string v1, "BAND_70"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    or-int/lit8 v2, v2, 0x46

    .line 314
    :cond_144
    and-int/lit8 v1, p0, 0x47

    const/16 v3, 0x47

    if-ne v1, v3, :cond_151

    .line 315
    const-string v1, "BAND_71"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    or-int/lit8 v2, v2, 0x47

    .line 318
    :cond_151
    and-int/lit8 v1, p0, 0x4a

    const/16 v3, 0x4a

    if-ne v1, v3, :cond_15e

    .line 319
    const-string v1, "BAND_74"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    or-int/lit8 v2, v2, 0x4a

    .line 322
    :cond_15e
    and-int/lit8 v1, p0, 0x4b

    const/16 v3, 0x4b

    if-ne v1, v3, :cond_16b

    .line 323
    const-string v1, "BAND_75"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    or-int/lit8 v2, v2, 0x4b

    .line 326
    :cond_16b
    and-int/lit8 v1, p0, 0x4c

    const/16 v3, 0x4c

    if-ne v1, v3, :cond_178

    .line 327
    const-string v1, "BAND_76"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    or-int/lit8 v2, v2, 0x4c

    .line 330
    :cond_178
    and-int/lit8 v1, p0, 0x4d

    const/16 v3, 0x4d

    if-ne v1, v3, :cond_185

    .line 331
    const-string v1, "BAND_77"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    or-int/lit8 v2, v2, 0x4d

    .line 334
    :cond_185
    and-int/lit8 v1, p0, 0x4e

    const/16 v3, 0x4e

    if-ne v1, v3, :cond_192

    .line 335
    const-string v1, "BAND_78"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    or-int/lit8 v2, v2, 0x4e

    .line 338
    :cond_192
    and-int/lit8 v1, p0, 0x4f

    const/16 v3, 0x4f

    if-ne v1, v3, :cond_19f

    .line 339
    const-string v1, "BAND_79"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    or-int/lit8 v2, v2, 0x4f

    .line 342
    :cond_19f
    and-int/lit8 v1, p0, 0x50

    const/16 v3, 0x50

    if-ne v1, v3, :cond_1ac

    .line 343
    const-string v1, "BAND_80"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    or-int/lit8 v2, v2, 0x50

    .line 346
    :cond_1ac
    and-int/lit8 v1, p0, 0x51

    const/16 v3, 0x51

    if-ne v1, v3, :cond_1b9

    .line 347
    const-string v1, "BAND_81"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    or-int/lit8 v2, v2, 0x51

    .line 350
    :cond_1b9
    and-int/lit8 v1, p0, 0x52

    const/16 v3, 0x52

    if-ne v1, v3, :cond_1c6

    .line 351
    const-string v1, "BAND_82"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    or-int/lit8 v2, v2, 0x52

    .line 354
    :cond_1c6
    and-int/lit8 v1, p0, 0x53

    const/16 v3, 0x53

    if-ne v1, v3, :cond_1d3

    .line 355
    const-string v1, "BAND_83"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    or-int/lit8 v2, v2, 0x53

    .line 358
    :cond_1d3
    and-int/lit8 v1, p0, 0x54

    const/16 v3, 0x54

    if-ne v1, v3, :cond_1e0

    .line 359
    const-string v1, "BAND_84"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    or-int/lit8 v2, v2, 0x54

    .line 362
    :cond_1e0
    and-int/lit8 v1, p0, 0x56

    const/16 v3, 0x56

    if-ne v1, v3, :cond_1ed

    .line 363
    const-string v1, "BAND_86"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    or-int/lit8 v2, v2, 0x56

    .line 366
    :cond_1ed
    and-int/lit8 v1, p0, 0x59

    const/16 v3, 0x59

    if-ne v1, v3, :cond_1fa

    .line 367
    const-string v1, "BAND_89"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    or-int/lit8 v2, v2, 0x59

    .line 370
    :cond_1fa
    and-int/lit8 v1, p0, 0x5a

    const/16 v3, 0x5a

    if-ne v1, v3, :cond_207

    .line 371
    const-string v1, "BAND_90"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    or-int/lit8 v2, v2, 0x5a

    .line 374
    :cond_207
    and-int/lit8 v1, p0, 0x5b

    const/16 v3, 0x5b

    if-ne v1, v3, :cond_214

    .line 375
    const-string v1, "BAND_91"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    or-int/lit8 v2, v2, 0x5b

    .line 378
    :cond_214
    and-int/lit8 v1, p0, 0x5c

    const/16 v3, 0x5c

    if-ne v1, v3, :cond_221

    .line 379
    const-string v1, "BAND_92"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    or-int/lit8 v2, v2, 0x5c

    .line 382
    :cond_221
    and-int/lit8 v1, p0, 0x5d

    const/16 v3, 0x5d

    if-ne v1, v3, :cond_22e

    .line 383
    const-string v1, "BAND_93"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    or-int/lit8 v2, v2, 0x5d

    .line 386
    :cond_22e
    and-int/lit8 v1, p0, 0x5e

    const/16 v3, 0x5e

    if-ne v1, v3, :cond_23b

    .line 387
    const-string v1, "BAND_94"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    or-int/lit8 v2, v2, 0x5e

    .line 390
    :cond_23b
    and-int/lit8 v1, p0, 0x5f

    const/16 v3, 0x5f

    if-ne v1, v3, :cond_248

    .line 391
    const-string v1, "BAND_95"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    or-int/lit8 v2, v2, 0x5f

    .line 394
    :cond_248
    and-int/lit16 v1, p0, 0x101

    const/16 v3, 0x101

    if-ne v1, v3, :cond_255

    .line 395
    const-string v1, "BAND_257"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    or-int/lit16 v2, v2, 0x101

    .line 398
    :cond_255
    and-int/lit16 v1, p0, 0x102

    const/16 v3, 0x102

    if-ne v1, v3, :cond_262

    .line 399
    const-string v1, "BAND_258"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    or-int/lit16 v2, v2, 0x102

    .line 402
    :cond_262
    and-int/lit16 v1, p0, 0x104

    const/16 v3, 0x104

    if-ne v1, v3, :cond_26f

    .line 403
    const-string v1, "BAND_260"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    or-int/lit16 v2, v2, 0x104

    .line 406
    :cond_26f
    and-int/lit16 v1, p0, 0x105

    const/16 v3, 0x105

    if-ne v1, v3, :cond_27c

    .line 407
    const-string v1, "BAND_261"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    or-int/lit16 v2, v2, 0x105

    .line 410
    :cond_27c
    if-eq p0, v2, :cond_29a

    .line 411
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

    .line 413
    :cond_29a
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3

    .line 61
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .line 62
    const-string p0, "BAND_1"

    return-object p0

    .line 64
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    .line 65
    const-string p0, "BAND_2"

    return-object p0

    .line 67
    :cond_c
    const/4 v0, 0x3

    if-ne p0, v0, :cond_12

    .line 68
    const-string p0, "BAND_3"

    return-object p0

    .line 70
    :cond_12
    const/4 v0, 0x5

    if-ne p0, v0, :cond_18

    .line 71
    const-string p0, "BAND_5"

    return-object p0

    .line 73
    :cond_18
    const/4 v0, 0x7

    if-ne p0, v0, :cond_1e

    .line 74
    const-string p0, "BAND_7"

    return-object p0

    .line 76
    :cond_1e
    const/16 v0, 0x8

    if-ne p0, v0, :cond_25

    .line 77
    const-string p0, "BAND_8"

    return-object p0

    .line 79
    :cond_25
    const/16 v0, 0xc

    if-ne p0, v0, :cond_2c

    .line 80
    const-string p0, "BAND_12"

    return-object p0

    .line 82
    :cond_2c
    const/16 v0, 0xe

    if-ne p0, v0, :cond_33

    .line 83
    const-string p0, "BAND_14"

    return-object p0

    .line 85
    :cond_33
    const/16 v0, 0x12

    if-ne p0, v0, :cond_3a

    .line 86
    const-string p0, "BAND_18"

    return-object p0

    .line 88
    :cond_3a
    const/16 v0, 0x14

    if-ne p0, v0, :cond_41

    .line 89
    const-string p0, "BAND_20"

    return-object p0

    .line 91
    :cond_41
    const/16 v0, 0x19

    if-ne p0, v0, :cond_48

    .line 92
    const-string p0, "BAND_25"

    return-object p0

    .line 94
    :cond_48
    const/16 v0, 0x1c

    if-ne p0, v0, :cond_4f

    .line 95
    const-string p0, "BAND_28"

    return-object p0

    .line 97
    :cond_4f
    const/16 v0, 0x1d

    if-ne p0, v0, :cond_56

    .line 98
    const-string p0, "BAND_29"

    return-object p0

    .line 100
    :cond_56
    const/16 v0, 0x1e

    if-ne p0, v0, :cond_5d

    .line 101
    const-string p0, "BAND_30"

    return-object p0

    .line 103
    :cond_5d
    const/16 v0, 0x22

    if-ne p0, v0, :cond_64

    .line 104
    const-string p0, "BAND_34"

    return-object p0

    .line 106
    :cond_64
    const/16 v0, 0x26

    if-ne p0, v0, :cond_6b

    .line 107
    const-string p0, "BAND_38"

    return-object p0

    .line 109
    :cond_6b
    const/16 v0, 0x27

    if-ne p0, v0, :cond_72

    .line 110
    const-string p0, "BAND_39"

    return-object p0

    .line 112
    :cond_72
    const/16 v0, 0x28

    if-ne p0, v0, :cond_79

    .line 113
    const-string p0, "BAND_40"

    return-object p0

    .line 115
    :cond_79
    const/16 v0, 0x29

    if-ne p0, v0, :cond_80

    .line 116
    const-string p0, "BAND_41"

    return-object p0

    .line 118
    :cond_80
    const/16 v0, 0x30

    if-ne p0, v0, :cond_87

    .line 119
    const-string p0, "BAND_48"

    return-object p0

    .line 121
    :cond_87
    const/16 v0, 0x32

    if-ne p0, v0, :cond_8e

    .line 122
    const-string p0, "BAND_50"

    return-object p0

    .line 124
    :cond_8e
    const/16 v0, 0x33

    if-ne p0, v0, :cond_95

    .line 125
    const-string p0, "BAND_51"

    return-object p0

    .line 127
    :cond_95
    const/16 v0, 0x41

    if-ne p0, v0, :cond_9c

    .line 128
    const-string p0, "BAND_65"

    return-object p0

    .line 130
    :cond_9c
    const/16 v0, 0x42

    if-ne p0, v0, :cond_a3

    .line 131
    const-string p0, "BAND_66"

    return-object p0

    .line 133
    :cond_a3
    const/16 v0, 0x46

    if-ne p0, v0, :cond_aa

    .line 134
    const-string p0, "BAND_70"

    return-object p0

    .line 136
    :cond_aa
    const/16 v0, 0x47

    if-ne p0, v0, :cond_b1

    .line 137
    const-string p0, "BAND_71"

    return-object p0

    .line 139
    :cond_b1
    const/16 v0, 0x4a

    if-ne p0, v0, :cond_b8

    .line 140
    const-string p0, "BAND_74"

    return-object p0

    .line 142
    :cond_b8
    const/16 v0, 0x4b

    if-ne p0, v0, :cond_bf

    .line 143
    const-string p0, "BAND_75"

    return-object p0

    .line 145
    :cond_bf
    const/16 v0, 0x4c

    if-ne p0, v0, :cond_c6

    .line 146
    const-string p0, "BAND_76"

    return-object p0

    .line 148
    :cond_c6
    const/16 v0, 0x4d

    if-ne p0, v0, :cond_cd

    .line 149
    const-string p0, "BAND_77"

    return-object p0

    .line 151
    :cond_cd
    const/16 v0, 0x4e

    if-ne p0, v0, :cond_d4

    .line 152
    const-string p0, "BAND_78"

    return-object p0

    .line 154
    :cond_d4
    const/16 v0, 0x4f

    if-ne p0, v0, :cond_db

    .line 155
    const-string p0, "BAND_79"

    return-object p0

    .line 157
    :cond_db
    const/16 v0, 0x50

    if-ne p0, v0, :cond_e2

    .line 158
    const-string p0, "BAND_80"

    return-object p0

    .line 160
    :cond_e2
    const/16 v0, 0x51

    if-ne p0, v0, :cond_e9

    .line 161
    const-string p0, "BAND_81"

    return-object p0

    .line 163
    :cond_e9
    const/16 v0, 0x52

    if-ne p0, v0, :cond_f0

    .line 164
    const-string p0, "BAND_82"

    return-object p0

    .line 166
    :cond_f0
    const/16 v0, 0x53

    if-ne p0, v0, :cond_f7

    .line 167
    const-string p0, "BAND_83"

    return-object p0

    .line 169
    :cond_f7
    const/16 v0, 0x54

    if-ne p0, v0, :cond_fe

    .line 170
    const-string p0, "BAND_84"

    return-object p0

    .line 172
    :cond_fe
    const/16 v0, 0x56

    if-ne p0, v0, :cond_105

    .line 173
    const-string p0, "BAND_86"

    return-object p0

    .line 175
    :cond_105
    const/16 v0, 0x59

    if-ne p0, v0, :cond_10c

    .line 176
    const-string p0, "BAND_89"

    return-object p0

    .line 178
    :cond_10c
    const/16 v0, 0x5a

    if-ne p0, v0, :cond_113

    .line 179
    const-string p0, "BAND_90"

    return-object p0

    .line 181
    :cond_113
    const/16 v0, 0x5b

    if-ne p0, v0, :cond_11a

    .line 182
    const-string p0, "BAND_91"

    return-object p0

    .line 184
    :cond_11a
    const/16 v0, 0x5c

    if-ne p0, v0, :cond_121

    .line 185
    const-string p0, "BAND_92"

    return-object p0

    .line 187
    :cond_121
    const/16 v0, 0x5d

    if-ne p0, v0, :cond_128

    .line 188
    const-string p0, "BAND_93"

    return-object p0

    .line 190
    :cond_128
    const/16 v0, 0x5e

    if-ne p0, v0, :cond_12f

    .line 191
    const-string p0, "BAND_94"

    return-object p0

    .line 193
    :cond_12f
    const/16 v0, 0x5f

    if-ne p0, v0, :cond_136

    .line 194
    const-string p0, "BAND_95"

    return-object p0

    .line 196
    :cond_136
    const/16 v0, 0x101

    if-ne p0, v0, :cond_13d

    .line 197
    const-string p0, "BAND_257"

    return-object p0

    .line 199
    :cond_13d
    const/16 v0, 0x102

    if-ne p0, v0, :cond_144

    .line 200
    const-string p0, "BAND_258"

    return-object p0

    .line 202
    :cond_144
    const/16 v0, 0x104

    if-ne p0, v0, :cond_14b

    .line 203
    const-string p0, "BAND_260"

    return-object p0

    .line 205
    :cond_14b
    const/16 v0, 0x105

    if-ne p0, v0, :cond_152

    .line 206
    const-string p0, "BAND_261"

    return-object p0

    .line 208
    :cond_152
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
