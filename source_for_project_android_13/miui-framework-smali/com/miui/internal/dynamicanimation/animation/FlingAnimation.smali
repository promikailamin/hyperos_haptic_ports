.class public final Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;
.super Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;
.source "FlingAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation<",
        "Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mFlingForce:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;


# direct methods
.method public constructor blacklist <init>(Lcom/miui/internal/dynamicanimation/animation/FloatValueHolder;)V
    .registers 4
    .param p1, "floatValueHolder"    # Lcom/miui/internal/dynamicanimation/animation/FloatValueHolder;

    .line 58
    invoke-direct {p0, p1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;-><init>(Lcom/miui/internal/dynamicanimation/animation/FloatValueHolder;)V

    .line 43
    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    invoke-direct {v0}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    .line 59
    invoke-virtual {p0}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->getValueThreshold()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->setValueThreshold(F)V

    .line 60
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;Lcom/miui/internal/dynamicanimation/animation/FloatPropertyCompat;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lcom/miui/internal/dynamicanimation/animation/FloatPropertyCompat<",
            "TK;>;)V"
        }
    .end annotation

    .line 70
    .local p1, "object":Ljava/lang/Object;, "TK;"
    .local p2, "property":Lcom/miui/internal/dynamicanimation/animation/FloatPropertyCompat;, "Lcom/miui/internal/dynamicanimation/animation/FloatPropertyCompat<TK;>;"
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;-><init>(Ljava/lang/Object;Lcom/miui/internal/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 43
    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    invoke-direct {v0}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    .line 71
    invoke-virtual {p0}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->getValueThreshold()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->setValueThreshold(F)V

    .line 72
    return-void
.end method

.method private blacklist predictTimeWithVelocity(F)F
    .registers 6
    .param p1, "v"    # F

    .line 211
    iget v0, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mVelocity:F

    div-float v0, p1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    iget-object v2, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    invoke-static {v2}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->-$$Nest$fgetmFriction(Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;)F

    move-result v2

    float-to-double v2, v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method blacklist getAcceleration(FF)F
    .registers 4
    .param p1, "value"    # F
    .param p2, "velocity"    # F

    .line 179
    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->getAcceleration(FF)F

    move-result v0

    return v0
.end method

.method public blacklist getFriction()F
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    invoke-virtual {v0}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->getFrictionScalar()F

    move-result v0

    return v0
.end method

.method blacklist isAtEquilibrium(FF)Z
    .registers 4
    .param p1, "value"    # F
    .param p2, "velocity"    # F

    .line 184
    iget v0, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mMaxValue:F

    cmpl-float v0, p1, v0

    if-gez v0, :cond_17

    iget v0, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mMinValue:F

    cmpg-float v0, p1, v0

    if-lez v0, :cond_17

    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    .line 186
    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->isAtEquilibrium(FF)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    .line 184
    :goto_18
    return v0
.end method

.method public blacklist predictDuration()F
    .registers 3

    .line 207
    iget v0, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mVelocity:F

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    invoke-static {v1}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->-$$Nest$fgetmVelocityThreshold(Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->predictTimeWithVelocity(F)F

    move-result v0

    return v0
.end method

.method public blacklist predictNaturalDest()F
    .registers 6

    .line 195
    iget v0, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mVelocity:F

    .line 196
    .local v0, "initialVelocity":F
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v1

    .line 197
    .local v1, "direction":F
    iget v2, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mValue:F

    iget v3, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mVelocity:F

    iget-object v4, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    invoke-static {v4}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->-$$Nest$fgetmFriction(Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;)F

    move-result v4

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    invoke-static {v3}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->-$$Nest$fgetmVelocityThreshold(Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;)F

    move-result v3

    mul-float/2addr v3, v1

    iget-object v4, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    invoke-static {v4}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->-$$Nest$fgetmFriction(Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;)F

    move-result v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    return v2
.end method

.method public blacklist predictTimeTo(F)F
    .registers 5
    .param p1, "someValue"    # F

    .line 202
    iget v0, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mValue:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mVelocity:F

    iget-object v2, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    invoke-static {v2}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->-$$Nest$fgetmFriction(Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;)F

    move-result v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    invoke-static {v1}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->-$$Nest$fgetmFriction(Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;)F

    move-result v1

    mul-float/2addr v0, v1

    .line 203
    .local v0, "velocity":F
    invoke-direct {p0, v0}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->predictTimeWithVelocity(F)F

    move-result v1

    return v1
.end method

.method public blacklist setFriction(F)Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;
    .registers 4
    .param p1, "friction"    # F

    .line 84
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_b

    .line 87
    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    invoke-virtual {v0, p1}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->setFrictionScalar(F)V

    .line 88
    return-object p0

    .line 85
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Friction must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic blacklist setMaxValue(F)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 2

    .line 41
    invoke-virtual {p0, p1}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->setMaxValue(F)Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setMaxValue(F)Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;
    .registers 2
    .param p1, "maxValue"    # F

    .line 123
    invoke-super {p0, p1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->setMaxValue(F)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    .line 124
    return-object p0
.end method

.method public bridge synthetic blacklist setMinValue(F)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 2

    .line 41
    invoke-virtual {p0, p1}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->setMinValue(F)Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setMinValue(F)Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;
    .registers 2
    .param p1, "minValue"    # F

    .line 110
    invoke-super {p0, p1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->setMinValue(F)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    .line 111
    return-object p0
.end method

.method public bridge synthetic blacklist setStartVelocity(F)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 2

    .line 41
    invoke-virtual {p0, p1}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->setStartVelocity(F)Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setStartVelocity(F)Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;
    .registers 2
    .param p1, "startVelocity"    # F

    .line 150
    invoke-super {p0, p1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    .line 151
    return-object p0
.end method

.method blacklist setValueThreshold(F)V
    .registers 3
    .param p1, "threshold"    # F

    .line 191
    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    invoke-virtual {v0, p1}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->setValueThreshold(F)V

    .line 192
    return-void
.end method

.method blacklist updateValueAndVelocity(J)Z
    .registers 7
    .param p1, "deltaT"    # J

    .line 157
    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    iget v1, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mValue:F

    iget v2, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mVelocity:F

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->updateValueAndVelocity(FFJ)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    move-result-object v0

    .line 158
    .local v0, "state":Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$MassState;
    iget v1, v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    iput v1, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mValue:F

    .line 159
    iget v1, v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    iput v1, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mVelocity:F

    .line 162
    iget v1, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mValue:F

    iget v2, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mMinValue:F

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    if-gez v1, :cond_20

    .line 163
    iget v1, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mMinValue:F

    iput v1, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mValue:F

    .line 164
    return v2

    .line 166
    :cond_20
    iget v1, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mValue:F

    iget v3, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mMaxValue:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2d

    .line 167
    iget v1, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mMaxValue:F

    iput v1, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mValue:F

    .line 168
    return v2

    .line 171
    :cond_2d
    iget v1, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mValue:F

    iget v3, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mVelocity:F

    invoke-virtual {p0, v1, v3}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->isAtEquilibrium(FF)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 172
    return v2

    .line 174
    :cond_38
    const/4 v1, 0x0

    return v1
.end method
