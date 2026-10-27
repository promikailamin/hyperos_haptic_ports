.class final Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;
.super Ljava/lang/Object;
.source "FlingAnimation.java"

# interfaces
.implements Lcom/miui/internal/dynamicanimation/animation/Force;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DragForce"
.end annotation


# static fields
.field private static final blacklist DEFAULT_FRICTION:F = -4.2f

.field private static final blacklist VELOCITY_THRESHOLD_MULTIPLIER:F = 62.5f


# instance fields
.field private blacklist mFriction:F

.field private final blacklist mMassState:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$MassState;

.field private blacklist mVelocityThreshold:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFriction(Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;)F
    .registers 1

    iget p0, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVelocityThreshold(Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;)F
    .registers 1

    iget p0, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mVelocityThreshold:F

    return p0
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    const v0, -0x3f79999a    # -4.2f

    iput v0, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    .line 226
    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    invoke-direct {v0}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$MassState;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mMassState:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    return-void
.end method


# virtual methods
.method public blacklist getAcceleration(FF)F
    .registers 4
    .param p1, "position"    # F
    .param p2, "velocity"    # F

    .line 249
    iget v0, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    mul-float/2addr v0, p2

    return v0
.end method

.method blacklist getFrictionScalar()F
    .registers 3

    .line 233
    iget v0, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    const v1, -0x3f79999a    # -4.2f

    div-float/2addr v0, v1

    return v0
.end method

.method public blacklist isAtEquilibrium(FF)Z
    .registers 5
    .param p1, "value"    # F
    .param p2, "velocity"    # F

    .line 254
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mVelocityThreshold:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method blacklist setFrictionScalar(F)V
    .registers 3
    .param p1, "frictionScalar"    # F

    .line 229
    const v0, -0x3f79999a    # -4.2f

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    .line 230
    return-void
.end method

.method blacklist setValueThreshold(F)V
    .registers 3
    .param p1, "threshold"    # F

    .line 258
    const/high16 v0, 0x427a0000    # 62.5f

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mVelocityThreshold:F

    .line 259
    return-void
.end method

.method blacklist updateValueAndVelocity(FFJ)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$MassState;
    .registers 10
    .param p1, "value"    # F
    .param p2, "velocity"    # F
    .param p3, "deltaT"    # J

    .line 237
    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mMassState:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    float-to-double v1, p2

    long-to-float v3, p3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    .line 238
    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mMassState:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    iget v1, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    div-float v1, p2, v1

    sub-float v1, p1, v1

    iget v2, v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    iget v3, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    .line 241
    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mMassState:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    iget v0, v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    iget-object v1, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mMassState:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    iget v1, v1, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->isAtEquilibrium(FF)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 242
    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mMassState:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    const/4 v1, 0x0

    iput v1, v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    .line 244
    :cond_36
    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mMassState:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    return-object v0
.end method
