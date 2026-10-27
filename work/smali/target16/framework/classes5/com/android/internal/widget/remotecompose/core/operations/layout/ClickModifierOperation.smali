.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "ClickModifierOperation.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/DecoratorComponent;
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickHandler;
.implements Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;


# static fields
.field private static final blacklist OP_CODE:I = 0x3b


# instance fields
.field public blacklist locationInWindow:[F

.field blacklist mAnimateRippleDuration:I

.field blacklist mAnimateRippleStart:J

.field blacklist mAnimateRippleX:F

.field blacklist mAnimateRippleY:F

.field blacklist mHeight:F

.field public blacklist mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

.field blacklist mWidth:F


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 46
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mAnimateRippleStart:J

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mAnimateRippleX:F

    .line 56
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mAnimateRippleY:F

    .line 57
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mAnimateRippleDuration:I

    .line 59
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mWidth:F

    .line 60
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mHeight:F

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->locationInWindow:[F

    .line 64
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mList:Ljava/util/ArrayList;

    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 2

    .line 241
    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 242
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 4

    .line 260
    const/16 v0, 0x3b

    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Layout Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 261
    const-string v0, "Click modifier. This operation contains a list of action executed on click"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 264
    return-void
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 232
    const-string v0, "ClickModifier"

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

    .line 251
    new-instance p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;-><init>()V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    return-void
.end method


# virtual methods
.method public blacklist animateRipple(FFJ)V
    .registers 5

    .line 90
    iput-wide p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mAnimateRippleStart:J

    .line 91
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mAnimateRippleX:F

    .line 92
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mAnimateRippleY:F

    .line 93
    return-void
.end method

.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 5

    .line 122
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getRootLayoutComponent()Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_e

    .line 124
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->setHasTouchListeners(Z)V

    .line 126
    :cond_e
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 127
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/TextData;

    if-eqz v2, :cond_2a

    .line 128
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/Operation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 129
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->incrementOpCount()V

    .line 131
    :cond_2a
    goto :goto_14

    .line 132
    :cond_2b
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_8

    goto :goto_a

    :cond_8
    const-string p1, ""

    :goto_a
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getMode()Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;
    .registers 2

    .line 79
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->MERGE:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    return-object v0
.end method

.method public blacklist getRole()Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;
    .registers 2

    .line 74
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;->BUTTON:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    return-object v0
.end method

.method public blacklist isClickable()Z
    .registers 2

    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .registers 5

    .line 188
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mWidth:F

    .line 189
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mHeight:F

    .line 190
    return-void
.end method

.method public blacklist onClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .registers 10

    .line 209
    invoke-virtual {p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->isVisible()Z

    move-result v0

    if-nez v0, :cond_7

    .line 210
    return-void

    .line 212
    :cond_7
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->locationInWindow:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 213
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->locationInWindow:[F

    const/4 v3, 0x1

    aput v2, v0, v3

    .line 214
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->locationInWindow:[F

    invoke-virtual {p3, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getLocationInWindow([F)V

    .line 215
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->locationInWindow:[F

    aget v0, v0, v1

    sub-float v0, p4, v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->locationInWindow:[F

    aget v1, v1, v3

    sub-float v1, p5, v1

    .line 216
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getClock()Ljava/time/Clock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    .line 215
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->animateRipple(FFJ)V

    .line 217
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 218
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/ActionOperation;

    if-eqz v2, :cond_4a

    .line 219
    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/ActionOperation;

    move-object p0, v1

    invoke-interface/range {p0 .. p5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ActionOperation;->runAction(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    .line 221
    :cond_4a
    goto :goto_34

    .line 222
    :cond_4b
    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->hapticEffect(I)V

    .line 223
    return-void
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 12

    .line 142
    iget-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mAnimateRippleStart:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 143
    return-void

    .line 145
    :cond_9
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->needsRepaint()V

    .line 147
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getClock()Ljava/time/Clock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mAnimateRippleStart:J

    sub-long/2addr v0, v4

    long-to-float v0, v0

    .line 148
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mAnimateRippleDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 149
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v1

    if-lez v4, :cond_24

    .line 150
    iput-wide v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mAnimateRippleStart:J

    .line 152
    :cond_24
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 153
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    .line 154
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->savePaint()V

    .line 155
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->reset()V

    .line 157
    new-instance v3, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    const/high16 v7, 0x7fc00000    # Float.NaN

    const/high16 v8, 0x7fc00000    # Float.NaN

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;-><init>(IF[FFF)V

    .line 159
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setInitialValue(F)V

    .line 160
    invoke-virtual {v3, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setTargetValue(F)V

    .line 161
    invoke-virtual {v3, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->get(F)F

    move-result v3

    .line 163
    new-instance v4, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    const/high16 v9, 0x7fc00000    # Float.NaN

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;-><init>(IF[FFF)V

    .line 165
    invoke-virtual {v4, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setInitialValue(F)V

    .line 166
    invoke-virtual {v4, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setTargetValue(F)V

    .line 167
    invoke-virtual {v4, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->get(F)F

    move-result v0

    .line 169
    const/16 v1, 0xb4

    const/16 v4, 0xfa

    invoke-static {v4, v4, v4, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ColorUtils;->createColor(IIII)I

    move-result v1

    .line 170
    const/4 v4, 0x0

    const/16 v5, 0xc8

    invoke-static {v5, v5, v5, v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ColorUtils;->createColor(IIII)I

    move-result v4

    .line 171
    invoke-static {v1, v4, v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->interpolateColor(IIF)I

    move-result v1

    .line 173
    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mWidth:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mHeight:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float/2addr v3, v0

    .line 174
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColor(I)V

    .line 175
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->applyPaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V

    .line 176
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mWidth:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mHeight:F

    invoke-virtual {p1, v2, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->clipRect(FFFF)V

    .line 177
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mAnimateRippleX:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mAnimateRippleY:F

    invoke-virtual {p1, v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawCircle(FFF)V

    .line 178
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restorePaint()V

    .line 179
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 180
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5

    .line 268
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->MODIFIER:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    aput-object v2, v0, v1

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addTags([Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    const-string v0, "ClickModifierOperation"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 269
    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .registers 6

    .line 194
    const-string v0, "CLICK_MODIFIER"

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 196
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/ActionOperation;

    if-eqz v2, :cond_22

    .line 197
    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/ActionOperation;

    add-int/lit8 v2, p1, 0x1

    invoke-interface {v1, v2, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ActionOperation;->serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V

    .line 199
    :cond_22
    goto :goto_b

    .line 200
    :cond_23
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    const-string v1, "ClickModifier"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 114
    const-string v3, "\n        "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    goto :goto_10

    .line 117
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 2

    .line 105
    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 106
    return-void
.end method
