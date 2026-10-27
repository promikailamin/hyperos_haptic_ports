.class public Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "TouchExpression.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/ComponentData;
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/TouchListener;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "TouchExpression"

.field public static final blacklist MAX_EXPRESSION_SIZE:I = 0x20

.field private static final blacklist OP_CODE:I = 0x9d

.field public static final blacklist STOP_ABSOLUTE_POS:I = 0x6

.field public static final blacklist STOP_ENDS:I = 0x2

.field public static final blacklist STOP_GENTLY:I = 0x0

.field public static final blacklist STOP_INSTANTLY:I = 0x1

.field public static final blacklist STOP_NOTCHES_ABSOLUTE:I = 0x5

.field public static final blacklist STOP_NOTCHES_EVEN:I = 0x3

.field public static final blacklist STOP_NOTCHES_PERCENTS:I = 0x4


# instance fields
.field blacklist mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

.field private blacklist mCurrentValue:F

.field private blacklist mDefValue:F

.field blacklist mDownTouchValue:F

.field private blacklist mEasingToStop:Z

.field private blacklist mEasyTouch:Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;

.field blacklist mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

.field private blacklist mId:I

.field private blacklist mLastCalculatedValue:F

.field private blacklist mLastChange:F

.field blacklist mLastValue:F

.field blacklist mMax:F

.field blacklist mMaxAcceleration:F

.field blacklist mMaxTime:F

.field blacklist mMaxVelocity:F

.field blacklist mMin:F

.field blacklist mMode:I

