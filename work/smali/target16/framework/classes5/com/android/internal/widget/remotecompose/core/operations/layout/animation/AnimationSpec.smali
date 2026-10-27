.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "AnimationSpec.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;
    }
.end annotation


# static fields
.field public static final blacklist DEFAULT:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

.field public static final blacklist DISABLED:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;


# instance fields
.field blacklist mAnimationId:I

.field blacklist mEnterAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

.field blacklist mExitAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

.field blacklist mMotionDuration:F

.field blacklist mMotionEasingType:I

.field blacklist mVisibilityDuration:F

.field blacklist mVisibilityEasingType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 37
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;-><init>()V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->DEFAULT:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    .line 38
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;-><init>(I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->DISABLED:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 9

    .line 65
    sget-object v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->FADE_IN:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    sget-object v7, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->FADE_OUT:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    const/4 v1, -0x1

    const/high16 v2, 0x44160000    # 600.0f

    const/4 v3, 0x1

    const/high16 v4, 0x43fa0000    # 500.0f

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;-><init>(IFIFILcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;)V

    .line 73
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 2

    .line 76
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;-><init>()V

    .line 77
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mAnimationId:I

    .line 78
    return-void
.end method

.method public constructor blacklist <init>(IFIFILcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;)V
    .registers 10

    .line 54
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mAnimationId:I

    .line 40
    const/high16 v0, 0x43960000    # 300.0f

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mMotionDuration:F

    .line 41
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mMotionEasingType:I

    .line 42
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mVisibilityDuration:F

    .line 43
    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mVisibilityEasingType:I

    .line 44
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->FADE_IN:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mEnterAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    .line 45
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->FADE_OUT:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mExitAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    .line 55
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mAnimationId:I

    .line 56
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mMotionDuration:F

    .line 57
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mMotionEasingType:I

    .line 58
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mVisibilityDuration:F

    .line 59
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mVisibilityEasingType:I

    .line 60
    iput-object p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mEnterAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    .line 61
    iput-object p7, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mExitAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    .line 62
    return-void
.end method

.method public static blacklist animationToInt(Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;)I
    .registers 1

    .line 212
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->ordinal()I

    move-result p0

    return p0
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFIFIII)V
    .registers 9

    .line 266
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 267
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 268
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 269
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 270
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 271
    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 272
    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 273
    invoke-virtual {p0, p7}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 274
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 4

    .line 308
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->id()I

    move-result v0

    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Layout Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 309
    const-string v0, "define the animation"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 310
    const/4 v0, 0x0

    const-string v1, "animationId"

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 311
    const-string v1, "motionDuration"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 312
    const-string v1, "motionEasingType"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 313
    const-string/jumbo v1, "visibilityDuration"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 314
    const-string/jumbo v1, "visibilityEasingType"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 315
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 202
    const/16 v0, 0xe

    return v0
.end method

.method public static blacklist intToAnimation(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;
    .registers 1

    .line 223
    packed-switch p0, :pswitch_data_1e

    .line 241
    sget-object p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->FADE_IN:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    return-object p0

    .line 239
    :pswitch_6
    sget-object p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->PARTICLE:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    return-object p0

    .line 237
    :pswitch_9
    sget-object p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->ROTATE:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    return-object p0

    .line 235
    :pswitch_c
    sget-object p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->SLIDE_BOTTOM:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    return-object p0

    .line 233
    :pswitch_f
    sget-object p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->SLIDE_TOP:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    return-object p0

    .line 231
    :pswitch_12
    sget-object p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->SLIDE_RIGHT:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    return-object p0

    .line 229
    :pswitch_15
    sget-object p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->SLIDE_LEFT:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    return-object p0

    .line 227
    :pswitch_18
    sget-object p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->FADE_OUT:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    return-object p0

    .line 225
    :pswitch_1b
    sget-object p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->FADE_IN:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    return-object p0

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 193
    const-string v0, "AnimationSpec"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 283
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 284
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v2

    .line 285
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v3

    .line 286
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v4

    .line 287
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v5

    .line 288
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->intToAnimation(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    move-result-object v6

    .line 289
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->intToAnimation(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    move-result-object v7

    .line 290
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;-><init>(IFIFILcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;)V

    .line 299
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 2

    .line 178
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_8

    goto :goto_a

    :cond_8
    const-string p1, ""

    :goto_a
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getAnimationId()I
    .registers 2

    .line 85
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mAnimationId:I

    return v0
.end method

.method public blacklist getEnterAnimation()Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mEnterAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    return-object v0
.end method

.method public blacklist getExitAnimation()Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mExitAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    return-object v0
.end method

.method public blacklist getMotionDuration()F
    .registers 2

    .line 89
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mMotionDuration:F

    return v0
.end method

.method public blacklist getMotionEasingType()I
    .registers 2

    .line 93
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mMotionEasingType:I

    return v0
.end method

.method public blacklist getVisibilityDuration()F
    .registers 2

    .line 97
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mVisibilityDuration:F

    return v0
.end method

.method public blacklist getVisibilityEasingType()I
    .registers 2

    .line 101
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mVisibilityEasingType:I

    return v0
.end method

.method public blacklist isAnimationEnabled()Z
    .registers 2

    .line 81
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mAnimationId:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 4

    .line 141
    nop

    .line 142
    const-string v0, "AnimationSpec"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mAnimationId:I

    .line 143
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "animationId"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    .line 144
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getMotionDuration()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "motionDuration"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    .line 145
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getMotionEasingType()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "motionEasingType"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    .line 146
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getVisibilityDuration()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "visibilityDuration"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    .line 147
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getVisibilityEasingType()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "visibilityEasingType"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    .line 148
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getEnterAnimation()Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    move-result-object v0

    const-string v1, "enterAnimation"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Enum;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    .line 149
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getExitAnimation()Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    move-result-object v0

    const-string v1, "exitAnimation"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Enum;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 150
    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .registers 6

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANIMATION_SPEC = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 125
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getMotionDuration()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 127
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getMotionEasingType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 129
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getVisibilityDuration()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 131
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getVisibilityEasingType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 133
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getEnterAnimation()Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 135
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getExitAnimation()Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    .line 137
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANIMATION_SPEC ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mMotionDuration:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 10

    .line 165
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mAnimationId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mMotionDuration:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mMotionEasingType:I

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mVisibilityDuration:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mVisibilityEasingType:I

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mEnterAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    .line 171
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->ordinal()I

    move-result v6

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mExitAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    .line 172
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->ordinal()I

    move-result v7

    .line 165
    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFIFIII)V

    .line 173
    return-void
.end method
