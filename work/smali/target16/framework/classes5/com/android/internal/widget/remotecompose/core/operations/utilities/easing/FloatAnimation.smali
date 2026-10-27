.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;
.super Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;
.source "FloatAnimation.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# instance fields
.field private blacklist mDirectionalSnap:I

.field private blacklist mDuration:F

.field blacklist mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

.field private blacklist mInitialValue:F

.field blacklist mOffset:F

.field private blacklist mPropagate:Z

.field blacklist mSpec:[F

.field private blacklist mTargetValue:F

.field private blacklist mWrap:F


# direct methods
.method public constructor blacklist <init>(IF[FFF)V
    .registers 8

    .line 84
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;-><init>()V

    .line 33
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDuration:F

    .line 34
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    .line 35
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    .line 36
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDirectionalSnap:I

    .line 39
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mOffset:F

    .line 40
    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mPropagate:Z

    .line 85
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mType:I

    .line 86
    invoke-static {p2, p1, p3, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->packToFloatArray(FI[FFF)[F

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setAnimationDescription([F)V

    .line 87
    return-void
.end method

.method public varargs constructor blacklist <init>([F)V
    .registers 4

    .line 65
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;-><init>()V

    .line 33
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDuration:F

    .line 34
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    .line 35
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    .line 36
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDirectionalSnap:I

    .line 39
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mOffset:F

    .line 40
    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mPropagate:Z

    .line 66
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mType:I

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setAnimationDescription([F)V

    .line 68
    return-void
.end method

.method private blacklist create(I[FII)V
    .registers 7

    .line 279
    packed-switch p1, :pswitch_data_3e

    :pswitch_3
    goto :goto_3c

    .line 300
    :pswitch_4
    new-instance p1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/ElasticOutCurve;

    invoke-direct {p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/ElasticOutCurve;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    .line 301
    goto :goto_3c

    .line 297
    :pswitch_c
    new-instance p2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/BounceCurve;

    invoke-direct {p2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/BounceCurve;-><init>(I)V

    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    .line 298
    goto :goto_3c

    .line 303
    :pswitch_14
    new-instance p1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/StepCurve;

    invoke-direct {p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/StepCurve;-><init>([FII)V

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    goto :goto_3c

    .line 289
    :pswitch_1c
    new-instance p1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;

    add-int/lit8 p4, p3, 0x0

    aget p4, p2, p4

    add-int/lit8 v0, p3, 0x1

    aget v0, p2, v0

    add-int/lit8 v1, p3, 0x2

    aget v1, p2, v1

    add-int/lit8 p3, p3, 0x3

    aget p2, p2, p3

    invoke-direct {p1, p4, v0, v1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;-><init>(FFFF)V

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    .line 295
    goto :goto_3c

    .line 286
    :pswitch_34
    new-instance p2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;

    invoke-direct {p2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;-><init>(I)V

    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    .line 287
    nop

    .line 306
    :goto_3c
    return-void

    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1c
        :pswitch_14
        :pswitch_c
        :pswitch_4
    .end packed-switch
.end method

.method public static blacklist packToFloatArray(FI[FFF)[F
    .registers 10

    .line 101
    nop

    .line 103
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_b

    .line 104
    move v0, v1

    goto :goto_c

    .line 103
    :cond_b
    move v0, v2

    .line 106
    :goto_c
    if-eqz p2, :cond_10

    .line 108
    add-int/lit8 v0, v0, 0x1

    .line 110
    :cond_10
    if-nez p2, :cond_14

    if-eq p1, v1, :cond_1c

    .line 111
    :cond_14
    add-int/lit8 v0, v0, 0x1

    .line 112
    if-nez p2, :cond_1a

    move v3, v2

    goto :goto_1b

    :cond_1a
    array-length v3, p2

    :goto_1b
    add-int/2addr v0, v3

    .line 115
    :cond_1c
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_24

    .line 116
    add-int/lit8 v0, v0, 0x1

    .line 118
    :cond_24
    invoke-static {p4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 119
    add-int/lit8 v0, v0, 0x1

    .line 121
    :cond_2c
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p0, v3

    if-nez v3, :cond_34

    if-lez v0, :cond_36

    .line 122
    :cond_34
    add-int/lit8 v0, v0, 0x1

    .line 124
    :cond_36
    invoke-static {p4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_44

    .line 125
    :cond_42
    add-int/lit8 v0, v0, 0x1

    .line 127
    :cond_44
    new-array v3, v0, [F

    .line 128
    nop

    .line 129
    if-nez p2, :cond_4b

    move v4, v2

    goto :goto_4c

    :cond_4b
    array-length v4, p2

    .line 131
    :goto_4c
    if-lez v0, :cond_52

    .line 132
    aput p0, v3, v2

    move p0, v1

    goto :goto_53

    .line 131
    :cond_52
    move p0, v2

    .line 134
    :goto_53
    if-le v0, v1, :cond_73

    .line 135
    invoke-static {p4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    .line 136
    xor-int/2addr v0, v1

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_62

    move v1, v2

    goto :goto_63

    :cond_62
    const/4 v1, 0x2

    .line 137
    :goto_63
    or-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    .line 138
    add-int/lit8 v0, p0, 0x1

    shl-int/lit8 v1, v4, 0x10

    or-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    aput p1, v3, p0

    move p0, v0

    .line 141
    :cond_73
    if-lez v4, :cond_7b

    .line 142
    array-length p1, p2

    invoke-static {p2, v2, v3, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    array-length p1, p2

    add-int/2addr p0, p1

    .line 145
    :cond_7b
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_86

    .line 146
    add-int/lit8 p1, p0, 0x1

    aput p3, v3, p0

    move p0, p1

    .line 148
    :cond_86
    invoke-static {p4}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_8e

    .line 149
    aput p4, v3, p0

    .line 151
    :cond_8e
    return-object v3
.end method

.method private blacklist setScaleOffset()V
    .registers 2

    .line 390
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_15

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_15

    .line 393
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mOffset:F

    goto :goto_18

    .line 396
    :cond_15
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mOffset:F

    .line 398
    :goto_18
    return-void
.end method

.method public static blacklist unpackAnimationToString([F)Ljava/lang/String;
    .registers 14

    .line 161
    nop

    .line 162
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_a

    :cond_8
    aget v0, p0, v1

    .line 163
    :goto_a
    nop

    .line 164
    nop

    .line 165
    nop

    .line 166
    nop

    .line 167
    nop

    .line 168
    nop

    .line 169
    array-length v2, p0

    const/4 v3, 0x3

    const/high16 v4, 0x7fc00000    # Float.NaN

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-le v2, v6, :cond_57

    .line 170
    aget v2, p0, v6

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    .line 171
    and-int/lit16 v7, v2, 0xff

    .line 172
    shr-int/lit8 v8, v2, 0x8

    and-int/lit8 v9, v8, 0x1

    if-lez v9, :cond_28

    move v9, v6

    goto :goto_29

    :cond_28
    move v9, v1

    .line 173
    :goto_29
    and-int/2addr v8, v5

    if-lez v8, :cond_2e

    move v8, v6

    goto :goto_2f

    :cond_2e
    move v8, v1

    .line 174
    :goto_2f
    shr-int/lit8 v10, v2, 0xa

    and-int/2addr v10, v3

    .line 175
    shr-int/lit8 v11, v2, 0xc

    and-int/2addr v11, v6

    if-lez v11, :cond_38

    move v1, v6

    .line 176
    :cond_38
    shr-int/lit8 v2, v2, 0x10

    const v6, 0xffff

    and-int/2addr v2, v6

    .line 177
    add-int/lit8 v6, v2, 0x2

    .line 178
    if-eqz v8, :cond_4a

    .line 179
    add-int/lit8 v8, v6, 0x1

    aget v6, p0, v6

    move v12, v8

    move v8, v6

    move v6, v12

    goto :goto_4b

    .line 178
    :cond_4a
    move v8, v4

    .line 181
    :goto_4b
    if-eqz v9, :cond_53

    .line 182
    aget v4, p0, v6

    move v6, v4

    move v4, v1

    move v1, v7

    goto :goto_5c

    .line 181
    :cond_53
    move v6, v4

    move v4, v1

    move v1, v7

    goto :goto_5c

    .line 169
    :cond_57
    move v2, v1

    move v10, v2

    move v6, v4

    move v8, v6

    move v4, v10

    .line 185
    :goto_5c
    nop

    .line 186
    nop

    .line 188
    nop

    .line 189
    const-string v7, " "

    packed-switch v1, :pswitch_data_1a2

    :pswitch_64
    const-string p0, ""

    goto/16 :goto_124

    .line 221
    :pswitch_68
    nop

    .line 222
    const-string p0, "EASE_OUT_ELASTIC"

    goto/16 :goto_124

    .line 217
    :pswitch_6d
    nop

    .line 219
    const-string p0, "EASE_OUT_BOUNCE"

    goto/16 :goto_124

    .line 224
    :pswitch_72
    nop

    .line 225
    const-string v1, "SPLINE_CUSTOM ("

    move v3, v5

    :goto_76
    add-int v9, v5, v2

    if-ge v3, v9, :cond_94

    .line 226
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v9, p0, v3

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    add-int/lit8 v3, v3, 0x1

    goto :goto_76

    .line 228
    :cond_94
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ")"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_124

    .line 210
    :pswitch_a9
    nop

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CUBIC_CUSTOM ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p0, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    aget v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    aget p0, p0, v2

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " )"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 215
    goto :goto_124

    .line 206
    :pswitch_10d
    nop

    .line 208
    const-string p0, "CUBIC_OVERSHOOT"

    goto :goto_124

    .line 203
    :pswitch_111
    nop

    .line 204
    const-string p0, "CUBIC_ANTICIPATE"

    goto :goto_124

    .line 200
    :pswitch_115
    nop

    .line 201
    const-string p0, "CUBIC_LINEAR"

    goto :goto_124

    .line 197
    :pswitch_119
    nop

    .line 198
    const-string p0, "CUBIC_DECELERATE"

    goto :goto_124

    .line 194
    :pswitch_11d
    nop

    .line 195
    const-string p0, "CUBIC_ACCELERATE"

    goto :goto_124

    .line 191
    :pswitch_121
    nop

    .line 192
    const-string p0, "CUBIC_STANDARD"

    .line 232
    :goto_124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 233
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_156

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " init ="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 236
    :cond_156
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_173

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " wrap ="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 239
    :cond_173
    if-eqz v10, :cond_18c

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " directionalSnap="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 242
    :cond_18c
    if-eqz v4, :cond_1a1

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " propagate"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 245
    :cond_1a1
    return-object p0

    :pswitch_data_1a2
    .packed-switch 0x1
        :pswitch_121
        :pswitch_11d
        :pswitch_119
        :pswitch_115
        :pswitch_111
        :pswitch_10d
        :pswitch_64
        :pswitch_64
        :pswitch_64
        :pswitch_64
        :pswitch_a9
        :pswitch_72
        :pswitch_6d
        :pswitch_68
    .end packed-switch
.end method

.method private static blacklist wrap(FF)F
    .registers 3

    .line 333
    rem-float/2addr p1, p0

    .line 334
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_7

    .line 335
    add-float/2addr p1, p0

    .line 337
    :cond_7
    return p1
.end method


# virtual methods
.method public blacklist get(F)F
    .registers 4

    .line 403
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDirectionalSnap:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_14

    .line 404
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    .line 405
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    return p1

    .line 407
    :cond_14
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDirectionalSnap:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_28

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_28

    .line 408
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    .line 409
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    return p1

    .line 411
    :cond_28
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDuration:F

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;->get(F)F

    move-result p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    sub-float/2addr v0, v1

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    add-float/2addr p1, v0

    return p1
.end method

.method public blacklist getDiff(F)F
    .registers 4

    .line 417
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDuration:F

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;->getDiff(F)F

    move-result p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    sub-float/2addr v0, v1

    mul-float/2addr p1, v0

    return p1
.end method

.method public blacklist getDuration()F
    .registers 2

    .line 314
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDuration:F

    return v0
.end method

.method public blacklist getInitialValue()F
    .registers 2

    .line 433
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    return v0
.end method

.method public blacklist getTargetValue()F
    .registers 2

    .line 386
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    return v0
.end method

.method public blacklist isPropagate()Z
    .registers 2

    .line 424
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mPropagate:Z

    return v0
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 4

    .line 438
    nop

    .line 439
    const-string v0, "FloatAnimation"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    .line 440
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "initialValue"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    .line 441
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "targetValue"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDuration:F

    .line 442
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "duration"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    .line 443
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "easing"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 444
    return-void
.end method

.method public blacklist setAnimationDescription([F)V
    .registers 10

    .line 254
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mSpec:[F

    .line 255
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mSpec:[F

    array-length v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_f

    :cond_b
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mSpec:[F

    aget v0, v0, v1

    :goto_f
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDuration:F

    .line 256
    nop

    .line 257
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mSpec:[F

    array-length v0, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-le v0, v3, :cond_5e

    .line 258
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mSpec:[F

    aget v0, v0, v3

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 259
    and-int/lit16 v4, v0, 0xff

    iput v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mType:I

    .line 260
    shr-int/lit8 v4, v0, 0x8

    and-int/lit8 v5, v4, 0x1

    if-lez v5, :cond_2d

    move v5, v3

    goto :goto_2e

    :cond_2d
    move v5, v1

    .line 261
    :goto_2e
    and-int/2addr v4, v2

    if-lez v4, :cond_33

    move v4, v3

    goto :goto_34

    :cond_33
    move v4, v1

    .line 262
    :goto_34
    shr-int/lit8 v6, v0, 0xa

    and-int/lit8 v6, v6, 0x3

    .line 263
    shr-int/lit8 v7, v0, 0xc

    and-int/2addr v7, v3

    if-lez v7, :cond_3e

    move v1, v3

    .line 264
    :cond_3e
    shr-int/lit8 v0, v0, 0x10

    const v3, 0xffff

    and-int/2addr v0, v3

    .line 265
    add-int/lit8 v3, v0, 0x2

    .line 266
    if-eqz v4, :cond_51

    .line 267
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mSpec:[F

    add-int/lit8 v7, v3, 0x1

    aget v3, v4, v3

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    move v3, v7

    .line 269
    :cond_51
    if-eqz v5, :cond_59

    .line 270
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mSpec:[F

    aget v3, v4, v3

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    .line 272
    :cond_59
    iput v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDirectionalSnap:I

    .line 273
    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mPropagate:Z

    move v1, v0

    .line 275
    :cond_5e
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mType:I

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->create(I[FII)V

    .line 276
    return-void
.end method

.method public blacklist setInitialValue(F)V
    .registers 3

    .line 324
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 325
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    goto :goto_10

    .line 327
    :cond_b
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    rem-float/2addr p1, v0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    .line 329
    :goto_10
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setScaleOffset()V

    .line 330
    return-void
.end method

.method public blacklist setTargetValue(F)V
    .registers 5

    .line 356
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    .line 357
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_7a

    .line 358
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    invoke-static {p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->wrap(FF)F

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    .line 359
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    invoke-static {p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->wrap(FF)F

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    .line 360
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 361
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    .line 364
    :cond_2a
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->wrapDistance(FFF)F

    move-result p1

    .line 365
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_49

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_49

    .line 366
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    add-float/2addr p1, v0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    goto :goto_7a

    .line 367
    :cond_49
    cmpg-float p1, p1, v0

    if-gez p1, :cond_7a

    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDirectionalSnap:I

    if-eqz p1, :cond_7a

    .line 368
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDirectionalSnap:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_62

    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_62

    .line 369
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    .line 371
    :cond_62
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDirectionalSnap:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_73

    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_73

    .line 372
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    .line 374
    :cond_73
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    .line 377
    :cond_7a
    :goto_7a
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setScaleOffset()V

    .line 378
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_37

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    :cond_37
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_58

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    :cond_58
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_79

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  % "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    :cond_79
    return-object v0
.end method

.method blacklist wrapDistance(FFF)F
    .registers 5

    .line 341
    sub-float/2addr p3, p2

    const/high16 p2, 0x43b40000    # 360.0f

    rem-float/2addr p3, p2

    .line 342
    neg-float p2, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    cmpg-float p2, p3, p2

    if-gez p2, :cond_e

    .line 343
    add-float/2addr p3, p1

    goto :goto_15

    .line 344
    :cond_e
    div-float p2, p1, v0

    cmpl-float p2, p3, p2

    if-lez p2, :cond_15

    .line 345
    sub-float/2addr p3, p1

    .line 347
    :cond_15
    :goto_15
    return p3
.end method
