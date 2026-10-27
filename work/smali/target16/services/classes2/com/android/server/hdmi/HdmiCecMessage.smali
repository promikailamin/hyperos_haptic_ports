.class public Lcom/android/server/hdmi/HdmiCecMessage;
.super Ljava/lang/Object;
.source "HdmiCecMessage.java"


# static fields
.field public static final EMPTY_PARAM:[B


# instance fields
.field public final mDestination:I

.field public final mOpcode:I

.field public final mParams:[B

.field public final mSource:I

.field public final mValidationResult:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    sput-object v0, Lcom/android/server/hdmi/HdmiCecMessage;->EMPTY_PARAM:[B

    return-void
.end method

.method public constructor <init>(III[B)V
    .registers 12

    and-int/lit16 v0, p3, 0xff

    .line 63
    invoke-static {p1, p2, v0, p4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->validate(III[B)I

    move-result v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 62
    invoke-direct/range {v1 .. v6}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[BI)V

    return-void
.end method

.method public constructor <init>(III[BI)V
    .registers 6

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 55
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    and-int/lit16 p1, p3, 0xff

    .line 56
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 57
    array-length p1, p4

    invoke-static {p4, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 58
    iput p5, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mValidationResult:I

    return-void
.end method

.method public static build(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 5

    .line 88
    new-instance v0, Lcom/android/server/hdmi/HdmiCecMessage;

    sget-object v1, Lcom/android/server/hdmi/HdmiCecMessage;->EMPTY_PARAM:[B

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[B)V

    return-object v0
.end method

.method public static build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 5

    and-int/lit16 p2, p2, 0xff

    const/16 v0, 0x73

    if-eq p2, v0, :cond_15

    const/16 v0, 0xa6

    if-eq p2, v0, :cond_10

    .line 83
    new-instance v0, Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[B)V

    return-object v0

    .line 81
    :cond_10
    invoke-static {p0, p1, p3}, Lcom/android/server/hdmi/ReportFeaturesMessage;->build(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0

    .line 79
    :cond_15
    invoke-static {p0, p1, p3}, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;->build(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static filterMessageParameters(I)Z
    .registers 2

    .line 0
    const/16 v0, 0x45

    if-eq p0, v0, :cond_15

    const/16 v0, 0x47

    if-eq p0, v0, :cond_15

    const/16 v0, 0x64

    if-eq p0, v0, :cond_15

    const/16 v0, 0xa0

    if-eq p0, v0, :cond_15

    packed-switch p0, :pswitch_data_18

    const/4 p0, 0x0

    return p0

    :cond_15
    :pswitch_15
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_18
    .packed-switch 0x89
        :pswitch_15
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method

.method public static isCecTransportMessage(I)Z
    .registers 2

    .line 0
    const/16 v0, 0xa7

    if-eq p0, v0, :cond_e

    const/16 v0, 0xa8

    if-eq p0, v0, :cond_e

    const/16 v0, 0xf8

    if-eq p0, v0, :cond_e

    const/4 p0, 0x0

    return p0

    :cond_e
    const/4 p0, 0x1

    return p0
.end method

.method public static isUserControlPressedMessage(I)Z
    .registers 2

    .line 0
    const/16 v0, 0x44

    if-ne v0, p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static opcodeToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_11f

    const/16 v0, 0x1a

    if-eq p0, v0, :cond_11c

    const/16 v0, 0x1b

    if-eq p0, v0, :cond_119

    const/16 v0, 0x7d

    if-eq p0, v0, :cond_116

    const/16 v0, 0x7e

    if-eq p0, v0, :cond_113

    const/16 v0, 0x99

    if-eq p0, v0, :cond_110

    const/16 v0, 0x9a

    if-eq p0, v0, :cond_10d

    sparse-switch p0, :sswitch_data_122

    packed-switch p0, :pswitch_data_190

    packed-switch p0, :pswitch_data_1a4

    packed-switch p0, :pswitch_data_1b2

    packed-switch p0, :pswitch_data_1c4

    packed-switch p0, :pswitch_data_1d0

    packed-switch p0, :pswitch_data_1e4

    .line 358
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Opcode: %02X"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 310
    :pswitch_3e
    const-string p0, "Select Digital Service"

    return-object p0

    .line 308
    :pswitch_41
    const-string p0, "Select Analog Service"

    return-object p0

    .line 306
    :pswitch_44
    const-string p0, "Get Menu Language"

    return-object p0

    .line 304
    :pswitch_47
    const-string p0, "Report Power Status"

    return-object p0

    .line 302
    :pswitch_4a
    const-string p0, "Give Device Power Status"

    return-object p0

    .line 300
    :pswitch_4d
    const-string p0, "Menu Status"

    return-object p0

    .line 298
    :pswitch_50
    const-string p0, "Menu Request"

    return-object p0

    .line 296
    :pswitch_53
    const-string p0, "Give Device Vendor Id"

    return-object p0

    .line 294
    :pswitch_56
    const-string p0, "Vendor Remote Button Up"

    return-object p0

    .line 292
    :pswitch_59
    const-string p0, "Vendor Remote Button Down"

    return-object p0

    .line 290
    :pswitch_5c
    const-string p0, "Vendor Command"

    return-object p0

    .line 288
    :pswitch_5f
    const-string p0, "Device Vendor Id"

    return-object p0

    .line 286
    :pswitch_62
    const-string p0, "Set Stream Path"

    return-object p0

    .line 284
    :pswitch_65
    const-string p0, "Request Active Source"

    return-object p0

    .line 282
    :pswitch_68
    const-string p0, "Report Physical Address"

    return-object p0

    .line 280
    :pswitch_6b
    const-string p0, "Give Physical Address"

    return-object p0

    .line 278
    :pswitch_6e
    const-string p0, "Active Source"

    return-object p0

    .line 276
    :pswitch_71
    const-string p0, "Routing Information"

    return-object p0

    .line 274
    :pswitch_74
    const-string p0, "Routing Change"

    return-object p0

    .line 266
    :pswitch_77
    const-string p0, "Set Audio Volume Level"

    return-object p0

    .line 264
    :pswitch_7a
    const-string p0, "Set System Audio Mode"

    return-object p0

    .line 262
    :pswitch_7d
    const-string p0, "Give Audio Status"

    return-object p0

    .line 260
    :pswitch_80
    const-string p0, "System Audio Mode Request"

    return-object p0

    .line 254
    :pswitch_83
    const-string p0, "Set Osd Name"

    return-object p0

    .line 252
    :pswitch_86
    const-string p0, "Give Osd Name"

    return-object p0

    .line 250
    :pswitch_89
    const-string p0, "User Control Release"

    return-object p0

    .line 248
    :pswitch_8c
    const-string p0, "User Control Pressed"

    return-object p0

    .line 246
    :pswitch_8f
    const-string p0, "Timer Cleared Status"

    return-object p0

    .line 244
    :pswitch_92
    const-string p0, "Deck Control"

    return-object p0

    .line 242
    :pswitch_95
    const-string p0, "Play"

    return-object p0

    .line 240
    :pswitch_98
    const-string p0, "Standby"

    return-object p0

    .line 238
    :pswitch_9b
    const-string p0, "Timer Status"

    return-object p0

    .line 236
    :pswitch_9e
    const-string p0, "Set Analog Timer"

    return-object p0

    .line 234
    :pswitch_a1
    const-string p0, "Clear Analog Timer"

    return-object p0

    .line 232
    :pswitch_a4
    const-string p0, "Set Menu Language"

    return-object p0

    .line 222
    :pswitch_a7
    const-string p0, "Record Off"

    return-object p0

    .line 220
    :pswitch_aa
    const-string p0, "Record Status"

    return-object p0

    .line 218
    :pswitch_ad
    const-string p0, "Record On"

    return-object p0

    .line 216
    :pswitch_b0
    const-string p0, "Give Tuner Device Status"

    return-object p0

    .line 214
    :pswitch_b3
    const-string p0, "Tuner Device Status"

    return-object p0

    .line 212
    :pswitch_b6
    const-string p0, "Tuner Step Decrement"

    return-object p0

    .line 210
    :pswitch_b9
    const-string p0, "Tuner Step Increment"

    return-object p0

    .line 208
    :pswitch_bc
    const-string p0, "Image View On"

    return-object p0

    .line 356
    :sswitch_bf
    const-string p0, "Abort"

    return-object p0

    .line 354
    :sswitch_c2
    const-string p0, "Cdc Message"

    return-object p0

    .line 352
    :sswitch_c5
    const-string p0, "Terminate ARC"

    return-object p0

    .line 342
    :sswitch_c8
    const-string p0, "Request ARC Termination"

    return-object p0

    .line 340
    :sswitch_cb
    const-string p0, "Request ARC Initiation"

    return-object p0

    .line 338
    :sswitch_ce
    const-string p0, "Report ARC Terminated"

    return-object p0

    .line 336
    :sswitch_d1
    const-string p0, "Report ARC Initiated"

    return-object p0

    .line 334
    :sswitch_d4
    const-string p0, "Initiate ARC"

    return-object p0

    .line 350
    :sswitch_d7
    const-string p0, "Report Current Latency"

    return-object p0

    .line 348
    :sswitch_da
    const-string p0, "Request Current Latency"

    return-object p0

    .line 346
    :sswitch_dd
    const-string p0, "Report Features"

    return-object p0

    .line 344
    :sswitch_e0
    const-string p0, "Give Features"

    return-object p0

    .line 332
    :sswitch_e3
    const-string p0, "Request Short Audio Descriptor"

    return-object p0

    .line 330
    :sswitch_e6
    const-string p0, "Report Short Audio Descriptor"

    return-object p0

    .line 328
    :sswitch_e9
    const-string p0, "Set External Timer"

    return-object p0

    .line 326
    :sswitch_ec
    const-string p0, "Clear External Timer"

    return-object p0

    .line 324
    :sswitch_ef
    const-string p0, "Vendor Command With Id"

    return-object p0

    .line 322
    :sswitch_f2
    const-string p0, "Get Cec Version"

    return-object p0

    .line 320
    :sswitch_f5
    const-string p0, "Cec Version"

    return-object p0

    .line 318
    :sswitch_f8
    const-string p0, "InActive Source"

    return-object p0

    .line 312
    :sswitch_fb
    const-string p0, "Set Digital Timer"

    return-object p0

    .line 268
    :sswitch_fe
    const-string p0, "Report Audio Status"

    return-object p0

    .line 258
    :sswitch_101
    const-string p0, "Set Timer Program Title"

    return-object p0

    .line 256
    :sswitch_104
    const-string p0, "Set Osd String"

    return-object p0

    .line 226
    :sswitch_107
    const-string p0, "Record Tv Screen"

    return-object p0

    .line 224
    :sswitch_10a
    const-string p0, "Text View On"

    return-object p0

    .line 316
    :cond_10d
    const-string p0, "Set Audio Rate"

    return-object p0

    .line 314
    :cond_110
    const-string p0, "Clear Digital Timer"

    return-object p0

    .line 272
    :cond_113
    const-string p0, "System Audio Mode Status"

    return-object p0

    .line 270
    :cond_116
    const-string p0, "Give System Audio Mode Status"

    return-object p0

    .line 230
    :cond_119
    const-string p0, "Deck Status"

    return-object p0

    .line 228
    :cond_11c
    const-string p0, "Give Deck Status"

    return-object p0

    .line 206
    :cond_11f
    :sswitch_11f
    const-string p0, "Feature Abort"

    return-object p0

    :sswitch_data_122
    .sparse-switch
        0x0 -> :sswitch_11f
        0xd -> :sswitch_10a
        0xf -> :sswitch_107
        0x64 -> :sswitch_104
        0x67 -> :sswitch_101
        0x7a -> :sswitch_fe
        0x97 -> :sswitch_fb
        0x9d -> :sswitch_f8
        0x9e -> :sswitch_f5
        0x9f -> :sswitch_f2
        0xa0 -> :sswitch_ef
        0xa1 -> :sswitch_ec
        0xa2 -> :sswitch_e9
        0xa3 -> :sswitch_e6
        0xa4 -> :sswitch_e3
        0xa5 -> :sswitch_e0
        0xa6 -> :sswitch_dd
        0xa7 -> :sswitch_da
        0xa8 -> :sswitch_d7
        0xc0 -> :sswitch_d4
        0xc1 -> :sswitch_d1
        0xc2 -> :sswitch_ce
        0xc3 -> :sswitch_cb
        0xc4 -> :sswitch_c8
        0xc5 -> :sswitch_c5
        0xf8 -> :sswitch_c2
        0xff -> :sswitch_bf
    .end sparse-switch

    :pswitch_data_190
    .packed-switch 0x4
        :pswitch_bc
        :pswitch_b9
        :pswitch_b6
        :pswitch_b3
        :pswitch_b0
        :pswitch_ad
        :pswitch_aa
        :pswitch_a7
    .end packed-switch

    :pswitch_data_1a4
    .packed-switch 0x32
        :pswitch_a4
        :pswitch_a1
        :pswitch_9e
        :pswitch_9b
        :pswitch_98
    .end packed-switch

    :pswitch_data_1b2
    .packed-switch 0x41
        :pswitch_95
        :pswitch_92
        :pswitch_8f
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_83
    .end packed-switch

    :pswitch_data_1c4
    .packed-switch 0x70
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
    .end packed-switch

    :pswitch_data_1d0
    .packed-switch 0x80
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
    .end packed-switch

    :pswitch_data_1e4
    .packed-switch 0x89
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
    .end packed-switch
.end method

.method public static validationResultToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_1f

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_19

    const/4 v0, 0x3

    if-eq p0, v0, :cond_16

    const/4 v0, 0x4

    if-eq p0, v0, :cond_12

    .line 199
    const-string/jumbo p0, "unknown error"

    return-object p0

    .line 197
    :cond_12
    const-string/jumbo p0, "short parameters"

    return-object p0

    .line 195
    :cond_16
    const-string p0, "invalid parameters"

    return-object p0

    .line 193
    :cond_19
    const-string p0, "invalid destination"

    return-object p0

    .line 191
    :cond_1c
    const-string p0, "invalid source"

    return-object p0

    .line 189
    :cond_1f
    const-string/jumbo p0, "ok"

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 93
    instance-of v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    .line 94
    check-cast p1, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 95
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    if-ne v0, v2, :cond_35

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    .line 96
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v2

    if-ne v0, v2, :cond_35

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 97
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v2

    if-ne v0, v2, :cond_35

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 98
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_35

    iget p0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mValidationResult:I

    .line 99
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getValidationResult()I

    move-result p1

    if-ne p0, p1, :cond_35

    const/4 p0, 0x1

    return p0

    :cond_35
    return v1
.end method

.method public getDestination()I
    .registers 1

    .line 130
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    return p0
.end method

.method public getOpcode()I
    .registers 1

    .line 140
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    return p0
.end method

.method public getParams()[B
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    return-object p0
.end method

.method public getSource()I
    .registers 1

    .line 120
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    return p0
.end method

.method public getValidationResult()I
    .registers 1

    .line 158
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mValidationResult:I

    return p0
.end method

.method public hashCode()I
    .registers 4

    .line 106
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 107
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    .line 108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 109
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 110
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 106
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 165
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessage;->opcodeToString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 164
    const-string v2, "<%s> %X%X:%02X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    array-length v1, v1

    if-lez v1, :cond_86

    .line 167
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessage;->filterMessageParameters(I)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 168
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " <Redacted len=%d>"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_86

    .line 169
    :cond_4c
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessage;->isUserControlPressedMessage(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6b

    .line 170
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    aget-byte v1, v1, v2

    .line 172
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecKeycode;->getKeycodeType(B)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 171
    const-string v2, " <Keycode type = %s>"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_86

    .line 174
    :cond_6b
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    array-length v3, v1

    :goto_6e
    if-ge v2, v3, :cond_86

    aget-byte v4, v1, v2

    .line 175
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, ":%02X"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_6e

    .line 179
    :cond_86
    :goto_86
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mValidationResult:I

    if-eqz p0, :cond_9b

    .line 181
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->validationResultToString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 180
    const-string v1, " <Validation error: %s>"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    :cond_9b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
