.class public final Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiEncodingType;
.super Ljava/lang/Object;
.source "IGnssNiCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_0/IGnssNiCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GnssNiEncodingType"
.end annotation


# static fields
.field public static final blacklist ENC_NONE:I = 0x0

.field public static final blacklist ENC_SUPL_GSM_DEFAULT:I = 0x1

.field public static final blacklist ENC_SUPL_UCS2:I = 0x3

.field public static final blacklist ENC_SUPL_UTF8:I = 0x2

.field public static final blacklist ENC_UNKNOWN:I = -0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 267
    nop

    .line 268
    const-string v1, "ENC_NONE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 270
    const-string v1, "ENC_SUPL_GSM_DEFAULT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    goto :goto_17

    .line 269
    :cond_16
    const/4 v2, 0x0

    .line 273
    :goto_17
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_23

    .line 274
    const-string v1, "ENC_SUPL_UTF8"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    or-int/lit8 v2, v2, 0x2

    .line 277
    :cond_23
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2e

    .line 278
    const-string v1, "ENC_SUPL_UCS2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    move v2, v3

    .line 281
    :cond_2e
    and-int/lit8 v1, p0, -0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_39

    .line 282
    const-string v1, "ENC_UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    move v2, v3

    .line 285
    :cond_39
    if-eq p0, v2, :cond_57

    .line 286
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

    .line 288
    :cond_57
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3

    .line 247
    if-nez p0, :cond_5

    .line 248
    const-string p0, "ENC_NONE"

    return-object p0

    .line 250
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 251
    const-string p0, "ENC_SUPL_GSM_DEFAULT"

    return-object p0

    .line 253
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 254
    const-string p0, "ENC_SUPL_UTF8"

    return-object p0

    .line 256
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 257
    const-string p0, "ENC_SUPL_UCS2"

    return-object p0

    .line 259
    :cond_17
    const/4 v0, -0x1

    if-ne p0, v0, :cond_1d

    .line 260
    const-string p0, "ENC_UNKNOWN"

    return-object p0

    .line 262
    :cond_1d
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
