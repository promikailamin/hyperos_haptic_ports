.class public Lcom/android/server/hdmi/HdmiCecMessage;
.super Ljava/lang/Object;
.source "HdmiCecMessage.java"


# static fields
.field public static final EMPTY_PARAM:[B


# instance fields
.field private final mDestination:I

.field private final mOpcode:I

.field private final mParams:[B

.field private final mSource:I

.field private final mValidationResult:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    sput-object v0, Lcom/android/server/hdmi/HdmiCecMessage;->EMPTY_PARAM:[B

    return-void
.end method

.method private constructor <init>(III[B)V
    .registers 12
    .param p1, "source"    # I
    .param p2, "destination"    # I
    .param p3, "opcode"    # I
    .param p4, "params"    # [B

    .line 62
    and-int/lit16 v0, p3, 0xff

    .line 63
    invoke-static {p1, p2, v0, p4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->validate(III[B)I

    move-result v6

    .line 62
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[BI)V

    .line 64
    return-void
.end method

.method protected constructor <init>(III[BI)V
    .registers 7
    .param p1, "source"    # I
    .param p2, "destination"    # I
    .param p3, "opcode"    # I
    .param p4, "params"    # [B
    .param p5, "validationResult"    # I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 55
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    .line 56
    and-int/lit16 v0, p3, 0xff

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 57
    array-length v0, p4

    invoke-static {p4, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 58
    iput p5, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mValidationResult:I

    .line 59
    return-void
.end method

.method static build(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 5
    .param p0, "source"    # I
    .param p1, "destination"    # I
    .param p2, "opcode"    # I

    .line 88
    new-instance v0, Lcom/android/server/hdmi/HdmiCecMessage;

    sget-object v1, Lcom/android/server/hdmi/HdmiCecMessage;->EMPTY_PARAM:[B

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[B)V

    return-object v0
.end method

.method static build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 6
    .param p0, "source"    # I
    .param p1, "destination"    # I
    .param p2, "opcode"    # I
    .param p3, "params"    # [B

    .line 77
    and-int/lit16 v0, p2, 0xff

    sparse-switch v0, :sswitch_data_18

    .line 83
    new-instance v0, Lcom/android/server/hdmi/HdmiCecMessage;

    and-int/lit16 v1, p2, 0xff

    invoke-direct {v0, p0, p1, v1, p3}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[B)V

    return-object v0

    .line 81
    :sswitch_d
    invoke-static {p0, p1, p3}, Lcom/android/server/hdmi/ReportFeaturesMessage;->build(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0

    .line 79
    :sswitch_12
    invoke-static {p0, p1, p3}, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;->build(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_18
    .sparse-switch
        0x73 -> :sswitch_12
        0xa6 -> :sswitch_d
    .end sparse-switch
.end method

.method private static filterMessageParameters(I)Z
    .registers 2
    .param p0, "opcode"    # I

    .line 363
    sparse-switch p0, :sswitch_data_8

    .line 373
    const/4 v0, 0x0

    return v0

    .line 371
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x45 -> :sswitch_5
        0x47 -> :sswitch_5
        0x64 -> :sswitch_5
        0x89 -> :sswitch_5
        0x8a -> :sswitch_5
        0x8b -> :sswitch_5
        0xa0 -> :sswitch_5
    .end sparse-switch
.end method

.method static isCecTransportMessage(I)Z
    .registers 2
    .param p0, "opcode"    # I

    .line 382
    sparse-switch p0, :sswitch_data_8

    .line 388
    const/4 v0, 0x0

    return v0

    .line 386
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0xa7 -> :sswitch_5
        0xa8 -> :sswitch_5
        0xf8 -> :sswitch_5
    .end sparse-switch
.end method

.method private static isUserControlPressedMessage(I)Z
    .registers 2
    .param p0, "opcode"    # I

    .line 378
    const/16 v0, 0x44

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private static opcodeToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "opcode"    # I

    .line 204
    sparse-switch p0, :sswitch_data_f8

    .line 358
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Opcode: %02X"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 356
    :sswitch_14
    const-string v0, "Abort"

    return-object v0

    .line 354
    :sswitch_17
    const-string v0, "Cdc Message"

    return-object v0

    .line 352
    :sswitch_1a
    const-string v0, "Terminate ARC"

    return-object v0

    .line 342
    :sswitch_1d
    const-string v0, "Request ARC Termination"

    return-object v0

    .line 340
    :sswitch_20
    const-string v0, "Request ARC Initiation"

    return-object v0

    .line 338
    :sswitch_23
    const-string v0, "Report ARC Terminated"

    return-object v0

    .line 336
    :sswitch_26
    const-string v0, "Report ARC Initiated"

    return-object v0

    .line 334
    :sswitch_29
    const-string v0, "Initiate ARC"

    return-object v0

    .line 350
    :sswitch_2c
    const-string v0, "Report Current Latency"

    return-object v0

    .line 348
    :sswitch_2f
    const-string v0, "Request Current Latency"

    return-object v0

    .line 346
    :sswitch_32
    const-string v0, "Report Features"

    return-object v0

    .line 344
    :sswitch_35
    const-string v0, "Give Features"

    return-object v0

    .line 332
    :sswitch_38
    const-string v0, "Request Short Audio Descriptor"

    return-object v0

    .line 330
    :sswitch_3b
    const-string v0, "Report Short Audio Descriptor"

    return-object v0

    .line 328
    :sswitch_3e
    const-string v0, "Set External Timer"

    return-object v0

    .line 326
    :sswitch_41
    const-string v0, "Clear External Timer"

    return-object v0

    .line 324
    :sswitch_44
    const-string v0, "Vendor Command With Id"

    return-object v0

    .line 322
    :sswitch_47
    const-string v0, "Get Cec Version"

    return-object v0

    .line 320
    :sswitch_4a
    const-string v0, "Cec Version"

    return-object v0

    .line 318
    :sswitch_4d
    const-string v0, "InActive Source"

    return-object v0

    .line 316
    :sswitch_50
    const-string v0, "Set Audio Rate"

    return-object v0

    .line 314
    :sswitch_53
    const-string v0, "Clear Digital Timer"

    return-object v0

    .line 312
    :sswitch_56
    const-string v0, "Set Digital Timer"

    return-object v0

    .line 310
    :sswitch_59
    const-string v0, "Select Digital Service"

    return-object v0

    .line 308
    :sswitch_5c
    const-string v0, "Select Analog Service"

    return-object v0

    .line 306
    :sswitch_5f
    const-string v0, "Get Menu Language"

    return-object v0

    .line 304
    :sswitch_62
    const-string v0, "Report Power Status"

    return-object v0

    .line 302
    :sswitch_65
    const-string v0, "Give Device Power Status"

    return-object v0

    .line 300
    :sswitch_68
    const-string v0, "Menu Status"

    return-object v0

    .line 298
    :sswitch_6b
    const-string v0, "Menu Request"

    return-object v0

    .line 296
    :sswitch_6e
    const-string v0, "Give Device Vendor Id"

    return-object v0

    .line 294
    :sswitch_71
    const-string v0, "Vendor Remote Button Up"

    return-object v0

    .line 292
    :sswitch_74
    const-string v0, "Vendor Remote Button Down"

    return-object v0

    .line 290
    :sswitch_77
    const-string v0, "Vendor Command"

    return-object v0

    .line 288
    :sswitch_7a
    const-string v0, "Device Vendor Id"

    return-object v0

    .line 286
    :sswitch_7d
    const-string v0, "Set Stream Path"

    return-object v0

    .line 284
    :sswitch_80
    const-string v0, "Request Active Source"

    return-object v0

    .line 282
    :sswitch_83
    const-string v0, "Report Physical Address"

    return-object v0

    .line 280
    :sswitch_86
    const-string v0, "Give Physical Address"

    return-object v0

    .line 278
    :sswitch_89
    const-string v0, "Active Source"

    return-object v0

    .line 276
    :sswitch_8c
    const-string v0, "Routing Information"

    return-object v0

    .line 274
    :sswitch_8f
    const-string v0, "Routing Change"

    return-object v0

    .line 272
    :sswitch_92
    const-string v0, "System Audio Mode Status"

    return-object v0

    .line 270
    :sswitch_95
    const-string v0, "Give System Audio Mode Status"

    return-object v0

    .line 268
    :sswitch_98
    const-string v0, "Report Audio Status"

    return-object v0

    .line 266
    :sswitch_9b
    const-string v0, "Set Audio Volume Level"

    return-object v0

    .line 264
    :sswitch_9e
    const-string v0, "Set System Audio Mode"

    return-object v0

    .line 262
    :sswitch_a1
    const-string v0, "Give Audio Status"

    return-object v0

    .line 260
    :sswitch_a4
    const-string v0, "System Audio Mode Request"

    return-object v0

    .line 258
    :sswitch_a7
    const-string v0, "Set Timer Program Title"

    return-object v0

    .line 256
    :sswitch_aa
    const-string v0, "Set Osd String"

    return-object v0

    .line 254
    :sswitch_ad
    const-string v0, "Set Osd Name"

    return-object v0

    .line 252
    :sswitch_b0
    const-string v0, "Give Osd Name"

    return-object v0

    .line 250
    :sswitch_b3
    const-string v0, "User Control Release"

    return-object v0

    .line 248
    :sswitch_b6
    const-string v0, "User Control Pressed"

    return-object v0

    .line 246
    :sswitch_b9
    const-string v0, "Timer Cleared Status"

    return-object v0

    .line 244
    :sswitch_bc
    const-string v0, "Deck Control"

    return-object v0

    .line 242
    :sswitch_bf
    const-string v0, "Play"

    return-object v0

    .line 240
    :sswitch_c2
    const-string v0, "Standby"

    return-object v0

    .line 238
    :sswitch_c5
    const-string v0, "Timer Status"

    return-object v0

    .line 236
    :sswitch_c8
    const-string v0, "Set Analog Timer"

    return-object v0

    .line 234
    :sswitch_cb
    const-string v0, "Clear Analog Timer"

    return-object v0

    .line 232
    :sswitch_ce
    const-string v0, "Set Menu Language"

    return-object v0

    .line 230
    :sswitch_d1
    const-string v0, "Deck Status"

    return-object v0

    .line 228
    :sswitch_d4
    const-string v0, "Give Deck Status"

    return-object v0

    .line 226
    :sswitch_d7
    const-string v0, "Record Tv Screen"

    return-object v0

    .line 224
    :sswitch_da
    const-string v0, "Text View On"

    return-object v0

    .line 222
    :sswitch_dd
    const-string v0, "Record Off"

    return-object v0

    .line 220
    :sswitch_e0
    const-string v0, "Record Status"

    return-object v0

    .line 218
    :sswitch_e3
    const-string v0, "Record On"

    return-object v0

    .line 216
    :sswitch_e6
    const-string v0, "Give Tuner Device Status"

    return-object v0

    .line 214
    :sswitch_e9
    const-string v0, "Tuner Device Status"

    return-object v0

    .line 212
    :sswitch_ec
    const-string v0, "Tuner Step Decrement"

    return-object v0

    .line 210
    :sswitch_ef
    const-string v0, "Tuner Step Increment"

    return-object v0

    .line 208
    :sswitch_f2
    const-string v0, "Image View On"

    return-object v0

    .line 206
    :sswitch_f5
    const-string v0, "Feature Abort"

    return-object v0

    :sswitch_data_f8
    .sparse-switch
        0x0 -> :sswitch_f5
        0x4 -> :sswitch_f2
        0x5 -> :sswitch_ef
        0x6 -> :sswitch_ec
        0x7 -> :sswitch_e9
        0x8 -> :sswitch_e6
        0x9 -> :sswitch_e3
        0xa -> :sswitch_e0
        0xb -> :sswitch_dd
        0xd -> :sswitch_da
        0xf -> :sswitch_d7
        0x1a -> :sswitch_d4
        0x1b -> :sswitch_d1
        0x32 -> :sswitch_ce
        0x33 -> :sswitch_cb
        0x34 -> :sswitch_c8
        0x35 -> :sswitch_c5
        0x36 -> :sswitch_c2
        0x41 -> :sswitch_bf
        0x42 -> :sswitch_bc
        0x43 -> :sswitch_b9
        0x44 -> :sswitch_b6
        0x45 -> :sswitch_b3
        0x46 -> :sswitch_b0
        0x47 -> :sswitch_ad
        0x64 -> :sswitch_aa
        0x67 -> :sswitch_a7
        0x70 -> :sswitch_a4
        0x71 -> :sswitch_a1
        0x72 -> :sswitch_9e
        0x73 -> :sswitch_9b
        0x7a -> :sswitch_98
        0x7d -> :sswitch_95
        0x7e -> :sswitch_92
        0x80 -> :sswitch_8f
        0x81 -> :sswitch_8c
        0x82 -> :sswitch_89
        0x83 -> :sswitch_86
        0x84 -> :sswitch_83
        0x85 -> :sswitch_80
        0x86 -> :sswitch_7d
        0x87 -> :sswitch_7a
        0x89 -> :sswitch_77
        0x8a -> :sswitch_74
        0x8b -> :sswitch_71
        0x8c -> :sswitch_6e
        0x8d -> :sswitch_6b
        0x8e -> :sswitch_68
        0x8f -> :sswitch_65
        0x90 -> :sswitch_62
        0x91 -> :sswitch_5f
        0x92 -> :sswitch_5c
        0x93 -> :sswitch_59
        0x97 -> :sswitch_56
        0x99 -> :sswitch_53
        0x9a -> :sswitch_50
        0x9d -> :sswitch_4d
        0x9e -> :sswitch_4a
        0x9f -> :sswitch_47
        0xa0 -> :sswitch_44
        0xa1 -> :sswitch_41
        0xa2 -> :sswitch_3e
        0xa3 -> :sswitch_3b
        0xa4 -> :sswitch_38
        0xa5 -> :sswitch_35
        0xa6 -> :sswitch_32
        0xa7 -> :sswitch_2f
        0xa8 -> :sswitch_2c
        0xc0 -> :sswitch_29
        0xc1 -> :sswitch_26
        0xc2 -> :sswitch_23
        0xc3 -> :sswitch_20
        0xc4 -> :sswitch_1d
        0xc5 -> :sswitch_1a
        0xf8 -> :sswitch_17
        0xff -> :sswitch_14
    .end sparse-switch
.end method

.method private static validationResultToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "validationResult"    # I

    .line 187
    packed-switch p0, :pswitch_data_1c

    .line 199
    const-string/jumbo v0, "unknown error"

    return-object v0

    .line 197
    :pswitch_7
    const-string/jumbo v0, "short parameters"

    return-object v0

    .line 195
    :pswitch_b
    const-string/jumbo v0, "invalid parameters"

    return-object v0

    .line 193
    :pswitch_f
    const-string/jumbo v0, "invalid destination"

    return-object v0

    .line 191
    :pswitch_13
    const-string/jumbo v0, "invalid source"

    return-object v0

    .line 189
    :pswitch_17
    const-string/jumbo v0, "ok"

    return-object v0

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_b
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "message"    # Ljava/lang/Object;

    .line 93
    instance-of v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    .line 94
    move-object v0, p1

    check-cast v0, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 95
    .local v0, "that":Lcom/android/server/hdmi/HdmiCecMessage;
    iget v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v3

    if-ne v2, v3, :cond_36

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    .line 96
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v3

    if-ne v2, v3, :cond_36

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 97
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v3

    if-ne v2, v3, :cond_36

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 98
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_36

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mValidationResult:I

    .line 99
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecMessage;->getValidationResult()I

    move-result v3

    if-ne v2, v3, :cond_36

    const/4 v1, 0x1

    goto :goto_37

    :cond_36
    nop

    .line 95
    :goto_37
    return v1

    .line 101
    .end local v0    # "that":Lcom/android/server/hdmi/HdmiCecMessage;
    :cond_38
    return v1
.end method

.method public getDestination()I
    .registers 2

    .line 130
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    return v0
.end method

.method public getOpcode()I
    .registers 2

    .line 140
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    return v0
.end method

.method public getParams()[B
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    return-object v0
.end method

.method public getSource()I
    .registers 2

    .line 120
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    return v0
.end method

.method public getValidationResult()I
    .registers 2

    .line 158
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mValidationResult:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 106
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    .line 108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 109
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 110
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 106
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .local v0, "s":Ljava/lang/StringBuilder;
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 165
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecMessage;->opcodeToString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v1, v5

    .line 164
    const-string v2, "<%s> %X%X:%02X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    array-length v1, v1

    if-lez v1, :cond_91

    .line 167
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessage;->filterMessageParameters(I)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 168
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, " <Redacted len=%d>"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_91

    .line 169
    :cond_57
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessage;->isUserControlPressedMessage(I)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 170
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    aget-byte v2, v2, v3

    .line 172
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecKeycode;->getKeycodeType(B)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 171
    const-string v2, " <Keycode type = %s>"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_91

    .line 174
    :cond_75
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    array-length v2, v1

    move v5, v3

    :goto_79
    if-ge v5, v2, :cond_91

    aget-byte v6, v1, v5

    .line 175
    .local v6, "data":B
    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v3

    const-string v8, ":%02X"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .end local v6    # "data":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_79

    .line 179
    :cond_91
    :goto_91
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mValidationResult:I

    if-eqz v1, :cond_a6

    .line 180
    new-array v2, v4, [Ljava/lang/Object;

    .line 181
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessage;->validationResultToString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    .line 180
    const-string v1, " <Validation error: %s>"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    :cond_a6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