.field blacklist mNotches:[F

.field private blacklist mOutDefValue:F

.field blacklist mOutMax:F

.field blacklist mOutMin:F

.field blacklist mOutStopSpec:[F

.field private blacklist mPreCalcValue:[F

.field blacklist mScrBottom:F

.field blacklist mScrLeft:F

.field blacklist mScrRight:F

.field blacklist mScrTop:F

.field public blacklist mSrcExp:[F

.field blacklist mStopMode:I

.field blacklist mStopSpec:[F

.field private blacklist mTouchDown:Z

.field blacklist mTouchEffects:I

.field private blacklist mTouchUpTime:F

.field blacklist mUnmodified:Z

.field blacklist mValue:F

.field blacklist mValueAtDown:F

.field blacklist mVelocityId:F

.field blacklist mWrapMode:Z


# direct methods
.method public constructor blacklist <init>(I[FFFFIFI[F[F)V
    .registers 16

    .line 133
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMode:I

    .line 58
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMax:F

    .line 59
    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMin:F

    .line 60
    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMax:F

    .line 61
    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMin:F

    .line 62
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mValue:F

    .line 63
    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mUnmodified:Z

    .line 65
    const/high16 v3, 0x7fc00000    # Float.NaN

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mLastChange:F

    .line 66
    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mLastCalculatedValue:F

    .line 67
    new-instance v4, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    invoke-direct {v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;-><init>()V

    iput-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    .line 72
    new-instance v4, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;

    invoke-direct {v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;-><init>()V

    iput-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mEasyTouch:Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;

    .line 73
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mEasingToStop:Z

    .line 74
    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mTouchUpTime:F

    .line 75
    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mCurrentValue:F

    .line 76
    iput-boolean v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mTouchDown:Z

    .line 77
    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMaxTime:F

    .line 78
    const/high16 v1, 0x40a00000    # 5.0f

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMaxAcceleration:F

    .line 79
    const/high16 v1, 0x40e00000    # 7.0f

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMaxVelocity:F

    .line 80
    iput v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopMode:I

    .line 81
    iput-boolean v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mWrapMode:Z

    .line 319
    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mLastValue:F

    .line 134
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mId:I

    .line 135
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mSrcExp:[F

    .line 136
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mDefValue:F

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutDefValue:F

    .line 137
    const/4 p1, 0x6

    if-ne p1, p8, :cond_4f

    move p1, v0

    goto :goto_50

    :cond_4f
    move p1, v4

    :goto_50
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMode:I

    .line 138
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMax:F

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMax:F

    .line 139
    if-eqz p9, :cond_5f

    .line 140
    array-length p1, p9

    invoke-static {p9, p1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutStopSpec:[F

    .line 142
    :cond_5f
    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mTouchEffects:I

    .line 143
    iput p7, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mVelocityId:F

    .line 144
    invoke-static {p4}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_72

    invoke-static {p4}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result p1

    if-nez p1, :cond_72

    .line 145
    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mWrapMode:Z

    goto :goto_76

    .line 147
    :cond_72
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMin:F

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMin:F

    .line 149
    :goto_76
    iput p8, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopMode:I

    .line 150
    iput-object p9, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopSpec:[F

    .line 151
    if-eqz p10, :cond_96

    .line 152
    array-length p1, p10

    const/4 p2, 0x4

    if-lt p1, p2, :cond_96

    .line 153
    aget p1, p10, v4

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    if-nez p1, :cond_96

    .line 154
    aget p1, p10, v0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMaxTime:F

    .line 155
    const/4 p1, 0x2

    aget p1, p10, p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMaxAcceleration:F

    .line 156
    const/4 p1, 0x3

    aget p1, p10, p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMaxVelocity:F

    .line 160
    :cond_96
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFFI[FI[F[F)V
    .registers 12

    .line 602
    const/16 v0, 0x9d

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 603
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 604
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 605
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 606
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 607
    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 608
    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 609
    array-length p1, p7

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 610
    array-length p1, p7

    const/4 p2, 0x0

    move p3, p2

    :goto_1e
    if-ge p3, p1, :cond_28

    aget p4, p7, p3

    .line 611
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 610
    add-int/lit8 p3, p3, 0x1

    goto :goto_1e

    .line 613
    :cond_28
    nop

    .line 614
    if-eqz p9, :cond_2d

    .line 615
    array-length p1, p9

    goto :goto_2e

    .line 614
    :cond_2d
    move p1, p2

    .line 617
    :goto_2e
    shl-int/lit8 p3, p8, 0x10

    or-int/2addr p3, p1

    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 618
    move p3, p2

    :goto_35
    if-ge p3, p1, :cond_3f

    .line 619
    aget p4, p9, p3

    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 618
    add-int/lit8 p3, p3, 0x1

    goto :goto_35

    .line 622
    :cond_3f
    if-eqz p10, :cond_43

    .line 623
    array-length p1, p10

    goto :goto_44

    .line 625
    :cond_43
    move p1, p2

    .line 627
    :goto_44
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 628
    nop

    :goto_48
    if-ge p2, p1, :cond_52

    .line 629
    aget p3, p10, p2

    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 628
    add-int/lit8 p2, p2, 0x1

    goto :goto_48

    .line 631
    :cond_52
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 7

    .line 690
    const/16 v0, 0x9d

    const-string v1, "TouchExpression"

    const-string v2, "Expressions Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 691
    const-string v0, "A Float expression"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 692
    const/4 v0, 0x0

    const-string v1, "id"

    const-string v2, "The id of the Color"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 693
    const/16 v1, 0x9

    const-string v2, "expression_length"

    const-string v3, "expression length"

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 694
    const-string v3, "animation_length"

    const-string v4, "animation description length"

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 695
    const/16 v1, 0xa

    const-string v4, "expression"

    const-string v5, "Sequence of Floats representing and expression"

    invoke-virtual {p0, v1, v4, v2, v5}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 700
    const-string v2, "AnimationSpec"

    const-string v4, "Sequence of Floats representing animation curve"

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 705
    const/4 v2, 0x1

    const-string v3, "duration"

    const-string v4, "> time in sec"

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 706
    const-string v3, "bits"

    const-string v4, "> WRAP|INITALVALUE | TYPE "

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 707
    const-string/jumbo v0, "spec"

    const-string v3, "> [SPEC PARAMETERS] "

    invoke-virtual {p0, v1, v0, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 708
    const-string v0, "initialValue"

    const-string v1, "> [Initial value] "

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 709
    const-string/jumbo v0, "wrapValue"

    const-string v1, "> [Wrap value] "

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 710
    return-void
.end method

.method private blacklist getStopPosition(FF)F
    .registers 11

    .line 255
    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, p2, v0

    add-float v2, p1, v1

    .line 256
    iget-boolean v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mWrapMode:Z

    if-eqz v3, :cond_11

    .line 257
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->wrap(F)F

    move-result p1

    .line 258
    add-float/2addr p1, v1

    move v1, p1

    goto :goto_20

    .line 260
    :cond_11
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMax:F

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMin:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    move v7, v1

    move v1, p1

    move p1, v7

    .line 262
    :goto_20
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopSpec:[F

    array-length v2, v2

    new-array v2, v2, [F

    .line 263
    iget-boolean v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mWrapMode:Z

    if-eqz v2, :cond_2b

    const/4 v2, 0x0

    goto :goto_2d

    :cond_2b
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMin:F

    .line 265
    :goto_2d
    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopMode:I

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_c0

    .line 306
    return p1

    .line 293
    :pswitch_34
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopSpec:[F

    .line 294
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMin:F

    .line 295
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMin:F

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 296
    nop

    :goto_40
    array-length v2, p2

    if-ge v4, v2, :cond_55

    .line 297
    aget v2, p2, v4

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 298
    cmpl-float v3, v1, v2

    if-lez v3, :cond_52

    .line 299
    nop

    .line 300
    aget v0, p2, v4

    move v1, v2

    .line 296
    :cond_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    .line 303
    :cond_55
    return v0

    .line 280
    :pswitch_56
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopSpec:[F

    array-length p2, p2

    new-array v0, p2, [F

    .line 281
    nop

    .line 282
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMin:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 283
    nop

    :goto_64
    if-ge v4, p2, :cond_83

    .line 284
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMin:F

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopSpec:[F

    aget v3, v3, v4

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMax:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMin:F

    sub-float/2addr v5, v6

    mul-float/2addr v3, v5

    add-float/2addr v1, v3

    .line 285
    sub-float v3, v1, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 286
    cmpl-float v5, v0, v3

    if-lez v5, :cond_80

    .line 287
    nop

    .line 288
    move v2, v1

    move v0, v3

    .line 283
    :cond_80
    add-int/lit8 v4, v4, 0x1

    goto :goto_64

    .line 291
    :cond_83
    return v2

    .line 271
    :pswitch_84
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutStopSpec:[F

    aget p2, p2, v4

    float-to-int p2, p2

    .line 272
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutStopSpec:[F

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_94

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutStopSpec:[F

    aget v0, v0, v1

    goto :goto_96

    :cond_94
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMax:F

    .line 273
    :goto_96
    sub-float/2addr v0, v2

    int-to-float p2, p2

    div-float/2addr v0, p2

    .line 274
    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMin:F

    sub-float/2addr p1, p2

    div-float/2addr p1, v0

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    int-to-float p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v2

    .line 275
    iget-boolean p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mWrapMode:Z

    if-nez p1, :cond_b2

    .line 276
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMax:F

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 278
    :cond_b2
    return v0

    .line 267
    :pswitch_b3
    add-float/2addr v1, p2

    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMax:F

    add-float/2addr p1, v2

    div-float/2addr p1, v0

    cmpl-float p1, v1, p1

    if-lez p1, :cond_be

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMax:F

    :cond_be
    return v2

    .line 269
    :pswitch_bf
    return v1

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_bf
        :pswitch_b3
        :pswitch_84
        :pswitch_56
        :pswitch_34
    .end packed-switch
.end method

.method public static blacklist id()I
    .registers 1

    .line 572
    const/16 v0, 0x9d

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 563
    const-string v0, "TouchExpression"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 640
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 641
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v3

    .line 642
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v4

    .line 643
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v5

    .line 644
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v7

    .line 645
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v6

    .line 646
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 647
    const v2, 0xffff

    and-int/2addr v0, v2

    .line 648
    const/16 v8, 0x20

    if-gt v0, v8, :cond_67

    .line 651
    move v8, v2

    new-array v2, v0, [F

    .line 652
    const/4 v9, 0x0

    move v10, v9

    :goto_29
    if-ge v10, v0, :cond_34

    .line 653
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v11

    aput v11, v2, v10

    .line 652
    add-int/lit8 v10, v10, 0x1

    goto :goto_29

    .line 655
    :cond_34
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 656
    and-int/2addr v8, v0

    .line 657
    shr-int/lit8 v0, v0, 0x10

    .line 659
    move v10, v9

    new-array v9, v8, [F

    .line 660
    move v11, v10

    :goto_3f
    if-ge v11, v8, :cond_4a

    .line 661
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v12

    aput v12, v9, v11

    .line 660
    add-int/lit8 v11, v11, 0x1

    goto :goto_3f

    .line 663
    :cond_4a
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v8

    .line 665
    move v11, v10

    new-array v10, v8, [F

    .line 666
    nop

    :goto_52
    if-ge v11, v8, :cond_5d

    .line 667
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v12

    aput v12, v10, v11

    .line 666
    add-int/lit8 v11, v11, 0x1

    goto :goto_52

    .line 670
    :cond_5d
    move v8, v0

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;-><init>(I[FFFFIFI[F[F)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    return-void

    .line 649
    :cond_67
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Float expression to long"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist updateBounds()V
    .registers 7

    .line 387
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 388
    if-eqz v0, :cond_33

    .line 389
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getX()F

    move-result v1

    .line 390
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getY()F

    move-result v2

    .line 391
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v3

    .line 392
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v4

    .line 393
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getParent()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object v0

    .line 394
    :goto_18
    if-eqz v0, :cond_29

    .line 395
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getX()F

    move-result v5

    add-float/2addr v1, v5

    .line 396
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getY()F

    move-result v5

    add-float/2addr v2, v5

    .line 397
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getParent()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object v0

    goto :goto_18

    .line 399
    :cond_29
    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mScrLeft:F

    .line 400
    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mScrTop:F

    .line 401
    add-float/2addr v3, v1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mScrRight:F

    .line 402
    add-float/2addr v4, v2

    iput v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mScrBottom:F

    .line 404
    :cond_33
    return-void
.end method

.method private blacklist wrap(F)F
    .registers 3

    .line 244
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mWrapMode:Z

    if-nez v0, :cond_5

    .line 245
    return p1

    .line 247
    :cond_5
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMax:F

    rem-float/2addr p1, v0

    .line 248
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_10

    .line 249
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMax:F

    add-float/2addr p1, v0

    .line 251
    :cond_10
    return p1
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 6

    .line 408
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->updateBounds()V

    .line 409
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mUnmodified:Z

    if-eqz v0, :cond_17

    .line 410
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutDefValue:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mCurrentValue:F

    .line 411
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mCurrentValue:F

    invoke-direct {p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->wrap(F)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 412
    return-void

    .line 414
    :cond_17
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mEasingToStop:Z

    if-eqz v0, :cond_58

    .line 415
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getAnimationTime()F

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mTouchUpTime:F

    sub-float/2addr v0, v1

    .line 416
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mEasyTouch:Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->getPos(F)F

    move-result v1

    .line 417
    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mCurrentValue:F

    .line 418
    iget-boolean v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mWrapMode:Z

    if-eqz v2, :cond_33

    .line 419
    invoke-direct {p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->wrap(F)F

    move-result v1

    goto :goto_3f

    .line 421
    :cond_33
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMin:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMax:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 423
    :goto_3f
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mId:I

    invoke-virtual {p1, v2, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 424
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mEasyTouch:Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->getDuration()F

    move-result v1

    cmpg-float v0, v1, v0

    if-gez v0, :cond_51

    .line 425
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mEasingToStop:Z

    .line 427
    :cond_51
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->crossNotchCheck(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 428
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->needsRepaint()V

    .line 429
    return-void

    .line 431
    :cond_58
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mTouchDown:Z

    if-eqz v0, :cond_8c

    .line 432
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    .line 433
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getCollectionsAccess()Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mPreCalcValue:[F

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mPreCalcValue:[F

    array-length v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->eval(Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;[FI)F

    move-result v0

    .line 434
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMode:I

    if-nez v1, :cond_75

    .line 435
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mValueAtDown:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mDownTouchValue:F

    sub-float/2addr v0, v2

    add-float/2addr v0, v1

    .line 437
    :cond_75
    iget-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mWrapMode:Z

    if-eqz v1, :cond_7e

    .line 438
    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->wrap(F)F

    move-result v0

    goto :goto_8a

    .line 440
    :cond_7e
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMin:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMax:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 442
    :goto_8a
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mCurrentValue:F

    .line 444
    :cond_8c
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->crossNotchCheck(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 445
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mCurrentValue:F

    invoke-direct {p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->wrap(F)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 446
    return-void
.end method

.method blacklist crossNotchCheck(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 10

    .line 322
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mLastValue:F

    .line 323
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mCurrentValue:F

    .line 324
    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mLastValue:F

    .line 326
    iget-boolean v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mWrapMode:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_d

    move v2, v3

    goto :goto_f

    :cond_d
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMin:F

    .line 327
    :goto_f
    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMax:F

    .line 329
    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopMode:I

    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_8c

    goto/16 :goto_8a

    .line 354
    :pswitch_19
    nop

    :goto_1a
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopSpec:[F

    array-length v2, v2

    if-ge v6, v2, :cond_32

    .line 355
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopSpec:[F

    aget v2, v2, v6

    .line 356
    sub-float v4, v0, v2

    sub-float v2, v1, v2

    mul-float/2addr v4, v2

    cmpg-float v2, v4, v3

    if-gez v2, :cond_2f

    .line 357
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->haptic(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 354
    :cond_2f
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .line 360
    :cond_32
    goto :goto_8a

    .line 346
    :pswitch_33
    nop

    :goto_34
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopSpec:[F

    array-length v2, v2

    if-ge v6, v2, :cond_55

    .line 347
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMin:F

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopSpec:[F

    aget v4, v4, v6

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMax:F

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMin:F

    sub-float/2addr v5, v7

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    .line 348
    sub-float v4, v0, v2

    sub-float v2, v1, v2

    mul-float/2addr v4, v2

    cmpg-float v2, v4, v3

    if-gez v2, :cond_52

    .line 349
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->haptic(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 346
    :cond_52
    add-int/lit8 v6, v6, 0x1

    goto :goto_34

    .line 352
    :cond_55
    goto :goto_8a

    .line 339
    :pswitch_56
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopSpec:[F

    aget v3, v3, v6

    float-to-int v3, v3

    .line 340
    sub-float/2addr v4, v2

    int-to-float v3, v3

    div-float/2addr v4, v3

    .line 341
    sub-float/2addr v0, v2

    div-float/2addr v0, v4

    float-to-int v0, v0

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    float-to-int v1, v1

    if-eq v0, v1, :cond_8a

    .line 342
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->haptic(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    goto :goto_8a

    .line 331
    :pswitch_6a
    sub-float v5, v2, v0

    sub-float v0, v4, v0

    mul-float/2addr v5, v0

    cmpg-float v0, v5, v3

    const/4 v5, 0x1

    if-gez v0, :cond_76

    move v0, v5

    goto :goto_77

    :cond_76
    move v0, v6

    :goto_77
    sub-float/2addr v2, v1

    sub-float/2addr v4, v1

    mul-float/2addr v2, v4

    cmpg-float v1, v2, v3

    if-gez v1, :cond_7f

    move v6, v5

    :cond_7f
    xor-int/2addr v0, v6

    if-eqz v0, :cond_8a

    .line 332
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->haptic(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    goto :goto_8a

    .line 336
    :pswitch_86
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->haptic(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 337
    nop

    .line 363
    :cond_8a
    :goto_8a
    return-void

    nop

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_86
        :pswitch_6a
        :pswitch_56
        :pswitch_33
        :pswitch_19
    .end packed-switch
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method blacklist haptic(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 5

    .line 311
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mTouchEffects:I

    and-int/lit16 v0, v0, 0xff

    .line 312
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mTouchEffects:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    .line 313
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mTouchEffects:I

    and-int/lit16 v0, v0, 0x7fff

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getInteger(I)I

    move-result v0

    .line 316
    :cond_14
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->hapticEffect(I)V

    .line 317
    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 8

    .line 217
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMax:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 218
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMax:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 220
    :cond_11
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMin:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 221
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMin:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 223
    :cond_22
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mDefValue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 224
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mDefValue:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 226
    :cond_33
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-nez v0, :cond_3a

    .line 227
    invoke-virtual {p1, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->addTouchListener(Lcom/android/internal/widget/remotecompose/core/TouchListener;)V

    .line 229
    :cond_3a
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mSrcExp:[F

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_3f
    if-ge v3, v1, :cond_5f

    aget v4, v0, v3

    .line 230
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 231
    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v5

    if-nez v5, :cond_5c

    .line 232
    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v5

    if-nez v5, :cond_5c

    .line 233
    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v4

    invoke-virtual {p1, v4, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 229
    :cond_5c
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 236
    :cond_5f
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopSpec:[F

    array-length v1, v0

    :goto_62
    if-ge v2, v1, :cond_76

    aget v3, v0, v2

    .line 237
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 238
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v3

    invoke-virtual {p1, v3, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 236
    :cond_73
    add-int/lit8 v2, v2, 0x1

    goto :goto_62

    .line 241
    :cond_76
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5

    .line 720
    nop

    .line 721
    const-string v0, "TouchExpression"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mId:I

    .line 722
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "id"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mDefValue:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutDefValue:F

    .line 723
    const-string v2, "defValue"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMin:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMin:F

    .line 724
    const-string v2, "min"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMax:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMax:F

    .line 725
    const-string v2, "max"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMode:I

    .line 726
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "mode"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mSrcExp:[F

    .line 727
    const-string/jumbo v1, "srcExp"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addFloatExpressionSrc(Ljava/lang/String;[F)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 728
    return-void
.end method

.method public blacklist setComponent(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V
    .registers 3

    .line 376
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 377
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz p1, :cond_12

    .line 379
    :try_start_6
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getRoot()Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    move-result-object p1

    .line 380
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->setHasTouchListeners(Z)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_11

    .line 382
    goto :goto_12

    .line 381
    :catch_11
    move-exception p1

    .line 384
    :cond_12
    :goto_12
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 530
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mSrcExp:[F

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    .line 531
    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mSrcExp:[F

    array-length v2, v2

    if-ge v1, v2, :cond_3b

    .line 532
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mSrcExp:[F

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 533
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mSrcExp:[F

    aget v3, v3, v1

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idStringFromNan(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 531
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 536
    :cond_3b
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mPreCalcValue:[F

    const-string v2, ") - "

    const-string v3, "] = ("

    const-string v4, "TouchExpression["

    if-nez v1, :cond_71

    .line 537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mSrcExp:[F

    .line 541
    invoke-static {v3, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->toString([F[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mLastChange:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 537
    return-object v0

    .line 545
    :cond_71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mPreCalcValue:[F

    .line 549
    invoke-static {v3, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->toString([F[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mLastChange:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 545
    return-object v0
.end method

.method public blacklist touchDown(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)V
    .registers 6

    .line 453
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mScrLeft:F

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_42

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mScrRight:F

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_42

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mScrTop:F

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_42

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mScrBottom:F

    cmpg-float v0, p3, v0

    if-lez v0, :cond_19

    goto :goto_42

    .line 457
    :cond_19
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mEasingToStop:Z

    .line 458
    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mTouchDown:Z

    .line 459
    iput-boolean p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mUnmodified:Z

    .line 460
    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMode:I

    if-nez p2, :cond_3e

    .line 461
    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mId:I

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result p2

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mValueAtDown:F

    .line 462
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    .line 463
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getCollectionsAccess()Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

    move-result-object p3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mPreCalcValue:[F

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mPreCalcValue:[F

    array-length v1, v1

    invoke-virtual {p2, p3, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->eval(Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;[FI)F

    move-result p2

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mDownTouchValue:F

    .line 465
    :cond_3e
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->needsRepaint()V

    .line 466
    return-void

    .line 454
    :cond_42
    :goto_42
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NOT IN WINDOW "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mScrLeft:F

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mScrTop:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->log(Ljava/lang/String;)V

    .line 455
    return-void
.end method

.method public blacklist touchDrag(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)V
    .registers 4

    .line 505
    iget-boolean p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mTouchDown:Z

    if-nez p2, :cond_5

    .line 506
    return-void

    .line 508
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 509
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->needsRepaint()V

    .line 510
    return-void
.end method

.method public blacklist touchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FFFF)V
    .registers 19

    .line 471
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mTouchDown:Z

    if-nez v0, :cond_5

    .line 472
    return-void

    .line 474
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mTouchDown:Z

    .line 475
    nop

    .line 476
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f

    .line 477
    return-void

    .line 479
    :cond_f
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getCollectionsAccess()Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mPreCalcValue:[F

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mPreCalcValue:[F

    array-length v5, v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->eval(Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;[FI)F

    move-result v1

    .line 480
    nop

    :goto_1f
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mSrcExp:[F

    array-length v3, v3

    const v4, 0x38d1b717    # 1.0E-4f

    if-ge v0, v3, :cond_54

    .line 481
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mSrcExp:[F

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 482
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mSrcExp:[F

    aget v3, v3, v0

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v3

    .line 483
    const/16 v5, 0xd

    if-ne v3, v5, :cond_45

    .line 484
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mPreCalcValue:[F

    mul-float v4, v4, p4

    add-float/2addr v4, p2

    aput v4, v3, v0

    goto :goto_51

    .line 485
    :cond_45
    const/16 v5, 0xe

    if-ne v3, v5, :cond_51

    .line 486
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mPreCalcValue:[F

    mul-float v4, v4, p5

    add-float v4, p3, v4

    aput v4, v3, v0

    .line 480
    :cond_51
    :goto_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 490
    :cond_54
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getCollectionsAccess()Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mPreCalcValue:[F

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mPreCalcValue:[F

    array-length v5, v5

    invoke-virtual {p2, v0, v3, v5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->eval(Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;[FI)F

    move-result p2

    .line 491
    sub-float/2addr p2, v1

    div-float v8, p2, v4

    .line 492
    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mId:I

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v6

    .line 494
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getAnimationTime()F

    move-result p2

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mTouchUpTime:F

    .line 496
    invoke-direct {p0, v6, v8}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->getStopPosition(FF)F

    move-result v7

    .line 497
    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMaxTime:F

    sub-float v0, v7, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr p2, v0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMaxVelocity:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    div-float/2addr p2, v0

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 498
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mEasyTouch:Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;

    iget v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMaxAcceleration:F

    iget v11, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMaxVelocity:F

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->config(FFFFFFLcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Easing;)V

    .line 499
    iput-boolean v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mEasingToStop:Z

    .line 500
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->needsRepaint()V

    .line 501
    return-void
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 6

    .line 164
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mPreCalcValue:[F

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mPreCalcValue:[F

    array-length v0, v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mSrcExp:[F

    array-length v1, v1

    if-eq v0, v1, :cond_13

    .line 165
    :cond_c
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mSrcExp:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mPreCalcValue:[F

    .line 167
    :cond_13
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutStopSpec:[F

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutStopSpec:[F

    array-length v0, v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopSpec:[F

    array-length v1, v1

    if-eq v0, v1, :cond_26

    .line 168
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopSpec:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutStopSpec:[F

    .line 170
    :cond_26
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMax:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 171
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMax:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMax:F

    .line 173
    :cond_3a
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMin:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 174
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMin:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMin:F

    .line 176
    :cond_4e
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mDefValue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 177
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mDefValue:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutDefValue:F

    .line 180
    :cond_62
    nop

    .line 181
    const/4 v0, 0x0

    move v1, v0

    :goto_65
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mSrcExp:[F

    array-length v2, v2

    if-ge v1, v2, :cond_98

    .line 182
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mSrcExp:[F

    aget v2, v2, v1

    .line 183
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 184
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v3

    if-nez v3, :cond_8d

    .line 185
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v3

    if-nez v3, :cond_8d

    .line 186
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v2

    .line 188
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mPreCalcValue:[F

    aput v2, v3, v1

    .line 190
    goto :goto_95

    .line 191
    :cond_8d
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mPreCalcValue:[F

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mSrcExp:[F

    aget v3, v3, v1

    aput v3, v2, v1

    .line 181
    :goto_95
    add-int/lit8 v1, v1, 0x1

    goto :goto_65

    .line 194
    :cond_98
    nop

    :goto_99
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopSpec:[F

    array-length v1, v1

    if-ge v0, v1, :cond_bc

    .line 195
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopSpec:[F

    aget v1, v1, v0

    .line 196
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_b5

    .line 197
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v1

    .line 198
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutStopSpec:[F

    aput v1, v2, v0

    .line 199
    goto :goto_b9

    .line 200
    :cond_b5
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutStopSpec:[F

    aput v1, v2, v0

    .line 194
    :goto_b9
    add-int/lit8 v0, v0, 0x1

    goto :goto_99

    .line 203
    :cond_bc
    nop

    .line 204
    nop

    .line 213
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 13

    .line 514
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mValue:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMin:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMax:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mVelocityId:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mTouchEffects:I

    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mSrcExp:[F

    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopMode:I

    iget-object v9, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mNotches:[F

    const/4 v10, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v10}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFFI[FI[F[F)V

    .line 526
    return-void
.end method
