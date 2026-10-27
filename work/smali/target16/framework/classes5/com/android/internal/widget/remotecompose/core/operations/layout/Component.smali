.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "Component.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Measurable;
.implements Lcom/android/internal/widget/remotecompose/core/SerializableToString;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false


# instance fields
.field public blacklist locationInWindow:[F

.field public blacklist mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

.field protected blacklist mAnimationId:I

.field public blacklist mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

.field protected blacklist mComponentId:I

.field protected blacklist mComponentValues:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist mFirstLayout:Z

.field protected blacklist mHeight:F

.field public blacklist mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mNeedsBoundsAnimation:Z

.field public blacklist mNeedsMeasure:Z

.field public blacklist mNeedsRepaint:Z

.field blacklist mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

.field protected blacklist mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

.field public blacklist mPreTranslate:Lcom/android/internal/widget/remotecompose/core/PaintOperation;

.field public blacklist mScheduledVisibility:I

.field public blacklist mVisibility:I

.field protected blacklist mWidth:F

.field protected blacklist mX:F

.field protected blacklist mY:F

.field protected blacklist mZIndex:F


# direct methods
.method public constructor blacklist <init>(IFFFFLcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V
    .registers 15

    .line 245
    const/4 v3, -0x1

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v1, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFF)V

    .line 246
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V
    .registers 10

    .line 249
    iget-object v1, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    iget v2, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    iget v3, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationId:I

    iget v4, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    iget v5, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    iget v6, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    iget v7, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFF)V

    .line 257
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 258
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->finalizeCreation()V

    .line 259
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFF)V
    .registers 11

    .line 228
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    .line 60
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationId:I

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    .line 62
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mScheduledVisibility:I

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    .line 66
    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mNeedsMeasure:Z

    .line 67
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mNeedsRepaint:Z

    .line 69
    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->DEFAULT:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    .line 70
    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mFirstLayout:Z

    .line 71
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentValues:Ljava/util/HashSet;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mZIndex:F

    .line 76
    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mNeedsBoundsAnimation:Z

    .line 647
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->locationInWindow:[F

    .line 229
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    .line 230
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    .line 231
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    .line 232
    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    .line 233
    iput p7, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    .line 234
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 235
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationId:I

    .line 236
    return-void
.end method

.method private blacklist updateComponentValues(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 6

    .line 179
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentValues:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;

    .line 180
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getMode()Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    move-result-object v2

    sget-object v3, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;->DATA:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    if-ne v2, v3, :cond_24

    .line 181
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->getValueId()I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    goto :goto_40

    .line 183
    :cond_24
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_42

    goto :goto_40

    .line 197
    :pswitch_2c
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->getValueId()I

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    goto :goto_40

    .line 185
    :pswitch_36
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->getValueId()I

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 195
    nop

    .line 210
    :goto_40
    goto :goto_6

    .line 211
    :cond_41
    return-void

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_36
        :pswitch_2c
    .end packed-switch
.end method


# virtual methods
.method public blacklist addComponentValue(Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;)V
    .registers 3

    .line 305
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentValues:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 306
    return-void
.end method

.method public blacklist animatingBounds(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 5

    .line 633
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    if-eqz v0, :cond_d

    .line 634
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 635
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->updateComponentValues(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    goto :goto_10

    .line 637
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->clearNeedsBoundsAnimation()V

    .line 639
    :goto_10
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 640
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Measurable;

    if-eqz v2, :cond_2b

    .line 641
    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Measurable;

    .line 642
    invoke-interface {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Measurable;->animatingBounds(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 644
    :cond_2b
    goto :goto_16

    .line 645
    :cond_2c
    return-void
.end method

.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 5

    .line 157
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 158
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v2, :cond_24

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/Operation;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 159
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/Operation;->markNotDirty()V

    .line 160
    check-cast v1, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 162
    :cond_24
    goto :goto_6

    .line 163
    :cond_25
    invoke-super {p0, p1}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 164
    return-void
.end method

.method public blacklist applyAnimationAsNeeded(Lcom/android/internal/widget/remotecompose/core/PaintContext;)Z
    .registers 3

    .line 1119
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->isAnimationEnabled()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    if-eqz v0, :cond_26

    .line 1120
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 1121
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->isDone()Z

    move-result p1

    if-eqz p1, :cond_21

    .line 1122
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    .line 1123
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->clearNeedsBoundsAnimation()V

    .line 1124
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->needsRepaint()V

    goto :goto_24

    .line 1126
    :cond_21
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->markNeedsBoundsAnimation()V

    .line 1128
    :goto_24
    const/4 p1, 0x1

    return p1

    .line 1130
    :cond_26
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist clearNeedsBoundsAnimation()V
    .registers 2

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mNeedsBoundsAnimation:Z

    .line 89
    return-void
.end method

.method public blacklist contains(FF)Z
    .registers 9

    .line 657
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->locationInWindow:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 658
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->locationInWindow:[F

    const/4 v3, 0x1

    aput v2, v0, v3

    .line 659
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->locationInWindow:[F

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getLocationInWindow([F)V

    .line 660
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->locationInWindow:[F

    aget v0, v0, v1

    .line 661
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    add-float/2addr v2, v0

    .line 662
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->locationInWindow:[F

    aget v4, v4, v3

    .line 663
    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    add-float/2addr v5, v4

    .line 664
    cmpl-float v0, p1, v0

    if-ltz v0, :cond_2f

    cmpg-float p1, p1, v2

    if-gez p1, :cond_2f

    cmpl-float p1, p2, v4

    if-ltz p1, :cond_2f

    cmpg-float p1, p2, v5

    if-gez p1, :cond_2f

    move v1, v3

    :cond_2f
    return v1
.end method

.method public blacklist content()Ljava/lang/String;
    .registers 5

    .line 993
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 994
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 995
    const-string v3, "- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 997
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    goto :goto_b

    .line 999
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist debugBox(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 7

    .line 1027
    iget v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    .line 1028
    iget p1, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    .line 1030
    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->savePaint()V

    .line 1031
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->reset()V

    .line 1032
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    const/4 v2, 0x0

    const/16 v3, 0xff

    invoke-virtual {v1, v2, v2, v3, v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColor(IIII)V

    .line 1033
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {p2, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->applyPaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V

    .line 1034
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawLine(FFFF)V

    .line 1035
    invoke-virtual {p2, v0, v1, v0, p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawLine(FFFF)V

    .line 1036
    invoke-virtual {p2, v0, p1, v1, p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawLine(FFFF)V

    .line 1037
    invoke-virtual {p2, v1, p1, v1, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawLine(FFFF)V

    .line 1041
    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restorePaint()V

    .line 1042
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 952
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 956
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 957
    invoke-virtual {v3, p1}, Lcom/android/internal/widget/remotecompose/core/Operation;->deepToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    goto :goto_2d

    .line 960
    :cond_44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist doesNeedsRepaint()Z
    .registers 2

    .line 1222
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mNeedsRepaint:Z

    return v0
.end method

.method public blacklist finalizeCreation()V
    .registers 4

    .line 263
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 264
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v2, :cond_1b

    .line 265
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    iput-object p0, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 267
    :cond_1b
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    if-eqz v2, :cond_2b

    .line 268
    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    .line 269
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getAnimationId()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationId:I

    .line 271
    :cond_2b
    goto :goto_6

    .line 272
    :cond_2c
    return-void
.end method

.method public blacklist getAnimationId()I
    .registers 2

    .line 131
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationId:I

    return v0
.end method

.method protected blacklist getAnimationSpec()Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;
    .registers 2

    .line 363
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    return-object v0
.end method

.method public blacklist getComponent(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .registers 5

    .line 1233
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    if-eq v0, p1, :cond_2b

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationId:I

    if-ne v0, p1, :cond_9

    goto :goto_2b

    .line 1236
    :cond_9
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1237
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v2, :cond_28

    .line 1238
    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponent(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object v1

    .line 1239
    if-eqz v1, :cond_28

    .line 1240
    return-object v1

    .line 1243
    :cond_28
    goto :goto_f

    .line 1244
    :cond_29
    const/4 p1, 0x0

    return-object p1

    .line 1234
    :cond_2b
    :goto_2b
    return-object p0
.end method

.method public blacklist getComponentCount()I
    .registers 5

    .line 1194
    nop

    .line 1195
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1196
    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v3, :cond_21

    .line 1197
    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    .line 1199
    :cond_21
    goto :goto_8

    .line 1200
    :cond_22
    return v1
.end method

.method public blacklist getComponentId()I
    .registers 2

    .line 127
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    return v0
.end method

.method public blacklist getComponents(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            ">;)V"
        }
    .end annotation

    .line 1168
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1169
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v2, :cond_1b

    .line 1170
    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1172
    :cond_1b
    goto :goto_6

    .line 1173
    :cond_1c
    return-void
.end method

.method public blacklist getData(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 1181
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1182
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/TextData;

    if-nez v2, :cond_1a

    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;

    if-eqz v2, :cond_1d

    .line 1183
    :cond_1a
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1185
    :cond_1d
    goto :goto_6

    .line 1186
    :cond_1e
    return-void
.end method

.method public blacklist getHeight()F
    .registers 2

    .line 123
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    return v0
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

    .line 107
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getLocationInWindow([F)V
    .registers 3

    .line 874
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getLocationInWindow([FZ)V

    .line 875
    return-void
.end method

.method public blacklist getLocationInWindow([FZ)V
    .registers 6

    .line 860
    const/4 p2, 0x0

    aget v0, p1, p2

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    add-float/2addr v0, v1

    aput v0, p1, p2

    .line 861
    const/4 v0, 0x1

    aget v1, p1, v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 862
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v0, :cond_19

    .line 863
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getLocationInWindow([FZ)V

    .line 865
    :cond_19
    return-void
.end method

.method public blacklist getPaintId()I
    .registers 3

    .line 1210
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 1211
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationId:I

    return v0

    .line 1213
    :cond_8
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    return v0
.end method

.method public blacklist getParent()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .registers 2

    .line 136
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    return-object v0
.end method

.method public blacklist getRoot()Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 935
    instance-of v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-eqz v0, :cond_8

    .line 936
    move-object v0, p0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    return-object v0

    .line 938
    :cond_8
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 939
    :goto_a
    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-nez v1, :cond_1b

    .line 940
    if-eqz v0, :cond_13

    .line 943
    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    goto :goto_a

    .line 941
    :cond_13
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No RootLayoutComponent found"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 945
    :cond_1b
    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    return-object v0
.end method

.method public blacklist getScrollX()F
    .registers 2

    .line 673
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getScrollY()F
    .registers 2

    .line 682
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist getSerializedName()Ljava/lang/String;
    .registers 2

    .line 901
    const-string v0, "COMPONENT"

    return-object v0
.end method

.method public blacklist getTranslateX()F
    .registers 3

    .line 1061
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v0, :cond_c

    .line 1062
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    iget v1, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    sub-float/2addr v0, v1

    return v0

    .line 1064
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTranslateY()F
    .registers 3

    .line 1073
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v0, :cond_c

    .line 1074
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    iget v1, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    sub-float/2addr v0, v1

    return v0

    .line 1076
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getWidth()F
    .registers 2

    .line 119
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    return v0
.end method

.method public blacklist getX()F
    .registers 2

    .line 111
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    return v0
.end method

.method public blacklist getY()F
    .registers 2

    .line 115
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    return v0
.end method

.method public blacklist getZIndex()F
    .registers 2

    .line 101
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mZIndex:F

    return v0
.end method

.method public blacklist inflate()V
    .registers 4

    .line 353
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 354
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/TouchListener;

    if-eqz v2, :cond_1b

    .line 356
    check-cast v1, Lcom/android/internal/widget/remotecompose/core/TouchListener;

    .line 357
    invoke-interface {v1, p0}, Lcom/android/internal/widget/remotecompose/core/TouchListener;->setComponent(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V

    .line 359
    :cond_1b
    goto :goto_6

    .line 360
    :cond_1c
    return-void
.end method

.method public blacklist invalidateMeasure()V
    .registers 3

    .line 968
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->needsRepaint()V

    .line 969
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mNeedsMeasure:Z

    .line 970
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 971
    :goto_8
    if-eqz v1, :cond_f

    .line 972
    iput-boolean v0, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mNeedsMeasure:Z

    .line 973
    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    goto :goto_8

    .line 975
    :cond_f
    return-void
.end method

.method public blacklist isGone()Z
    .registers 2

    .line 514
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->isGone(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isInvisible()Z
    .registers 2

    .line 523
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->isInvisible(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isVisible()Z
    .registers 2

    .line 502
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->isVisible(I)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_14

    .line 505
    :cond_d
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->isVisible()Z

    move-result v0

    return v0

    .line 503
    :cond_14
    :goto_14
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->isVisible(I)Z

    move-result v0

    return v0
.end method

.method public blacklist layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .registers 16

    .line 576
    invoke-virtual {p2, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object p2

    .line 577
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mFirstLayout:Z

    if-nez v0, :cond_90

    .line 578
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->isAnimationEnabled()Z

    move-result v0

    if-eqz v0, :cond_8e

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    .line 579
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->isAnimationEnabled()Z

    move-result v0

    if-eqz v0, :cond_8c

    instance-of v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;

    if-nez v0, :cond_8c

    .line 581
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    if-nez v0, :cond_83

    .line 582
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;-><init>(IFFFFI)V

    .line 584
    new-instance v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    .line 587
    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getX()F

    move-result v4

    .line 588
    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getY()F

    move-result v5

    .line 589
    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v6

    .line 590
    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v7

    .line 591
    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getVisibility()I

    move-result v8

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;-><init>(IFFFFI)V

    .line 592
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->same(Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;)Z

    move-result v0

    if-nez v0, :cond_81

    .line 593
    move-object v5, v1

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    move-object v6, v2

    iget-wide v2, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->currentTime:J

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    .line 599
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getMotionDuration()F

    move-result v7

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    .line 600
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getVisibilityDuration()F

    move-result v8

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    .line 601
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getEnterAnimation()Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    move-result-object v9

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    .line 602
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getExitAnimation()Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    move-result-object v10

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    .line 603
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getMotionEasingType()I

    move-result v11

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    .line 604
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getVisibilityEasingType()I

    move-result v12

    move-object v4, p0

    invoke-direct/range {v1 .. v12}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;-><init>(JLcom/android/internal/widget/remotecompose/core/operations/layout/Component;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;FFLcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;II)V

    iput-object v1, v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    goto :goto_82

    .line 592
    :cond_81
    move-object v4, p0

    .line 606
    :goto_82
    goto :goto_97

    .line 607
    :cond_83
    move-object v4, p0

    iget-object v0, v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    iget-wide v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->currentTime:J

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->updateTarget(Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;J)V

    goto :goto_97

    .line 579
    :cond_8c
    move-object v4, p0

    goto :goto_91

    .line 578
    :cond_8e
    move-object v4, p0

    goto :goto_91

    .line 577
    :cond_90
    move-object v4, p0

    .line 610
    :goto_91
    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getVisibility()I

    move-result v0

    iput v0, v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    .line 612
    :goto_97
    iget-object v0, v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    if-nez v0, :cond_bb

    .line 613
    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->setWidth(F)V

    .line 614
    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->setHeight(F)V

    .line 615
    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getX()F

    move-result v0

    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getY()F

    move-result p2

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->setLayoutPosition(FF)V

    .line 616
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->updateComponentValues(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 617
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->clearNeedsBoundsAnimation()V

    goto :goto_c6

    .line 619
    :cond_bb
    iget-object p2, v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    invoke-virtual {p2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 620
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->updateComponentValues(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 621
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->markNeedsBoundsAnimation()V

    .line 623
    :goto_c6
    const/4 p1, 0x0

    iput-boolean p1, v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mFirstLayout:Z

    .line 624
    return-void
.end method

.method public blacklist markNeedsBoundsAnimation()V
    .registers 2

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mNeedsBoundsAnimation:Z

    .line 81
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    iget-boolean v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mNeedsBoundsAnimation:Z

    if-nez v0, :cond_12

    .line 82
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->markNeedsBoundsAnimation()V

    .line 84
    :cond_12
    return-void
.end method

.method public blacklist maxIntrinsicHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F
    .registers 2

    .line 345
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result p1

    return p1
.end method

.method public blacklist maxIntrinsicWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F
    .registers 2

    .line 325
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result p1

    return p1
.end method

.method public blacklist measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .registers 7

    .line 569
    invoke-virtual {p6, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object p1

    .line 570
    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setW(F)V

    .line 571
    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setH(F)V

    .line 572
    return-void
.end method

.method public blacklist minIntrinsicHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F
    .registers 2

    .line 335
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result p1

    return p1
.end method

.method public blacklist minIntrinsicWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F
    .registers 2

    .line 315
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result p1

    return p1
.end method

.method public blacklist needsBoundsAnimation()Z
    .registers 2

    .line 97
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mNeedsBoundsAnimation:Z

    return v0
.end method

.method public blacklist needsMeasure()Z
    .registers 2

    .line 276
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mNeedsMeasure:Z

    return v0
.end method

.method public blacklist needsRepaint()V
    .registers 3

    .line 980
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getRoot()Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mNeedsRepaint:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 983
    goto :goto_9

    .line 981
    :catch_8
    move-exception v0

    .line 984
    :goto_9
    return-void
.end method

.method public blacklist onClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FF)V
    .registers 13

    .line 695
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v1, p3, v0

    if-nez v1, :cond_c

    cmpl-float v1, p4, v0

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    .line 696
    :goto_d
    if-nez v1, :cond_16

    invoke-virtual {p0, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_16

    .line 697
    return-void

    .line 699
    :cond_16
    if-eqz v1, :cond_1a

    move v6, v0

    goto :goto_20

    :cond_1a
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getScrollX()F

    move-result v2

    sub-float/2addr p3, v2

    move v6, p3

    .line 700
    :goto_20
    if-eqz v1, :cond_23

    goto :goto_29

    :cond_23
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getScrollY()F

    move-result p3

    sub-float v0, p4, p3

    :goto_29
    move v7, v0

    .line 701
    iget-object p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_30
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_59

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 702
    instance-of v0, p4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v0, :cond_46

    .line 703
    move-object v0, p4

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v0, p1, p2, v6, v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->onClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FF)V

    .line 705
    :cond_46
    instance-of v0, p4, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickHandler;

    if-eqz v0, :cond_54

    .line 706
    move-object v2, p4

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickHandler;

    move-object v5, p0

    move-object v3, p1

    move-object v4, p2

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickHandler;->onClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    goto :goto_56

    .line 705
    :cond_54
    move-object v3, p1

    move-object v4, p2

    .line 708
    :goto_56
    move-object p1, v3

    move-object p2, v4

    goto :goto_30

    .line 709
    :cond_59
    return-void
.end method

.method public blacklist onTouchCancel(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FFZ)V
    .registers 13

    .line 796
    if-nez p5, :cond_9

    invoke-virtual {p0, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_9

    .line 797
    return-void

    .line 799
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getScrollX()F

    move-result v0

    sub-float v3, p3, v0

    .line 800
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getScrollY()F

    move-result p3

    sub-float v4, p4, p3

    .line 801
    iget-object p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1b
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_69

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 802
    instance-of v0, p4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v0, :cond_38

    .line 803
    move-object v1, p4

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-object v2, p1

    move v6, p5

    move v5, v4

    move v4, v3

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->onTouchCancel(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FFZ)V

    move p1, v6

    goto :goto_3d

    .line 802
    :cond_38
    move-object v2, p1

    move p1, p5

    move v5, v4

    move v4, v3

    move-object v3, p2

    .line 805
    :goto_3d
    instance-of p2, p4, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    if-eqz p2, :cond_4e

    .line 806
    move-object v1, p4

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    move v6, v5

    move v5, v4

    move-object v4, p0

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;->onTouchCancel(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    move-object p2, v3

    move v4, v5

    move v5, v6

    goto :goto_4f

    .line 805
    :cond_4e
    move-object p2, v3

    .line 808
    :goto_4f
    instance-of p5, p4, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    if-eqz p5, :cond_64

    .line 809
    move-object v1, p4

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    .line 810
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 811
    move v6, v5

    const/4 v5, 0x0

    move p4, v6

    const/4 v6, 0x0

    move v3, v4

    move v4, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->touchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FFFF)V

    move v5, v4

    move v4, v3

    .line 813
    :cond_64
    move p5, p1

    move-object p1, v2

    move v3, v4

    move v4, v5

    goto :goto_1b

    .line 814
    :cond_69
    return-void
.end method

.method public blacklist onTouchDown(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FF)V
    .registers 12

    .line 721
    invoke-virtual {p0, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_7

    .line 722
    return-void

    .line 724
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getScrollX()F

    move-result v0

    sub-float v5, p3, v0

    .line 725
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getScrollY()F

    move-result p3

    sub-float v6, p4, p3

    .line 726
    iget-object p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_19
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_52

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 727
    instance-of v0, p4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v0, :cond_2f

    .line 728
    move-object v0, p4

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v0, p1, p2, v5, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->onTouchDown(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FF)V

    .line 730
    :cond_2f
    instance-of v0, p4, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    if-eqz v0, :cond_3d

    .line 731
    move-object v1, p4

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    move-object v4, p0

    move-object v2, p1

    move-object v3, p2

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;->onTouchDown(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    goto :goto_40

    .line 730
    :cond_3d
    move-object v4, p0

    move-object v2, p1

    move-object v3, p2

    .line 733
    :goto_40
    instance-of p1, p4, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    if-eqz p1, :cond_4f

    .line 734
    check-cast p4, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    .line 735
    invoke-virtual {p4, v2}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 736
    invoke-virtual {p4, v2, v5, v6}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->touchDown(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)V

    .line 737
    invoke-virtual {v3, p0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->appliedTouchOperation(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V

    .line 739
    :cond_4f
    move-object p1, v2

    move-object p2, v3

    goto :goto_19

    .line 740
    :cond_52
    return-void
.end method

.method public blacklist onTouchDrag(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FFZ)V
    .registers 14

    .line 831
    if-nez p5, :cond_9

    invoke-virtual {p0, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_9

    .line 832
    return-void

    .line 834
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getScrollX()F

    move-result v0

    sub-float v4, p3, v0

    .line 835
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getScrollY()F

    move-result v0

    sub-float v5, p4, v0

    .line 836
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 837
    instance-of v1, v7, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v1, :cond_37

    .line 838
    move-object v1, v7

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-object v2, p1

    move-object v3, p2

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->onTouchDrag(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FFZ)V

    move p1, v6

    goto :goto_3a

    .line 837
    :cond_37
    move-object v2, p1

    move-object v3, p2

    move p1, p5

    .line 840
    :goto_3a
    instance-of p2, v7, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    if-eqz p2, :cond_49

    .line 841
    move-object v1, v7

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    move v6, v5

    move v5, v4

    move-object v4, p0

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;->onTouchDrag(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    move v4, v5

    move v5, v6

    .line 843
    :cond_49
    instance-of p2, v7, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    if-eqz p2, :cond_55

    .line 844
    check-cast v7, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    .line 845
    invoke-virtual {v7, v2}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 846
    invoke-virtual {v7, v2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->touchDrag(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)V

    .line 848
    :cond_55
    move p5, p1

    move-object p1, v2

    move-object p2, v3

    goto :goto_1b

    .line 849
    :cond_59
    return-void
.end method

.method public blacklist onTouchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FFFFZ)V
    .registers 19

    .line 761
    if-nez p7, :cond_9

    invoke-virtual {p0, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_9

    .line 762
    return-void

    .line 764
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getScrollX()F

    move-result v2

    sub-float v5, p3, v2

    .line 765
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getScrollY()F

    move-result v0

    sub-float v8, p4, v0

    .line 766
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 767
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v2, :cond_3d

    .line 768
    move-object v3, v1

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-object v4, p1

    move/from16 v9, p6

    move/from16 v10, p7

    move v6, v5

    move v7, v8

    move-object v5, p2

    move/from16 v8, p5

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->onTouchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FFFFZ)V

    move v5, v6

    move v8, v7

    .line 770
    :cond_3d
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    if-eqz v2, :cond_50

    .line 771
    move-object v3, v1

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    move-object v6, p0

    move-object v4, p1

    move/from16 v9, p5

    move/from16 v10, p6

    move v7, v5

    move-object v5, p2

    invoke-interface/range {v3 .. v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;->onTouchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FFFF)V

    move v5, v7

    .line 773
    :cond_50
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    if-eqz v2, :cond_64

    .line 774
    move-object v3, v1

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    .line 775
    invoke-virtual {v3, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 776
    move-object v4, p1

    move/from16 v7, p5

    move v6, v8

    move/from16 v8, p6

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->touchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FFFF)V

    move v8, v6

    .line 778
    :cond_64
    goto :goto_1b

    .line 779
    :cond_65
    return-void
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 8

    .line 1135
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->isVisualDebug()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 1136
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    .line 1137
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 1138
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->savePaint()V

    .line 1139
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->reset()V

    .line 1140
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-virtual {v0, v1, v2, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColor(IIII)V

    .line 1141
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->applyPaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V

    .line 1142
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v0, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawLine(FFFF)V

    .line 1143
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    invoke-virtual {p1, v0, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawLine(FFFF)V

    .line 1144
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    invoke-virtual {p1, v0, v4, v3, v5}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawLine(FFFF)V

    .line 1145
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    invoke-virtual {p1, v3, v0, v3, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawLine(FFFF)V

    .line 1146
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, v2, v1, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColor(IIII)V

    .line 1147
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->applyPaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V

    .line 1148
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    invoke-virtual {p1, v3, v3, v0, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawLine(FFFF)V

    .line 1149
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    invoke-virtual {p1, v3, v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawLine(FFFF)V

    .line 1150
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restorePaint()V

    .line 1151
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 1153
    :cond_60
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->applyAnimationAsNeeded(Lcom/android/internal/widget/remotecompose/core/PaintContext;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 1154
    return-void

    .line 1156
    :cond_67
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->isGone()Z

    move-result v0

    if-nez v0, :cond_78

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->isInvisible()Z

    move-result v0

    if-eqz v0, :cond_74

    goto :goto_78

    .line 1159
    :cond_74
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->paintingComponent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 1160
    return-void

    .line 1157
    :cond_78
    :goto_78
    return-void
.end method

.method public blacklist paintingComponent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 7

    .line 1085
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mPreTranslate:Lcom/android/internal/widget/remotecompose/core/PaintOperation;

    if-eqz v0, :cond_9

    .line 1086
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mPreTranslate:Lcom/android/internal/widget/remotecompose/core/PaintOperation;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 1088
    :cond_9
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mLastComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 1089
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v1

    iput-object p0, v1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mLastComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 1090
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    .line 1091
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 1092
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->isVisualDebug()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1093
    invoke-virtual {p0, p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->debugBox(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 1095
    :cond_28
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_71

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1096
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/Operation;->isDirty()Z

    move-result v3

    if-eqz v3, :cond_51

    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v3, :cond_51

    .line 1097
    move-object v3, v2

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 1098
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/Operation;->markNotDirty()V

    .line 1100
    :cond_51
    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/PaintOperation;

    if-eqz v3, :cond_62

    .line 1101
    check-cast v2, Lcom/android/internal/widget/remotecompose/core/PaintOperation;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 1102
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->incrementOpCount()V

    goto :goto_70

    .line 1104
    :cond_62
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/Operation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 1105
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->incrementOpCount()V

    .line 1107
    :goto_70
    goto :goto_2e

    .line 1108
    :cond_71
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 1109
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object p1

    iput-object v0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mLastComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 1110
    return-void
.end method

.method public blacklist registerVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 2

    .line 377
    return-void
.end method

.method public blacklist selfOrModifier(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1268
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1269
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1272
    :cond_b
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1273
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1274
    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1276
    :cond_28
    goto :goto_11

    .line 1278
    :cond_29
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5

    .line 1249
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->COMPONENT:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    aput-object v2, v0, v1

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addTags([Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 1250
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getSerializedName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 1251
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "id"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 1252
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 1253
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "y"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 1254
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "width"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 1255
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "height"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 1256
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "visibility"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 1257
    const-string v0, "list"

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-interface {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/util/List;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 1258
    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .registers 6

    .line 906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 907
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getSerializedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    .line 922
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 924
    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    .line 925
    return-void
.end method

.method public blacklist setAnimationId(I)V
    .registers 2

    .line 218
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationId:I

    .line 219
    return-void
.end method

.method protected blacklist setAnimationSpec(Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;)V
    .registers 2

    .line 367
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    .line 368
    return-void
.end method

.method public blacklist setComponentId(I)V
    .registers 2

    .line 214
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    .line 215
    return-void
.end method

.method public blacklist setHeight(F)V
    .registers 2

    .line 152
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    .line 153
    return-void
.end method

.method public blacklist setLayoutPosition(FF)V
    .registers 3

    .line 1051
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    .line 1052
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    .line 1053
    return-void
.end method

.method public blacklist setParent(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V
    .registers 2

    .line 280
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 281
    return-void
.end method

.method public blacklist setVisibility(I)V
    .registers 3

    .line 532
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    if-ne p1, v0, :cond_8

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mScheduledVisibility:I

    if-eq p1, v0, :cond_d

    .line 533
    :cond_8
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mScheduledVisibility:I

    .line 534
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->invalidateMeasure()V

    .line 536
    :cond_d
    return-void
.end method

.method public blacklist setWidth(F)V
    .registers 2

    .line 148
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    .line 149
    return-void
.end method

.method public blacklist setX(F)V
    .registers 2

    .line 140
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    .line 141
    return-void
.end method

.method public blacklist setY(F)V
    .registers 2

    .line 144
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    .line 145
    return-void
.end method

.method public blacklist suitableForTransition(Lcom/android/internal/widget/remotecompose/core/Operation;)Z
    .registers 7

    .line 540
    instance-of v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 541
    return v1

    .line 543
    :cond_6
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    check-cast p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    iget-object v2, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v0, v2, :cond_17

    .line 544
    return v1

    .line 546
    :cond_17
    move v0, v1

    :goto_18
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_52

    .line 547
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 548
    iget-object v3, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 549
    instance-of v4, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v4, :cond_42

    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v4, :cond_42

    .line 550
    move-object v4, v2

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->suitableForTransition(Lcom/android/internal/widget/remotecompose/core/Operation;)Z

    move-result v4

    if-nez v4, :cond_42

    .line 551
    return v1

    .line 554
    :cond_42
    instance-of v4, v2, Lcom/android/internal/widget/remotecompose/core/PaintOperation;

    if-eqz v4, :cond_4f

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/PaintOperation;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;->suitableForTransition(Lcom/android/internal/widget/remotecompose/core/Operation;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 555
    return v1

    .line 546
    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 558
    :cond_52
    const/4 p1, 0x1

    return p1
.end method

.method public blacklist textContent()Ljava/lang/String;
    .registers 4

    .line 1009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1010
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1011
    nop

    .line 1015
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    goto :goto_b

    .line 1017
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "COMPONENT(<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 883
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 893
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->textContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Visibility ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    .line 895
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 880
    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 4

    .line 290
    iget-object v0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mLastComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 291
    iput-object p0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mLastComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 293
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentValues:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    .line 294
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->updateComponentValues(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 296
    :cond_f
    iput-object v0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mLastComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 297
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 2

    .line 930
    return-void
.end method
