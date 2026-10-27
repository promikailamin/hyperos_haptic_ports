.class public final Landroid/hardware/radio/V1_5/BarringInfo$ServiceType;
.super Ljava/lang/Object;
.source "BarringInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_5/BarringInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceType"
.end annotation


# static fields
.field public static final blacklist CS_FALLBACK:I = 0x5

.field public static final blacklist CS_SERVICE:I = 0x0

.field public static final blacklist CS_VOICE:I = 0x2

.field public static final blacklist EMERGENCY:I = 0x8

.field public static final blacklist MMTEL_VIDEO:I = 0x7

.field public static final blacklist MMTEL_VOICE:I = 0x6

.field public static final blacklist MO_DATA:I = 0x4

.field public static final blacklist MO_SIGNALLING:I = 0x3

.field public static final blacklist OPERATOR_1:I = 0x3e9

.field public static final blacklist OPERATOR_10:I = 0x3f2

.field public static final blacklist OPERATOR_11:I = 0x3f3

.field public static final blacklist OPERATOR_12:I = 0x3f4

.field public static final blacklist OPERATOR_13:I = 0x3f5

.field public static final blacklist OPERATOR_14:I = 0x3f6

.field public static final blacklist OPERATOR_15:I = 0x3f7

.field public static final blacklist OPERATOR_16:I = 0x3f8

.field public static final blacklist OPERATOR_17:I = 0x3f9

.field public static final blacklist OPERATOR_18:I = 0x3fa

.field public static final blacklist OPERATOR_19:I = 0x3fb

.field public static final blacklist OPERATOR_2:I = 0x3ea

.field public static final blacklist OPERATOR_20:I = 0x3fc

.field public static final blacklist OPERATOR_21:I = 0x3fd

.field public static final blacklist OPERATOR_22:I = 0x3fe

.field public static final blacklist OPERATOR_23:I = 0x3ff

.field public static final blacklist OPERATOR_24:I = 0x400

.field public static final blacklist OPERATOR_25:I = 0x401

.field public static final blacklist OPERATOR_26:I = 0x402

.field public static final blacklist OPERATOR_27:I = 0x403

.field public static final blacklist OPERATOR_28:I = 0x404

.field public static final blacklist OPERATOR_29:I = 0x405

.field public static final blacklist OPERATOR_3:I = 0x3eb

.field public static final blacklist OPERATOR_30:I = 0x406

.field public static final blacklist OPERATOR_31:I = 0x407

.field public static final blacklist OPERATOR_32:I = 0x408

.field public static final blacklist OPERATOR_4:I = 0x3ec

.field public static final blacklist OPERATOR_5:I = 0x3ed

.field public static final blacklist OPERATOR_6:I = 0x3ee

.field public static final blacklist OPERATOR_7:I = 0x3ef

.field public static final blacklist OPERATOR_8:I = 0x3f0

.field public static final blacklist OPERATOR_9:I = 0x3f1

.field public static final blacklist PS_SERVICE:I = 0x1

