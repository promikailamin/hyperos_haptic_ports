.class public final Landroid/hardware/cas/V1_0/Status;
.super Ljava/lang/Object;
.source "Status.java"


# static fields
.field public static final blacklist BAD_VALUE:I = 0x6

.field public static final blacklist ERROR_CAS_CANNOT_HANDLE:I = 0x4

.field public static final blacklist ERROR_CAS_DECRYPT:I = 0xd

.field public static final blacklist ERROR_CAS_DECRYPT_UNIT_NOT_INITIALIZED:I = 0xc

.field public static final blacklist ERROR_CAS_DEVICE_REVOKED:I = 0xb

.field public static final blacklist ERROR_CAS_INSUFFICIENT_OUTPUT_PROTECTION:I = 0x9

.field public static final blacklist ERROR_CAS_INVALID_STATE:I = 0x5

.field public static final blacklist ERROR_CAS_LICENSE_EXPIRED:I = 0x2

.field public static final blacklist ERROR_CAS_NOT_PROVISIONED:I = 0x7

.field public static final blacklist ERROR_CAS_NO_LICENSE:I = 0x1

.field public static final blacklist ERROR_CAS_RESOURCE_BUSY:I = 0x8

.field public static final blacklist ERROR_CAS_SESSION_NOT_OPENED:I = 0x3

.field public static final blacklist ERROR_CAS_TAMPER_DETECTED:I = 0xa

.field public static final blacklist ERROR_CAS_UNKNOWN:I = 0xe

