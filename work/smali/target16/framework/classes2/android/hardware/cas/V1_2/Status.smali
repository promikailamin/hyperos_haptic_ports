.class public final Landroid/hardware/cas/V1_2/Status;
.super Ljava/lang/Object;
.source "Status.java"


# static fields
.field public static final blacklist BAD_VALUE:I = 0x6

.field public static final blacklist ERROR_CAS_BLACKOUT:I = 0x14

.field public static final blacklist ERROR_CAS_CANNOT_HANDLE:I = 0x4

.field public static final blacklist ERROR_CAS_CARD_INVALID:I = 0x13

.field public static final blacklist ERROR_CAS_CARD_MUTE:I = 0x12

.field public static final blacklist ERROR_CAS_DECRYPT:I = 0xd

.field public static final blacklist ERROR_CAS_DECRYPT_UNIT_NOT_INITIALIZED:I = 0xc

.field public static final blacklist ERROR_CAS_DEVICE_REVOKED:I = 0xb

.field public static final blacklist ERROR_CAS_INSUFFICIENT_OUTPUT_PROTECTION:I = 0x9

.field public static final blacklist ERROR_CAS_INVALID_STATE:I = 0x5

.field public static final blacklist ERROR_CAS_LICENSE_EXPIRED:I = 0x2

.field public static final blacklist ERROR_CAS_NEED_ACTIVATION:I = 0xf

.field public static final blacklist ERROR_CAS_NEED_PAIRING:I = 0x10

.field public static final blacklist ERROR_CAS_NOT_PROVISIONED:I = 0x7

.field public static final blacklist ERROR_CAS_NO_CARD:I = 0x11

.field public static final blacklist ERROR_CAS_NO_LICENSE:I = 0x1