.field public static final blacklist SMS:I = 0x9


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 222
    nop

    .line 223
    const-string v1, "CS_SERVICE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 225
    const-string v1, "PS_SERVICE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    goto :goto_17

    .line 224
    :cond_16
    const/4 v2, 0x0

    .line 228
    :goto_17
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_23

    .line 229
    const-string v1, "CS_VOICE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    or-int/lit8 v2, v2, 0x2

    .line 232
    :cond_23
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2e

    .line 233
    const-string v1, "MO_SIGNALLING"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    move v2, v3

    .line 236
    :cond_2e
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3a

    .line 237
    const-string v1, "MO_DATA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    or-int/lit8 v2, v2, 0x4

    .line 240
    :cond_3a
    and-int/lit8 v1, p0, 0x5

    const/4 v3, 0x5

    if-ne v1, v3, :cond_46

    .line 241
    const-string v1, "CS_FALLBACK"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    or-int/lit8 v2, v2, 0x5

    .line 244
    :cond_46
    and-int/lit8 v1, p0, 0x6

    const/4 v3, 0x6

    if-ne v1, v3, :cond_52

    .line 245
    const-string v1, "MMTEL_VOICE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    or-int/lit8 v2, v2, 0x6

    .line 248
    :cond_52
    and-int/lit8 v1, p0, 0x7

    const/4 v3, 0x7

    if-ne v1, v3, :cond_5d

    .line 249
    const-string v1, "MMTEL_VIDEO"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    move v2, v3

    .line 252
    :cond_5d
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_6a

    .line 253
    const-string v1, "EMERGENCY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    or-int/lit8 v2, v2, 0x8

    .line 256
    :cond_6a
    and-int/lit8 v1, p0, 0x9

    const/16 v3, 0x9

    if-ne v1, v3, :cond_77

    .line 257
    const-string v1, "SMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    or-int/lit8 v2, v2, 0x9

    .line 260
    :cond_77
    and-int/lit16 v1, p0, 0x3e9

    const/16 v3, 0x3e9

    if-ne v1, v3, :cond_84

    .line 261
    const-string v1, "OPERATOR_1"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    or-int/lit16 v2, v2, 0x3e9

    .line 264
    :cond_84
    and-int/lit16 v1, p0, 0x3ea

    const/16 v3, 0x3ea

    if-ne v1, v3, :cond_91

    .line 265
    const-string v1, "OPERATOR_2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    or-int/lit16 v2, v2, 0x3ea

    .line 268
    :cond_91
    and-int/lit16 v1, p0, 0x3eb

    const/16 v3, 0x3eb

    if-ne v1, v3, :cond_9e

    .line 269
    const-string v1, "OPERATOR_3"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    or-int/lit16 v2, v2, 0x3eb

    .line 272
    :cond_9e
    and-int/lit16 v1, p0, 0x3ec

    const/16 v3, 0x3ec

    if-ne v1, v3, :cond_ab

    .line 273
    const-string v1, "OPERATOR_4"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    or-int/lit16 v2, v2, 0x3ec

    .line 276
    :cond_ab
    and-int/lit16 v1, p0, 0x3ed

    const/16 v3, 0x3ed

    if-ne v1, v3, :cond_b8

    .line 277
    const-string v1, "OPERATOR_5"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    or-int/lit16 v2, v2, 0x3ed

    .line 280
    :cond_b8
    and-int/lit16 v1, p0, 0x3ee

    const/16 v3, 0x3ee

    if-ne v1, v3, :cond_c5

    .line 281
    const-string v1, "OPERATOR_6"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    or-int/lit16 v2, v2, 0x3ee

    .line 284
    :cond_c5
    and-int/lit16 v1, p0, 0x3ef

    const/16 v3, 0x3ef

    if-ne v1, v3, :cond_d1

    .line 285
    const-string v1, "OPERATOR_7"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    move v2, v3

    .line 288
    :cond_d1
    and-int/lit16 v1, p0, 0x3f0

    const/16 v3, 0x3f0

    if-ne v1, v3, :cond_de

    .line 289
    const-string v1, "OPERATOR_8"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    or-int/lit16 v2, v2, 0x3f0

    .line 292
    :cond_de
    and-int/lit16 v1, p0, 0x3f1

    const/16 v3, 0x3f1

    if-ne v1, v3, :cond_eb

    .line 293
    const-string v1, "OPERATOR_9"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    or-int/lit16 v2, v2, 0x3f1

    .line 296
    :cond_eb
    and-int/lit16 v1, p0, 0x3f2

    const/16 v3, 0x3f2

    if-ne v1, v3, :cond_f8

    .line 297
    const-string v1, "OPERATOR_10"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    or-int/lit16 v2, v2, 0x3f2

    .line 300
    :cond_f8
    and-int/lit16 v1, p0, 0x3f3

    const/16 v3, 0x3f3

    if-ne v1, v3, :cond_105

    .line 301
    const-string v1, "OPERATOR_11"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    or-int/lit16 v2, v2, 0x3f3

    .line 304
    :cond_105
    and-int/lit16 v1, p0, 0x3f4

    const/16 v3, 0x3f4

    if-ne v1, v3, :cond_112

    .line 305
    const-string v1, "OPERATOR_12"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    or-int/lit16 v2, v2, 0x3f4

    .line 308
    :cond_112
    and-int/lit16 v1, p0, 0x3f5

    const/16 v3, 0x3f5

    if-ne v1, v3, :cond_11f

    .line 309
    const-string v1, "OPERATOR_13"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    or-int/lit16 v2, v2, 0x3f5

    .line 312
    :cond_11f
    and-int/lit16 v1, p0, 0x3f6

    const/16 v3, 0x3f6

    if-ne v1, v3, :cond_12c

    .line 313
    const-string v1, "OPERATOR_14"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    or-int/lit16 v2, v2, 0x3f6

    .line 316
    :cond_12c
    and-int/lit16 v1, p0, 0x3f7

    const/16 v3, 0x3f7

    if-ne v1, v3, :cond_139

    .line 317
    const-string v1, "OPERATOR_15"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    or-int/lit16 v2, v2, 0x3f7

    .line 320
    :cond_139
    and-int/lit16 v1, p0, 0x3f8

    const/16 v3, 0x3f8

    if-ne v1, v3, :cond_146

    .line 321
    const-string v1, "OPERATOR_16"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    or-int/lit16 v2, v2, 0x3f8

    .line 324
    :cond_146
    and-int/lit16 v1, p0, 0x3f9

    const/16 v3, 0x3f9

    if-ne v1, v3, :cond_153

    .line 325
    const-string v1, "OPERATOR_17"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    or-int/lit16 v2, v2, 0x3f9

    .line 328
    :cond_153
    and-int/lit16 v1, p0, 0x3fa

    const/16 v3, 0x3fa

    if-ne v1, v3, :cond_160

    .line 329
    const-string v1, "OPERATOR_18"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    or-int/lit16 v2, v2, 0x3fa

    .line 332
    :cond_160
    and-int/lit16 v1, p0, 0x3fb

    const/16 v3, 0x3fb

    if-ne v1, v3, :cond_16d

    .line 333
    const-string v1, "OPERATOR_19"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    or-int/lit16 v2, v2, 0x3fb

    .line 336
    :cond_16d
    and-int/lit16 v1, p0, 0x3fc

    const/16 v3, 0x3fc

    if-ne v1, v3, :cond_17a

    .line 337
    const-string v1, "OPERATOR_20"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    or-int/lit16 v2, v2, 0x3fc

    .line 340
    :cond_17a
    and-int/lit16 v1, p0, 0x3fd

    const/16 v3, 0x3fd

    if-ne v1, v3, :cond_187

    .line 341
    const-string v1, "OPERATOR_21"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    or-int/lit16 v2, v2, 0x3fd

    .line 344
    :cond_187
    and-int/lit16 v1, p0, 0x3fe

    const/16 v3, 0x3fe

    if-ne v1, v3, :cond_194

    .line 345
    const-string v1, "OPERATOR_22"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    or-int/lit16 v2, v2, 0x3fe

    .line 348
    :cond_194
    and-int/lit16 v1, p0, 0x3ff

    const/16 v3, 0x3ff

    if-ne v1, v3, :cond_1a1

    .line 349
    const-string v1, "OPERATOR_23"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    const/16 v2, 0x3ff

    .line 352
    :cond_1a1
    and-int/lit16 v1, p0, 0x400

    const/16 v3, 0x400

    if-ne v1, v3, :cond_1ae

    .line 353
    const-string v1, "OPERATOR_24"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    or-int/lit16 v2, v2, 0x400

    .line 356
    :cond_1ae
    and-int/lit16 v1, p0, 0x401

    const/16 v3, 0x401

    if-ne v1, v3, :cond_1bb

    .line 357
    const-string v1, "OPERATOR_25"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    or-int/lit16 v2, v2, 0x401

    .line 360
    :cond_1bb
    and-int/lit16 v1, p0, 0x402

    const/16 v3, 0x402

    if-ne v1, v3, :cond_1c8

    .line 361
    const-string v1, "OPERATOR_26"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    or-int/lit16 v2, v2, 0x402

    .line 364
    :cond_1c8
    and-int/lit16 v1, p0, 0x403

    const/16 v3, 0x403

    if-ne v1, v3, :cond_1d5

    .line 365
    const-string v1, "OPERATOR_27"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    or-int/lit16 v2, v2, 0x403

    .line 368
    :cond_1d5
    and-int/lit16 v1, p0, 0x404

    const/16 v3, 0x404

    if-ne v1, v3, :cond_1e2

    .line 369
    const-string v1, "OPERATOR_28"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    or-int/lit16 v2, v2, 0x404

    .line 372
    :cond_1e2
    and-int/lit16 v1, p0, 0x405

    const/16 v3, 0x405

    if-ne v1, v3, :cond_1ef

    .line 373
    const-string v1, "OPERATOR_29"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    or-int/lit16 v2, v2, 0x405

    .line 376
    :cond_1ef
    and-int/lit16 v1, p0, 0x406

    const/16 v3, 0x406

    if-ne v1, v3, :cond_1fc

    .line 377
    const-string v1, "OPERATOR_30"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    or-int/lit16 v2, v2, 0x406

    .line 380
    :cond_1fc
    and-int/lit16 v1, p0, 0x407

    const/16 v3, 0x407

    if-ne v1, v3, :cond_209

    .line 381
    const-string v1, "OPERATOR_31"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    or-int/lit16 v2, v2, 0x407

    .line 384
    :cond_209
    and-int/lit16 v1, p0, 0x408

    const/16 v3, 0x408

    if-ne v1, v3, :cond_216

    .line 385
    const-string v1, "OPERATOR_32"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    or-int/lit16 v2, v2, 0x408

    .line 388
    :cond_216
    if-eq p0, v2, :cond_234

    .line 389
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

    .line 391
    :cond_234
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3

    .line 91
    if-nez p0, :cond_5

    .line 92
    const-string p0, "CS_SERVICE"

    return-object p0

    .line 94
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 95
    const-string p0, "PS_SERVICE"

    return-object p0

    .line 97
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 98
    const-string p0, "CS_VOICE"

    return-object p0

    .line 100
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 101
    const-string p0, "MO_SIGNALLING"

    return-object p0

    .line 103
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    .line 104
    const-string p0, "MO_DATA"

    return-object p0

    .line 106
    :cond_1d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    .line 107
    const-string p0, "CS_FALLBACK"

    return-object p0

    .line 109
    :cond_23
    const/4 v0, 0x6

    if-ne p0, v0, :cond_29

    .line 110
    const-string p0, "MMTEL_VOICE"

    return-object p0

    .line 112
    :cond_29
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2f

    .line 113
    const-string p0, "MMTEL_VIDEO"

    return-object p0

    .line 115
    :cond_2f
    const/16 v0, 0x8

    if-ne p0, v0, :cond_36

    .line 116
    const-string p0, "EMERGENCY"

    return-object p0

    .line 118
    :cond_36
    const/16 v0, 0x9

    if-ne p0, v0, :cond_3d

    .line 119
    const-string p0, "SMS"

    return-object p0

    .line 121
    :cond_3d
    const/16 v0, 0x3e9

    if-ne p0, v0, :cond_44

    .line 122
    const-string p0, "OPERATOR_1"

    return-object p0

    .line 124
    :cond_44
    const/16 v0, 0x3ea

    if-ne p0, v0, :cond_4b

    .line 125
    const-string p0, "OPERATOR_2"

    return-object p0

    .line 127
    :cond_4b
    const/16 v0, 0x3eb

    if-ne p0, v0, :cond_52

    .line 128
    const-string p0, "OPERATOR_3"

    return-object p0

    .line 130
    :cond_52
    const/16 v0, 0x3ec

    if-ne p0, v0, :cond_59

    .line 131
    const-string p0, "OPERATOR_4"

    return-object p0

    .line 133
    :cond_59
    const/16 v0, 0x3ed

    if-ne p0, v0, :cond_60

    .line 134
    const-string p0, "OPERATOR_5"

    return-object p0

    .line 136
    :cond_60
    const/16 v0, 0x3ee

    if-ne p0, v0, :cond_67

    .line 137
    const-string p0, "OPERATOR_6"

    return-object p0

    .line 139
    :cond_67
    const/16 v0, 0x3ef

    if-ne p0, v0, :cond_6e

    .line 140
    const-string p0, "OPERATOR_7"

    return-object p0

    .line 142
    :cond_6e
    const/16 v0, 0x3f0

    if-ne p0, v0, :cond_75

    .line 143
    const-string p0, "OPERATOR_8"

    return-object p0

    .line 145
    :cond_75
    const/16 v0, 0x3f1

    if-ne p0, v0, :cond_7c

    .line 146
    const-string p0, "OPERATOR_9"

    return-object p0

    .line 148
    :cond_7c
    const/16 v0, 0x3f2

    if-ne p0, v0, :cond_83

    .line 149
    const-string p0, "OPERATOR_10"

    return-object p0

    .line 151
    :cond_83
    const/16 v0, 0x3f3

    if-ne p0, v0, :cond_8a

    .line 152
    const-string p0, "OPERATOR_11"

    return-object p0

    .line 154
    :cond_8a
    const/16 v0, 0x3f4

    if-ne p0, v0, :cond_91

    .line 155
    const-string p0, "OPERATOR_12"

    return-object p0

    .line 157
    :cond_91
    const/16 v0, 0x3f5

    if-ne p0, v0, :cond_98

    .line 158
    const-string p0, "OPERATOR_13"

    return-object p0

    .line 160
    :cond_98
    const/16 v0, 0x3f6

    if-ne p0, v0, :cond_9f

    .line 161
    const-string p0, "OPERATOR_14"

    return-object p0

    .line 163
    :cond_9f
    const/16 v0, 0x3f7

    if-ne p0, v0, :cond_a6

    .line 164
    const-string p0, "OPERATOR_15"

    return-object p0

    .line 166
    :cond_a6
    const/16 v0, 0x3f8

    if-ne p0, v0, :cond_ad

    .line 167
    const-string p0, "OPERATOR_16"

    return-object p0

    .line 169
    :cond_ad
    const/16 v0, 0x3f9

    if-ne p0, v0, :cond_b4

    .line 170
    const-string p0, "OPERATOR_17"

    return-object p0

    .line 172
    :cond_b4
    const/16 v0, 0x3fa

    if-ne p0, v0, :cond_bb

    .line 173
    const-string p0, "OPERATOR_18"

    return-object p0

    .line 175
    :cond_bb
    const/16 v0, 0x3fb

    if-ne p0, v0, :cond_c2

    .line 176
    const-string p0, "OPERATOR_19"

    return-object p0

    .line 178
    :cond_c2
    const/16 v0, 0x3fc

    if-ne p0, v0, :cond_c9

    .line 179
    const-string p0, "OPERATOR_20"

    return-object p0

    .line 181
    :cond_c9
    const/16 v0, 0x3fd

    if-ne p0, v0, :cond_d0

    .line 182
    const-string p0, "OPERATOR_21"

    return-object p0

    .line 184
    :cond_d0
    const/16 v0, 0x3fe

    if-ne p0, v0, :cond_d7

    .line 185
    const-string p0, "OPERATOR_22"

    return-object p0

    .line 187
    :cond_d7
    const/16 v0, 0x3ff

    if-ne p0, v0, :cond_de

    .line 188
    const-string p0, "OPERATOR_23"

    return-object p0

    .line 190
    :cond_de
    const/16 v0, 0x400

    if-ne p0, v0, :cond_e5

    .line 191
    const-string p0, "OPERATOR_24"

    return-object p0

    .line 193
    :cond_e5
    const/16 v0, 0x401

    if-ne p0, v0, :cond_ec

    .line 194
    const-string p0, "OPERATOR_25"

    return-object p0

    .line 196
    :cond_ec
    const/16 v0, 0x402

    if-ne p0, v0, :cond_f3

    .line 197
    const-string p0, "OPERATOR_26"

    return-object p0

    .line 199
    :cond_f3
    const/16 v0, 0x403

    if-ne p0, v0, :cond_fa

    .line 200
    const-string p0, "OPERATOR_27"

    return-object p0

    .line 202
    :cond_fa
    const/16 v0, 0x404

    if-ne p0, v0, :cond_101

    .line 203
    const-string p0, "OPERATOR_28"

    return-object p0

    .line 205
    :cond_101
    const/16 v0, 0x405

    if-ne p0, v0, :cond_108

    .line 206
    const-string p0, "OPERATOR_29"

    return-object p0

    .line 208
    :cond_108
    const/16 v0, 0x406

    if-ne p0, v0, :cond_10f

    .line 209
    const-string p0, "OPERATOR_30"

    return-object p0

    .line 211
    :cond_10f
    const/16 v0, 0x407

    if-ne p0, v0, :cond_116

    .line 212
    const-string p0, "OPERATOR_31"

    return-object p0

    .line 214
    :cond_116
    const/16 v0, 0x408

    if-ne p0, v0, :cond_11d

    .line 215
    const-string p0, "OPERATOR_32"

    return-object p0

    .line 217
    :cond_11d
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
