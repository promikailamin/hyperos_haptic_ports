.class public Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "ColorExpression.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field public static final blacklist ARGB_MODE:B = 0x5t

.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "ColorExpression"

.field public static final blacklist COLOR_COLOR_INTERPOLATE:B = 0x0t

.field public static final blacklist COLOR_ID_INTERPOLATE:B = 0x2t

.field public static final blacklist HSV_MODE:B = 0x4t

.field public static final blacklist IDARGB_MODE:B = 0x6t

.field public static final blacklist ID_COLOR_INTERPOLATE:B = 0x1t

.field public static final blacklist ID_ID_INTERPOLATE:B = 0x3t

.field private static final blacklist OP_CODE:I = 0x86


# instance fields
.field public blacklist mAlpha:I

.field private blacklist mArgbAlpha:F

.field private blacklist mArgbBlue:F

.field private blacklist mArgbGreen:F

.field private blacklist mArgbRed:F

.field public blacklist mColor1:I

.field public blacklist mColor2:I

.field public blacklist mHue:F

.field public blacklist mId:I

.field blacklist mMode:I

.field private blacklist mOutArgbAlpha:F

.field private blacklist mOutArgbBlue:F

.field private blacklist mOutArgbGreen:F

.field private blacklist mOutArgbRed:F

.field public blacklist mOutColor1:I

.field public blacklist mOutColor2:I

.field public blacklist mOutHue:F

.field public blacklist mOutSat:F

.field public blacklist mOutTween:F

.field public blacklist mOutValue:F

.field public blacklist mSat:F

.field public blacklist mTween:F

.field public blacklist mValue:F


