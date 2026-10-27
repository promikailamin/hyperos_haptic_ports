.class public Lcom/android/server/soundtrigger_middleware/ValidationUtil;
.super Ljava/lang/Object;
.source "ValidationUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static validateGenericModel(Landroid/media/soundtrigger/SoundModel;)V
    .registers 2
    .param p0, "model"    # Landroid/media/soundtrigger/SoundModel;

    .line 52
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/soundtrigger_middleware/ValidationUtil;->validateModel(Landroid/media/soundtrigger/SoundModel;I)V

    .line 53
    return-void
.end method

.method static validateModel(Landroid/media/soundtrigger/SoundModel;I)V
    .registers 4
    .param p0, "model"    # Landroid/media/soundtrigger/SoundModel;
    .param p1, "expectedType"    # I

    .line 56
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget v0, p0, Landroid/media/soundtrigger/SoundModel;->type:I

    if-ne v0, p1, :cond_1b

    .line 60
    iget-object v0, p0, Landroid/media/soundtrigger/SoundModel;->uuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/ValidationUtil;->validateUuid(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Landroid/media/soundtrigger/SoundModel;->vendorUuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/ValidationUtil;->validateUuid(Ljava/lang/String;)V

    .line 62
    iget v0, p0, Landroid/media/soundtrigger/SoundModel;->dataSize:I

    if-lez v0, :cond_1a

    .line 63
    iget-object v0, p0, Landroid/media/soundtrigger/SoundModel;->data:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_1a
    return-void

    .line 58
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static validateModelParameter(I)V
    .registers 3
    .param p0, "modelParam"    # I

    .line 109
    packed-switch p0, :pswitch_data_c

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid model parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :pswitch_b
    return-void

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_b
    .end packed-switch
.end method

.method static validatePhraseModel(Landroid/media/soundtrigger/PhraseSoundModel;)V
    .registers 6
    .param p0, "model"    # Landroid/media/soundtrigger/PhraseSoundModel;

    .line 68
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Landroid/media/soundtrigger/PhraseSoundModel;->common:Landroid/media/soundtrigger/SoundModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/soundtrigger_middleware/ValidationUtil;->validateModel(Landroid/media/soundtrigger/SoundModel;I)V

    .line 70
    iget-object v0, p0, Landroid/media/soundtrigger/PhraseSoundModel;->phrases:[Landroid/media/soundtrigger/Phrase;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Landroid/media/soundtrigger/PhraseSoundModel;->phrases:[Landroid/media/soundtrigger/Phrase;

    array-length v2, v0

    :goto_11
    if-ge v1, v2, :cond_38

    aget-object v3, v0, v1

    .line 72
    .local v3, "phrase":Landroid/media/soundtrigger/Phrase;
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget v4, v3, Landroid/media/soundtrigger/Phrase;->recognitionModes:I

    and-int/lit8 v4, v4, -0x10

    if-nez v4, :cond_30

    .line 78
    iget-object v4, v3, Landroid/media/soundtrigger/Phrase;->users:[I

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v4, v3, Landroid/media/soundtrigger/Phrase;->locale:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v4, v3, Landroid/media/soundtrigger/Phrase;->text:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .end local v3    # "phrase":Landroid/media/soundtrigger/Phrase;
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 76
    .restart local v3    # "phrase":Landroid/media/soundtrigger/Phrase;
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid recognitionModes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    .end local v3    # "phrase":Landroid/media/soundtrigger/Phrase;
    :cond_38
    return-void
.end method

.method static validateRecognitionConfig(Landroid/media/soundtrigger/RecognitionConfig;)V
    .registers 13
    .param p0, "config"    # Landroid/media/soundtrigger/RecognitionConfig;

    .line 85
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Landroid/media/soundtrigger/RecognitionConfig;->phraseRecognitionExtras:[Landroid/media/soundtrigger/PhraseRecognitionExtra;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Landroid/media/soundtrigger/RecognitionConfig;->phraseRecognitionExtras:[Landroid/media/soundtrigger/PhraseRecognitionExtra;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    if-ge v3, v1, :cond_58

    aget-object v4, v0, v3

    .line 88
    .local v4, "extra":Landroid/media/soundtrigger/PhraseRecognitionExtra;
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget v5, v4, Landroid/media/soundtrigger/PhraseRecognitionExtra;->recognitionModes:I

    and-int/lit8 v5, v5, -0x10

    if-nez v5, :cond_50

    .line 94
    iget v5, v4, Landroid/media/soundtrigger/PhraseRecognitionExtra;->confidenceLevel:I

    const-string v6, "Invalid confidenceLevel"

    if-ltz v5, :cond_4a

    iget v5, v4, Landroid/media/soundtrigger/PhraseRecognitionExtra;->confidenceLevel:I

    const/16 v7, 0x64

    if-gt v5, v7, :cond_4a

    .line 97
    iget-object v5, v4, Landroid/media/soundtrigger/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger/ConfidenceLevel;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v5, v4, Landroid/media/soundtrigger/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger/ConfidenceLevel;

    array-length v8, v5

    move v9, v2

    :goto_2f
    if-ge v9, v8, :cond_47

    aget-object v10, v5, v9

    .line 99
    .local v10, "level":Landroid/media/soundtrigger/ConfidenceLevel;
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget v11, v10, Landroid/media/soundtrigger/ConfidenceLevel;->levelPercent:I

    if-ltz v11, :cond_41

    iget v11, v10, Landroid/media/soundtrigger/ConfidenceLevel;->levelPercent:I

    if-gt v11, v7, :cond_41

    .line 98
    .end local v10    # "level":Landroid/media/soundtrigger/ConfidenceLevel;
    add-int/lit8 v9, v9, 0x1

    goto :goto_2f

    .line 101
    .restart local v10    # "level":Landroid/media/soundtrigger/ConfidenceLevel;
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    .end local v4    # "extra":Landroid/media/soundtrigger/PhraseRecognitionExtra;
    .end local v10    # "level":Landroid/media/soundtrigger/ConfidenceLevel;
    :cond_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 95
    .restart local v4    # "extra":Landroid/media/soundtrigger/PhraseRecognitionExtra;
    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid recognitionModes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    .end local v4    # "extra":Landroid/media/soundtrigger/PhraseRecognitionExtra;
    :cond_58
    iget-object v0, p0, Landroid/media/soundtrigger/RecognitionConfig;->data:[B

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-void
.end method

.method static validateUuid(Ljava/lang/String;)V
    .registers 5
    .param p0, "uuid"    # Ljava/lang/String;

    .line 43
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/android/server/soundtrigger_middleware/UuidUtil;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 45
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 49
    return-void

    .line 46
    :cond_10
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
