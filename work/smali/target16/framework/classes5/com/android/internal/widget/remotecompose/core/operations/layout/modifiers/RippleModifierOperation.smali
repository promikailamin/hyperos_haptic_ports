.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;
.super Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DecoratorModifierOperation;
.source "RippleModifierOperation.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;


# static fields
.field private static final blacklist OP_CODE:I = 0xe5


# instance fields
.field public blacklist locationInWindow:[F

.field blacklist mAnimateRippleDuration:I

.field blacklist mAnimateRippleStart:J

.field blacklist mAnimateRippleX:F

.field blacklist mAnimateRippleY:F

.field blacklist mHeight:F

.field blacklist mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

.field blacklist mWidth:F


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 42
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DecoratorModifierOperation;-><init>()V

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mAnimateRippleStart:J

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mAnimateRippleX:F

    .line 47
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mAnimateRippleY:F

    .line 48
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mAnimateRippleDuration:I

    .line 50
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mWidth:F

    .line 51
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mHeight:F

    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->locationInWindow:[F

    .line 55
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 2

    .line 168
    const/16 v0, 0xe5

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 169
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 4

    .line 187
    const/16 v0, 0xe5

    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Layout Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 188
    const-string v0, "Ripple modifier. This modifier will do a ripple animation on touch down"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 190
    return-void
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 159
    const-string v0, "RippleModifier"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 178
    new-instance p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;-><init>()V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    return-void
.end method


# virtual methods
.method public blacklist animateRipple(FFJ)V
    .registers 5

    .line 65
    iput-wide p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mAnimateRippleStart:J

    .line 66
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mAnimateRippleX:F

    .line 67
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mAnimateRippleY:F

    .line 68
    return-void
.end method

.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3

    .line 83
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getRootLayoutComponent()Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    move-result-object p1

    .line 84
    if-eqz p1, :cond_e

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->setHasTouchListeners(Z)V

    .line 87
    :cond_e
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_8

    goto :goto_a

    :cond_8
    const-string p1, ""

    :goto_a
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .registers 5

    .line 143
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mWidth:F

    .line 144
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mHeight:F

    .line 145
    return-void
.end method

.method public blacklist onTouchCancel(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .registers 6

    .line 231
    return-void
.end method

.method public blacklist onTouchDown(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .registers 9

    .line 199
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->locationInWindow:[F

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, p2, v0

    .line 200
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->locationInWindow:[F

    const/4 v2, 0x1

    aput v1, p2, v2

    .line 201
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->locationInWindow:[F

    invoke-virtual {p3, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getLocationInWindow([F)V

    .line 202
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->locationInWindow:[F

    aget p2, p2, v0

    sub-float/2addr p4, p2

    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->locationInWindow:[F

    aget p2, p2, v2

    sub-float/2addr p5, p2

    .line 203
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getClock()Ljava/time/Clock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/time/Clock;->millis()J

    move-result-wide p2

    .line 202
    invoke-virtual {p0, p4, p5, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->animateRipple(FFJ)V

    .line 204
    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->hapticEffect(I)V

    .line 205
    return-void
.end method

.method public blacklist onTouchDrag(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .registers 6

    .line 223
    return-void
.end method

.method public blacklist onTouchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FFFF)V
    .registers 8

    .line 215
    return-void
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 12

    .line 97
    iget-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mAnimateRippleStart:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 98
    return-void

    .line 100
    :cond_9
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->needsRepaint()V

    .line 102
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getClock()Ljava/time/Clock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mAnimateRippleStart:J

    sub-long/2addr v0, v4

    long-to-float v0, v0

    .line 103
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mAnimateRippleDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 104
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v1

    if-lez v4, :cond_24

    .line 105
    iput-wide v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mAnimateRippleStart:J

    .line 107
    :cond_24
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 108
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    .line 109
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->savePaint()V

    .line 110
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->reset()V

    .line 112
    new-instance v3, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    const/high16 v7, 0x7fc00000    # Float.NaN

    const/high16 v8, 0x7fc00000    # Float.NaN

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;-><init>(IF[FFF)V

    .line 114
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setInitialValue(F)V

    .line 115
    invoke-virtual {v3, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setTargetValue(F)V

    .line 116
    invoke-virtual {v3, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->get(F)F

    move-result v3

    .line 118
    new-instance v4, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    const/high16 v9, 0x7fc00000    # Float.NaN

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;-><init>(IF[FFF)V

    .line 120
    invoke-virtual {v4, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setInitialValue(F)V

    .line 121
    invoke-virtual {v4, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setTargetValue(F)V

    .line 122
    invoke-virtual {v4, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->get(F)F

    move-result v0

    .line 124
    const/16 v1, 0xb4

    const/16 v4, 0xfa

    invoke-static {v4, v4, v4, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ColorUtils;->createColor(IIII)I

    move-result v1

    .line 125
    const/4 v4, 0x0

    const/16 v5, 0xc8

    invoke-static {v5, v5, v5, v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ColorUtils;->createColor(IIII)I

    move-result v4

    .line 126
    invoke-static {v1, v4, v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->interpolateColor(IIF)I

    move-result v1

    .line 128
    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mWidth:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mHeight:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float/2addr v3, v0

    .line 129
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColor(I)V

    .line 130
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->replacePaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V

    .line 131
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mWidth:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mHeight:F

    invoke-virtual {p1, v2, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->clipRect(FFFF)V

    .line 132
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mAnimateRippleX:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mAnimateRippleY:F

    invoke-virtual {p1, v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawCircle(FFF)V

    .line 133
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restorePaint()V

    .line 134
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 135
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5

    .line 235
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->MODIFIER:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    aput-object v2, v0, v1

    .line 236
    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addTags([Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    .line 237
    const-string v0, "RippleModifierOperation"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mAnimateRippleStart:J

    .line 238
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "animateRippleStart"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Long;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mAnimateRippleX:F

    .line 239
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "animateRippleX"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mAnimateRippleY:F

    .line 240
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "animateRippleY"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mAnimateRippleDuration:I

    .line 241
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "animateRippleDuration"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mWidth:F

    .line 242
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "width"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->mHeight:F

    .line 243
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "height"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 244
    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .registers 4

    .line 149
    const-string v0, "RIPPLE_MODIFIER"

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    .line 150
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 78
    const-string v0, "RippleModifier"

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 2

    .line 72
    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 73
    return-void
.end method
