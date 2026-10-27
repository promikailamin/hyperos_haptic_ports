.class public interface abstract Landroid/hardware/radio/RadioError$$;
.super Ljava/lang/Object;
.source "RadioError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "$"
.end annotation


# direct methods
.method public static blacklist arrayToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 7

    .line 270
    if-nez p0, :cond_5

    const-string p0, "null"

    return-object p0

    .line 271
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 273
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 274
    new-instance v2, Ljava/util/StringJoiner;

    const-string v3, "["

    const-string v4, "]"

    const-string v5, ", "

    invoke-direct {v2, v5, v3, v4}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 275
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3a

    .line 276
    nop

    :goto_26
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ge v3, v0, :cond_4f

    .line 277
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/radio/RadioError$$;->arrayToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 276
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 280
    :cond_3a
    const-class v1, [I

    if-ne v0, v1, :cond_54

    .line 281
    check-cast p0, [I

    array-length v0, p0

    :goto_41
    if-ge v3, v0, :cond_4f

    aget v1, p0, v3

    .line 282
    invoke-static {v1}, Landroid/hardware/radio/RadioError$$;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 281
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .line 285
    :cond_4f
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 280
    :cond_54
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrong type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 272
    :cond_6d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist toString(I)Ljava/lang/String;
    .registers 2

    .line 178
    if-nez p0, :cond_5

    const-string p0, "NONE"

    return-object p0

    .line 179
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    const-string p0, "RADIO_NOT_AVAILABLE"

    return-object p0

    .line 180
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    const-string p0, "GENERIC_FAILURE"

    return-object p0

    .line 181
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    const-string p0, "PASSWORD_INCORRECT"

    return-object p0

    .line 182
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    const-string p0, "SIM_PIN2"

    return-object p0

    .line 183
    :cond_1d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    const-string p0, "SIM_PUK2"

    return-object p0

    .line 184
    :cond_23
    const/4 v0, 0x6

    if-ne p0, v0, :cond_29

    const-string p0, "REQUEST_NOT_SUPPORTED"

    return-object p0

    .line 185
    :cond_29
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2f

    const-string p0, "CANCELLED"

    return-object p0

    .line 186
    :cond_2f
    const/16 v0, 0x8

    if-ne p0, v0, :cond_36

    const-string p0, "OP_NOT_ALLOWED_DURING_VOICE_CALL"

    return-object p0

    .line 187
    :cond_36
    const/16 v0, 0x9

    if-ne p0, v0, :cond_3d

    const-string p0, "OP_NOT_ALLOWED_BEFORE_REG_TO_NW"

    return-object p0

    .line 188
    :cond_3d
    const/16 v0, 0xa

    if-ne p0, v0, :cond_44

    const-string p0, "SMS_SEND_FAIL_RETRY"

    return-object p0

    .line 189
    :cond_44
    const/16 v0, 0xb

    if-ne p0, v0, :cond_4b

    const-string p0, "SIM_ABSENT"

    return-object p0

    .line 190
    :cond_4b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_52

    const-string p0, "SUBSCRIPTION_NOT_AVAILABLE"

    return-object p0

    .line 191
    :cond_52
    const/16 v0, 0xd

    if-ne p0, v0, :cond_59

    const-string p0, "MODE_NOT_SUPPORTED"

    return-object p0

    .line 192
    :cond_59
    const/16 v0, 0xe

    if-ne p0, v0, :cond_60

    const-string p0, "FDN_CHECK_FAILURE"

    return-object p0

    .line 193
    :cond_60
    const/16 v0, 0xf

    if-ne p0, v0, :cond_67

    const-string p0, "ILLEGAL_SIM_OR_ME"

    return-object p0

    .line 194
    :cond_67
    const/16 v0, 0x10

    if-ne p0, v0, :cond_6e

    const-string p0, "MISSING_RESOURCE"

    return-object p0

    .line 195
    :cond_6e
    const/16 v0, 0x11

    if-ne p0, v0, :cond_75

    const-string p0, "NO_SUCH_ELEMENT"

    return-object p0

    .line 196
    :cond_75
    const/16 v0, 0x12

    if-ne p0, v0, :cond_7c

    const-string p0, "DIAL_MODIFIED_TO_USSD"

    return-object p0

    .line 197
    :cond_7c
    const/16 v0, 0x13

    if-ne p0, v0, :cond_83

    const-string p0, "DIAL_MODIFIED_TO_SS"

    return-object p0

    .line 198
    :cond_83
    const/16 v0, 0x14

    if-ne p0, v0, :cond_8a

    const-string p0, "DIAL_MODIFIED_TO_DIAL"

    return-object p0

    .line 199
    :cond_8a
    const/16 v0, 0x15

    if-ne p0, v0, :cond_91

    const-string p0, "USSD_MODIFIED_TO_DIAL"

    return-object p0

    .line 200
    :cond_91
    const/16 v0, 0x16

    if-ne p0, v0, :cond_98

    const-string p0, "USSD_MODIFIED_TO_SS"

    return-object p0

    .line 201
    :cond_98
    const/16 v0, 0x17

    if-ne p0, v0, :cond_9f

    const-string p0, "USSD_MODIFIED_TO_USSD"

    return-object p0

    .line 202
    :cond_9f
    const/16 v0, 0x18

    if-ne p0, v0, :cond_a6

    const-string p0, "SS_MODIFIED_TO_DIAL"

    return-object p0

    .line 203
    :cond_a6
    const/16 v0, 0x19

    if-ne p0, v0, :cond_ad

    const-string p0, "SS_MODIFIED_TO_USSD"

    return-object p0

    .line 204
    :cond_ad
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_b4

    const-string p0, "SUBSCRIPTION_NOT_SUPPORTED"

    return-object p0

    .line 205
    :cond_b4
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_bb

    const-string p0, "SS_MODIFIED_TO_SS"

    return-object p0

    .line 206
    :cond_bb
    const/16 v0, 0x24

    if-ne p0, v0, :cond_c2

    const-string p0, "LCE_NOT_SUPPORTED"

    return-object p0

    .line 207
    :cond_c2
    const/16 v0, 0x25

    if-ne p0, v0, :cond_c9

    const-string p0, "NO_MEMORY"

    return-object p0

    .line 208
    :cond_c9
    const/16 v0, 0x26

    if-ne p0, v0, :cond_d0

    const-string p0, "INTERNAL_ERR"

    return-object p0

    .line 209
    :cond_d0
    const/16 v0, 0x27

    if-ne p0, v0, :cond_d7

    const-string p0, "SYSTEM_ERR"

    return-object p0

    .line 210
    :cond_d7
    const/16 v0, 0x28

    if-ne p0, v0, :cond_de

    const-string p0, "MODEM_ERR"

    return-object p0

    .line 211
    :cond_de
    const/16 v0, 0x29

    if-ne p0, v0, :cond_e5

    const-string p0, "INVALID_STATE"

    return-object p0

    .line 212
    :cond_e5
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_ec

    const-string p0, "NO_RESOURCES"

    return-object p0

    .line 213
    :cond_ec
    const/16 v0, 0x2b

    if-ne p0, v0, :cond_f3

    const-string p0, "SIM_ERR"

    return-object p0

    .line 214
    :cond_f3
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_fa

    const-string p0, "INVALID_ARGUMENTS"

    return-object p0

    .line 215
    :cond_fa
    const/16 v0, 0x2d

    if-ne p0, v0, :cond_101

    const-string p0, "INVALID_SIM_STATE"

    return-object p0

    .line 216
    :cond_101
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_108

    const-string p0, "INVALID_MODEM_STATE"

    return-object p0

    .line 217
    :cond_108
    const/16 v0, 0x2f

    if-ne p0, v0, :cond_10f

    const-string p0, "INVALID_CALL_ID"

    return-object p0

    .line 218
    :cond_10f
    const/16 v0, 0x30

    if-ne p0, v0, :cond_116

    const-string p0, "NO_SMS_TO_ACK"

    return-object p0

    .line 219
    :cond_116
    const/16 v0, 0x31

    if-ne p0, v0, :cond_11d

    const-string p0, "NETWORK_ERR"

    return-object p0

    .line 220
    :cond_11d
    const/16 v0, 0x32

    if-ne p0, v0, :cond_124

    const-string p0, "REQUEST_RATE_LIMITED"

    return-object p0

    .line 221
    :cond_124
    const/16 v0, 0x33

    if-ne p0, v0, :cond_12b

    const-string p0, "SIM_BUSY"

    return-object p0

    .line 222
    :cond_12b
    const/16 v0, 0x34

    if-ne p0, v0, :cond_132

    const-string p0, "SIM_FULL"

    return-object p0

    .line 223
    :cond_132
    const/16 v0, 0x35

    if-ne p0, v0, :cond_139

    const-string p0, "NETWORK_REJECT"

    return-object p0

    .line 224
    :cond_139
    const/16 v0, 0x36

    if-ne p0, v0, :cond_140

    const-string p0, "OPERATION_NOT_ALLOWED"

    return-object p0

    .line 225
    :cond_140
    const/16 v0, 0x37

    if-ne p0, v0, :cond_147

    const-string p0, "EMPTY_RECORD"

    return-object p0

    .line 226
    :cond_147
    const/16 v0, 0x38

    if-ne p0, v0, :cond_14e

    const-string p0, "INVALID_SMS_FORMAT"

    return-object p0

    .line 227
    :cond_14e
    const/16 v0, 0x39

    if-ne p0, v0, :cond_155

    const-string p0, "ENCODING_ERR"

    return-object p0

    .line 228
    :cond_155
    const/16 v0, 0x3a

    if-ne p0, v0, :cond_15c

    const-string p0, "INVALID_SMSC_ADDRESS"

    return-object p0

    .line 229
    :cond_15c
    const/16 v0, 0x3b

    if-ne p0, v0, :cond_163

    const-string p0, "NO_SUCH_ENTRY"

    return-object p0

    .line 230
    :cond_163
    const/16 v0, 0x3c

    if-ne p0, v0, :cond_16a

    const-string p0, "NETWORK_NOT_READY"

    return-object p0

    .line 231
    :cond_16a
    const/16 v0, 0x3d

    if-ne p0, v0, :cond_171

    const-string p0, "NOT_PROVISIONED"

    return-object p0

    .line 232
    :cond_171
    const/16 v0, 0x3e

    if-ne p0, v0, :cond_178

    const-string p0, "NO_SUBSCRIPTION"

    return-object p0

    .line 233
    :cond_178
    const/16 v0, 0x3f

    if-ne p0, v0, :cond_17f

    const-string p0, "NO_NETWORK_FOUND"

    return-object p0

    .line 234
    :cond_17f
    const/16 v0, 0x40

    if-ne p0, v0, :cond_186

    const-string p0, "DEVICE_IN_USE"

    return-object p0

    .line 235
    :cond_186
    const/16 v0, 0x41

    if-ne p0, v0, :cond_18d

    const-string p0, "ABORTED"

    return-object p0

    .line 236
    :cond_18d
    const/16 v0, 0x42

    if-ne p0, v0, :cond_194

    const-string p0, "INVALID_RESPONSE"

    return-object p0

    .line 237
    :cond_194
    const/16 v0, 0x1f5

    if-ne p0, v0, :cond_19b

    const-string p0, "OEM_ERROR_1"

    return-object p0

    .line 238
    :cond_19b
    const/16 v0, 0x1f6

    if-ne p0, v0, :cond_1a2

    const-string p0, "OEM_ERROR_2"

    return-object p0

    .line 239
    :cond_1a2
    const/16 v0, 0x1f7

    if-ne p0, v0, :cond_1a9

    const-string p0, "OEM_ERROR_3"

    return-object p0

    .line 240
    :cond_1a9
    const/16 v0, 0x1f8

    if-ne p0, v0, :cond_1b0

    const-string p0, "OEM_ERROR_4"

    return-object p0

    .line 241
    :cond_1b0
    const/16 v0, 0x1f9

    if-ne p0, v0, :cond_1b7

    const-string p0, "OEM_ERROR_5"

    return-object p0

    .line 242
    :cond_1b7
    const/16 v0, 0x1fa

    if-ne p0, v0, :cond_1be

    const-string p0, "OEM_ERROR_6"

    return-object p0

    .line 243
    :cond_1be
    const/16 v0, 0x1fb

    if-ne p0, v0, :cond_1c5

    const-string p0, "OEM_ERROR_7"

    return-object p0

    .line 244
    :cond_1c5
    const/16 v0, 0x1fc

    if-ne p0, v0, :cond_1cc

    const-string p0, "OEM_ERROR_8"

    return-object p0

    .line 245
    :cond_1cc
    const/16 v0, 0x1fd

    if-ne p0, v0, :cond_1d3

    const-string p0, "OEM_ERROR_9"

    return-object p0

    .line 246
    :cond_1d3
    const/16 v0, 0x1fe

    if-ne p0, v0, :cond_1da

    const-string p0, "OEM_ERROR_10"

    return-object p0

    .line 247
    :cond_1da
    const/16 v0, 0x1ff

    if-ne p0, v0, :cond_1e1

    const-string p0, "OEM_ERROR_11"

    return-object p0

    .line 248
    :cond_1e1
    const/16 v0, 0x200

    if-ne p0, v0, :cond_1e8

    const-string p0, "OEM_ERROR_12"

    return-object p0

    .line 249
    :cond_1e8
    const/16 v0, 0x201

    if-ne p0, v0, :cond_1ef

    const-string p0, "OEM_ERROR_13"

    return-object p0

    .line 250
    :cond_1ef
    const/16 v0, 0x202

    if-ne p0, v0, :cond_1f6

    const-string p0, "OEM_ERROR_14"

    return-object p0

    .line 251
    :cond_1f6
    const/16 v0, 0x203

    if-ne p0, v0, :cond_1fd

    const-string p0, "OEM_ERROR_15"

    return-object p0

    .line 252
    :cond_1fd
    const/16 v0, 0x204

    if-ne p0, v0, :cond_204

    const-string p0, "OEM_ERROR_16"

    return-object p0

    .line 253
    :cond_204
    const/16 v0, 0x205

    if-ne p0, v0, :cond_20b

    const-string p0, "OEM_ERROR_17"

    return-object p0

    .line 254
    :cond_20b
    const/16 v0, 0x206

    if-ne p0, v0, :cond_212

    const-string p0, "OEM_ERROR_18"

    return-object p0

    .line 255
    :cond_212
    const/16 v0, 0x207

    if-ne p0, v0, :cond_219

    const-string p0, "OEM_ERROR_19"

    return-object p0

    .line 256
    :cond_219
    const/16 v0, 0x208

    if-ne p0, v0, :cond_220

    const-string p0, "OEM_ERROR_20"

    return-object p0

    .line 257
    :cond_220
    const/16 v0, 0x209

    if-ne p0, v0, :cond_227

    const-string p0, "OEM_ERROR_21"

    return-object p0

    .line 258
    :cond_227
    const/16 v0, 0x20a

    if-ne p0, v0, :cond_22e

    const-string p0, "OEM_ERROR_22"

    return-object p0

    .line 259
    :cond_22e
    const/16 v0, 0x20b

    if-ne p0, v0, :cond_235

    const-string p0, "OEM_ERROR_23"

    return-object p0

    .line 260
    :cond_235
    const/16 v0, 0x20c

    if-ne p0, v0, :cond_23c

    const-string p0, "OEM_ERROR_24"

    return-object p0

    .line 261
    :cond_23c
    const/16 v0, 0x20d

    if-ne p0, v0, :cond_243

    const-string p0, "OEM_ERROR_25"

    return-object p0

    .line 262
    :cond_243
    const/16 v0, 0x43

    if-ne p0, v0, :cond_24a

    const-string p0, "SIMULTANEOUS_SMS_AND_CALL_NOT_ALLOWED"

    return-object p0

    .line 263
    :cond_24a
    const/16 v0, 0x44

    if-ne p0, v0, :cond_251

    const-string p0, "ACCESS_BARRED"

    return-object p0

    .line 264
    :cond_251
    const/16 v0, 0x45

    if-ne p0, v0, :cond_258

    const-string p0, "BLOCKED_DUE_TO_CALL"

    return-object p0

    .line 265
    :cond_258
    const/16 v0, 0x46

    if-ne p0, v0, :cond_25f

    const-string p0, "RF_HARDWARE_ISSUE"

    return-object p0

    .line 266
    :cond_25f
    const/16 v0, 0x47

    if-ne p0, v0, :cond_266

    const-string p0, "NO_RF_CALIBRATION_INFO"

    return-object p0

    .line 267
    :cond_266
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
