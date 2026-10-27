.class public abstract Landroid/hardware/audio/common/V2_0/AudioChannelMask;
.super Ljava/lang/Object;
.source "AudioChannelMask.java"


# direct methods
.method public static final toString(I)Ljava/lang/String;
    .registers 17

    move/from16 v0, p0

    if-nez v0, :cond_7

    .line 109
    const-string v0, "REPRESENTATION_POSITION"

    return-object v0

    :cond_7
    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    .line 112
    const-string v0, "REPRESENTATION_INDEX"

    return-object v0

    :cond_d
    if-nez v0, :cond_12

    .line 115
    const-string v0, "NONE"

    return-object v0

    :cond_12
    const/high16 v2, -0x40000000    # -2.0f

    if-ne v0, v2, :cond_19

    .line 118
    const-string v0, "INVALID"

    return-object v0

    :cond_19
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1f

    .line 121
    const-string v0, "OUT_FRONT_LEFT"

    return-object v0

    :cond_1f
    if-ne v0, v1, :cond_24

    .line 124
    const-string v0, "OUT_FRONT_RIGHT"

    return-object v0

    :cond_24
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2a

    .line 127
    const-string v0, "OUT_FRONT_CENTER"

    return-object v0

    :cond_2a
    const/16 v3, 0x8

    if-ne v0, v3, :cond_31

    .line 130
    const-string v0, "OUT_LOW_FREQUENCY"

    return-object v0

    :cond_31
    const/16 v4, 0x10

    if-ne v0, v4, :cond_38

    .line 133
    const-string v0, "OUT_BACK_LEFT"

    return-object v0

    :cond_38
    const/16 v5, 0x20

    if-ne v0, v5, :cond_3f

    .line 136
    const-string v0, "OUT_BACK_RIGHT"

    return-object v0

    :cond_3f
    const/16 v6, 0x40

    if-ne v0, v6, :cond_46

    .line 139
    const-string v0, "OUT_FRONT_LEFT_OF_CENTER"

    return-object v0

    :cond_46
    const/16 v7, 0x80

    if-ne v0, v7, :cond_4d

    .line 142
    const-string v0, "OUT_FRONT_RIGHT_OF_CENTER"

    return-object v0

    :cond_4d
    const/16 v8, 0x100

    if-ne v0, v8, :cond_54

    .line 145
    const-string v0, "OUT_BACK_CENTER"

    return-object v0

    :cond_54
    const/16 v9, 0x200

    if-ne v0, v9, :cond_5b

    .line 148
    const-string v0, "OUT_SIDE_LEFT"

    return-object v0

    :cond_5b
    const/16 v10, 0x400

    if-ne v0, v10, :cond_62

    .line 151
    const-string v0, "OUT_SIDE_RIGHT"

    return-object v0

    :cond_62
    const/16 v11, 0x800

    if-ne v0, v11, :cond_69

    .line 154
    const-string v0, "OUT_TOP_CENTER"

    return-object v0

    :cond_69
    const/16 v12, 0x1000

    if-ne v0, v12, :cond_70

    .line 157
    const-string v0, "OUT_TOP_FRONT_LEFT"

    return-object v0

    :cond_70
    const/16 v13, 0x2000

    if-ne v0, v13, :cond_77

    .line 160
    const-string v0, "OUT_TOP_FRONT_CENTER"

    return-object v0

    :cond_77
    const/16 v14, 0x4000

    if-ne v0, v14, :cond_7e

    .line 163
    const-string v0, "OUT_TOP_FRONT_RIGHT"

    return-object v0

    :cond_7e
    const v15, 0x8000

    if-ne v0, v15, :cond_86

    .line 166
    const-string v0, "OUT_TOP_BACK_LEFT"

    return-object v0

    :cond_86
    const/high16 v15, 0x10000

    if-ne v0, v15, :cond_8d

    .line 169
    const-string v0, "OUT_TOP_BACK_CENTER"

    return-object v0

    :cond_8d
    const/high16 v15, 0x20000

    if-ne v0, v15, :cond_94

    .line 172
    const-string v0, "OUT_TOP_BACK_RIGHT"

    return-object v0

    :cond_94
    if-ne v0, v2, :cond_99

    .line 175
    const-string v0, "OUT_MONO"

    return-object v0

    :cond_99
    const/4 v2, 0x3

    if-ne v0, v2, :cond_9f

    .line 178
    const-string v0, "OUT_STEREO"

    return-object v0

    :cond_9f
    const/16 v2, 0xb

    if-ne v0, v2, :cond_a6

    .line 181
    const-string v0, "OUT_2POINT1"

    return-object v0

    :cond_a6
    const/16 v2, 0x33

    if-ne v0, v2, :cond_ad

    .line 184
    const-string v0, "OUT_QUAD"

    return-object v0

    :cond_ad
    if-ne v0, v2, :cond_b2

    .line 187
    const-string v0, "OUT_QUAD_BACK"

    return-object v0

    :cond_b2
    const/16 v2, 0x603

    if-ne v0, v2, :cond_b9

    .line 190
    const-string v0, "OUT_QUAD_SIDE"

    return-object v0

    :cond_b9
    const/16 v2, 0x107

    if-ne v0, v2, :cond_c0

    .line 193
    const-string v0, "OUT_SURROUND"

    return-object v0

    :cond_c0
    const/16 v2, 0x37

    if-ne v0, v2, :cond_c7

    .line 196
    const-string v0, "OUT_PENTA"

    return-object v0

    :cond_c7
    const/16 v2, 0x3f

    if-ne v0, v2, :cond_ce

    .line 199
    const-string v0, "OUT_5POINT1"

    return-object v0

    :cond_ce
    if-ne v0, v2, :cond_d3

    .line 202
    const-string v0, "OUT_5POINT1_BACK"

    return-object v0

    :cond_d3
    const/16 v2, 0x60f

    if-ne v0, v2, :cond_da

    .line 205
    const-string v0, "OUT_5POINT1_SIDE"

    return-object v0

    :cond_da
    const/16 v2, 0x13f

    if-ne v0, v2, :cond_e1

    .line 208
    const-string v0, "OUT_6POINT1"

    return-object v0

    :cond_e1
    const/16 v2, 0x63f

    if-ne v0, v2, :cond_e8

    .line 211
    const-string v0, "OUT_7POINT1"

    return-object v0

    :cond_e8
    const v2, 0x3ffff

    if-ne v0, v2, :cond_f0

    .line 214
    const-string v0, "OUT_ALL"

    return-object v0

    :cond_f0
    if-ne v0, v1, :cond_f5

    .line 217
    const-string v0, "IN_LEFT"

    return-object v0

    :cond_f5
    if-ne v0, v3, :cond_fa

    .line 220
    const-string v0, "IN_RIGHT"

    return-object v0

    :cond_fa
    if-ne v0, v4, :cond_ff

    .line 223
    const-string v0, "IN_FRONT"

    return-object v0

    :cond_ff
    if-ne v0, v5, :cond_104

    .line 226
    const-string v0, "IN_BACK"

    return-object v0

    :cond_104
    if-ne v0, v6, :cond_109

    .line 229
    const-string v0, "IN_LEFT_PROCESSED"

    return-object v0

    :cond_109
    if-ne v0, v7, :cond_10e

    .line 232
    const-string v0, "IN_RIGHT_PROCESSED"

    return-object v0

    :cond_10e
    if-ne v0, v8, :cond_113

    .line 235
    const-string v0, "IN_FRONT_PROCESSED"

    return-object v0

    :cond_113
    if-ne v0, v9, :cond_118

    .line 238
    const-string v0, "IN_BACK_PROCESSED"

    return-object v0

    :cond_118
    if-ne v0, v10, :cond_11d

    .line 241
    const-string v0, "IN_PRESSURE"

    return-object v0

    :cond_11d
    if-ne v0, v11, :cond_122

    .line 244
    const-string v0, "IN_X_AXIS"

    return-object v0

    :cond_122
    if-ne v0, v12, :cond_127

    .line 247
    const-string v0, "IN_Y_AXIS"

    return-object v0

    :cond_127
    if-ne v0, v13, :cond_12c

    .line 250
    const-string v0, "IN_Z_AXIS"

    return-object v0

    :cond_12c
    if-ne v0, v14, :cond_131

    .line 253
    const-string v0, "IN_VOICE_UPLINK"

    return-object v0

    :cond_131
    const v1, 0x8000

    if-ne v0, v1, :cond_139

    .line 256
    const-string v0, "IN_VOICE_DNLINK"

    return-object v0

    :cond_139
    if-ne v0, v4, :cond_13e

    .line 259
    const-string v0, "IN_MONO"

    return-object v0

    :cond_13e
    const/16 v1, 0xc

    if-ne v0, v1, :cond_145

    .line 262
    const-string v0, "IN_STEREO"

    return-object v0

    :cond_145
    const/16 v1, 0x30

    if-ne v0, v1, :cond_14c

    .line 265
    const-string v0, "IN_FRONT_BACK"

    return-object v0

    :cond_14c
    const/16 v1, 0xfc

    if-ne v0, v1, :cond_153

    .line 268
    const-string v0, "IN_6"

    return-object v0

    :cond_153
    const/16 v1, 0x4010

    if-ne v0, v1, :cond_15a

    .line 271
    const-string v0, "IN_VOICE_UPLINK_MONO"

    return-object v0

    :cond_15a
    const v1, 0x8010

    if-ne v0, v1, :cond_162

    .line 274
    const-string v0, "IN_VOICE_DNLINK_MONO"

    return-object v0

    :cond_162
    const v1, 0xc010

    if-ne v0, v1, :cond_16a

    .line 277
    const-string v0, "IN_VOICE_CALL_MONO"

    return-object v0

    :cond_16a
    const v1, 0xfffc

    if-ne v0, v1, :cond_172

    .line 280
    const-string v0, "IN_ALL"

    return-object v0

    :cond_172
    const/16 v1, 0x1e

    if-ne v0, v1, :cond_179

    .line 283
    const-string v0, "COUNT_MAX"

    return-object v0

    :cond_179
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_180

    .line 286
    const-string v0, "INDEX_HDR"

    return-object v0

    :cond_180
    const v1, -0x7fffffff

    if-ne v0, v1, :cond_188

    .line 289
    const-string v0, "INDEX_MASK_1"

    return-object v0

    :cond_188
    const v1, -0x7ffffffd

    if-ne v0, v1, :cond_190

    .line 292
    const-string v0, "INDEX_MASK_2"

    return-object v0

    :cond_190
    const v1, -0x7ffffff9

    if-ne v0, v1, :cond_198

    .line 295
    const-string v0, "INDEX_MASK_3"

    return-object v0

    :cond_198
    const v1, -0x7ffffff1

    if-ne v0, v1, :cond_1a0

    .line 298
    const-string v0, "INDEX_MASK_4"

    return-object v0

    :cond_1a0
    const v1, -0x7fffffe1

    if-ne v0, v1, :cond_1a8

    .line 301
    const-string v0, "INDEX_MASK_5"

    return-object v0

    :cond_1a8
    const v1, -0x7fffffc1

    if-ne v0, v1, :cond_1b0

    .line 304
    const-string v0, "INDEX_MASK_6"

    return-object v0

    :cond_1b0
    const v1, -0x7fffff81

    if-ne v0, v1, :cond_1b8

    .line 307
    const-string v0, "INDEX_MASK_7"

    return-object v0

    :cond_1b8
    const v1, -0x7fffff01

    if-ne v0, v1, :cond_1c0

    .line 310
    const-string v0, "INDEX_MASK_8"

    return-object v0

    .line 312
    :cond_1c0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
