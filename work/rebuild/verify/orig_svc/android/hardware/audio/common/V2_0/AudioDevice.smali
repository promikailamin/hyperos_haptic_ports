.class public abstract Landroid/hardware/audio/common/V2_0/AudioDevice;
.super Ljava/lang/Object;
.source "AudioDevice.java"


# direct methods
.method public static final toString(I)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    .line 132
    const-string p0, "NONE"

    return-object p0

    :cond_5
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_c

    .line 135
    const-string p0, "BIT_IN"

    return-object p0

    :cond_c
    const/high16 v0, 0x40000000    # 2.0f

    if-ne p0, v0, :cond_13

    .line 138
    const-string p0, "BIT_DEFAULT"

    return-object p0

    :cond_13
    const/4 v1, 0x1

    if-ne p0, v1, :cond_19

    .line 141
    const-string p0, "OUT_EARPIECE"

    return-object p0

    :cond_19
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1f

    .line 144
    const-string p0, "OUT_SPEAKER"

    return-object p0

    :cond_1f
    const/4 v1, 0x4

    if-ne p0, v1, :cond_25

    .line 147
    const-string p0, "OUT_WIRED_HEADSET"

    return-object p0

    :cond_25
    const/16 v1, 0x8

    if-ne p0, v1, :cond_2c

    .line 150
    const-string p0, "OUT_WIRED_HEADPHONE"

    return-object p0

    :cond_2c
    const/16 v1, 0x10

    if-ne p0, v1, :cond_33

    .line 153
    const-string p0, "OUT_BLUETOOTH_SCO"

    return-object p0

    :cond_33
    const/16 v1, 0x20

    if-ne p0, v1, :cond_3a

    .line 156
    const-string p0, "OUT_BLUETOOTH_SCO_HEADSET"

    return-object p0

    :cond_3a
    const/16 v1, 0x40

    if-ne p0, v1, :cond_41

    .line 159
    const-string p0, "OUT_BLUETOOTH_SCO_CARKIT"

    return-object p0

    :cond_41
    const/16 v1, 0x80

    if-ne p0, v1, :cond_48

    .line 162
    const-string p0, "OUT_BLUETOOTH_A2DP"

    return-object p0

    :cond_48
    const/16 v1, 0x100

    if-ne p0, v1, :cond_4f

    .line 165
    const-string p0, "OUT_BLUETOOTH_A2DP_HEADPHONES"

    return-object p0

    :cond_4f
    const/16 v1, 0x200

    if-ne p0, v1, :cond_56

    .line 168
    const-string p0, "OUT_BLUETOOTH_A2DP_SPEAKER"

    return-object p0

    :cond_56
    const/16 v1, 0x400

    if-ne p0, v1, :cond_5d

    .line 171
    const-string p0, "OUT_AUX_DIGITAL"

    return-object p0

    :cond_5d
    if-ne p0, v1, :cond_62

    .line 174
    const-string p0, "OUT_HDMI"

    return-object p0

    :cond_62
    const/16 v1, 0x800

    if-ne p0, v1, :cond_69

    .line 177
    const-string p0, "OUT_ANLG_DOCK_HEADSET"

    return-object p0

    :cond_69
    const/16 v1, 0x1000

    if-ne p0, v1, :cond_70

    .line 180
    const-string p0, "OUT_DGTL_DOCK_HEADSET"

    return-object p0

    :cond_70
    const/16 v1, 0x2000

    if-ne p0, v1, :cond_77

    .line 183
    const-string p0, "OUT_USB_ACCESSORY"

    return-object p0

    :cond_77
    const/16 v1, 0x4000

    if-ne p0, v1, :cond_7e

    .line 186
    const-string p0, "OUT_USB_DEVICE"

    return-object p0

    :cond_7e
    const v1, 0x8000

    if-ne p0, v1, :cond_86

    .line 189
    const-string p0, "OUT_REMOTE_SUBMIX"

    return-object p0

    :cond_86
    const/high16 v1, 0x10000

    if-ne p0, v1, :cond_8d

    .line 192
    const-string p0, "OUT_TELEPHONY_TX"

    return-object p0

    :cond_8d
    const/high16 v1, 0x20000

    if-ne p0, v1, :cond_94

    .line 195
    const-string p0, "OUT_LINE"

    return-object p0

    :cond_94
    const/high16 v1, 0x40000

    if-ne p0, v1, :cond_9b

    .line 198
    const-string p0, "OUT_HDMI_ARC"

    return-object p0

    :cond_9b
    const/high16 v1, 0x80000

    if-ne p0, v1, :cond_a2

    .line 201
    const-string p0, "OUT_SPDIF"

    return-object p0

    :cond_a2
    const/high16 v1, 0x100000

    if-ne p0, v1, :cond_a9

    .line 204
    const-string p0, "OUT_FM"

    return-object p0

    :cond_a9
    const/high16 v1, 0x200000

    if-ne p0, v1, :cond_b0

    .line 207
    const-string p0, "OUT_AUX_LINE"

    return-object p0

    :cond_b0
    const/high16 v1, 0x400000

    if-ne p0, v1, :cond_b7

    .line 210
    const-string p0, "OUT_SPEAKER_SAFE"

    return-object p0

    :cond_b7
    const/high16 v1, 0x800000

    if-ne p0, v1, :cond_be

    .line 213
    const-string p0, "OUT_IP"

    return-object p0

    :cond_be
    const/high16 v1, 0x1000000

    if-ne p0, v1, :cond_c5

    .line 216
    const-string p0, "OUT_BUS"

    return-object p0

    :cond_c5
    const/high16 v1, 0x2000000

    if-ne p0, v1, :cond_cc

    .line 219
    const-string p0, "OUT_PROXY"

    return-object p0

    :cond_cc
    const/high16 v1, 0x4000000

    if-ne p0, v1, :cond_d3

    .line 222
    const-string p0, "OUT_USB_HEADSET"

    return-object p0

    :cond_d3
    if-ne p0, v0, :cond_d8

    .line 225
    const-string p0, "OUT_DEFAULT"

    return-object p0

    :cond_d8
    const v0, 0x47ffffff

    if-ne p0, v0, :cond_e0

    .line 228
    const-string p0, "OUT_ALL"

    return-object p0

    :cond_e0
    const/16 v0, 0x380

    if-ne p0, v0, :cond_e7

    .line 231
    const-string p0, "OUT_ALL_A2DP"

    return-object p0

    :cond_e7
    const/16 v0, 0x70

    if-ne p0, v0, :cond_ee

    .line 234
    const-string p0, "OUT_ALL_SCO"

    return-object p0

    :cond_ee
    const v0, 0x4006000

    if-ne p0, v0, :cond_f6

    .line 237
    const-string p0, "OUT_ALL_USB"

    return-object p0

    :cond_f6
    const v0, -0x7fffffff

    if-ne p0, v0, :cond_fe

    .line 240
    const-string p0, "IN_COMMUNICATION"

    return-object p0

    :cond_fe
    const v0, -0x7ffffffe

    if-ne p0, v0, :cond_106

    .line 243
    const-string p0, "IN_AMBIENT"

    return-object p0

    :cond_106
    const v0, -0x7ffffffc

    if-ne p0, v0, :cond_10e

    .line 246
    const-string p0, "IN_BUILTIN_MIC"

    return-object p0

    :cond_10e
    const v0, -0x7ffffff8

    if-ne p0, v0, :cond_116

    .line 249
    const-string p0, "IN_BLUETOOTH_SCO_HEADSET"

    return-object p0

    :cond_116
    const v1, -0x7ffffff0

    if-ne p0, v1, :cond_11e

    .line 252
    const-string p0, "IN_WIRED_HEADSET"

    return-object p0

    :cond_11e
    const v1, -0x7fffffe0

    if-ne p0, v1, :cond_126

    .line 255
    const-string p0, "IN_AUX_DIGITAL"

    return-object p0

    :cond_126
    if-ne p0, v1, :cond_12b

    .line 258
    const-string p0, "IN_HDMI"

    return-object p0

    :cond_12b
    const v1, -0x7fffffc0

    if-ne p0, v1, :cond_133

    .line 261
    const-string p0, "IN_VOICE_CALL"

    return-object p0

    :cond_133
    if-ne p0, v1, :cond_138

    .line 264
    const-string p0, "IN_TELEPHONY_RX"

    return-object p0

    :cond_138
    const v1, -0x7fffff80

    if-ne p0, v1, :cond_140

    .line 267
    const-string p0, "IN_BACK_MIC"

    return-object p0

    :cond_140
    const v1, -0x7fffff00

    if-ne p0, v1, :cond_148

    .line 270
    const-string p0, "IN_REMOTE_SUBMIX"

    return-object p0

    :cond_148
    const v1, -0x7ffffe00

    if-ne p0, v1, :cond_150

    .line 273
    const-string p0, "IN_ANLG_DOCK_HEADSET"

    return-object p0

    :cond_150
    const v1, -0x7ffffc00

    if-ne p0, v1, :cond_158

    .line 276
    const-string p0, "IN_DGTL_DOCK_HEADSET"

    return-object p0

    :cond_158
    const v1, -0x7ffff800

    if-ne p0, v1, :cond_160

    .line 279
    const-string p0, "IN_USB_ACCESSORY"

    return-object p0

    :cond_160
    const v1, -0x7ffff000

    if-ne p0, v1, :cond_168

    .line 282
    const-string p0, "IN_USB_DEVICE"

    return-object p0

    :cond_168
    const v1, -0x7fffe000

    if-ne p0, v1, :cond_170

    .line 285
    const-string p0, "IN_FM_TUNER"

    return-object p0

    :cond_170
    const v1, -0x7fffc000

    if-ne p0, v1, :cond_178

    .line 288
    const-string p0, "IN_TV_TUNER"

    return-object p0

    :cond_178
    const v1, -0x7fff8000

    if-ne p0, v1, :cond_180

    .line 291
    const-string p0, "IN_LINE"

    return-object p0

    :cond_180
    const/high16 v1, -0x7fff0000

    if-ne p0, v1, :cond_187

    .line 294
    const-string p0, "IN_SPDIF"

    return-object p0

    :cond_187
    const/high16 v1, -0x7ffe0000

    if-ne p0, v1, :cond_18e

    .line 297
    const-string p0, "IN_BLUETOOTH_A2DP"

    return-object p0

    :cond_18e
    const/high16 v1, -0x7ffc0000

    if-ne p0, v1, :cond_195

    .line 300
    const-string p0, "IN_LOOPBACK"

    return-object p0

    :cond_195
    const/high16 v1, -0x7ff80000

    if-ne p0, v1, :cond_19c

    .line 303
    const-string p0, "IN_IP"

    return-object p0

    :cond_19c
    const/high16 v1, -0x7ff00000

    if-ne p0, v1, :cond_1a3

    .line 306
    const-string p0, "IN_BUS"

    return-object p0

    :cond_1a3
    const/high16 v1, -0x7f000000

    if-ne p0, v1, :cond_1aa

    .line 309
    const-string p0, "IN_PROXY"

    return-object p0

    :cond_1aa
    const/high16 v1, -0x7e000000

    if-ne p0, v1, :cond_1b1

    .line 312
    const-string p0, "IN_USB_HEADSET"

    return-object p0

    :cond_1b1
    const/high16 v1, -0x40000000    # -2.0f

    if-ne p0, v1, :cond_1b8

    .line 315
    const-string p0, "IN_DEFAULT"

    return-object p0

    :cond_1b8
    const v1, -0x3ce00001    # -159.99998f

    if-ne p0, v1, :cond_1c0

    .line 318
    const-string p0, "IN_ALL"

    return-object p0

    :cond_1c0
    if-ne p0, v0, :cond_1c5

    .line 321
    const-string p0, "IN_ALL_SCO"

    return-object p0

    :cond_1c5
    const v0, -0x7dffe800

    if-ne p0, v0, :cond_1cd

    .line 324
    const-string p0, "IN_ALL_USB"

    return-object p0

    .line 326
    :cond_1cd
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
