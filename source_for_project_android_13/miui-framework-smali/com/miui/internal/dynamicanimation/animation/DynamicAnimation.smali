.class public abstract Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;
.super Ljava/lang/Object;
.source "DynamicAnimation.java"

# interfaces
.implements Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;,
        Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;,
        Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$MassState;,
        Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;"
    }
.end annotation


# static fields
.field public static final blacklist ALPHA:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final blacklist MIN_VISIBLE_CHANGE_ALPHA:F = 0.00390625f

.field public static final blacklist MIN_VISIBLE_CHANGE_PIXELS:F = 1.0f

.field public static final blacklist MIN_VISIBLE_CHANGE_ROTATION_DEGREES:F = 0.1f

.field public static final blacklist MIN_VISIBLE_CHANGE_SCALE:F = 0.002f

.field public static final blacklist ROTATION:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final blacklist ROTATION_X:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final blacklist ROTATION_Y:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final blacklist SCALE_X:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final blacklist SCALE_Y:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final blacklist SCROLL_X:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final blacklist SCROLL_Y:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field private static final blacklist THRESHOLD_MULTIPLIER:F = 0.75f

.field public static final blacklist TRANSLATION_X:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final blacklist TRANSLATION_Y:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final blacklist TRANSLATION_Z:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field private static final blacklist UNSET:F = 3.4028235E38f

.field public static final blacklist X:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final blacklist Y:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final blacklist Z:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;


# instance fields
.field private final blacklist mEndListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLastFrameTime:J

.field private blacklist mManualAnim:Z

.field blacklist mMaxValue:F

.field blacklist mMinValue:F

.field private blacklist mMinVisibleChange:F

.field final blacklist mProperty:Lcom/miui/internal/dynamicanimation/animation/FloatPropertyCompat;

.field blacklist mRunning:Z

.field blacklist mStartValueIsSet:Z

.field final blacklist mTarget:Ljava/lang/Object;

.field private final blacklist mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mValue:F

