.class final Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;
.super Ljava/lang/Object;
.source "LoudnessCodecHelper.java"


# instance fields
.field public final mDeviceSplRange:I

.field public final mIsDownmixing:Z

.field public final mMetadataType:I


# direct methods
.method public constructor <init>(IZI)V
    .registers 4

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput p1, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mMetadataType:I

    .line 206
    iput-boolean p2, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mIsDownmixing:Z

    .line 207
    iput p3, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mDeviceSplRange:I

    return-void
.end method

.method public synthetic constructor <init>(IZILcom/android/server/audio/LoudnessCodecHelper-IA;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;-><init>(IZI)V

    return-void
.end method


# virtual methods
.method public createLoudnessParameters()Landroid/os/PersistableBundle;
    .registers 11

    .line 242
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 244
    iget v1, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mDeviceSplRange:I

    const/4 v2, 0x3

    const-string v3, "aac-drc-effect-type"

    const-string v4, "aac-drc-heavy-compression"

    const-string v5, "aac-target-ref-level"

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v1, v7, :cond_53

    const/16 v8, 0x60

    const/4 v9, 0x6

    if-eq v1, v6, :cond_40

    if-eq v1, v2, :cond_2c

    .line 277
    invoke-virtual {v0, v5, v8}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 278
    iget v1, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mMetadataType:I

    if-ne v1, v7, :cond_26

    .line 279
    iget-boolean p0, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mIsDownmixing:Z

    invoke-virtual {v0, v4, p0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_26
    if-ne v1, v6, :cond_65

    .line 282
    invoke-virtual {v0, v3, v9}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_2c
    const/16 v1, 0x7c

    .line 247
    invoke-virtual {v0, v5, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 248
    iget p0, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mMetadataType:I

    if-ne p0, v7, :cond_3a

    const/4 p0, 0x0

    .line 249
    invoke-virtual {v0, v4, p0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_3a
    if-ne p0, v6, :cond_65

    .line 252
    invoke-virtual {v0, v3, v9}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    .line 257
    :cond_40
    invoke-virtual {v0, v5, v8}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 258
    iget v1, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mMetadataType:I

    if-ne v1, v7, :cond_4d

    .line 259
    iget-boolean p0, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mIsDownmixing:Z

    invoke-virtual {v0, v4, p0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_4d
    if-ne v1, v6, :cond_65

    .line 262
    invoke-virtual {v0, v3, v9}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_53
    const/16 v1, 0x40

    .line 267
    invoke-virtual {v0, v5, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 268
    iget p0, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mMetadataType:I

    if-ne p0, v7, :cond_60

    .line 269
    invoke-virtual {v0, v4, v7}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_60
    if-ne p0, v6, :cond_65

    .line 272
    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_65
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 219
    :cond_8
    const-class v2, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_11

    return v1

    .line 222
    :cond_11
    check-cast p1, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;

    .line 223
    iget v2, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mMetadataType:I

    iget v3, p1, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mMetadataType:I

    if-ne v2, v3, :cond_26

    iget-boolean v2, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mIsDownmixing:Z

    iget-boolean v3, p1, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mIsDownmixing:Z

    if-ne v2, v3, :cond_26

    iget p0, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mDeviceSplRange:I

    iget p1, p1, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mDeviceSplRange:I

    if-ne p0, p1, :cond_26

    return v0

    :cond_26
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 230
    iget v0, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mMetadataType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mIsDownmixing:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget p0, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mDeviceSplRange:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loudness properties: device SPL range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mDeviceSplRange:I

    .line 236
    invoke-static {v1}, Lcom/android/server/audio/LoudnessCodecHelper;->-$$Nest$smsplRangeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " down-mixing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mIsDownmixing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " metadata type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;->mMetadataType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
