.class public abstract Landroid/hardware/audio/common/V2_0/AudioFormat;
.super Ljava/lang/Object;
.source "AudioFormat.java"


# direct methods
.method public static final toString(I)Ljava/lang/String;
    .registers 8

    const/4 v0, -0x1

    if-ne p0, v0, :cond_6

    .line 115
    const-string p0, "INVALID"

    return-object p0

    :cond_6
    if-nez p0, :cond_b

    .line 118
    const-string p0, "DEFAULT"

    return-object p0

    :cond_b
    if-nez p0, :cond_10

    .line 121
    const-string p0, "PCM"

    return-object p0

    :cond_10
    const/high16 v0, 0x1000000

    if-ne p0, v0, :cond_17

    .line 124
    const-string p0, "MP3"

    return-object p0

    :cond_17
    const/high16 v0, 0x2000000

    if-ne p0, v0, :cond_1e

    .line 127
    const-string p0, "AMR_NB"

    return-object p0

    :cond_1e
    const/high16 v0, 0x3000000

    if-ne p0, v0, :cond_25

    .line 130
    const-string p0, "AMR_WB"

    return-object p0

    :cond_25
    const/high16 v0, 0x4000000

    if-ne p0, v0, :cond_2c

    .line 133
    const-string p0, "AAC"

    return-object p0

    :cond_2c
    const/high16 v0, 0x5000000

    if-ne p0, v0, :cond_33

    .line 136
    const-string p0, "HE_AAC_V1"

    return-object p0

    :cond_33
    const/high16 v0, 0x6000000

    if-ne p0, v0, :cond_3a

    .line 139
    const-string p0, "HE_AAC_V2"

    return-object p0

    :cond_3a
    const/high16 v0, 0x7000000

    if-ne p0, v0, :cond_41

    .line 142
    const-string p0, "VORBIS"

    return-object p0

    :cond_41
    const/high16 v0, 0x8000000

    if-ne p0, v0, :cond_48

    .line 145
    const-string p0, "OPUS"

    return-object p0

    :cond_48
    const/high16 v0, 0x9000000

    if-ne p0, v0, :cond_4f

    .line 148
    const-string p0, "AC3"

    return-object p0

    :cond_4f
    const/high16 v0, 0xa000000

    if-ne p0, v0, :cond_56

    .line 151
    const-string p0, "E_AC3"

    return-object p0

    :cond_56
    const/high16 v0, 0xb000000

    if-ne p0, v0, :cond_5d

    .line 154
    const-string p0, "DTS"

    return-object p0

    :cond_5d
    const/high16 v0, 0xc000000

    if-ne p0, v0, :cond_64

    .line 157
    const-string p0, "DTS_HD"

    return-object p0

    :cond_64
    const/high16 v0, 0xd000000

    if-ne p0, v0, :cond_6b

    .line 160
    const-string p0, "IEC61937"

    return-object p0

    :cond_6b
    const/high16 v0, 0xe000000

    if-ne p0, v0, :cond_72

    .line 163
    const-string p0, "DOLBY_TRUEHD"

    return-object p0

    :cond_72
    const/high16 v0, 0x10000000

    if-ne p0, v0, :cond_79

    .line 166
    const-string p0, "EVRC"

    return-object p0

    :cond_79
    const/high16 v0, 0x11000000

    if-ne p0, v0, :cond_80

    .line 169
    const-string p0, "EVRCB"

    return-object p0

    :cond_80
    const/high16 v0, 0x12000000

    if-ne p0, v0, :cond_87

    .line 172
    const-string p0, "EVRCWB"

    return-object p0

    :cond_87
    const/high16 v0, 0x13000000

    if-ne p0, v0, :cond_8e

    .line 175
    const-string p0, "EVRCNW"

    return-object p0

    :cond_8e
    const/high16 v0, 0x14000000

    if-ne p0, v0, :cond_95

    .line 178
    const-string p0, "AAC_ADIF"

    return-object p0

    :cond_95
    const/high16 v0, 0x15000000

    if-ne p0, v0, :cond_9c

    .line 181
    const-string p0, "WMA"

    return-object p0

    :cond_9c
    const/high16 v0, 0x16000000

    if-ne p0, v0, :cond_a3

    .line 184
    const-string p0, "WMA_PRO"

    return-object p0

    :cond_a3
    const/high16 v0, 0x17000000

    if-ne p0, v0, :cond_aa

    .line 187
    const-string p0, "AMR_WB_PLUS"

    return-object p0

    :cond_aa
    const/high16 v0, 0x18000000

    if-ne p0, v0, :cond_b1

    .line 190
    const-string p0, "MP2"

    return-object p0

    :cond_b1
    const/high16 v0, 0x19000000

    if-ne p0, v0, :cond_b8

    .line 193
    const-string p0, "QCELP"

    return-object p0

    :cond_b8
    const/high16 v0, 0x1a000000

    if-ne p0, v0, :cond_bf

    .line 196
    const-string p0, "DSD"

    return-object p0

    :cond_bf
    const/high16 v0, 0x1b000000

    if-ne p0, v0, :cond_c6

    .line 199
    const-string p0, "FLAC"

    return-object p0

    :cond_c6
    const/high16 v0, 0x1c000000

    if-ne p0, v0, :cond_cd

    .line 202
    const-string p0, "ALAC"

    return-object p0

    :cond_cd
    const/high16 v0, 0x1d000000

    if-ne p0, v0, :cond_d4

    .line 205
    const-string p0, "APE"

    return-object p0

    :cond_d4
    const/high16 v0, 0x1e000000

    if-ne p0, v0, :cond_db

    .line 208
    const-string p0, "AAC_ADTS"

    return-object p0

    :cond_db
    const/high16 v0, 0x1f000000

    if-ne p0, v0, :cond_e2

    .line 211
    const-string p0, "SBC"

    return-object p0

    :cond_e2
    const/high16 v0, 0x20000000

    if-ne p0, v0, :cond_e9

    .line 214
    const-string p0, "APTX"

    return-object p0

    :cond_e9
    const/high16 v0, 0x21000000

    if-ne p0, v0, :cond_f0

    .line 217
    const-string p0, "APTX_HD"

    return-object p0

    :cond_f0
    const/high16 v0, 0x22000000

    if-ne p0, v0, :cond_f7

    .line 220
    const-string p0, "AC4"

    return-object p0

    :cond_f7
    const/high16 v0, 0x23000000

    if-ne p0, v0, :cond_fe

    .line 223
    const-string p0, "LDAC"

    return-object p0

    :cond_fe
    const/high16 v0, -0x1000000

    if-ne p0, v0, :cond_105

    .line 226
    const-string p0, "MAIN_MASK"

    return-object p0

    :cond_105
    const v0, 0xffffff

    if-ne p0, v0, :cond_10d

    .line 229
    const-string p0, "SUB_MASK"

    return-object p0

    :cond_10d
    const/4 v0, 0x1

    if-ne p0, v0, :cond_113

    .line 232
    const-string p0, "PCM_SUB_16_BIT"

    return-object p0

    :cond_113
    const/4 v1, 0x2

    if-ne p0, v1, :cond_119

    .line 235
    const-string p0, "PCM_SUB_8_BIT"

    return-object p0

    :cond_119
    const/4 v2, 0x3

    if-ne p0, v2, :cond_11f

    .line 238
    const-string p0, "PCM_SUB_32_BIT"

    return-object p0

    :cond_11f
    const/4 v3, 0x4

    if-ne p0, v3, :cond_125

    .line 241
    const-string p0, "PCM_SUB_8_24_BIT"

    return-object p0

    :cond_125
    const/4 v4, 0x5

    if-ne p0, v4, :cond_12b

    .line 244
    const-string p0, "PCM_SUB_FLOAT"

    return-object p0

    :cond_12b
    const/4 v5, 0x6

    if-ne p0, v5, :cond_131

    .line 247
    const-string p0, "PCM_SUB_24_BIT_PACKED"

    return-object p0

    :cond_131
    if-nez p0, :cond_136

    .line 250
    const-string p0, "MP3_SUB_NONE"

    return-object p0

    :cond_136
    if-nez p0, :cond_13b

    .line 253
    const-string p0, "AMR_SUB_NONE"

    return-object p0

    :cond_13b
    if-ne p0, v0, :cond_140

    .line 256
    const-string p0, "AAC_SUB_MAIN"

    return-object p0

    :cond_140
    if-ne p0, v1, :cond_145

    .line 259
    const-string p0, "AAC_SUB_LC"

    return-object p0

    :cond_145
    if-ne p0, v3, :cond_14a

    .line 262
    const-string p0, "AAC_SUB_SSR"

    return-object p0

    :cond_14a
    const/16 v6, 0x8

    if-ne p0, v6, :cond_151

    .line 265
    const-string p0, "AAC_SUB_LTP"

    return-object p0

    :cond_151
    const/16 v6, 0x10

    if-ne p0, v6, :cond_158

    .line 268
    const-string p0, "AAC_SUB_HE_V1"

    return-object p0

    :cond_158
    const/16 v6, 0x20

    if-ne p0, v6, :cond_15f

    .line 271
    const-string p0, "AAC_SUB_SCALABLE"

    return-object p0

    :cond_15f
    const/16 v6, 0x40

    if-ne p0, v6, :cond_166

    .line 274
    const-string p0, "AAC_SUB_ERLC"

    return-object p0

    :cond_166
    const/16 v6, 0x80

    if-ne p0, v6, :cond_16d

    .line 277
    const-string p0, "AAC_SUB_LD"

    return-object p0

    :cond_16d
    const/16 v6, 0x100

    if-ne p0, v6, :cond_174

    .line 280
    const-string p0, "AAC_SUB_HE_V2"

    return-object p0

    :cond_174
    const/16 v6, 0x200

    if-ne p0, v6, :cond_17b

    .line 283
    const-string p0, "AAC_SUB_ELD"

    return-object p0

    :cond_17b
    if-nez p0, :cond_180

    .line 286
    const-string p0, "VORBIS_SUB_NONE"

    return-object p0

    :cond_180
    if-ne p0, v0, :cond_185

    .line 289
    const-string p0, "PCM_16_BIT"

    return-object p0

    :cond_185
    if-ne p0, v1, :cond_18a

    .line 292
    const-string p0, "PCM_8_BIT"

    return-object p0

    :cond_18a
    if-ne p0, v2, :cond_18f

    .line 295
    const-string p0, "PCM_32_BIT"

    return-object p0

    :cond_18f
    if-ne p0, v3, :cond_194

    .line 298
    const-string p0, "PCM_8_24_BIT"

    return-object p0

    :cond_194
    if-ne p0, v4, :cond_199

    .line 301
    const-string p0, "PCM_FLOAT"

    return-object p0

    :cond_199
    if-ne p0, v5, :cond_19e

    .line 304
    const-string p0, "PCM_24_BIT_PACKED"

    return-object p0

    :cond_19e
    const v0, 0x4000001

    if-ne p0, v0, :cond_1a6

    .line 307
    const-string p0, "AAC_MAIN"

    return-object p0

    :cond_1a6
    const v0, 0x4000002

    if-ne p0, v0, :cond_1ae

    .line 310
    const-string p0, "AAC_LC"

    return-object p0

    :cond_1ae
    const v0, 0x4000004

    if-ne p0, v0, :cond_1b6

    .line 313
    const-string p0, "AAC_SSR"

    return-object p0

    :cond_1b6
    const v0, 0x4000008

    if-ne p0, v0, :cond_1be

    .line 316
    const-string p0, "AAC_LTP"

    return-object p0

    :cond_1be
    const v0, 0x4000010

    if-ne p0, v0, :cond_1c6

    .line 319
    const-string p0, "AAC_HE_V1"

    return-object p0

    :cond_1c6
    const v0, 0x4000020

    if-ne p0, v0, :cond_1ce

    .line 322
    const-string p0, "AAC_SCALABLE"

    return-object p0

    :cond_1ce
    const v0, 0x4000040

    if-ne p0, v0, :cond_1d6

    .line 325
    const-string p0, "AAC_ERLC"

    return-object p0

    :cond_1d6
    const v0, 0x4000080

    if-ne p0, v0, :cond_1de

    .line 328
    const-string p0, "AAC_LD"

    return-object p0

    :cond_1de
    const v0, 0x4000100

    if-ne p0, v0, :cond_1e6

    .line 331
    const-string p0, "AAC_HE_V2"

    return-object p0

    :cond_1e6
    const v0, 0x4000200

    if-ne p0, v0, :cond_1ee

    .line 334
    const-string p0, "AAC_ELD"

    return-object p0

    :cond_1ee
    const v0, 0x1e000001

    if-ne p0, v0, :cond_1f6

    .line 337
    const-string p0, "AAC_ADTS_MAIN"

    return-object p0

    :cond_1f6
    const v0, 0x1e000002

    if-ne p0, v0, :cond_1fe

    .line 340
    const-string p0, "AAC_ADTS_LC"

    return-object p0

    :cond_1fe
    const v0, 0x1e000004

    if-ne p0, v0, :cond_206

    .line 343
    const-string p0, "AAC_ADTS_SSR"

    return-object p0

    :cond_206
    const v0, 0x1e000008

    if-ne p0, v0, :cond_20e

    .line 346
    const-string p0, "AAC_ADTS_LTP"

    return-object p0

    :cond_20e
    const v0, 0x1e000010

    if-ne p0, v0, :cond_216

    .line 349
    const-string p0, "AAC_ADTS_HE_V1"

    return-object p0

    :cond_216
    const v0, 0x1e000020

    if-ne p0, v0, :cond_21e

    .line 352
    const-string p0, "AAC_ADTS_SCALABLE"

    return-object p0

    :cond_21e
    const v0, 0x1e000040

    if-ne p0, v0, :cond_226

    .line 355
    const-string p0, "AAC_ADTS_ERLC"

    return-object p0

    :cond_226
    const v0, 0x1e000080

    if-ne p0, v0, :cond_22e

    .line 358
    const-string p0, "AAC_ADTS_LD"

    return-object p0

    :cond_22e
    const v0, 0x1e000100

    if-ne p0, v0, :cond_236

    .line 361
    const-string p0, "AAC_ADTS_HE_V2"

    return-object p0

    :cond_236
    const v0, 0x1e000200

    if-ne p0, v0, :cond_23e

    .line 364
    const-string p0, "AAC_ADTS_ELD"

    return-object p0

    .line 366
    :cond_23e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
