.class public final Landroid/hardware/gnss/V2_1/IGnssCallback$Capabilities;
.super Ljava/lang/Object;
.source "IGnssCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V2_1/IGnssCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Capabilities"
.end annotation


# static fields
.field public static final blacklist ANTENNA_INFO:I = 0x800

.field public static final blacklist GEOFENCING:I = 0x20

.field public static final blacklist LOW_POWER_MODE:I = 0x100

.field public static final blacklist MEASUREMENTS:I = 0x40

.field public static final blacklist MEASUREMENT_CORRECTIONS:I = 0x400

.field public static final blacklist MSA:I = 0x4

.field public static final blacklist MSB:I = 0x2

.field public static final blacklist NAV_MESSAGES:I = 0x80

.field public static final blacklist ON_DEMAND_TIME:I = 0x10

.field public static final blacklist SATELLITE_BLACKLIST:I = 0x200

.field public static final blacklist SCHEDULING:I = 0x1

.field public static final blacklist SINGLE_SHOT:I = 0x8


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    nop

    .line 193
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 194
    const-string v1, "SCHEDULING"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    goto :goto_12

    .line 193
    :cond_11
    const/4 v2, 0x0

    .line 197
    :goto_12
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1e

    .line 198
    const-string v1, "MSB"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    or-int/lit8 v2, v2, 0x2

    .line 201
    :cond_1e
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2a

    .line 202
    const-string v1, "MSA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    or-int/lit8 v2, v2, 0x4

    .line 205
    :cond_2a
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_37

    .line 206
    const-string v1, "SINGLE_SHOT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    or-int/lit8 v2, v2, 0x8

    .line 209
    :cond_37
    and-int/lit8 v1, p0, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_44

    .line 210
    const-string v1, "ON_DEMAND_TIME"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    or-int/lit8 v2, v2, 0x10

    .line 213
    :cond_44
    and-int/lit8 v1, p0, 0x20

    const/16 v3, 0x20

    if-ne v1, v3, :cond_51

    .line 214
    const-string v1, "GEOFENCING"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    or-int/lit8 v2, v2, 0x20

    .line 217
    :cond_51
    and-int/lit8 v1, p0, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_5e

    .line 218
    const-string v1, "MEASUREMENTS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    or-int/lit8 v2, v2, 0x40

    .line 221
    :cond_5e
    and-int/lit16 v1, p0, 0x80

    const/16 v3, 0x80

    if-ne v1, v3, :cond_6b

    .line 222
    const-string v1, "NAV_MESSAGES"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    or-int/lit16 v2, v2, 0x80

    .line 225
    :cond_6b
    and-int/lit16 v1, p0, 0x100

    const/16 v3, 0x100

    if-ne v1, v3, :cond_78

    .line 226
    const-string v1, "LOW_POWER_MODE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    or-int/lit16 v2, v2, 0x100

    .line 229
    :cond_78
    and-int/lit16 v1, p0, 0x200

    const/16 v3, 0x200

    if-ne v1, v3, :cond_85

    .line 230
    const-string v1, "SATELLITE_BLACKLIST"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    or-int/lit16 v2, v2, 0x200

    .line 233
    :cond_85
    and-int/lit16 v1, p0, 0x400

    const/16 v3, 0x400

    if-ne v1, v3, :cond_92

    .line 234
    const-string v1, "MEASUREMENT_CORRECTIONS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    or-int/lit16 v2, v2, 0x400

    .line 237
    :cond_92
    and-int/lit16 v1, p0, 0x800

    const/16 v3, 0x800

    if-ne v1, v3, :cond_9f

    .line 238
    const-string v1, "ANTENNA_INFO"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    or-int/lit16 v2, v2, 0x800

    .line 241
    :cond_9f
    if-eq p0, v2, :cond_bd

    .line 242
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

    .line 244
    :cond_bd
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3

    .line 151
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .line 152
    const-string p0, "SCHEDULING"

    return-object p0

    .line 154
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    .line 155
    const-string p0, "MSB"

    return-object p0

    .line 157
    :cond_c
    const/4 v0, 0x4

    if-ne p0, v0, :cond_12

    .line 158
    const-string p0, "MSA"

    return-object p0

    .line 160
    :cond_12
    const/16 v0, 0x8

    if-ne p0, v0, :cond_19

    .line 161
    const-string p0, "SINGLE_SHOT"

    return-object p0

    .line 163
    :cond_19
    const/16 v0, 0x10

    if-ne p0, v0, :cond_20

    .line 164
    const-string p0, "ON_DEMAND_TIME"

    return-object p0

    .line 166
    :cond_20
    const/16 v0, 0x20

    if-ne p0, v0, :cond_27

    .line 167
    const-string p0, "GEOFENCING"

    return-object p0

    .line 169
    :cond_27
    const/16 v0, 0x40

    if-ne p0, v0, :cond_2e

    .line 170
    const-string p0, "MEASUREMENTS"

    return-object p0

    .line 172
    :cond_2e
    const/16 v0, 0x80

    if-ne p0, v0, :cond_35

    .line 173
    const-string p0, "NAV_MESSAGES"

    return-object p0

    .line 175
    :cond_35
    const/16 v0, 0x100

    if-ne p0, v0, :cond_3c

    .line 176
    const-string p0, "LOW_POWER_MODE"

    return-object p0

    .line 178
    :cond_3c
    const/16 v0, 0x200

    if-ne p0, v0, :cond_43

    .line 179
    const-string p0, "SATELLITE_BLACKLIST"

    return-object p0

    .line 181
    :cond_43
    const/16 v0, 0x400

    if-ne p0, v0, :cond_4a

    .line 182
    const-string p0, "MEASUREMENT_CORRECTIONS"

    return-object p0

    .line 184
    :cond_4a
    const/16 v0, 0x800

    if-ne p0, v0, :cond_51

    .line 185
    const-string p0, "ANTENNA_INFO"

    return-object p0

    .line 187
    :cond_51
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
