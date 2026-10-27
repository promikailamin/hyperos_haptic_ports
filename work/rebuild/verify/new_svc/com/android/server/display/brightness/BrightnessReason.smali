.class public final Lcom/android/server/display/brightness/BrightnessReason;
.super Ljava/lang/Object;
.source "BrightnessReason.java"


# instance fields
.field public mModifier:I

.field public mReason:I

.field public mTag:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(I)V

    return-void
.end method


# virtual methods
.method public addModifier(I)V
    .registers 3

    .line 97
    iget v0, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/BrightnessReason;->setModifier(I)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 102
    instance-of v0, p1, Lcom/android/server/display/brightness/BrightnessReason;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 105
    :cond_6
    check-cast p1, Lcom/android/server/display/brightness/BrightnessReason;

    .line 106
    iget v0, p1, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    iget v2, p0, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    if-ne v0, v2, :cond_28

    iget v0, p1, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    iget v2, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    if-ne v0, v2, :cond_28

    .line 108
    iget-object p1, p1, Lcom/android/server/display/brightness/BrightnessReason;->mTag:Ljava/lang/CharSequence;

    if-eqz p1, :cond_1d

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    :goto_1e
    iget-object p0, p0, Lcom/android/server/display/brightness/BrightnessReason;->mTag:Ljava/lang/CharSequence;

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_28

    const/4 p0, 0x1

    return p0

    :cond_28
    return v1
.end method

.method public getModifier()I
    .registers 1

    .line 199
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    return p0
.end method

.method public getReason()I
    .registers 1

    .line 182
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    return p0
.end method

.method public hashCode()I
    .registers 3

    .line 113
    iget v0, p0, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/display/brightness/BrightnessReason;->mTag:Ljava/lang/CharSequence;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final reasonToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p1, :pswitch_data_32

    .line 243
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 241
    :pswitch_8
    const-string p0, "doze_manual"

    return-object p0

    .line 239
    :pswitch_b
    const-string/jumbo p0, "offload"

    return-object p0

    .line 237
    :pswitch_f
    const-string p0, "follower"

    return-object p0

    .line 235
    :pswitch_12
    const-string/jumbo p0, "screen_off_brightness_sensor"

    return-object p0

    .line 233
    :pswitch_16
    const-string p0, "boost"

    return-object p0

    .line 231
    :pswitch_19
    const-string/jumbo p0, "temporary"

    return-object p0

    .line 229
    :pswitch_1d
    const-string/jumbo p0, "override"

    return-object p0

    .line 227
    :pswitch_21
    const-string/jumbo p0, "screen_off"

    return-object p0

    .line 225
    :pswitch_25
    const-string p0, "automatic"

    return-object p0

    .line 223
    :pswitch_28
    const-string p0, "doze_default"

    return-object p0

    .line 221
    :pswitch_2b
    const-string p0, "doze"

    return-object p0

    .line 219
    :pswitch_2e
    const-string/jumbo p0, "manual"

    return-object p0

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_16
        :pswitch_12
        :pswitch_f
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public set(Lcom/android/server/display/brightness/BrightnessReason;)V
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_5

    move v1, v0

    goto :goto_7

    .line 86
    :cond_5
    iget v1, p1, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    :goto_7
    invoke-virtual {p0, v1}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(I)V

    if-nez p1, :cond_d

    goto :goto_f

    .line 87
    :cond_d
    iget v0, p1, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    :goto_f
    invoke-virtual {p0, v0}, Lcom/android/server/display/brightness/BrightnessReason;->setModifier(I)V

    if-nez p1, :cond_16

    const/4 p1, 0x0

    goto :goto_18

    .line 88
    :cond_16
    iget-object p1, p1, Lcom/android/server/display/brightness/BrightnessReason;->mTag:Ljava/lang/CharSequence;

    :goto_18
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/BrightnessReason;->setTag(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setModifier(I)V
    .registers 3

    and-int/lit8 v0, p1, -0x40

    if-eqz v0, :cond_1f

    .line 209
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "brightness modifier out of bounds: 0x"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 209
    const-string p1, "BrightnessReason"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 212
    :cond_1f
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    return-void
.end method

.method public setReason(I)V
    .registers 3

    if-ltz p1, :cond_a

    const/16 v0, 0xc

    if-le p1, v0, :cond_7

    goto :goto_a

    .line 194
    :cond_7
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    return-void

    .line 192
    :cond_a
    :goto_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "brightness reason out of bounds: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BrightnessReason"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setTag(Ljava/lang/CharSequence;)V
    .registers 2

    .line 171
    iput-object p1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mTag:Ljava/lang/CharSequence;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0, v0}, Lcom/android/server/display/brightness/BrightnessReason;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(I)Ljava/lang/String;
    .registers 4

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    iget v1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    invoke-virtual {p0, v1}, Lcom/android/server/display/brightness/BrightnessReason;->reasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget-object v1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mTag:Ljava/lang/CharSequence;

    if-eqz v1, :cond_21

    .line 133
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mTag:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :cond_21
    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_2f

    .line 138
    const-string v1, " temp_adj"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2f
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_38

    .line 141
    const-string p1, " auto_adj"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_38
    iget p1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_43

    .line 144
    const-string p1, " low_pwr"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_43
    iget p1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_4e

    .line 147
    const-string p1, " dim"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :cond_4e
    iget p1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_59

    .line 150
    const-string p1, " hdr"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_59
    iget p1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_64

    .line 153
    const-string p1, " throttled"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :cond_64
    iget p1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_6f

    .line 156
    const-string p1, " lux_lower_bound"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :cond_6f
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_7a

    .line 159
    const-string p0, " stylus_under_use"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    :cond_7a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p1, p0, -0x1

    .line 162
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    const/16 v1, 0x5b

    if-ne p1, v1, :cond_8e

    add-int/lit8 p0, p0, -0x2

    .line 163
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_93

    .line 165
    :cond_8e
    const-string p0, " ]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :goto_93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
