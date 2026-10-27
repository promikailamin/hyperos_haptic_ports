.class public final Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvFlags;
.super Ljava/lang/Object;
.source "IGnssCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_0/IGnssCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GnssSvFlags"
.end annotation


# static fields
.field public static final blacklist HAS_ALMANAC_DATA:B = 0x2t

.field public static final blacklist HAS_CARRIER_FREQUENCY:B = 0x8t

.field public static final blacklist HAS_EPHEMERIS_DATA:B = 0x1t

.field public static final blacklist NONE:B = 0x0t

.field public static final blacklist USED_IN_FIX:B = 0x4t


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(B)Ljava/lang/String;
    .registers 5

    .line 305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 306
    nop

    .line 307
    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_17

    .line 309
    const-string v1, "HAS_EPHEMERIS_DATA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    int-to-byte v1, v2

    goto :goto_18

    .line 308
    :cond_17
    const/4 v1, 0x0

    .line 312
    :goto_18
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_25

    .line 313
    const-string v2, "HAS_ALMANAC_DATA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    or-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    .line 316
    :cond_25
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_32

    .line 317
    const-string v2, "USED_IN_FIX"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    or-int/lit8 v1, v1, 0x4

    int-to-byte v1, v1

    .line 320
    :cond_32
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_40

    .line 321
    const-string v2, "HAS_CARRIER_FREQUENCY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    or-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    .line 324
    :cond_40
    if-eq p0, v1, :cond_63

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v1, v1

    and-int/2addr p0, v1

    int-to-byte p0, p0

    invoke-static {p0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    :cond_63
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final blacklist toString(B)Ljava/lang/String;
    .registers 3

    .line 286
    if-nez p0, :cond_5

    .line 287
    const-string p0, "NONE"

    return-object p0

    .line 289
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 290
    const-string p0, "HAS_EPHEMERIS_DATA"

    return-object p0

    .line 292
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 293
    const-string p0, "HAS_ALMANAC_DATA"

    return-object p0

    .line 295
    :cond_11
    const/4 v0, 0x4

    if-ne p0, v0, :cond_17

    .line 296
    const-string p0, "USED_IN_FIX"

    return-object p0

    .line 298
    :cond_17
    const/16 v0, 0x8

    if-ne p0, v0, :cond_1e

    .line 299
    const-string p0, "HAS_CARRIER_FREQUENCY"

    return-object p0

    .line 301
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
