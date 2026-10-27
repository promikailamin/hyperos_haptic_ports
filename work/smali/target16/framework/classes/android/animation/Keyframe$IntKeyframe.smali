.class Landroid/animation/Keyframe$IntKeyframe;
.super Landroid/animation/Keyframe;
.source "Keyframe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/Keyframe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntKeyframe"
.end annotation


# instance fields
.field greylist-max-o mValue:I


# direct methods
.method constructor greylist-max-o <init>(F)V
    .registers 2

    .line 311
    invoke-direct {p0}, Landroid/animation/Keyframe;-><init>()V

    .line 312
    iput p1, p0, Landroid/animation/Keyframe$IntKeyframe;->mFraction:F

    .line 313
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object p1, p0, Landroid/animation/Keyframe$IntKeyframe;->mValueType:Ljava/lang/Class;

    .line 314
    return-void
.end method

.method constructor greylist-max-o <init>(FI)V
    .registers 3

    .line 304
    invoke-direct {p0}, Landroid/animation/Keyframe;-><init>()V

    .line 305
    iput p1, p0, Landroid/animation/Keyframe$IntKeyframe;->mFraction:F

    .line 306
    iput p2, p0, Landroid/animation/Keyframe$IntKeyframe;->mValue:I

    .line 307
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object p1, p0, Landroid/animation/Keyframe$IntKeyframe;->mValueType:Ljava/lang/Class;

    .line 308
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/animation/Keyframe$IntKeyframe;->mHasValue:Z

    .line 309
    return-void
.end method


# virtual methods
.method public blacklist clone()Landroid/animation/Keyframe$IntKeyframe;
    .registers 4

    .line 333
    iget-boolean v0, p0, Landroid/animation/Keyframe$IntKeyframe;->mHasValue:Z

    if-eqz v0, :cond_10

    .line 334
    new-instance v0, Landroid/animation/Keyframe$IntKeyframe;

    invoke-virtual {p0}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v1

    iget v2, p0, Landroid/animation/Keyframe$IntKeyframe;->mValue:I

    invoke-direct {v0, v1, v2}, Landroid/animation/Keyframe$IntKeyframe;-><init>(FI)V

    goto :goto_19

    .line 335
    :cond_10
    new-instance v0, Landroid/animation/Keyframe$IntKeyframe;

    invoke-virtual {p0}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v1

    invoke-direct {v0, v1}, Landroid/animation/Keyframe$IntKeyframe;-><init>(F)V

    .line 336
    :goto_19
    invoke-virtual {p0}, Landroid/animation/Keyframe$IntKeyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Keyframe$IntKeyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 337
    iget-boolean v1, p0, Landroid/animation/Keyframe$IntKeyframe;->mValueWasSetOnStart:Z

    iput-boolean v1, v0, Landroid/animation/Keyframe$IntKeyframe;->mValueWasSetOnStart:Z

    .line 338
    return-object v0
.end method

.method public bridge synthetic whitelist clone()Landroid/animation/Keyframe;
    .registers 2

    .line 297
    invoke-virtual {p0}, Landroid/animation/Keyframe$IntKeyframe;->clone()Landroid/animation/Keyframe$IntKeyframe;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 297
    invoke-virtual {p0}, Landroid/animation/Keyframe$IntKeyframe;->clone()Landroid/animation/Keyframe$IntKeyframe;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getIntValue()I
    .registers 2

    .line 317
    iget v0, p0, Landroid/animation/Keyframe$IntKeyframe;->mValue:I

    return v0
.end method

.method public whitelist getValue()Ljava/lang/Object;
    .registers 2

    .line 321
    iget v0, p0, Landroid/animation/Keyframe$IntKeyframe;->mValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setValue(Ljava/lang/Object;)V
    .registers 4

    .line 325
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_15

    .line 326
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroid/animation/Keyframe$IntKeyframe;->mValue:I

    .line 327
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/animation/Keyframe$IntKeyframe;->mHasValue:Z

    .line 329
    :cond_15
    return-void
.end method
