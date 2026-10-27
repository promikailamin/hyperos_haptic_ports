.class public final Landroid/hardware/gnss/V1_0/IGnssCallback$Capabilities;
.super Ljava/lang/Object;
.source "IGnssCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_0/IGnssCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Capabilities"
.end annotation


# static fields
.field public static final blacklist GEOFENCING:I = 0x20

.field public static final blacklist MEASUREMENTS:I = 0x40

.field public static final blacklist MSA:I = 0x4

.field public static final blacklist MSB:I = 0x2

.field public static final blacklist NAV_MESSAGES:I = 0x80

.field public static final blacklist ON_DEMAND_TIME:I = 0x10

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

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    nop

    .line 165
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 166
    const-string v1, "SCHEDULING"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    goto :goto_12

    .line 165
    :cond_11
    const/4 v2, 0x0

    .line 169
    :goto_12
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1e

    .line 170
    const-string v1, "MSB"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    or-int/lit8 v2, v2, 0x2

    .line 173
    :cond_1e
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2a

    .line 174
    const-string v1, "MSA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    or-int/lit8 v2, v2, 0x4

    .line 177
    :cond_2a
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_37

    .line 178
    const-string v1, "SINGLE_SHOT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    or-int/lit8 v2, v2, 0x8

    .line 181
    :cond_37
    and-int/lit8 v1, p0, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_44

    .line 182
    const-string v1, "ON_DEMAND_TIME"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    or-int/lit8 v2, v2, 0x10

    .line 185
    :cond_44
    and-int/lit8 v1, p0, 0x20

    const/16 v3, 0x20

    if-ne v1, v3, :cond_51

    .line 186
    const-string v1, "GEOFENCING"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    or-int/lit8 v2, v2, 0x20

    .line 189
    :cond_51
    and-int/lit8 v1, p0, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_5e

    .line 190
    const-string v1, "MEASUREMENTS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    or-int/lit8 v2, v2, 0x40

    .line 193
    :cond_5e
    and-int/lit16 v1, p0, 0x80

    const/16 v3, 0x80

    if-ne v1, v3, :cond_6b

    .line 194
    const-string v1, "NAV_MESSAGES"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    or-int/lit16 v2, v2, 0x80

    .line 197
    :cond_6b
    if-eq p0, v2, :cond_89

    .line 198
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

    .line 200
    :cond_89
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3

    .line 135
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .line 136
    const-string p0, "SCHEDULING"

    return-object p0

    .line 138
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    .line 139
    const-string p0, "MSB"

    return-object p0

    .line 141
    :cond_c
    const/4 v0, 0x4

    if-ne p0, v0, :cond_12

    .line 142
    const-string p0, "MSA"

    return-object p0

    .line 144
    :cond_12
    const/16 v0, 0x8

    if-ne p0, v0, :cond_19

    .line 145
    const-string p0, "SINGLE_SHOT"

    return-object p0

    .line 147
    :cond_19
    const/16 v0, 0x10

    if-ne p0, v0, :cond_20

    .line 148
    const-string p0, "ON_DEMAND_TIME"

    return-object p0

    .line 150
    :cond_20
    const/16 v0, 0x20

    if-ne p0, v0, :cond_27

    .line 151
    const-string p0, "GEOFENCING"

    return-object p0

    .line 153
    :cond_27
    const/16 v0, 0x40

    if-ne p0, v0, :cond_2e

    .line 154
    const-string p0, "MEASUREMENTS"

    return-object p0

    .line 156
    :cond_2e
    const/16 v0, 0x80

    if-ne p0, v0, :cond_35

    .line 157
    const-string p0, "NAV_MESSAGES"

    return-object p0

    .line 159
    :cond_35
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
