.class public interface abstract Landroid/hardware/radio/voice/LastCallFailCause$$;
.super Ljava/lang/Object;
.source "LastCallFailCause.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/voice/LastCallFailCause;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "$"
.end annotation


# direct methods
.method public static blacklist arrayToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 7

    .line 259
    if-nez p0, :cond_5

    const-string p0, "null"

    return-object p0

    .line 260
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 262
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 263
    new-instance v2, Ljava/util/StringJoiner;

    const-string v3, "["

    const-string v4, "]"

    const-string v5, ", "

    invoke-direct {v2, v5, v3, v4}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 264
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3a

    .line 265
    nop

    :goto_26
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ge v3, v0, :cond_4f

    .line 266
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/radio/voice/LastCallFailCause$$;->arrayToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 265
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 269
    :cond_3a
    const-class v1, [I

    if-ne v0, v1, :cond_54

    .line 270
    check-cast p0, [I

    array-length v0, p0

    :goto_41
    if-ge v3, v0, :cond_4f

    aget v1, p0, v3

    .line 271
    invoke-static {v1}, Landroid/hardware/radio/voice/LastCallFailCause$$;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 270
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .line 274
    :cond_4f
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 269
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

    .line 261
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

    .line 159
    if-nez p0, :cond_5

    const-string p0, "INVALID"

    return-object p0

    .line 160
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    const-string p0, "UNOBTAINABLE_NUMBER"

    return-object p0

    .line 161
    :cond_b
    const/4 v0, 0x3

    if-ne p0, v0, :cond_11

    const-string p0, "NO_ROUTE_TO_DESTINATION"

    return-object p0

    .line 162
    :cond_11
    const/4 v0, 0x6

    if-ne p0, v0, :cond_17

    const-string p0, "CHANNEL_UNACCEPTABLE"

    return-object p0

    .line 163
    :cond_17
    const/16 v0, 0x8

    if-ne p0, v0, :cond_1e

    const-string p0, "OPERATOR_DETERMINED_BARRING"

    return-object p0

    .line 164
    :cond_1e
    const/16 v0, 0x10

    if-ne p0, v0, :cond_25

    const-string p0, "NORMAL"

    return-object p0

    .line 165
    :cond_25
    const/16 v0, 0x11

    if-ne p0, v0, :cond_2c

    const-string p0, "BUSY"

    return-object p0

    .line 166
    :cond_2c
    const/16 v0, 0x12

    if-ne p0, v0, :cond_33

    const-string p0, "NO_USER_RESPONDING"

    return-object p0

    .line 167
    :cond_33
    const/16 v0, 0x13

    if-ne p0, v0, :cond_3a

    const-string p0, "NO_ANSWER_FROM_USER"

    return-object p0

    .line 168
    :cond_3a
    const/16 v0, 0x15

    if-ne p0, v0, :cond_41

    const-string p0, "CALL_REJECTED"

    return-object p0

    .line 169
    :cond_41
    const/16 v0, 0x16

    if-ne p0, v0, :cond_48

    const-string p0, "NUMBER_CHANGED"

    return-object p0

    .line 170
    :cond_48
    const/16 v0, 0x19

    if-ne p0, v0, :cond_4f

    const-string p0, "PREEMPTION"

    return-object p0

    .line 171
    :cond_4f
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_56

    const-string p0, "DESTINATION_OUT_OF_ORDER"

    return-object p0

    .line 172
    :cond_56
    const/16 v0, 0x1c

    if-ne p0, v0, :cond_5d

    const-string p0, "INVALID_NUMBER_FORMAT"

    return-object p0

    .line 173
    :cond_5d
    const/16 v0, 0x1d

    if-ne p0, v0, :cond_64

    const-string p0, "FACILITY_REJECTED"

    return-object p0

    .line 174
    :cond_64
    const/16 v0, 0x1e

    if-ne p0, v0, :cond_6b

    const-string p0, "RESP_TO_STATUS_ENQUIRY"

    return-object p0

    .line 175
    :cond_6b
    const/16 v0, 0x1f

    if-ne p0, v0, :cond_72

    const-string p0, "NORMAL_UNSPECIFIED"

    return-object p0

    .line 176
    :cond_72
    const/16 v0, 0x22

    if-ne p0, v0, :cond_79

    const-string p0, "CONGESTION"

    return-object p0

    .line 177
    :cond_79
    const/16 v0, 0x26

    if-ne p0, v0, :cond_80

    const-string p0, "NETWORK_OUT_OF_ORDER"

    return-object p0

    .line 178
    :cond_80
    const/16 v0, 0x29

    if-ne p0, v0, :cond_87

    const-string p0, "TEMPORARY_FAILURE"

    return-object p0

    .line 179
    :cond_87
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_8e

    const-string p0, "SWITCHING_EQUIPMENT_CONGESTION"

    return-object p0

    .line 180
    :cond_8e
    const/16 v0, 0x2b

    if-ne p0, v0, :cond_95

    const-string p0, "ACCESS_INFORMATION_DISCARDED"

    return-object p0

    .line 181
    :cond_95
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_9c

    const-string p0, "REQUESTED_CIRCUIT_OR_CHANNEL_NOT_AVAILABLE"

    return-object p0

    .line 182
    :cond_9c
    const/16 v0, 0x2f

    if-ne p0, v0, :cond_a3

    const-string p0, "RESOURCES_UNAVAILABLE_OR_UNSPECIFIED"

    return-object p0

    .line 183
    :cond_a3
    const/16 v0, 0x31

    if-ne p0, v0, :cond_aa

    const-string p0, "QOS_UNAVAILABLE"

    return-object p0

    .line 184
    :cond_aa
    const/16 v0, 0x32

    if-ne p0, v0, :cond_b1

    const-string p0, "REQUESTED_FACILITY_NOT_SUBSCRIBED"

    return-object p0

    .line 185
    :cond_b1
    const/16 v0, 0x37

    if-ne p0, v0, :cond_b8

    const-string p0, "INCOMING_CALLS_BARRED_WITHIN_CUG"

    return-object p0

    .line 186
    :cond_b8
    const/16 v0, 0x39

    if-ne p0, v0, :cond_bf

    const-string p0, "BEARER_CAPABILITY_NOT_AUTHORIZED"

    return-object p0

    .line 187
    :cond_bf
    const/16 v0, 0x3a

    if-ne p0, v0, :cond_c6

    const-string p0, "BEARER_CAPABILITY_UNAVAILABLE"

    return-object p0

    .line 188
    :cond_c6
    const/16 v0, 0x3f

    if-ne p0, v0, :cond_cd

    const-string p0, "SERVICE_OPTION_NOT_AVAILABLE"

    return-object p0

    .line 189
    :cond_cd
    const/16 v0, 0x41

    if-ne p0, v0, :cond_d4

    const-string p0, "BEARER_SERVICE_NOT_IMPLEMENTED"

    return-object p0

    .line 190
    :cond_d4
    const/16 v0, 0x44

    if-ne p0, v0, :cond_db

    const-string p0, "ACM_LIMIT_EXCEEDED"

    return-object p0

    .line 191
    :cond_db
    const/16 v0, 0x45

    if-ne p0, v0, :cond_e2

    const-string p0, "REQUESTED_FACILITY_NOT_IMPLEMENTED"

    return-object p0

    .line 192
    :cond_e2
    const/16 v0, 0x46

    if-ne p0, v0, :cond_e9

    const-string p0, "ONLY_DIGITAL_INFORMATION_BEARER_AVAILABLE"

    return-object p0

    .line 193
    :cond_e9
    const/16 v0, 0x4f

    if-ne p0, v0, :cond_f0

    const-string p0, "SERVICE_OR_OPTION_NOT_IMPLEMENTED"

    return-object p0

    .line 194
    :cond_f0
    const/16 v0, 0x51

    if-ne p0, v0, :cond_f7

    const-string p0, "INVALID_TRANSACTION_IDENTIFIER"

    return-object p0

    .line 195
    :cond_f7
    const/16 v0, 0x57

    if-ne p0, v0, :cond_fe

    const-string p0, "USER_NOT_MEMBER_OF_CUG"

    return-object p0

    .line 196
    :cond_fe
    const/16 v0, 0x58

    if-ne p0, v0, :cond_105

    const-string p0, "INCOMPATIBLE_DESTINATION"

    return-object p0

    .line 197
    :cond_105
    const/16 v0, 0x5b

    if-ne p0, v0, :cond_10c

    const-string p0, "INVALID_TRANSIT_NW_SELECTION"

    return-object p0

    .line 198
    :cond_10c
    const/16 v0, 0x5f

    if-ne p0, v0, :cond_113

    const-string p0, "SEMANTICALLY_INCORRECT_MESSAGE"

    return-object p0

    .line 199
    :cond_113
    const/16 v0, 0x60

    if-ne p0, v0, :cond_11a

    const-string p0, "INVALID_MANDATORY_INFORMATION"

    return-object p0

    .line 200
    :cond_11a
    const/16 v0, 0x61

    if-ne p0, v0, :cond_121

    const-string p0, "MESSAGE_TYPE_NON_IMPLEMENTED"

    return-object p0

    .line 201
    :cond_121
    const/16 v0, 0x62

    if-ne p0, v0, :cond_128

    const-string p0, "MESSAGE_TYPE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE"

    return-object p0

    .line 202
    :cond_128
    const/16 v0, 0x63

    if-ne p0, v0, :cond_12f

    const-string p0, "INFORMATION_ELEMENT_NON_EXISTENT"

    return-object p0

    .line 203
    :cond_12f
    const/16 v0, 0x64

    if-ne p0, v0, :cond_136

    const-string p0, "CONDITIONAL_IE_ERROR"

    return-object p0

    .line 204
    :cond_136
    const/16 v0, 0x65

    if-ne p0, v0, :cond_13d

    const-string p0, "MESSAGE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE"

    return-object p0

    .line 205
    :cond_13d
    const/16 v0, 0x66

    if-ne p0, v0, :cond_144

    const-string p0, "RECOVERY_ON_TIMER_EXPIRED"

    return-object p0

    .line 206
    :cond_144
    const/16 v0, 0x6f

    if-ne p0, v0, :cond_14b

    const-string p0, "PROTOCOL_ERROR_UNSPECIFIED"

    return-object p0

    .line 207
    :cond_14b
    const/16 v0, 0x7f

    if-ne p0, v0, :cond_152

    const-string p0, "INTERWORKING_UNSPECIFIED"

    return-object p0

    .line 208
    :cond_152
    const/16 v0, 0xf0

    if-ne p0, v0, :cond_159

    const-string p0, "CALL_BARRED"

    return-object p0

    .line 209
    :cond_159
    const/16 v0, 0xf1

    if-ne p0, v0, :cond_160

    const-string p0, "FDN_BLOCKED"

    return-object p0

    .line 210
    :cond_160
    const/16 v0, 0xf2

    if-ne p0, v0, :cond_167

    const-string p0, "IMSI_UNKNOWN_IN_VLR"

    return-object p0

    .line 211
    :cond_167
    const/16 v0, 0xf3

    if-ne p0, v0, :cond_16e

    const-string p0, "IMEI_NOT_ACCEPTED"

    return-object p0

    .line 212
    :cond_16e
    const/16 v0, 0xf4

    if-ne p0, v0, :cond_175

    const-string p0, "DIAL_MODIFIED_TO_USSD"

    return-object p0

    .line 213
    :cond_175
    const/16 v0, 0xf5

    if-ne p0, v0, :cond_17c

    const-string p0, "DIAL_MODIFIED_TO_SS"

    return-object p0

    .line 214
    :cond_17c
    const/16 v0, 0xf6

    if-ne p0, v0, :cond_183

    const-string p0, "DIAL_MODIFIED_TO_DIAL"

    return-object p0

    .line 215
    :cond_183
    const/16 v0, 0xf7

    if-ne p0, v0, :cond_18a

    const-string p0, "RADIO_OFF"

    return-object p0

    .line 216
    :cond_18a
    const/16 v0, 0xf8

    if-ne p0, v0, :cond_191

    const-string p0, "OUT_OF_SERVICE"

    return-object p0

    .line 217
    :cond_191
    const/16 v0, 0xf9

    if-ne p0, v0, :cond_198

    const-string p0, "NO_VALID_SIM"

    return-object p0

    .line 218
    :cond_198
    const/16 v0, 0xfa

    if-ne p0, v0, :cond_19f

    const-string p0, "RADIO_INTERNAL_ERROR"

    return-object p0

    .line 219
    :cond_19f
    const/16 v0, 0xfb

    if-ne p0, v0, :cond_1a6

    const-string p0, "NETWORK_RESP_TIMEOUT"

    return-object p0

    .line 220
    :cond_1a6
    const/16 v0, 0xfc

    if-ne p0, v0, :cond_1ad

    const-string p0, "NETWORK_REJECT"

    return-object p0

    .line 221
    :cond_1ad
    const/16 v0, 0xfd

    if-ne p0, v0, :cond_1b4

    const-string p0, "RADIO_ACCESS_FAILURE"

    return-object p0

    .line 222
    :cond_1b4
    const/16 v0, 0xfe

    if-ne p0, v0, :cond_1bb

    const-string p0, "RADIO_LINK_FAILURE"

    return-object p0

    .line 223
    :cond_1bb
    const/16 v0, 0xff

    if-ne p0, v0, :cond_1c2

    const-string p0, "RADIO_LINK_LOST"

    return-object p0

    .line 224
    :cond_1c2
    const/16 v0, 0x100

    if-ne p0, v0, :cond_1c9

    const-string p0, "RADIO_UPLINK_FAILURE"

    return-object p0

    .line 225
    :cond_1c9
    const/16 v0, 0x101

    if-ne p0, v0, :cond_1d0

    const-string p0, "RADIO_SETUP_FAILURE"

    return-object p0

    .line 226
    :cond_1d0
    const/16 v0, 0x102

    if-ne p0, v0, :cond_1d7

    const-string p0, "RADIO_RELEASE_NORMAL"

    return-object p0

    .line 227
    :cond_1d7
    const/16 v0, 0x103

    if-ne p0, v0, :cond_1de

    const-string p0, "RADIO_RELEASE_ABNORMAL"

    return-object p0

    .line 228
    :cond_1de
    const/16 v0, 0x104

    if-ne p0, v0, :cond_1e5

    const-string p0, "ACCESS_CLASS_BLOCKED"

    return-object p0

    .line 229
    :cond_1e5
    const/16 v0, 0x105

    if-ne p0, v0, :cond_1ec

    const-string p0, "NETWORK_DETACH"

    return-object p0

    .line 230
    :cond_1ec
    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_1f3

    const-string p0, "CDMA_LOCKED_UNTIL_POWER_CYCLE"

    return-object p0

    .line 231
    :cond_1f3
    const/16 v0, 0x3e9

    if-ne p0, v0, :cond_1fa

    const-string p0, "CDMA_DROP"

    return-object p0

    .line 232
    :cond_1fa
    const/16 v0, 0x3ea

    if-ne p0, v0, :cond_201

    const-string p0, "CDMA_INTERCEPT"

    return-object p0

    .line 233
    :cond_201
    const/16 v0, 0x3eb

    if-ne p0, v0, :cond_208

    const-string p0, "CDMA_REORDER"

    return-object p0

    .line 234
    :cond_208
    const/16 v0, 0x3ec

    if-ne p0, v0, :cond_20f

    const-string p0, "CDMA_SO_REJECT"

    return-object p0

    .line 235
    :cond_20f
    const/16 v0, 0x3ed

    if-ne p0, v0, :cond_216

    const-string p0, "CDMA_RETRY_ORDER"

    return-object p0

    .line 236
    :cond_216
    const/16 v0, 0x3ee

    if-ne p0, v0, :cond_21d

    const-string p0, "CDMA_ACCESS_FAILURE"

    return-object p0

    .line 237
    :cond_21d
    const/16 v0, 0x3ef

    if-ne p0, v0, :cond_224

    const-string p0, "CDMA_PREEMPTED"

    return-object p0

    .line 238
    :cond_224
    const/16 v0, 0x3f0

    if-ne p0, v0, :cond_22b

    const-string p0, "CDMA_NOT_EMERGENCY"

    return-object p0

    .line 239
    :cond_22b
    const/16 v0, 0x3f1

    if-ne p0, v0, :cond_232

    const-string p0, "CDMA_ACCESS_BLOCKED"

    return-object p0

    .line 240
    :cond_232
    const v0, 0xf001

    if-ne p0, v0, :cond_23a

    const-string p0, "OEM_CAUSE_1"

    return-object p0

    .line 241
    :cond_23a
    const v0, 0xf002

    if-ne p0, v0, :cond_242

    const-string p0, "OEM_CAUSE_2"

    return-object p0

    .line 242
    :cond_242
    const v0, 0xf003

    if-ne p0, v0, :cond_24a

    const-string p0, "OEM_CAUSE_3"

    return-object p0

    .line 243
    :cond_24a
    const v0, 0xf004

    if-ne p0, v0, :cond_252

    const-string p0, "OEM_CAUSE_4"

    return-object p0

    .line 244
    :cond_252
    const v0, 0xf005

    if-ne p0, v0, :cond_25a

    const-string p0, "OEM_CAUSE_5"

    return-object p0

    .line 245
    :cond_25a
    const v0, 0xf006

    if-ne p0, v0, :cond_262

    const-string p0, "OEM_CAUSE_6"

    return-object p0

    .line 246
    :cond_262
    const v0, 0xf007

    if-ne p0, v0, :cond_26a

    const-string p0, "OEM_CAUSE_7"

    return-object p0

    .line 247
    :cond_26a
    const v0, 0xf008

    if-ne p0, v0, :cond_272

    const-string p0, "OEM_CAUSE_8"

    return-object p0

    .line 248
    :cond_272
    const v0, 0xf009

    if-ne p0, v0, :cond_27a

    const-string p0, "OEM_CAUSE_9"

    return-object p0

    .line 249
    :cond_27a
    const v0, 0xf00a

    if-ne p0, v0, :cond_282

    const-string p0, "OEM_CAUSE_10"

    return-object p0

    .line 250
    :cond_282
    const v0, 0xf00b

    if-ne p0, v0, :cond_28a

    const-string p0, "OEM_CAUSE_11"

    return-object p0

    .line 251
    :cond_28a
    const v0, 0xf00c

    if-ne p0, v0, :cond_292

    const-string p0, "OEM_CAUSE_12"

    return-object p0

    .line 252
    :cond_292
    const v0, 0xf00d

    if-ne p0, v0, :cond_29a

    const-string p0, "OEM_CAUSE_13"

    return-object p0

    .line 253
    :cond_29a
    const v0, 0xf00e

    if-ne p0, v0, :cond_2a2

    const-string p0, "OEM_CAUSE_14"

    return-object p0

    .line 254
    :cond_2a2
    const v0, 0xf00f

    if-ne p0, v0, :cond_2aa

    const-string p0, "OEM_CAUSE_15"

    return-object p0

    .line 255
    :cond_2aa
    const v0, 0xffff

    if-ne p0, v0, :cond_2b2

    const-string p0, "ERROR_UNSPECIFIED"

    return-object p0

    .line 256
    :cond_2b2
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