.field public static final blacklist OK:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    nop

    .line 136
    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 138
    const-string v1, "ERROR_CAS_NO_LICENSE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    goto :goto_17

    .line 137
    :cond_16
    const/4 v2, 0x0

    .line 141
    :goto_17
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_23

    .line 142
    const-string v1, "ERROR_CAS_LICENSE_EXPIRED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    or-int/lit8 v2, v2, 0x2

    .line 145
    :cond_23
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2e

    .line 146
    const-string v1, "ERROR_CAS_SESSION_NOT_OPENED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    move v2, v3

    .line 149
    :cond_2e
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3a

    .line 150
    const-string v1, "ERROR_CAS_CANNOT_HANDLE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    or-int/lit8 v2, v2, 0x4

    .line 153
    :cond_3a
    and-int/lit8 v1, p0, 0x5

    const/4 v3, 0x5

    if-ne v1, v3, :cond_46

    .line 154
    const-string v1, "ERROR_CAS_INVALID_STATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    or-int/lit8 v2, v2, 0x5

    .line 157
    :cond_46
    and-int/lit8 v1, p0, 0x6

    const/4 v3, 0x6

    if-ne v1, v3, :cond_52

    .line 158
    const-string v1, "BAD_VALUE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    or-int/lit8 v2, v2, 0x6

    .line 161
    :cond_52
    and-int/lit8 v1, p0, 0x7

    const/4 v3, 0x7

    if-ne v1, v3, :cond_5d

    .line 162
    const-string v1, "ERROR_CAS_NOT_PROVISIONED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    move v2, v3

    .line 165
    :cond_5d
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_6a

    .line 166
    const-string v1, "ERROR_CAS_RESOURCE_BUSY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    or-int/lit8 v2, v2, 0x8

    .line 169
    :cond_6a
    and-int/lit8 v1, p0, 0x9

    const/16 v3, 0x9

    if-ne v1, v3, :cond_77

    .line 170
    const-string v1, "ERROR_CAS_INSUFFICIENT_OUTPUT_PROTECTION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    or-int/lit8 v2, v2, 0x9

    .line 173
    :cond_77
    and-int/lit8 v1, p0, 0xa

    const/16 v3, 0xa

    if-ne v1, v3, :cond_84

    .line 174
    const-string v1, "ERROR_CAS_TAMPER_DETECTED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    or-int/lit8 v2, v2, 0xa

    .line 177
    :cond_84
    and-int/lit8 v1, p0, 0xb

    const/16 v3, 0xb

    if-ne v1, v3, :cond_91

    .line 178
    const-string v1, "ERROR_CAS_DEVICE_REVOKED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    or-int/lit8 v2, v2, 0xb

    .line 181
    :cond_91
    and-int/lit8 v1, p0, 0xc

    const/16 v3, 0xc

    if-ne v1, v3, :cond_9e

    .line 182
    const-string v1, "ERROR_CAS_DECRYPT_UNIT_NOT_INITIALIZED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    or-int/lit8 v2, v2, 0xc

    .line 185
    :cond_9e
    and-int/lit8 v1, p0, 0xd

    const/16 v3, 0xd

    if-ne v1, v3, :cond_ab

    .line 186
    const-string v1, "ERROR_CAS_DECRYPT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    or-int/lit8 v2, v2, 0xd

    .line 189
    :cond_ab
    and-int/lit8 v1, p0, 0xe

    const/16 v3, 0xe

    if-ne v1, v3, :cond_b8

    .line 190
    const-string v1, "ERROR_CAS_UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    or-int/lit8 v2, v2, 0xe

    .line 193
    :cond_b8
    if-eq p0, v2, :cond_d6

    .line 194
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

    .line 196
    :cond_d6
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3

    .line 85
    if-nez p0, :cond_5

    .line 86
    const-string p0, "OK"

    return-object p0

    .line 88
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 89
    const-string p0, "ERROR_CAS_NO_LICENSE"

    return-object p0

    .line 91
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 92
    const-string p0, "ERROR_CAS_LICENSE_EXPIRED"

    return-object p0

    .line 94
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 95
    const-string p0, "ERROR_CAS_SESSION_NOT_OPENED"

    return-object p0

    .line 97
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    .line 98
    const-string p0, "ERROR_CAS_CANNOT_HANDLE"

    return-object p0

    .line 100
    :cond_1d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    .line 101
    const-string p0, "ERROR_CAS_INVALID_STATE"

    return-object p0

    .line 103
    :cond_23
    const/4 v0, 0x6

    if-ne p0, v0, :cond_29

    .line 104
    const-string p0, "BAD_VALUE"

    return-object p0

    .line 106
    :cond_29
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2f

    .line 107
    const-string p0, "ERROR_CAS_NOT_PROVISIONED"

    return-object p0

    .line 109
    :cond_2f
    const/16 v0, 0x8

    if-ne p0, v0, :cond_36

    .line 110
    const-string p0, "ERROR_CAS_RESOURCE_BUSY"

    return-object p0

    .line 112
    :cond_36
    const/16 v0, 0x9

    if-ne p0, v0, :cond_3d

    .line 113
    const-string p0, "ERROR_CAS_INSUFFICIENT_OUTPUT_PROTECTION"

    return-object p0

    .line 115
    :cond_3d
    const/16 v0, 0xa

    if-ne p0, v0, :cond_44

    .line 116
    const-string p0, "ERROR_CAS_TAMPER_DETECTED"

    return-object p0

    .line 118
    :cond_44
    const/16 v0, 0xb

    if-ne p0, v0, :cond_4b

    .line 119
    const-string p0, "ERROR_CAS_DEVICE_REVOKED"

    return-object p0

    .line 121
    :cond_4b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_52

    .line 122
    const-string p0, "ERROR_CAS_DECRYPT_UNIT_NOT_INITIALIZED"

    return-object p0

    .line 124
    :cond_52
    const/16 v0, 0xd

    if-ne p0, v0, :cond_59

    .line 125
    const-string p0, "ERROR_CAS_DECRYPT"

    return-object p0

    .line 127
    :cond_59
    const/16 v0, 0xe

    if-ne p0, v0, :cond_60

    .line 128
    const-string p0, "ERROR_CAS_UNKNOWN"

    return-object p0

    .line 130
    :cond_60
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
