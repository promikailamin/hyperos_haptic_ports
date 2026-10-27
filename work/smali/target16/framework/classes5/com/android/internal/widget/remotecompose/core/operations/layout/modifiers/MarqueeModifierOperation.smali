.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;
.super Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DecoratorModifierOperation;
.source "MarqueeModifierOperation.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;


# static fields
.field public static final blacklist CLASS_NAME:Ljava/lang/String; = "MarqueeModifierOperation"

.field private static final blacklist OP_CODE:I = 0xe4


# instance fields
.field blacklist mAnimationMode:I

.field private blacklist mComponentHeight:F

.field private blacklist mComponentWidth:F

.field private blacklist mContentHeight:F

.field private blacklist mContentWidth:F

.field blacklist mInitialDelayMillis:F

.field blacklist mIterations:I

.field private blacklist mLastTime:J

.field blacklist mRepeatDelayMillis:F

.field private blacklist mScrollX:F

.field blacklist mSpacing:F

.field private blacklist mStartTime:J

.field blacklist mVelocity:F


# direct methods
.method public constructor blacklist <init>(IIFFFF)V
    .registers 9

    .line 60
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DecoratorModifierOperation;-><init>()V

    .line 144
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mLastTime:J

    .line 145
    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mStartTime:J

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mScrollX:F

    .line 61
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mIterations:I

    .line 62
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mAnimationMode:I

    .line 63
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mRepeatDelayMillis:F

    .line 64
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mInitialDelayMillis:F

    .line 65
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mSpacing:F

    .line 66
    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mVelocity:F

    .line 67
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFFFF)V
    .registers 8

    .line 213
    const/16 v0, 0xe4

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 214
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 215
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 216
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 217
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 218
    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 219
    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 220
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 4

    .line 251
    const/16 v0, 0xe4

    const-string v1, "MarqueeModifierOperation"

    const-string v2, "Modifier Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 252
    const-string/jumbo v0, "specify a Marquee Modifier"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 253
    const/4 v0, 0x1

    const-string/jumbo v1, "value"

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 254
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 191
    const/16 v0, 0xe4

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 182
    const-string v0, "MarqueeModifierOperation"

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

    .line 229
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 230
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 231
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v3

    .line 232
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v4

    .line 233
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v5

    .line 234
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v6

    .line 235
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;-><init>(IIFFFF)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    return-void
.end method


# virtual methods
.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getScrollX(F)F
    .registers 2

    .line 79
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mScrollX:F

    return p1
.end method

.method public blacklist getScrollY(F)F
    .registers 2

    .line 84
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist handlesHorizontalScroll()Z
    .registers 2

    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist handlesVerticalScroll()Z
    .registers 2

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .registers 5

    .line 262
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mComponentWidth:F

    .line 263
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mComponentHeight:F

    .line 264
    instance-of p3, p2, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-eqz p3, :cond_18

    .line 265
    check-cast p2, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    .line 266
    invoke-virtual {p2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->minIntrinsicWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->setContentWidth(F)V

    .line 267
    invoke-virtual {p2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->minIntrinsicHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->setContentHeight(F)V

    .line 269
    :cond_18
    return-void
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 10

    .line 151
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getClock()Ljava/time/Clock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 152
    iget-wide v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mLastTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1d

    .line 153
    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mLastTime:J

    .line 154
    iget-wide v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mLastTime:J

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mInitialDelayMillis:F

    float-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mStartTime:J

    .line 155
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->needsRepaint()V

    .line 157
    :cond_1d
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mContentWidth:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mComponentWidth:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6b

    iget-wide v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mStartTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mInitialDelayMillis:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6b

    .line 158
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getDensity()F

    move-result v2

    .line 159
    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mContentWidth:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mComponentWidth:F

    sub-float/2addr v3, v4

    .line 160
    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mVelocity:F

    mul-float/2addr v2, v4

    div-float v2, v3, v2

    .line 161
    iget-wide v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mStartTime:J

    sub-long/2addr v0, v4

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 162
    rem-float/2addr v0, v2

    div-float/2addr v0, v2

    .line 163
    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    float-to-double v4, v0

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v4, v6

    .line 164
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v0, v4

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v0, v2

    div-float/2addr v0, v1

    neg-float v1, v3

    mul-float/2addr v0, v1

    .line 166
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mScrollX:F

    .line 167
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->needsRepaint()V

    .line 169
    :cond_6b
    return-void
.end method

.method public blacklist reset()V
    .registers 3

    .line 100
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mLastTime:J

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mScrollX:F

    .line 102
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5

    .line 273
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->MODIFIER:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    aput-object v2, v0, v1

    .line 274
    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addTags([Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    .line 275
    const-string v0, "MarqueeModifierOperation"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mIterations:I

    .line 276
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "iterations"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mAnimationMode:I

    .line 277
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "animationMode"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mRepeatDelayMillis:F

    .line 278
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "repeatDelayMillis"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mInitialDelayMillis:F

    .line 279
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "initialDelayMillis"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mSpacing:F

    .line 280
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "spacing"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mVelocity:F

    .line 281
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "velocity"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 282
    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .registers 6

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MARQUEE = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mIterations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mComponentWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mComponentHeight:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mContentWidth:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mContentHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    .line 136
    return-void
.end method

.method public blacklist setContentHeight(F)V
    .registers 2

    .line 74
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mContentHeight:F

    .line 75
    return-void
.end method

.method public blacklist setContentWidth(F)V
    .registers 2

    .line 70
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mContentWidth:F

    .line 71
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MarqueeModifierOperation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mIterations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 9

    .line 106
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mIterations:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mAnimationMode:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mRepeatDelayMillis:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mInitialDelayMillis:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mSpacing:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->mVelocity:F

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFFFF)V

    .line 114
    return-void
.end method
