.class public final Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwRequestor;
.super Ljava/lang/Object;
.source "IGnssVisibilityControlCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NfwRequestor"
.end annotation


# static fields
.field public static final blacklist AUTOMOBILE_CLIENT:B = 0x14t

.field public static final blacklist CARRIER:B = 0x0t

.field public static final blacklist GNSS_CHIPSET_VENDOR:B = 0xct

.field public static final blacklist MODEM_CHIPSET_VENDOR:B = 0xbt

.field public static final blacklist OEM:B = 0xat

.field public static final blacklist OTHER_CHIPSET_VENDOR:B = 0xdt

.field public static final blacklist OTHER_REQUESTOR:B = 0x64t


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(B)Ljava/lang/String;
    .registers 5

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 220
    nop

    .line 221
    const-string v1, "CARRIER"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    and-int/lit8 v1, p0, 0xa

    const/16 v2, 0xa

    if-ne v1, v2, :cond_18

    .line 223
    const-string v1, "OEM"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    int-to-byte v1, v2

    goto :goto_19

    .line 222
    :cond_18
    const/4 v1, 0x0

    .line 226
    :goto_19
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_27

    .line 227
    const-string v2, "MODEM_CHIPSET_VENDOR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    or-int/lit8 v1, v1, 0xb

    int-to-byte v1, v1

    .line 230
    :cond_27
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_35

    .line 231
    const-string v2, "GNSS_CHIPSET_VENDOR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    or-int/lit8 v1, v1, 0xc

    int-to-byte v1, v1

    .line 234
    :cond_35
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_43

    .line 235
    const-string v2, "OTHER_CHIPSET_VENDOR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    or-int/lit8 v1, v1, 0xd

    int-to-byte v1, v1

    .line 238
    :cond_43
    and-int/lit8 v2, p0, 0x14

    const/16 v3, 0x14

    if-ne v2, v3, :cond_51

    .line 239
    const-string v2, "AUTOMOBILE_CLIENT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    or-int/lit8 v1, v1, 0x14

    int-to-byte v1, v1

    .line 242
    :cond_51
    and-int/lit8 v2, p0, 0x64

    const/16 v3, 0x64

    if-ne v2, v3, :cond_5f

    .line 243
    const-string v2, "OTHER_REQUESTOR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    or-int/lit8 v1, v1, 0x64

    int-to-byte v1, v1

    .line 246
    :cond_5f
    if-eq p0, v1, :cond_82

    .line 247
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

    .line 249
    :cond_82
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final blacklist toString(B)Ljava/lang/String;
    .registers 3

    .line 194
    if-nez p0, :cond_5

    .line 195
    const-string p0, "CARRIER"

    return-object p0

    .line 197
    :cond_5
    const/16 v0, 0xa

    if-ne p0, v0, :cond_c

    .line 198
    const-string p0, "OEM"

    return-object p0

    .line 200
    :cond_c
    const/16 v0, 0xb

    if-ne p0, v0, :cond_13

    .line 201
    const-string p0, "MODEM_CHIPSET_VENDOR"

    return-object p0

    .line 203
    :cond_13
    const/16 v0, 0xc

    if-ne p0, v0, :cond_1a

    .line 204
    const-string p0, "GNSS_CHIPSET_VENDOR"

    return-object p0

    .line 206
    :cond_1a
    const/16 v0, 0xd

    if-ne p0, v0, :cond_21

    .line 207
    const-string p0, "OTHER_CHIPSET_VENDOR"

    return-object p0

    .line 209
    :cond_21
    const/16 v0, 0x14

    if-ne p0, v0, :cond_28

    .line 210
    const-string p0, "AUTOMOBILE_CLIENT"

    return-object p0

    .line 212
    :cond_28
    const/16 v0, 0x64

    if-ne p0, v0, :cond_2f

    .line 213
    const-string p0, "OTHER_REQUESTOR"

    return-object p0

    .line 215
    :cond_2f
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
