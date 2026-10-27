.class Lcom/android/server/soundtrigger_middleware/ConversionUtil;
.super Ljava/lang/Object;
.source "ConversionUtil.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static aidl2hidlConfidenceLevel(Landroid/media/soundtrigger/ConfidenceLevel;)Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;
    .registers 3
    .param p0, "aidlLevel"    # Landroid/media/soundtrigger/ConfidenceLevel;

    .line 267
    new-instance v0, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;-><init>()V

    .line 269
    .local v0, "hidlLevel":Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;
    iget v1, p0, Landroid/media/soundtrigger/ConfidenceLevel;->userId:I

    iput v1, v0, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;->userId:I

    .line 270
    iget v1, p0, Landroid/media/soundtrigger/ConfidenceLevel;->levelPercent:I

    iput v1, v0, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;->levelPercent:I

    .line 271
    return-object v0
.end method

.method static aidl2hidlModelParameter(I)I
    .registers 2
    .param p0, "aidlParam"    # I

    .line 420
    packed-switch p0, :pswitch_data_8

    .line 425
    const/4 v0, -0x1

    return v0

    .line 422
    :pswitch_5
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method

.method static aidl2hidlPhrase(Landroid/media/soundtrigger/Phrase;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;
    .registers 8
    .param p0, "aidlPhrase"    # Landroid/media/soundtrigger/Phrase;

    .line 150
    new-instance v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;-><init>()V

    .line 151
    .local v0, "hidlPhrase":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;
    iget v1, p0, Landroid/media/soundtrigger/Phrase;->id:I

    iput v1, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->id:I

    .line 152
    iget v1, p0, Landroid/media/soundtrigger/Phrase;->recognitionModes:I

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlRecognitionModes(I)I

    move-result v1

    iput v1, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->recognitionModes:I

    .line 153
    iget-object v1, p0, Landroid/media/soundtrigger/Phrase;->users:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v2, :cond_25

    aget v4, v1, v3

    .line 154
    .local v4, "aidlUser":I
    iget-object v5, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->users:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .end local v4    # "aidlUser":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 156
    :cond_25
    iget-object v1, p0, Landroid/media/soundtrigger/Phrase;->locale:Ljava/lang/String;

    iput-object v1, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->locale:Ljava/lang/String;

    .line 157
    iget-object v1, p0, Landroid/media/soundtrigger/Phrase;->text:Ljava/lang/String;

    iput-object v1, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->text:Ljava/lang/String;

    .line 158
    return-object v0
.end method

.method static aidl2hidlPhraseRecognitionExtra(Landroid/media/soundtrigger/PhraseRecognitionExtra;)Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;
    .registers 8
    .param p0, "aidlExtra"    # Landroid/media/soundtrigger/PhraseRecognitionExtra;

    .line 238
    new-instance v0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;-><init>()V

    .line 240
    .local v0, "hidlExtra":Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;
    iget v1, p0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->id:I

    iput v1, v0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->id:I

    .line 241
    iget v1, p0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->recognitionModes:I

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlRecognitionModes(I)I

    move-result v1

    iput v1, v0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->recognitionModes:I

    .line 242
    iget v1, p0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->confidenceLevel:I

    iput v1, v0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->confidenceLevel:I

    .line 243
    iget-object v1, v0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->levels:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger/ConfidenceLevel;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 244
    iget-object v1, p0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger/ConfidenceLevel;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v2, :cond_31

    aget-object v4, v1, v3

    .line 245
    .local v4, "aidlLevel":Landroid/media/soundtrigger/ConfidenceLevel;
    iget-object v5, v0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->levels:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlConfidenceLevel(Landroid/media/soundtrigger/ConfidenceLevel;)Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    .end local v4    # "aidlLevel":Landroid/media/soundtrigger/ConfidenceLevel;
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 247
    :cond_31
    return-object v0
.end method

.method static aidl2hidlPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;
    .registers 8
    .param p0, "aidlModel"    # Landroid/media/soundtrigger/PhraseSoundModel;

    .line 211
    new-instance v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;-><init>()V

    .line 212
    .local v0, "hidlModel":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;
    iget-object v1, p0, Landroid/media/soundtrigger/PhraseSoundModel;->common:Landroid/media/soundtrigger/SoundModel;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlSoundModel(Landroid/media/soundtrigger/SoundModel;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;->common:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    .line 213
    iget-object v1, p0, Landroid/media/soundtrigger/PhraseSoundModel;->phrases:[Landroid/media/soundtrigger/Phrase;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_21

    aget-object v4, v1, v3

    .line 214
    .local v4, "aidlPhrase":Landroid/media/soundtrigger/Phrase;
    iget-object v5, v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;->phrases:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlPhrase(Landroid/media/soundtrigger/Phrase;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    .end local v4    # "aidlPhrase":Landroid/media/soundtrigger/Phrase;
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 216
    :cond_21
    return-object v0
.end method

.method static aidl2hidlRecognitionConfig(Landroid/media/soundtrigger/RecognitionConfig;II)Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;
    .registers 10
    .param p0, "aidlConfig"    # Landroid/media/soundtrigger/RecognitionConfig;
    .param p1, "deviceHandle"    # I
    .param p2, "ioHandle"    # I

    .line 221
    new-instance v0, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;-><init>()V

    .line 223
    .local v0, "hidlConfig":Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;
    iget-object v1, v0, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;->base:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;

    iget-object v1, v1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;->header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;

    iput p1, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureDevice:I

    .line 224
    iget-object v1, v0, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;->base:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;

    iget-object v1, v1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;->header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;

    iput p2, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureHandle:I

    .line 225
    iget-object v1, v0, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;->base:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;

    iget-object v1, v1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;->header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;

    iget-boolean v2, p0, Landroid/media/soundtrigger/RecognitionConfig;->captureRequested:Z

    iput-boolean v2, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureRequested:Z

    .line 226
    iget-object v1, p0, Landroid/media/soundtrigger/RecognitionConfig;->phraseRecognitionExtras:[Landroid/media/soundtrigger/PhraseRecognitionExtra;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v2, :cond_31

    aget-object v4, v1, v3

    .line 227
    .local v4, "aidlPhraseExtra":Landroid/media/soundtrigger/PhraseRecognitionExtra;
    iget-object v5, v0, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;->base:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;

    iget-object v5, v5, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;->header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;

    iget-object v5, v5, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->phrases:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlPhraseRecognitionExtra(Landroid/media/soundtrigger/PhraseRecognitionExtra;)Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    .end local v4    # "aidlPhraseExtra":Landroid/media/soundtrigger/PhraseRecognitionExtra;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 229
    :cond_31
    iget-object v1, v0, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;->base:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;

    iget-object v2, p0, Landroid/media/soundtrigger/RecognitionConfig;->data:[B

    const-string v3, "SoundTrigger RecognitionConfig"

    invoke-static {v2, v3}, Landroid/os/HidlMemoryUtil;->byteArrayToHidlMemory([BLjava/lang/String;)Landroid/os/HidlMemory;

    move-result-object v2

    iput-object v2, v1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;->data:Landroid/os/HidlMemory;

    .line 231
    iget v1, p0, Landroid/media/soundtrigger/RecognitionConfig;->audioCapabilities:I

    iput v1, v0, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;->audioCapabilities:I

    .line 232
    return-object v0
.end method

.method static aidl2hidlRecognitionModes(I)I
    .registers 3
    .param p0, "aidlModes"    # I

    .line 162
    const/4 v0, 0x0

    .line 164
    .local v0, "hidlModes":I
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_7

    .line 165
    or-int/lit8 v0, v0, 0x1

    .line 167
    :cond_7
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_d

    .line 168
    or-int/lit8 v0, v0, 0x2

    .line 170
    :cond_d
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_13

    .line 171
    or-int/lit8 v0, v0, 0x4

    .line 173
    :cond_13
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_19

    .line 174
    or-int/lit8 v0, v0, 0x8

    .line 176
    :cond_19
    return v0
.end method

.method static aidl2hidlSoundModel(Landroid/media/soundtrigger/SoundModel;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;
    .registers 4
    .param p0, "aidlModel"    # Landroid/media/soundtrigger/SoundModel;

    .line 200
    new-instance v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;-><init>()V

    .line 201
    .local v0, "hidlModel":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;
    iget-object v1, v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    iget v2, p0, Landroid/media/soundtrigger/SoundModel;->type:I

    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlSoundModelType(I)I

    move-result v2

    iput v2, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->type:I

    .line 202
    iget-object v1, v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    iget-object v2, p0, Landroid/media/soundtrigger/SoundModel;->uuid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlUuid(Ljava/lang/String;)Landroid/hardware/audio/common/V2_0/Uuid;

    move-result-object v2

    iput-object v2, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->uuid:Landroid/hardware/audio/common/V2_0/Uuid;

    .line 203
    iget-object v1, v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    iget-object v2, p0, Landroid/media/soundtrigger/SoundModel;->vendorUuid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlUuid(Ljava/lang/String;)Landroid/hardware/audio/common/V2_0/Uuid;

    move-result-object v2

    iput-object v2, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->vendorUuid:Landroid/hardware/audio/common/V2_0/Uuid;

    .line 204
    iget-object v1, p0, Landroid/media/soundtrigger/SoundModel;->data:Landroid/os/ParcelFileDescriptor;

    iget v2, p0, Landroid/media/soundtrigger/SoundModel;->dataSize:I

    invoke-static {v1, v2}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->parcelFileDescriptorToHidlMemory(Landroid/os/ParcelFileDescriptor;I)Landroid/os/HidlMemory;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Landroid/os/HidlMemory;

    .line 205
    return-object v0
.end method

.method static aidl2hidlSoundModelType(I)I
    .registers 4
    .param p0, "aidlType"    # I

    .line 127
    packed-switch p0, :pswitch_data_20

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sound model type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :pswitch_1c
    const/4 v0, 0x1

    return v0

    .line 131
    :pswitch_1e
    const/4 v0, 0x0

    return v0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1c
    .end packed-switch
.end method

.method static aidl2hidlUuid(Ljava/lang/String;)Landroid/hardware/audio/common/V2_0/Uuid;
    .registers 13
    .param p0, "aidlUuid"    # Ljava/lang/String;

    .line 108
    sget-object v0, Lcom/android/server/soundtrigger_middleware/UuidUtil;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 109
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_93

    .line 112
    new-instance v1, Landroid/hardware/audio/common/V2_0/Uuid;

    invoke-direct {v1}, Landroid/hardware/audio/common/V2_0/Uuid;-><init>()V

    .line 113
    .local v1, "hidlUuid":Landroid/hardware/audio/common/V2_0/Uuid;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Landroid/hardware/audio/common/V2_0/Uuid;->timeLow:I

    .line 114
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v5

    int-to-short v5, v5

    iput-short v5, v1, Landroid/hardware/audio/common/V2_0/Uuid;->timeMid:S

    .line 115
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v6

    int-to-short v6, v6

    iput-short v6, v1, Landroid/hardware/audio/common/V2_0/Uuid;->versionAndTimeHigh:S

    .line 116
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v7

    int-to-short v7, v7

    iput-short v7, v1, Landroid/hardware/audio/common/V2_0/Uuid;->variantAndClockSeqHigh:S

    .line 117
    const/4 v7, 0x6

    new-array v8, v7, [B

    const/4 v9, 0x0

    const/4 v10, 0x5

    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v4}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v8, v9

    .line 118
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v8, v2

    const/4 v2, 0x7

    .line 119
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v8, v3

    const/16 v2, 0x8

    .line 120
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v8, v5

    const/16 v2, 0x9

    .line 121
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v8, v6

    const/16 v2, 0xa

    .line 122
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v8, v10

    iput-object v8, v1, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    .line 123
    return-object v1

    .line 110
    .end local v1    # "hidlUuid":Landroid/hardware/audio/common/V2_0/Uuid;
    :cond_93
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal format for UUID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static hidl2aidlAudioCapabilities(I)I
    .registers 3
    .param p0, "hidlCapabilities"    # I

    .line 430
    const/4 v0, 0x0

    .line 431
    .local v0, "aidlCapabilities":I
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_7

    .line 433
    or-int/lit8 v0, v0, 0x1

    .line 435
    :cond_7
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_d

    .line 437
    or-int/lit8 v0, v0, 0x2

    .line 439
    :cond_d
    return v0
.end method

.method static hidl2aidlAudioConfig(Landroid/hardware/audio/common/V2_0/AudioConfig;Z)Landroid/media/audio/common/AudioConfig;
    .registers 6
    .param p0, "hidlConfig"    # Landroid/hardware/audio/common/V2_0/AudioConfig;
    .param p1, "isInput"    # Z

    .line 365
    new-instance v0, Landroid/media/audio/common/AudioConfig;

    invoke-direct {v0}, Landroid/media/audio/common/AudioConfig;-><init>()V

    .line 366
    .local v0, "aidlConfig":Landroid/media/audio/common/AudioConfig;
    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioConfig;->sampleRateHz:I

    iget v2, p0, Landroid/hardware/audio/common/V2_0/AudioConfig;->channelMask:I

    iget v3, p0, Landroid/hardware/audio/common/V2_0/AudioConfig;->format:I

    invoke-static {v1, v2, v3, p1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlAudioConfigBase(IIIZ)Landroid/media/audio/common/AudioConfigBase;

    move-result-object v1

    iput-object v1, v0, Landroid/media/audio/common/AudioConfig;->base:Landroid/media/audio/common/AudioConfigBase;

    .line 368
    iget-object v1, p0, Landroid/hardware/audio/common/V2_0/AudioConfig;->offloadInfo:Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlOffloadInfo(Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;)Landroid/media/audio/common/AudioOffloadInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/media/audio/common/AudioConfig;->offloadInfo:Landroid/media/audio/common/AudioOffloadInfo;

    .line 369
    iget-wide v1, p0, Landroid/hardware/audio/common/V2_0/AudioConfig;->frameCount:J

    iput-wide v1, v0, Landroid/media/audio/common/AudioConfig;->frameCount:J

    .line 370
    return-object v0
.end method

.method static hidl2aidlAudioConfigBase(IIIZ)Landroid/media/audio/common/AudioConfigBase;
    .registers 6
    .param p0, "sampleRateHz"    # I
    .param p1, "channelMask"    # I
    .param p2, "format"    # I
    .param p3, "isInput"    # Z

    .line 396
    new-instance v0, Landroid/media/audio/common/AudioConfigBase;

    invoke-direct {v0}, Landroid/media/audio/common/AudioConfigBase;-><init>()V

    .line 397
    .local v0, "aidlBase":Landroid/media/audio/common/AudioConfigBase;
    iput p0, v0, Landroid/media/audio/common/AudioConfigBase;->sampleRate:I

    .line 400
    invoke-static {p1, p3}, Landroid/media/audio/common/AidlConversion;->legacy2aidl_audio_channel_mask_t_AudioChannelLayout(IZ)Landroid/media/audio/common/AudioChannelLayout;

    move-result-object v1

    iput-object v1, v0, Landroid/media/audio/common/AudioConfigBase;->channelMask:Landroid/media/audio/common/AudioChannelLayout;

    .line 403
    invoke-static {p2}, Landroid/media/audio/common/AidlConversion;->legacy2aidl_audio_format_t_AudioFormatDescription(I)Landroid/media/audio/common/AudioFormatDescription;

    move-result-object v1

    iput-object v1, v0, Landroid/media/audio/common/AudioConfigBase;->format:Landroid/media/audio/common/AudioFormatDescription;

    .line 404
    return-object v0
.end method

.method static hidl2aidlConfidenceLevel(Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;)Landroid/media/soundtrigger/ConfidenceLevel;
    .registers 3
    .param p0, "hidlLevel"    # Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;

    .line 277
    new-instance v0, Landroid/media/soundtrigger/ConfidenceLevel;

    invoke-direct {v0}, Landroid/media/soundtrigger/ConfidenceLevel;-><init>()V

    .line 278
    .local v0, "aidlLevel":Landroid/media/soundtrigger/ConfidenceLevel;
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;->userId:I

    iput v1, v0, Landroid/media/soundtrigger/ConfidenceLevel;->userId:I

    .line 279
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;->levelPercent:I

    iput v1, v0, Landroid/media/soundtrigger/ConfidenceLevel;->levelPercent:I

    .line 280
    return-object v0
.end method

.method static hidl2aidlModelParameterRange(Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;)Landroid/media/soundtrigger/ModelParameterRange;
    .registers 3
    .param p0, "hidlRange"    # Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;

    .line 410
    if-nez p0, :cond_4

    .line 411
    const/4 v0, 0x0

    return-object v0

    .line 413
    :cond_4
    new-instance v0, Landroid/media/soundtrigger/ModelParameterRange;

    invoke-direct {v0}, Landroid/media/soundtrigger/ModelParameterRange;-><init>()V

    .line 414
    .local v0, "aidlRange":Landroid/media/soundtrigger/ModelParameterRange;
    iget v1, p0, Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;->start:I

    iput v1, v0, Landroid/media/soundtrigger/ModelParameterRange;->minInclusive:I

    .line 415
    iget v1, p0, Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;->end:I

    iput v1, v0, Landroid/media/soundtrigger/ModelParameterRange;->maxInclusive:I

    .line 416
    return-object v0
.end method

.method static hidl2aidlOffloadInfo(Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;)Landroid/media/audio/common/AudioOffloadInfo;
    .registers 6
    .param p0, "hidlInfo"    # Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;

    .line 376
    new-instance v0, Landroid/media/audio/common/AudioOffloadInfo;

    invoke-direct {v0}, Landroid/media/audio/common/AudioOffloadInfo;-><init>()V

    .line 377
    .local v0, "aidlInfo":Landroid/media/audio/common/AudioOffloadInfo;
    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->sampleRateHz:I

    iget v2, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->channelMask:I

    iget v3, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->format:I

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlAudioConfigBase(IIIZ)Landroid/media/audio/common/AudioConfigBase;

    move-result-object v1

    iput-object v1, v0, Landroid/media/audio/common/AudioOffloadInfo;->base:Landroid/media/audio/common/AudioConfigBase;

    .line 379
    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->streamType:I

    invoke-static {v1}, Landroid/media/audio/common/AidlConversion;->legacy2aidl_audio_stream_type_t_AudioStreamType(I)I

    move-result v1

    iput v1, v0, Landroid/media/audio/common/AudioOffloadInfo;->streamType:I

    .line 381
    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bitRatePerSecond:I

    iput v1, v0, Landroid/media/audio/common/AudioOffloadInfo;->bitRatePerSecond:I

    .line 382
    iget-wide v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->durationMicroseconds:J

    iput-wide v1, v0, Landroid/media/audio/common/AudioOffloadInfo;->durationUs:J

    .line 383
    iget-boolean v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->hasVideo:Z

    iput-boolean v1, v0, Landroid/media/audio/common/AudioOffloadInfo;->hasVideo:Z

    .line 384
    iget-boolean v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->isStreaming:Z

    iput-boolean v1, v0, Landroid/media/audio/common/AudioOffloadInfo;->isStreaming:Z

    .line 385
    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bitWidth:I

    iput v1, v0, Landroid/media/audio/common/AudioOffloadInfo;->bitWidth:I

    .line 386
    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bufferSize:I

    iput v1, v0, Landroid/media/audio/common/AudioOffloadInfo;->offloadBufferSize:I

    .line 387
    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->usage:I

    invoke-static {v1}, Landroid/media/audio/common/AidlConversion;->legacy2aidl_audio_usage_t_AudioUsage(I)I

    move-result v1

    iput v1, v0, Landroid/media/audio/common/AudioOffloadInfo;->usage:I

    .line 388
    return-object v0
.end method

.method static hidl2aidlPhraseRecognitionEvent(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$PhraseRecognitionEvent;)Landroid/media/soundtrigger/PhraseRecognitionEvent;
    .registers 5
    .param p0, "hidlEvent"    # Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$PhraseRecognitionEvent;

    .line 339
    new-instance v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;

    invoke-direct {v0}, Landroid/media/soundtrigger/PhraseRecognitionEvent;-><init>()V

    .line 340
    .local v0, "aidlEvent":Landroid/media/soundtrigger/PhraseRecognitionEvent;
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$PhraseRecognitionEvent;->common:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlRecognitionEvent(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;)Landroid/media/soundtrigger/RecognitionEvent;

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    .line 341
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$PhraseRecognitionEvent;->phraseExtras:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/media/soundtrigger/PhraseRecognitionExtra;

    iput-object v1, v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;->phraseExtras:[Landroid/media/soundtrigger/PhraseRecognitionExtra;

    .line 342
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    iget-object v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$PhraseRecognitionEvent;->phraseExtras:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 343
    iget-object v2, v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;->phraseExtras:[Landroid/media/soundtrigger/PhraseRecognitionExtra;

    iget-object v3, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$PhraseRecognitionEvent;->phraseExtras:Ljava/util/ArrayList;

    .line 344
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;

    .line 343
    invoke-static {v3}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlPhraseRecognitionExtra(Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;)Landroid/media/soundtrigger/PhraseRecognitionExtra;

    move-result-object v3

    aput-object v3, v2, v1

    .line 342
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 346
    .end local v1    # "i":I
    :cond_33
    return-object v0
.end method

.method static hidl2aidlPhraseRecognitionEvent(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;)Landroid/media/soundtrigger/PhraseRecognitionEvent;
    .registers 5
    .param p0, "hidlEvent"    # Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;

    .line 352
    new-instance v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;

    invoke-direct {v0}, Landroid/media/soundtrigger/PhraseRecognitionEvent;-><init>()V

    .line 353
    .local v0, "aidlEvent":Landroid/media/soundtrigger/PhraseRecognitionEvent;
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;->common:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlRecognitionEvent(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;)Landroid/media/soundtrigger/RecognitionEvent;

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    .line 354
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;->phraseExtras:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/media/soundtrigger/PhraseRecognitionExtra;

    iput-object v1, v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;->phraseExtras:[Landroid/media/soundtrigger/PhraseRecognitionExtra;

    .line 355
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    iget-object v2, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;->phraseExtras:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 356
    iget-object v2, v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;->phraseExtras:[Landroid/media/soundtrigger/PhraseRecognitionExtra;

    iget-object v3, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;->phraseExtras:Ljava/util/ArrayList;

    .line 357
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;

    .line 356
    invoke-static {v3}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlPhraseRecognitionExtra(Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;)Landroid/media/soundtrigger/PhraseRecognitionExtra;

    move-result-object v3

    aput-object v3, v2, v1

    .line 355
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 359
    .end local v1    # "i":I
    :cond_33
    return-object v0
.end method

.method static hidl2aidlPhraseRecognitionExtra(Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;)Landroid/media/soundtrigger/PhraseRecognitionExtra;
    .registers 5
    .param p0, "hidlExtra"    # Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;

    .line 253
    new-instance v0, Landroid/media/soundtrigger/PhraseRecognitionExtra;

    invoke-direct {v0}, Landroid/media/soundtrigger/PhraseRecognitionExtra;-><init>()V

    .line 254
    .local v0, "aidlExtra":Landroid/media/soundtrigger/PhraseRecognitionExtra;
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->id:I

    iput v1, v0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->id:I

    .line 255
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->recognitionModes:I

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlRecognitionModes(I)I

    move-result v1

    iput v1, v0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->recognitionModes:I

    .line 256
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->confidenceLevel:I

    iput v1, v0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->confidenceLevel:I

    .line 257
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->levels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/media/soundtrigger/ConfidenceLevel;

    iput-object v1, v0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger/ConfidenceLevel;

    .line 258
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_20
    iget-object v2, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->levels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3b

    .line 259
    iget-object v2, v0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger/ConfidenceLevel;

    iget-object v3, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->levels:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;

    invoke-static {v3}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlConfidenceLevel(Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;)Landroid/media/soundtrigger/ConfidenceLevel;

    move-result-object v3

    aput-object v3, v2, v1

    .line 258
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 261
    .end local v1    # "i":I
    :cond_3b
    return-object v0
.end method

.method static hidl2aidlProperties(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;)Landroid/media/soundtrigger/Properties;
    .registers 3
    .param p0, "hidlProperties"    # Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;

    .line 61
    new-instance v0, Landroid/media/soundtrigger/Properties;

    invoke-direct {v0}, Landroid/media/soundtrigger/Properties;-><init>()V

    .line 62
    .local v0, "aidlProperties":Landroid/media/soundtrigger/Properties;
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->implementor:Ljava/lang/String;

    iput-object v1, v0, Landroid/media/soundtrigger/Properties;->implementor:Ljava/lang/String;

    .line 63
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->description:Ljava/lang/String;

    iput-object v1, v0, Landroid/media/soundtrigger/Properties;->description:Ljava/lang/String;

    .line 64
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->version:I

    iput v1, v0, Landroid/media/soundtrigger/Properties;->version:I

    .line 65
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->uuid:Landroid/hardware/audio/common/V2_0/Uuid;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlUuid(Landroid/hardware/audio/common/V2_0/Uuid;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger/Properties;->uuid:Ljava/lang/String;

    .line 66
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxSoundModels:I

    iput v1, v0, Landroid/media/soundtrigger/Properties;->maxSoundModels:I

    .line 67
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxKeyPhrases:I

    iput v1, v0, Landroid/media/soundtrigger/Properties;->maxKeyPhrases:I

    .line 68
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxUsers:I

    iput v1, v0, Landroid/media/soundtrigger/Properties;->maxUsers:I

    .line 69
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->recognitionModes:I

    .line 70
    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlRecognitionModes(I)I

    move-result v1

    iput v1, v0, Landroid/media/soundtrigger/Properties;->recognitionModes:I

    .line 71
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->captureTransition:Z

    iput-boolean v1, v0, Landroid/media/soundtrigger/Properties;->captureTransition:Z

    .line 72
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxBufferMs:I

    iput v1, v0, Landroid/media/soundtrigger/Properties;->maxBufferMs:I

    .line 73
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->concurrentCapture:Z

    iput-boolean v1, v0, Landroid/media/soundtrigger/Properties;->concurrentCapture:Z

    .line 74
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->triggerInEvent:Z

    iput-boolean v1, v0, Landroid/media/soundtrigger/Properties;->triggerInEvent:Z

    .line 75
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->powerConsumptionMw:I

    iput v1, v0, Landroid/media/soundtrigger/Properties;->powerConsumptionMw:I

    .line 76
    return-object v0
.end method

.method static hidl2aidlProperties(Landroid/hardware/soundtrigger/V2_3/Properties;)Landroid/media/soundtrigger/Properties;
    .registers 3
    .param p0, "hidlProperties"    # Landroid/hardware/soundtrigger/V2_3/Properties;

    .line 81
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_3/Properties;->base:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlProperties(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;)Landroid/media/soundtrigger/Properties;

    move-result-object v0

    .line 82
    .local v0, "aidlProperties":Landroid/media/soundtrigger/Properties;
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_3/Properties;->supportedModelArch:Ljava/lang/String;

    iput-object v1, v0, Landroid/media/soundtrigger/Properties;->supportedModelArch:Ljava/lang/String;

    .line 83
    iget v1, p0, Landroid/hardware/soundtrigger/V2_3/Properties;->audioCapabilities:I

    .line 84
    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlAudioCapabilities(I)I

    move-result v1

    iput v1, v0, Landroid/media/soundtrigger/Properties;->audioCapabilities:I

    .line 85
    return-object v0
.end method

.method static hidl2aidlRecognitionEvent(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;)Landroid/media/soundtrigger/RecognitionEvent;
    .registers 6
    .param p0, "hidlEvent"    # Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;

    .line 311
    new-instance v0, Landroid/media/soundtrigger/RecognitionEvent;

    invoke-direct {v0}, Landroid/media/soundtrigger/RecognitionEvent;-><init>()V

    .line 312
    .local v0, "aidlEvent":Landroid/media/soundtrigger/RecognitionEvent;
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->status:I

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlRecognitionStatus(I)I

    move-result v1

    iput v1, v0, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    .line 313
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->type:I

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlSoundModelType(I)I

    move-result v1

    iput v1, v0, Landroid/media/soundtrigger/RecognitionEvent;->type:I

    .line 314
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->captureAvailable:Z

    iput-boolean v1, v0, Landroid/media/soundtrigger/RecognitionEvent;->captureAvailable:Z

    .line 315
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->captureDelayMs:I

    iput v1, v0, Landroid/media/soundtrigger/RecognitionEvent;->captureDelayMs:I

    .line 316
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->capturePreambleMs:I

    iput v1, v0, Landroid/media/soundtrigger/RecognitionEvent;->capturePreambleMs:I

    .line 317
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->triggerInData:Z

    iput-boolean v1, v0, Landroid/media/soundtrigger/RecognitionEvent;->triggerInData:Z

    .line 318
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->audioConfig:Landroid/hardware/audio/common/V2_0/AudioConfig;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlAudioConfig(Landroid/hardware/audio/common/V2_0/AudioConfig;Z)Landroid/media/audio/common/AudioConfig;

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger/RecognitionEvent;->audioConfig:Landroid/media/audio/common/AudioConfig;

    .line 319
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, v0, Landroid/media/soundtrigger/RecognitionEvent;->data:[B

    .line 320
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_39
    iget-object v3, v0, Landroid/media/soundtrigger/RecognitionEvent;->data:[B

    array-length v3, v3

    if-ge v1, v3, :cond_51

    .line 321
    iget-object v3, v0, Landroid/media/soundtrigger/RecognitionEvent;->data:[B

    iget-object v4, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->data:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    aput-byte v4, v3, v1

    .line 320
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 323
    .end local v1    # "i":I
    :cond_51
    iget v1, v0, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_57

    goto :goto_58

    :cond_57
    const/4 v2, 0x0

    :goto_58
    iput-boolean v2, v0, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    .line 324
    return-object v0
.end method

.method static hidl2aidlRecognitionEvent(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;)Landroid/media/soundtrigger/RecognitionEvent;
    .registers 3
    .param p0, "hidlEvent"    # Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;

    .line 330
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlRecognitionEvent(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;)Landroid/media/soundtrigger/RecognitionEvent;

    move-result-object v0

    .line 332
    .local v0, "aidlEvent":Landroid/media/soundtrigger/RecognitionEvent;
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->data:Landroid/os/HidlMemory;

    invoke-static {v1}, Landroid/os/HidlMemoryUtil;->hidlMemoryToByteArray(Landroid/os/HidlMemory;)[B

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger/RecognitionEvent;->data:[B

    .line 333
    return-object v0
.end method

.method static hidl2aidlRecognitionModes(I)I
    .registers 3
    .param p0, "hidlModes"    # I

    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, "aidlModes":I
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_7

    .line 182
    or-int/lit8 v0, v0, 0x1

    .line 184
    :cond_7
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_d

    .line 186
    or-int/lit8 v0, v0, 0x2

    .line 188
    :cond_d
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_13

    .line 190
    or-int/lit8 v0, v0, 0x4

    .line 192
    :cond_13
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_19

    .line 193
    or-int/lit8 v0, v0, 0x8

    .line 195
    :cond_19
    return v0
.end method

.method static hidl2aidlRecognitionStatus(I)I
    .registers 4
    .param p0, "hidlStatus"    # I

    .line 284
    packed-switch p0, :pswitch_data_2c

    .line 304
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown recognition status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :pswitch_1c
    const/4 v0, 0x7

    return v0

    .line 300
    :pswitch_1e
    const/4 v0, 0x6

    return v0

    .line 298
    :pswitch_20
    const/4 v0, 0x5

    return v0

    .line 295
    :pswitch_22
    const/4 v0, 0x4

    return v0

    .line 292
    :pswitch_24
    const/4 v0, 0x3

    return v0

    .line 290
    :pswitch_26
    const/4 v0, 0x2

    return v0

    .line 288
    :pswitch_28
    const/4 v0, 0x1

    return v0

    .line 286
    :pswitch_2a
    const/4 v0, 0x0

    return v0

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_28
        :pswitch_26
        :pswitch_24
        :pswitch_22
        :pswitch_20
        :pswitch_1e
        :pswitch_1c
    .end packed-switch
.end method

.method static hidl2aidlSoundModelType(I)I
    .registers 4
    .param p0, "hidlType"    # I

    .line 138
    packed-switch p0, :pswitch_data_20

    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sound model type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :pswitch_1c
    const/4 v0, 0x1

    return v0

    .line 142
    :pswitch_1e
    const/4 v0, 0x0

    return v0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1c
    .end packed-switch
.end method

.method static hidl2aidlUuid(Landroid/hardware/audio/common/V2_0/Uuid;)Ljava/lang/String;
    .registers 8
    .param p0, "hidlUuid"    # Landroid/hardware/audio/common/V2_0/Uuid;

    .line 90
    iget-object v0, p0, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    if-eqz v0, :cond_7c

    iget-object v0, p0, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    array-length v0, v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7c

    .line 93
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    iget v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->timeLow:I

    .line 94
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    iget-short v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->timeMid:S

    .line 95
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v0, v4

    iget-short v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->versionAndTimeHigh:S

    .line 96
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v0, v5

    iget-short v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->variantAndClockSeqHigh:S

    .line 97
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v0, v6

    iget-object v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    aget-byte v2, v2, v3

    .line 98
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v0, v3

    iget-object v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    aget-byte v2, v2, v4

    .line 99
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v0, v4

    iget-object v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    aget-byte v2, v2, v5

    .line 100
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    aget-byte v2, v2, v6

    .line 101
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    aget-byte v2, v2, v3

    .line 102
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    aget-byte v2, v2, v4

    .line 103
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    .line 93
    const-string v1, "%08x-%04x-%04x-%04x-%02x%02x%02x%02x%02x%02x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 91
    :cond_7c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "UUID.node must be of length 6."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parcelFileDescriptorToHidlMemory(Landroid/os/ParcelFileDescriptor;I)Landroid/os/HidlMemory;
    .registers 4
    .param p0, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "dataSize"    # I

    .line 454
    if-lez p1, :cond_b

    .line 455
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/os/HidlMemoryUtil;->fileDescriptorToHidlMemory(Ljava/io/FileDescriptor;I)Landroid/os/HidlMemory;

    move-result-object v0

    return-object v0

    .line 457
    :cond_b
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/HidlMemoryUtil;->fileDescriptorToHidlMemory(Ljava/io/FileDescriptor;I)Landroid/os/HidlMemory;

    move-result-object v0

    return-object v0
.end method