.field public static final blacklist ERROR_CAS_REBOOTING:I = 0x15

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

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    nop

    .line 186
    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 188
    const-string v1, "ERROR_CAS_NO_LICENSE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    goto :goto_17

    .line 187
    :cond_16
    const/4 v2, 0x0

    .line 191
    :goto_17
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_23

    .line 192
    const-string v1, "ERROR_CAS_LICENSE_EXPIRED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    or-int/lit8 v2, v2, 0x2

    .line 195
    :cond_23
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2e

    .line 196
    const-string v1, "ERROR_CAS_SESSION_NOT_OPENED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    move v2, v3

    .line 199
    :cond_2e
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3a

    .line 200
    const-string v1, "ERROR_CAS_CANNOT_HANDLE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    or-int/lit8 v2, v2, 0x4

    .line 203
    :cond_3a
    and-int/lit8 v1, p0, 0x5

    const/4 v3, 0x5

    if-ne v1, v3, :cond_46

    .line 204
    const-string v1, "ERROR_CAS_INVALID_STATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    or-int/lit8 v2, v2, 0x5

    .line 207
    :cond_46
    and-int/lit8 v1, p0, 0x6

    const/4 v3, 0x6

    if-ne v1, v3, :cond_52

    .line 208
    const-string v1, "BAD_VALUE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    or-int/lit8 v2, v2, 0x6

    .line 211
    :cond_52
    and-int/lit8 v1, p0, 0x7

    const/4 v3, 0x7

    if-ne v1, v3, :cond_5d

    .line 212
    const-string v1, "ERROR_CAS_NOT_PROVISIONED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    move v2, v3

    .line 215
    :cond_5d
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_6a

    .line 216
    const-string v1, "ERROR_CAS_RESOURCE_BUSY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    or-int/lit8 v2, v2, 0x8

    .line 219
    :cond_6a
    and-int/lit8 v1, p0, 0x9

    const/16 v3, 0x9

    if-ne v1, v3, :cond_77

    .line 220
    const-string v1, "ERROR_CAS_INSUFFICIENT_OUTPUT_PROTECTION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    or-int/lit8 v2, v2, 0x9

    .line 223
    :cond_77
    and-int/lit8 v1, p0, 0xa

    const/16 v3, 0xa

    if-ne v1, v3, :cond_84

    .line 224
    const-string v1, "ERROR_CAS_TAMPER_DETECTED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    or-int/lit8 v2, v2, 0xa

    .line 227
    :cond_84
    and-int/lit8 v1, p0, 0xb

    const/16 v3, 0xb

    if-ne v1, v3, :cond_91

    .line 228
    const-string v1, "ERROR_CAS_DEVICE_REVOKED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    or-int/lit8 v2, v2, 0xb

    .line 231
    :cond_91
    and-int/lit8 v1, p0, 0xc

    const/16 v3, 0xc

    if-ne v1, v3, :cond_9e

    .line 232
    const-string v1, "ERROR_CAS_DECRYPT_UNIT_NOT_INITIALIZED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    or-int/lit8 v2, v2, 0xc

    .line 235
    :cond_9e
    and-int/lit8 v1, p0, 0xd

    const/16 v3, 0xd

    if-ne v1, v3, :cond_ab

    .line 236
    const-string v1, "ERROR_CAS_DECRYPT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    or-int/lit8 v2, v2, 0xd

    .line 239
    :cond_ab
    and-int/lit8 v1, p0, 0xe

    const/16 v3, 0xe

    if-ne v1, v3, :cond_b8

    .line 240
    const-string v1, "ERROR_CAS_UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    or-int/lit8 v2, v2, 0xe

    .line 243
    :cond_b8
    and-int/lit8 v1, p0, 0xf

    const/16 v3, 0xf

    if-ne v1, v3, :cond_c4

    .line 244
    const-string v1, "ERROR_CAS_NEED_ACTIVATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    move v2, v3

    .line 247
    :cond_c4
    and-int/lit8 v1, p0, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_d1

    .line 248
    const-string v1, "ERROR_CAS_NEED_PAIRING"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    or-int/lit8 v2, v2, 0x10

    .line 251
    :cond_d1
    and-int/lit8 v1, p0, 0x11

    const/16 v3, 0x11

    if-ne v1, v3, :cond_de

    .line 252
    const-string v1, "ERROR_CAS_NO_CARD"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    or-int/lit8 v2, v2, 0x11

    .line 255
    :cond_de
    and-int/lit8 v1, p0, 0x12

    const/16 v3, 0x12

    if-ne v1, v3, :cond_eb

    .line 256
    const-string v1, "ERROR_CAS_CARD_MUTE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    or-int/lit8 v2, v2, 0x12

    .line 259
    :cond_eb
    and-int/lit8 v1, p0, 0x13

    const/16 v3, 0x13

    if-ne v1, v3, :cond_f8

    .line 260
    const-string v1, "ERROR_CAS_CARD_INVALID"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    or-int/lit8 v2, v2, 0x13

    .line 263
    :cond_f8
    and-int/lit8 v1, p0, 0x14

    const/16 v3, 0x14

    if-ne v1, v3, :cond_105

    .line 264
    const-string v1, "ERROR_CAS_BLACKOUT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    or-int/lit8 v2, v2, 0x14

    .line 267
    :cond_105
    and-int/lit8 v1, p0, 0x15

    const/16 v3, 0x15

    if-ne v1, v3, :cond_112

    .line 268
    const-string v1, "ERROR_CAS_REBOOTING"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    or-int/lit8 v2, v2, 0x15

    .line 271
    :cond_112
    if-eq p0, v2, :cond_130

    .line 272
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

    .line 274
    :cond_130
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3

    .line 114
    if-nez p0, :cond_5

    .line 115
    const-string p0, "OK"

    return-object p0

    .line 117
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 118
    const-string p0, "ERROR_CAS_NO_LICENSE"

    return-object p0

    .line 120
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 121
    const-string p0, "ERROR_CAS_LICENSE_EXPIRED"

    return-object p0

    .line 123
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 124
    const-string p0, "ERROR_CAS_SESSION_NOT_OPENED"

    return-object p0

    .line 126
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    .line 127
    const-string p0, "ERROR_CAS_CANNOT_HANDLE"

    return-object p0

    .line 129
    :cond_1d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    .line 130
    const-string p0, "ERROR_CAS_INVALID_STATE"

    return-object p0

    .line 132
    :cond_23
    const/4 v0, 0x6

    if-ne p0, v0, :cond_29

    .line 133
    const-string p0, "BAD_VALUE"

    return-object p0

    .line 135
    :cond_29
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2f

    .line 136
    const-string p0, "ERROR_CAS_NOT_PROVISIONED"

    return-object p0

    .line 138
    :cond_2f
    const/16 v0, 0x8

    if-ne p0, v0, :cond_36

    .line 139
    const-string p0, "ERROR_CAS_RESOURCE_BUSY"

    return-object p0

    .line 141
    :cond_36
    const/16 v0, 0x9

    if-ne p0, v0, :cond_3d

    .line 142
    const-string p0, "ERROR_CAS_INSUFFICIENT_OUTPUT_PROTECTION"

    return-object p0

    .line 144
    :cond_3d
    const/16 v0, 0xa

    if-ne p0, v0, :cond_44

    .line 145
    const-string p0, "ERROR_CAS_TAMPER_DETECTED"

    return-object p0

    .line 147
    :cond_44
    const/16 v0, 0xb

    if-ne p0, v0, :cond_4b

    .line 148
    const-string p0, "ERROR_CAS_DEVICE_REVOKED"

    return-object p0

    .line 150
    :cond_4b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_52

    .line 151
    const-string p0, "ERROR_CAS_DECRYPT_UNIT_NOT_INITIALIZED"

    return-object p0

    .line 153
    :cond_52
    const/16 v0, 0xd

    if-ne p0, v0, :cond_59

    .line 154
    const-string p0, "ERROR_CAS_DECRYPT"

    return-object p0

    .line 156
    :cond_59
    const/16 v0, 0xe

    if-ne p0, v0, :cond_60

    .line 157
    const-string p0, "ERROR_CAS_UNKNOWN"

    return-object p0

    .line 159
    :cond_60
    const/16 v0, 0xf

    if-ne p0, v0, :cond_67

    .line 160
    const-string p0, "ERROR_CAS_NEED_ACTIVATION"

    return-object p0

    .line 162
    :cond_67
    const/16 v0, 0x10

    if-ne p0, v0, :cond_6e

    .line 163
    const-string p0, "ERROR_CAS_NEED_PAIRING"

    return-object p0

    .line 165
    :cond_6e
    const/16 v0, 0x11

    if-ne p0, v0, :cond_75

    .line 166
    const-string p0, "ERROR_CAS_NO_CARD"

    return-object p0

    .line 168
    :cond_75
    const/16 v0, 0x12

    if-ne p0, v0, :cond_7c

    .line 169
    const-string p0, "ERROR_CAS_CARD_MUTE"

    return-object p0

    .line 171
    :cond_7c
    const/16 v0, 0x13

    if-ne p0, v0, :cond_83

    .line 172
    const-string p0, "ERROR_CAS_CARD_INVALID"

    return-object p0

    .line 174
    :cond_83
    const/16 v0, 0x14

    if-ne p0, v0, :cond_8a

    .line 175
    const-string p0, "ERROR_CAS_BLACKOUT"

    return-object p0

    .line 177
    :cond_8a
    const/16 v0, 0x15

    if-ne p0, v0, :cond_91

    .line 178
    const-string p0, "ERROR_CAS_REBOOTING"

    return-object p0

    .line 180
    :cond_91
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