# direct methods
.method public constructor blacklist <init>(IBFFFF)V
    .registers 9

    .line 178
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    .line 54
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    .line 55
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    .line 56
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    .line 57
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutHue:F

    .line 58
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutSat:F

    .line 59
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutValue:F

    .line 60
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mAlpha:I

    .line 62
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbAlpha:F

    .line 63
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbRed:F

    .line 64
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbGreen:F

    .line 65
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbBlue:F

    .line 67
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbAlpha:F

    .line 68
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbRed:F

    .line 69
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbGreen:F

    .line 70
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbBlue:F

    .line 72
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutTween:F

    .line 179
    const/4 v0, 0x5

    if-ne p2, v0, :cond_40

    .line 182
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    .line 183
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    .line 184
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbAlpha:F

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbAlpha:F

    .line 185
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbRed:F

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbRed:F

    .line 186
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbGreen:F

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbGreen:F

    .line 187
    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbBlue:F

    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbBlue:F

    .line 188
    return-void

    .line 180
    :cond_40
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid mode "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor blacklist <init>(IBIFFF)V
    .registers 9

    .line 127
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    .line 54
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    .line 55
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    .line 56
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    .line 57
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutHue:F

    .line 58
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutSat:F

    .line 59
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutValue:F

    .line 60
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mAlpha:I

    .line 62
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbAlpha:F

    .line 63
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbRed:F

    .line 64
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbGreen:F

    .line 65
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbBlue:F

    .line 67
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbAlpha:F

    .line 68
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbRed:F

    .line 69
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbGreen:F

    .line 70
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbBlue:F

    .line 72
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutTween:F

    .line 128
    const/4 v0, 0x4

    if-ne p2, v0, :cond_4c

    .line 131
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    .line 132
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    .line 133
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mAlpha:I

    .line 134
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutHue:F

    .line 135
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutSat:F

    .line 136
    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutValue:F

    .line 137
    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    .line 138
    invoke-static {p5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor2:I

    .line 139
    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    .line 140
    return-void

    .line 129
    :cond_4c
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid mode "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor blacklist <init>(IFFF)V
    .registers 7

    .line 105
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    .line 54
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    .line 55
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    .line 56
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    .line 57
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutHue:F

    .line 58
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutSat:F

    .line 59
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutValue:F

    .line 60
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mAlpha:I

    .line 62
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbAlpha:F

    .line 63
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbRed:F

    .line 64
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbGreen:F

    .line 65
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbBlue:F

    .line 67
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbAlpha:F

    .line 68
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbRed:F

    .line 69
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbGreen:F

    .line 70
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbBlue:F

    .line 72
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutTween:F

    .line 106
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    .line 107
    const/4 p1, 0x4

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    .line 108
    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mAlpha:I

    .line 109
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutHue:F

    .line 110
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutSat:F

    .line 111
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutValue:F

    .line 112
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    .line 113
    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor2:I

    .line 114
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    .line 115
    return-void
.end method

.method public constructor blacklist <init>(IIIIF)V
    .registers 8

    .line 151
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    .line 54
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    .line 55
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    .line 56
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    .line 57
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutHue:F

    .line 58
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutSat:F

    .line 59
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutValue:F

    .line 60
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mAlpha:I

    .line 62
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbAlpha:F

    .line 63
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbRed:F

    .line 64
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbGreen:F

    .line 65
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbBlue:F

    .line 67
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbAlpha:F

    .line 68
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbRed:F

    .line 69
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbGreen:F

    .line 70
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbBlue:F

    .line 72
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutTween:F

    .line 152
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    .line 153
    and-int/lit16 p1, p2, 0xff

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    .line 154
    shr-int/lit8 p1, p2, 0x10

    and-int/2addr p1, v1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mAlpha:I

    .line 155
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_4c

    .line 156
    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutHue:F

    .line 157
    invoke-static {p4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutSat:F

    .line 158
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutValue:F

    .line 160
    :cond_4c
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    .line 161
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor2:I

    .line 162
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    .line 163
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutTween:F

    .line 164
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutColor1:I

    .line 165
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutColor2:I

    .line 166
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFF)V
    .registers 13

    .line 412
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x6

    goto :goto_9

    :cond_8
    const/4 v0, 0x5

    .line 413
    :goto_9
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result p2

    goto :goto_18

    :cond_14
    const/high16 v1, 0x44800000    # 1024.0f

    mul-float/2addr p2, v1

    float-to-int p2, p2

    :goto_18
    shl-int/lit8 p2, p2, 0x10

    or-int v3, v0, p2

    .line 414
    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    .line 415
    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    .line 416
    invoke-static {p5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    .line 417
    move-object v1, p0

    move v2, p1

    invoke-static/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIII)V

    .line 418
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIF)V
    .registers 6

    .line 397
    invoke-static {p5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p5

    invoke-static/range {p0 .. p5}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIII)V

    .line 398
    return-void
.end method