.field blacklist mVelocity:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 55
    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$1;

    const-string v1, "translationX"

    invoke-direct {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 70
    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$2;

    const-string v1, "translationY"

    invoke-direct {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 85
    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$3;

    const-string v1, "translationZ"

    invoke-direct {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Z:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 100
    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$4;

    const-string v1, "scaleX"

    invoke-direct {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 115
    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$5;

    const-string v1, "scaleY"

    invoke-direct {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 130
    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$6;

    const-string v1, "rotation"

    invoke-direct {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->ROTATION:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 145
    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$7;

    const-string v1, "rotationX"

    invoke-direct {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->ROTATION_X:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 160
    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$8;

    const-string v1, "rotationY"

    invoke-direct {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->ROTATION_Y:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 175
    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$9;

    const-string v1, "x"

    invoke-direct {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$9;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->X:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 190
    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$10;

    const-string v1, "y"

    invoke-direct {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$10;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->Y:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 205
    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$11;

    const-string v1, "z"

    invoke-direct {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$11;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->Z:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 220
    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$12;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$12;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->ALPHA:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 236
    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$13;

    const-string v1, "scrollX"

    invoke-direct {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$13;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->SCROLL_X:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 251
    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$14;

    const-string v1, "scrollY"

    invoke-direct {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$14;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->SCROLL_Y:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    return-void
.end method

.method constructor blacklist <init>(Lcom/miui/internal/dynamicanimation/animation/FloatValueHolder;)V
    .registers 4
    .param p1, "floatValueHolder"    # Lcom/miui/internal/dynamicanimation/animation/FloatValueHolder;

    .line 333
    .local p0, "this":Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;, "Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 290
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 294
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    .line 303
    iput-boolean v1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 306
    iput v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    .line 307
    neg-float v0, v0

    iput v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    .line 310
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    .line 335
    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$15;

    const-string v1, "FloatValueHolder"

    invoke-direct {v0, p0, v1, p1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$15;-><init>(Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;Ljava/lang/String;Lcom/miui/internal/dynamicanimation/animation/FloatValueHolder;)V

    iput-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mProperty:Lcom/miui/internal/dynamicanimation/animation/FloatPropertyCompat;

    .line 346
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    .line 347
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/Object;Lcom/miui/internal/dynamicanimation/animation/FloatPropertyCompat;)V
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

    .line 356
    .local p0, "this":Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;, "Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TK;"
    .local p2, "property":Lcom/miui/internal/dynamicanimation/animation/FloatPropertyCompat;, "Lcom/miui/internal/dynamicanimation/animation/FloatPropertyCompat<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 290
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 294
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    .line 303
    iput-boolean v1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 306
    iput v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    .line 307
    neg-float v0, v0

    iput v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    .line 310
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    .line 357
    iput-object p1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    .line 358
    iput-object p2, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mProperty:Lcom/miui/internal/dynamicanimation/animation/FloatPropertyCompat;

    .line 359
    sget-object v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->ROTATION:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    if-eq p2, v0, :cond_52

    sget-object v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->ROTATION_X:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    if-eq p2, v0, :cond_52

    sget-object v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->ROTATION_Y:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    if-ne p2, v0, :cond_38

    goto :goto_52

    .line 362
    :cond_38
    sget-object v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->ALPHA:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/high16 v1, 0x3b800000    # 0.00390625f

    if-ne p2, v0, :cond_41

    .line 363
    iput v1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    goto :goto_57

    .line 364
    :cond_41
    sget-object v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    if-eq p2, v0, :cond_4f

    sget-object v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    if-ne p2, v0, :cond_4a

    goto :goto_4f

    .line 367
    :cond_4a
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    goto :goto_57

    .line 365
    :cond_4f
    :goto_4f
    iput v1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    goto :goto_57

    .line 361
    :cond_52
    :goto_52
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    .line 369
    :goto_57
    return-void
.end method

.method private blacklist endAnimationInternal(Z)V
    .registers 6
    .param p1, "canceled"    # Z

    .line 680
    .local p0, "this":Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;, "Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 681
    iget-boolean v1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mManualAnim:Z

    if-nez v1, :cond_e

    .line 682
    invoke-static {}, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->getInstance()Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->removeCallback(Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;)V

    .line 684
    :cond_e
    iput-boolean v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mManualAnim:Z

    .line 685
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    .line 686
    iput-boolean v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    .line 687
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    iget-object v1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_39

    .line 688
    iget-object v1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 689
    iget-object v1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    iget v2, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v3, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    invoke-interface {v1, p0, p1, v2, v3}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;->onAnimationEnd(Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;ZFF)V

    .line 687
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 692
    .end local v0    # "i":I
    :cond_39
    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->removeNullEntries(Ljava/util/ArrayList;)V

    .line 693
    return-void
.end method

.method private blacklist getPropertyValue()F
    .registers 3

    .line 719
    .local p0, "this":Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;, "Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation<TT;>;"
    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mProperty:Lcom/miui/internal/dynamicanimation/animation/FloatPropertyCompat;

    iget-object v1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/FloatPropertyCompat;->getValue(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method private static blacklist removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 558
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "entry":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 559
    .local v0, "id":I
    if-ltz v0, :cond_a

    .line 560
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 562
    :cond_a
    return-void
.end method

.method private static blacklist removeNullEntries(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    .line 547
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_14

    .line 548
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_11

    .line 549
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 547
    :cond_11
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 552
    .end local v0    # "i":I
    :cond_14
    return-void
.end method

.method private blacklist startAnimationInternal(Z)V
    .registers 5
    .param p1, "manually"    # Z

    .line 617
    .local p0, "this":Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;, "Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation<TT;>;"
    iget-boolean v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-nez v0, :cond_35

    .line 618
    iput-boolean p1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mManualAnim:Z

    .line 619
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 620
    iget-boolean v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    if-nez v0, :cond_13

    .line 621
    invoke-direct {p0}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->getPropertyValue()F

    move-result v0

    iput v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 624
    :cond_13
    iget v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_2d

    iget v1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_2d

    .line 628
    if-nez p1, :cond_35

    .line 629
    invoke-static {}, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->getInstance()Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->addAnimationFrameCallback(Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;J)V

    goto :goto_35

    .line 625
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Starting value need to be in between min value and max value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 632
    :cond_35
    :goto_35
    return-void
.end method


# virtual methods
.method public blacklist addEndListener(Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 3
    .param p1, "listener"    # Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;",
            ")TT;"
        }
    .end annotation

    .line 445
    .local p0, "this":Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;, "Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation<TT;>;"
    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 446
    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    :cond_d
    return-object p0
.end method

.method public blacklist addUpdateListener(Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 4
    .param p1, "listener"    # Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;",
            ")TT;"
        }
    .end annotation

    .line 473
    .local p0, "this":Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;, "Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation<TT;>;"
    invoke-virtual {p0}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_14

    .line 479
    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 480
    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    :cond_13
    return-object p0

    .line 476
    :cond_14
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Error: Update listeners must be added beforethe animation."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist cancel()V
    .registers 3

    .line 595
    .local p0, "this":Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;, "Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation<TT;>;"
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_13

    .line 598
    iget-boolean v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-eqz v0, :cond_12

    .line 599
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->endAnimationInternal(Z)V

    .line 601
    :cond_12
    return-void

    .line 596
    :cond_13
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animations may only be canceled on the main thread"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist doAnimationFrame(J)Z
    .registers 9
    .param p1, "frameTime"    # J

    .line 645
    .local p0, "this":Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;, "Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation<TT;>;"
    iget-wide v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_11

    .line 647
    iput-wide p1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    .line 648
    iget v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    invoke-virtual {p0, v0}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->setPropertyValue(F)V

    .line 649
    return v3

    .line 651
    :cond_11
    sub-long v0, p1, v0

    .line 652
    .local v0, "deltaT":J
    iput-wide p1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    .line 653
    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->updateValueAndVelocity(J)Z

    move-result v2

    .line 655
    .local v2, "finished":Z
    iget v4, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v5, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 656
    iget v5, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 658
    invoke-virtual {p0, v4}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->setPropertyValue(F)V

    .line 660
    if-eqz v2, :cond_33

    .line 661
    invoke-direct {p0, v3}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->endAnimationInternal(Z)V

    .line 663
    :cond_33
    return v2
.end method

.method abstract blacklist getAcceleration(FF)F
.end method

.method public blacklist getMinimumVisibleChange()F
    .registers 2

    .line 539
    .local p0, "this":Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;, "Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation<TT;>;"
    iget v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    return v0
.end method

.method blacklist getValueThreshold()F
    .registers 3

    .line 712
    .local p0, "this":Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;, "Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation<TT;>;"
    iget v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    return v0
.end method

.method abstract blacklist isAtEquilibrium(FF)Z
.end method

.method public blacklist isRunning()Z
    .registers 2

    .line 609
    .local p0, "this":Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;, "Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation<TT;>;"
    iget-boolean v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    return v0
.end method

.method public blacklist removeEndListener(Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    .line 457
    .local p0, "this":Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;, "Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation<TT;>;"
    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 458
    return-void
.end method

.method public blacklist removeUpdateListener(Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    .line 492
    .local p0, "this":Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;, "Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation<TT;>;"
    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 493
    return-void
.end method

.method public blacklist setMaxValue(F)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 2
    .param p1, "max"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 420
    .local p0, "this":Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;, "Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation<TT;>;"
    iput p1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    .line 421
    return-object p0
.end method

.method public blacklist setMinValue(F)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 2
    .param p1, "min"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 433
    .local p0, "this":Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;, "Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation<TT;>;"
    iput p1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    .line 434
    return-object p0
.end method

.method public blacklist setMinimumVisibleChange(F)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 4
    .param p1, "minimumVisibleChange"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 524
    .local p0, "this":Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;, "Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation<TT;>;"
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_e

    .line 527
    iput p1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    .line 528
    const/high16 v0, 0x3f400000    # 0.75f

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->setValueThreshold(F)V

    .line 529
    return-object p0

    .line 525
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimum visible change must be positive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist setPropertyValue(F)V
    .registers 6
    .param p1, "value"    # F

    .line 699
    .local p0, "this":Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;, "Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation<TT;>;"
    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mProperty:Lcom/miui/internal/dynamicanimation/animation/FloatPropertyCompat;

    iget-object v1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/miui/internal/dynamicanimation/animation/FloatPropertyCompat;->setValue(Ljava/lang/Object;F)V

    .line 700
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget-object v1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 701
    iget-object v1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 702
    iget-object v1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    iget v2, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v3, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    invoke-interface {v1, p0, v2, v3}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;->onAnimationUpdate(Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;FF)V

    .line 700
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 705
    .end local v0    # "i":I
    :cond_2a
    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->removeNullEntries(Ljava/util/ArrayList;)V

    .line 706
    return-void
.end method

.method public blacklist setStartValue(F)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 3
    .param p1, "startValue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 379
    .local p0, "this":Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;, "Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation<TT;>;"
    iput p1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    .line 381
    return-object p0
.end method

.method public blacklist setStartVelocity(F)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 2
    .param p1, "startVelocity"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 403
    .local p0, "this":Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;, "Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation<TT;>;"
    iput p1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 404
    return-object p0
.end method

.method abstract blacklist setValueThreshold(F)V
.end method

.method public blacklist start()V
    .registers 2

    .line 576
    .local p0, "this":Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;, "Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->start(Z)V

    .line 577
    return-void
.end method

.method public blacklist start(Z)V
    .registers 4
    .param p1, "manually"    # Z

    .line 580
    .local p0, "this":Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;, "Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation<TT;>;"
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_12

    .line 583
    iget-boolean v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-nez v0, :cond_11

    .line 584
    invoke-direct {p0, p1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->startAnimationInternal(Z)V

    .line 586
    :cond_11
    return-void

    .line 581
    :cond_12
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animations may only be started on the main thread"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract blacklist updateValueAndVelocity(J)Z
.end method
