.class public Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "FloatExpression.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/ComponentData;
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "FloatExpression"

.field public static final blacklist MAX_EXPRESSION_SIZE:I = 0x20

.field private static final blacklist OP_CODE:I = 0x51


# instance fields
.field blacklist mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

.field public blacklist mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

.field public blacklist mId:I

.field blacklist mLastAnimatedValue:F

.field private blacklist mLastCalculatedValue:F

.field private blacklist mLastChange:F

.field public blacklist mPreCalcValue:[F

.field private blacklist mSpring:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;

.field public blacklist mSrcAnimation:[F

.field public blacklist mSrcValue:[F


# direct methods
.method public constructor blacklist <init>(I[F[F)V
    .registers 6

    .line 64
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 59
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastChange:F

    .line 60
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastCalculatedValue:F

    .line 61
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    .line 150
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastAnimatedValue:F

    .line 65
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mId:I

    .line 66
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    .line 67
    iput-object p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcAnimation:[F

    .line 68
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcAnimation:[F

    if-eqz p1, :cond_3f

    .line 69
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcAnimation:[F

    array-length p1, p1

    const/4 p2, 0x4

    if-le p1, p2, :cond_36

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcAnimation:[F

    const/4 p2, 0x0

    aget p1, p1, p2

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_36

    .line 70
    new-instance p1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;

    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcAnimation:[F

    invoke-direct {p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;-><init>([F)V

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSpring:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;

    goto :goto_3f

    .line 72
    :cond_36
    new-instance p1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcAnimation:[F

    invoke-direct {p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;-><init>([F)V

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    .line 75
    :cond_3f
    :goto_3f
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F[F)V
    .registers 7

    .line 280
    const/16 v0, 0x51

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 281
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 283
    array-length p1, p2

    .line 284
    const/16 v0, 0x20

    if-gt p1, v0, :cond_31

    .line 287
    if-eqz p3, :cond_13

    .line 288
    array-length v0, p3

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p1, v0

    .line 290
    :cond_13
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 292
    array-length p1, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_19
    if-ge v1, p1, :cond_23

    aget v2, p2, v1

    .line 293
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 292
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 295
    :cond_23
    if-eqz p3, :cond_30

    .line 296
    array-length p1, p3

    :goto_26
    if-ge v0, p1, :cond_30

    aget p2, p3, v0

    .line 297
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 296
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 300
    :cond_30
    return-void

    .line 285
    :cond_31
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->toString([F[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " to long"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 7

    .line 339
    const/16 v0, 0x51

    const-string v1, "FloatExpression"

    const-string v2, "Expressions Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 340
    const-string v0, "A Float expression"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 341
    const/4 v0, 0x0

    const-string v1, "id"

    const-string v2, "The id of the Color"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 342
    const/16 v1, 0x9

    const-string v2, "expression_length"

    const-string v3, "expression length"

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 343
    const-string v3, "animation_length"

    const-string v4, "animation description length"

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 344
    const/16 v1, 0xa

    const-string v4, "expression"

    const-string v5, "Sequence of Floats representing and expression"

    invoke-virtual {p0, v1, v4, v2, v5}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 349
    const-string v2, "AnimationSpec"

    const-string v4, "Sequence of Floats representing animation curve"

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 354
    const/4 v2, 0x1

    const-string v3, "duration"

    const-string v4, "> time in sec"

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 355
    const-string v3, "bits"

    const-string v4, "> WRAP|INITALVALUE | TYPE "

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 356
    const-string/jumbo v0, "spec"

    const-string v3, "> [SPEC PARAMETERS] "

    invoke-virtual {p0, v1, v0, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 357
    const-string v0, "initialValue"

    const-string v1, "> [Initial value] "

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 358
    const-string/jumbo v0, "wrapValue"

    const-string v1, "> [Wrap value] "

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 359
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 264
    const/16 v0, 0x51

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 255
    const-string v0, "FloatExpression"

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

    .line 309
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 310
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 311
    const v2, 0xffff

    and-int v3, v1, v2

    .line 312
    const/16 v4, 0x20

    if-gt v3, v4, :cond_3d

    .line 315
    shr-int/lit8 v1, v1, 0x10

    and-int/2addr v1, v2

    .line 316
    new-array v2, v3, [F

    .line 317
    const/4 v4, 0x0

    move v5, v4

    :goto_18
    if-ge v5, v3, :cond_23

    .line 318
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v6

    aput v6, v2, v5

    .line 317
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 322
    :cond_23
    if-eqz v1, :cond_33

    .line 323
    new-array v3, v1, [F

    .line 324
    nop

    :goto_28
    if-ge v4, v1, :cond_34

    .line 325
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v5

    aput v5, v3, v4

    .line 324
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 328
    :cond_33
    const/4 v3, 0x0

    .line 330
    :cond_34
    new-instance p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;

    invoke-direct {p0, v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;-><init>(I[F[F)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    return-void

    .line 313
    :cond_3d
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Float expression too long"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 8

    .line 154
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getAnimationTime()F

    move-result v0

    .line 155
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastChange:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 156
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastChange:F

    .line 158
    :cond_e
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    const-string v2, " len = "

    if-eqz v1, :cond_9c

    .line 159
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastCalculatedValue:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 161
    :try_start_1c
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    .line 163
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getCollectionsAccess()Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    array-length v5, v5

    .line 162
    invoke-virtual {v1, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->eval(Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;[FI)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastCalculatedValue:F

    .line 166
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastCalculatedValue:F

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setTargetValue(F)V

    .line 167
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->getInitialValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 168
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastCalculatedValue:F

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setInitialValue(F)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_4d} :catch_4e

    .line 173
    :cond_4d
    goto :goto_71

    .line 170
    :catch_4e
    move-exception p1

    .line 171
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 175
    :cond_71
    :goto_71
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastChange:F

    sub-float v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->get(F)F

    move-result v1

    .line 177
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastAnimatedValue:F

    cmpl-float v2, v1, v2

    if-nez v2, :cond_8e

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastChange:F

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    .line 178
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->getDuration()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_9b

    .line 179
    :cond_8e
    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastAnimatedValue:F

    .line 180
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mId:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 181
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->needsRepaint()V

    .line 182
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->markDirty()V

    .line 184
    :cond_9b
    goto :goto_e9

    :cond_9c
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSpring:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;

    if-eqz v1, :cond_cd

    .line 185
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSpring:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastChange:F

    sub-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->get(F)F

    move-result v0

    .line 186
    nop

    .line 187
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastAnimatedValue:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_c2

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSpring:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;

    .line 188
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->getTargetValue()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_cc

    .line 189
    :cond_c2
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastAnimatedValue:F

    .line 190
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mId:I

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 191
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->needsRepaint()V

    .line 193
    :cond_cc
    goto :goto_e9

    .line 194
    :cond_cd
    nop

    .line 196
    :try_start_ce
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    .line 198
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getCollectionsAccess()Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    array-length v4, v4

    .line 197
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->eval(Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;[FI)F

    move-result v0
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_e3} :catch_ea

    .line 203
    nop

    .line 204
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mId:I

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 206
    :goto_e9
    return-void

    .line 201
    :catch_ea
    move-exception p1

    .line 202
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist evaluate(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F
    .registers 5

    .line 215
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 216
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getAnimationTime()F

    move-result v0

    .line 217
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastChange:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 218
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastChange:F

    .line 220
    :cond_11
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    .line 221
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getCollectionsAccess()Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    array-length v2, v2

    .line 220
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->eval(Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;[FI)F

    move-result p1

    return p1
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 7

    .line 138
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_24

    aget v3, v0, v2

    .line 139
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 140
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v4

    if-nez v4, :cond_21

    .line 141
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v4

    if-nez v4, :cond_21

    .line 142
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v3

    invoke-virtual {p1, v3, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 138
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 145
    :cond_24
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5

    .line 369
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->EXPRESSION:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    aput-object v2, v0, v1

    .line 370
    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addTags([Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    .line 371
    const-string v0, "FloatExpression"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mId:I

    .line 372
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "id"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    .line 373
    const-string/jumbo v1, "srcValues"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addFloatExpressionSrc(Ljava/lang/String;[F)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    .line 374
    const-string v1, "animation"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 375
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 234
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    .line 235
    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    array-length v2, v2

    if-ge v1, v2, :cond_3b

    .line 236
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

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

    .line 235
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 240
    :cond_3b
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    goto :goto_44

    :cond_42
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    .line 241
    :goto_44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FloatExpression["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 244
    invoke-static {v1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->toString([F[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 8

    .line 79
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    array-length v0, v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    array-length v1, v1

    if-eq v0, v1, :cond_13

    .line 80
    :cond_c
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    .line 83
    :cond_13
    nop

    .line 84
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_17
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    array-length v3, v3

    if-ge v1, v3, :cond_80

    .line 85
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    aget v3, v3, v1

    .line 86
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_75

    .line 87
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v4

    if-nez v4, :cond_75

    .line 88
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v4

    if-nez v4, :cond_75

    .line 89
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v4

    .line 90
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v3

    .line 93
    const/16 v5, 0x1b

    if-ne v4, v5, :cond_49

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-nez v4, :cond_49

    .line 94
    const/high16 v3, 0x3f800000    # 1.0f

    .line 96
    :cond_49
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    const/4 v5, 0x1

    if-eqz v4, :cond_5d

    .line 97
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    aget v4, v4, v1

    cmpl-float v4, v4, v3

    if-eqz v4, :cond_74

    .line 98
    nop

    .line 99
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    aput v3, v2, v1

    move v2, v5

    goto :goto_74

    .line 101
    :cond_5d
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSpring:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;

    if-eqz v4, :cond_70

    .line 102
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    aget v4, v4, v1

    cmpl-float v4, v4, v3

    if-eqz v4, :cond_74

    .line 103
    nop

    .line 104
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    aput v3, v2, v1

    move v2, v5

    goto :goto_74

    .line 107
    :cond_70
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    aput v3, v4, v1

    .line 109
    :cond_74
    :goto_74
    goto :goto_7d

    .line 110
    :cond_75
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    aget v4, v4, v1

    aput v4, v3, v1

    .line 84
    :goto_7d
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 113
    :cond_80
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastCalculatedValue:F

    .line 114
    if-eqz v2, :cond_a2

    .line 115
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    array-length v4, v4

    new-array v5, v0, [F

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->eval([FI[F)F

    move-result v1

    .line 116
    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastCalculatedValue:F

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_a1

    .line 117
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getAnimationTime()F

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastChange:F

    .line 118
    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastCalculatedValue:F

    move v0, v2

    goto :goto_a3

    .line 120
    :cond_a1
    goto :goto_a3

    .line 114
    :cond_a2
    move v0, v2

    .line 124
    :goto_a3
    if-eqz v0, :cond_cc

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    if-eqz p1, :cond_cc

    .line 125
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->getTargetValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_bb

    .line 126
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setInitialValue(F)V

    goto :goto_c6

    .line 128
    :cond_bb
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->getTargetValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setInitialValue(F)V

    .line 130
    :goto_c6
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setTargetValue(F)V

    goto :goto_d7

    .line 131
    :cond_cc
    if-eqz v0, :cond_d7

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSpring:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;

    if-eqz p1, :cond_d7

    .line 132
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSpring:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->setTargetValue(F)V

    .line 134
    :cond_d7
    :goto_d7
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 5

    .line 228
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mId:I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcAnimation:[F

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F[F)V

    .line 229
    return-void
.end method