.method private static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIII)V
    .registers 7

    .line 422
    const/16 v0, 0x86

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 423
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 424
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 425
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 426
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 427
    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 428
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5

    .line 488
    const/16 v0, 0x86

    const-string v1, "ColorExpression"

    const-string v2, "Expressions Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 489
    const-string v0, "A Color defined by an expression"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 490
    const/4 v0, 0x0

    const-string v1, "id"

    const-string v2, "Id of the color"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 491
    const-string v1, "mode"

    const-string v2, "The use of the next 3 fields"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 492
    const-string v1, "COLOR_COLOR_INTERPOLATE"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 493
    const-string v1, "COLOR_ID_INTERPOLATE"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 494
    const-string v1, "ID_COLOR_INTERPOLATE"

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 495
    const-string v1, "ID_ID_INTERPOLATE"

    const/4 v3, 0x3

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 496
    const-string v1, "HSV"

    const/4 v3, 0x4

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 497
    const-string v1, "color1"

    const-string v3, "32 bit ARGB color"

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 498
    const-string v1, "color2"

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 499
    const-string/jumbo v0, "tween"

    invoke-virtual {p0, v2, v0, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 500
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 382
    const/16 v0, 0x86

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 373
    const-string v0, "ColorExpression"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 437
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 438
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 439
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v3

    .line 440
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v4

    .line 441
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result p0

    .line 442
    and-int/lit16 v2, v0, 0xff

    .line 447
    packed-switch v2, :pswitch_data_98

    .line 478
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid mode "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 449
    :pswitch_32
    shr-int/lit8 v0, v0, 0x10

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    .line 450
    move v5, v4

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    .line 451
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    .line 452
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    .line 453
    move v3, v0

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;

    const/4 v2, 0x5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;-><init>(IBFFFF)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    goto :goto_97

    .line 456
    :pswitch_50
    move v5, v4

    shr-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    const/high16 v2, 0x44800000    # 1024.0f

    div-float/2addr v0, v2

    .line 457
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    .line 458
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    .line 459
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    .line 460
    move v3, v0

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;

    const/4 v2, 0x5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;-><init>(IBFFFF)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    goto :goto_97

    .line 463
    :pswitch_6e
    move v5, v4

    shr-int/lit8 v0, v0, 0x10

    .line 464
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    .line 465
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    .line 466
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    .line 467
    move v3, v0

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;

    const/4 v2, 0x4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;-><init>(IBIFFF)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    goto :goto_97

    .line 473
    :pswitch_88
    move v5, v4

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;

    .line 475
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    move v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;-><init>(IIIIF)V

    .line 473
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    nop

    .line 480
    :goto_97
    return-void

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_6e
        :pswitch_50
        :pswitch_32
    .end packed-switch
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 7

    .line 270
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1e

    .line 271
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mAlpha:I

    shl-int/lit8 v1, v1, 0x18

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutHue:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutSat:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutValue:F

    .line 272
    invoke-static {v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->hsvToRgb(FFF)I

    move-result v2

    const v3, 0xffffff

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 271
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadColor(II)V

    .line 273
    return-void

    .line 275
    :cond_1e
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_35

    .line 276
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbAlpha:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbRed:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbGreen:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbBlue:F

    .line 277
    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->toARGB(FFFF)I

    move-result v1

    .line 276
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadColor(II)V

    .line 278
    return-void

    .line 280
    :cond_35
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutTween:F

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_54

    .line 281
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4c

    .line 282
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutColor1:I

    .line 284
    :cond_4c
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutColor1:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadColor(II)V

    goto :goto_7e

    .line 286
    :cond_54
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_61

    .line 287
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutColor1:I

    .line 289
    :cond_61
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6f

    .line 290
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor2:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutColor2:I

    .line 293
    :cond_6f
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutColor1:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutColor2:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutTween:F

    invoke-static {v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->interpolateColor(IIF)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadColor(II)V

    .line 295
    :goto_7e
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 4

    .line 230
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_39

    .line 231
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 232
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 234
    :cond_16
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 235
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 237
    :cond_27
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 238
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 240
    :cond_38
    return-void

    .line 242
    :cond_39
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_83

    .line 243
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 244
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbAlpha:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 246
    :cond_4f
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbRed:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 247
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbRed:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 249
    :cond_60
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbGreen:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 250
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbGreen:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 252
    :cond_71
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbBlue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 253
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbBlue:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 255
    :cond_82
    return-void

    .line 257
    :cond_83
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 258
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 260
    :cond_94
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9f

    .line 261
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 263
    :cond_9f
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_aa

    .line 264
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor2:I

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 266
    :cond_aa
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 6

    .line 510
    const-string v0, "ColorExpression"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 511
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const-string v1, "mode"

    packed-switch v0, :pswitch_data_92

    .line 537
    const-string v0, "NONE"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    goto :goto_90

    .line 530
    :pswitch_1e
    const-string v0, "ARGB"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 531
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbAlpha:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbAlpha:F

    const-string v2, "a"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 532
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbRed:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbRed:F

    const-string/jumbo v2, "r"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 533
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbGreen:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbGreen:F

    const-string v2, "g"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 534
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbBlue:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbBlue:F

    const-string v2, "b"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 535
    goto :goto_90

    .line 523
    :pswitch_49
    const-string v0, "HSV"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 524
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutHue:F

    const-string v2, "hue"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 525
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutSat:F

    const-string/jumbo v2, "sat"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 526
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutValue:F

    const-string/jumbo v2, "val"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 527
    goto :goto_90

    .line 516
    :pswitch_6c
    const-string v0, "TWEEN"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 517
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutColor1:I

    int-to-float v1, v1

    const-string/jumbo v2, "startColor"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 518
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor2:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutColor2:I

    int-to-float v1, v1

    const-string v3, "endColor"

    invoke-interface {p1, v3, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 519
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutTween:F

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 521
    nop

    .line 539
    :goto_90
    return-void

    nop

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_49
        :pswitch_1e
        :pswitch_1e
    .end packed-switch
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 9

    .line 328
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x4

    const-string v2, ")"

    const-string v3, "ColorExpression["

    const-string v4, ", "

    if-ne v0, v1, :cond_4f

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] = hsv ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    .line 332
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    .line 334
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    .line 336
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 329
    return-object v0

    .line 339
    :cond_4f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ColorExpression toString"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->log(Ljava/lang/String;)V

    .line 340
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_ca

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] = rgb ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbAlpha:F

    .line 344
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbRed:F

    .line 346
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbGreen:F

    .line 348
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbRed:F

    .line 350
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    return-object v0

    .line 353
    :cond_ca
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const-string v5, "]"

    const-string v6, "["

    if-ne v0, v1, :cond_ec

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f2

    :cond_ec
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->colorInt(I)Ljava/lang/String;

    move-result-object v0

    .line 354
    :goto_f2
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v7, 0x2

    and-int/2addr v1, v7

    if-ne v1, v7, :cond_110

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor2:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_116

    :cond_110
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor2:I

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->colorInt(I)Ljava/lang/String;

    move-result-object v1

    .line 355
    :goto_116
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] = tween("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    .line 362
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 355
    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 4

    .line 192
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_41

    .line 193
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 194
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutHue:F

    .line 196
    :cond_19
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 197
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutSat:F

    .line 199
    :cond_2d
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 200
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutValue:F

    .line 203
    :cond_41
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_96

    .line 204
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 205
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbAlpha:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbAlpha:F

    .line 207
    :cond_5a
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbRed:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 208
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbRed:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbRed:F

    .line 210
    :cond_6e
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbGreen:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 211
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbGreen:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbGreen:F

    .line 213
    :cond_82
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbBlue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 214
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbBlue:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbBlue:F

    .line 217
    :cond_96
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 218
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutTween:F

    .line 220
    :cond_aa
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_b8

    .line 221
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutColor1:I

    .line 223
    :cond_b8
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_c6

    .line 224
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor2:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutColor2:I

    .line 226
    :cond_c6
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 15

    .line 300
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    packed-switch v0, :pswitch_data_56

    .line 321
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid mode "

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 302
    :pswitch_d
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbAlpha:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbRed:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbGreen:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbBlue:F

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFF)V

    .line 303
    goto :goto_54

    .line 306
    :pswitch_1c
    move-object v7, p1

    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutValue:F

    .line 307
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    .line 308
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor2:I

    .line 309
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mAlpha:I

    shl-int/lit8 v0, v0, 0x10

    or-int v9, p1, v0

    .line 310
    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    iget v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    iget v11, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor2:I

    iget v12, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    invoke-static/range {v7 .. v12}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIF)V

    .line 312
    goto :goto_54

    .line 317
    :pswitch_45
    move-object v7, p1

    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    iget v9, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    iget v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    iget v11, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor2:I

    iget v12, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    invoke-static/range {v7 .. v12}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIF)V

    .line 319
    nop

    .line 323
    :goto_54
    return-void

    nop

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_1c
        :pswitch_d
    .end packed-switch
.end method
