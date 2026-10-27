.class public Landroid/view/animation/AnimationUtilsImpl;
.super Ljava/lang/Object;
.source "AnimationUtilsImpl.java"

# interfaces
.implements Landroid/view/animation/AnimationUtilsStub;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/animation/AnimationUtilsImpl$AnimationState;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AnimationUtils"

.field private static blacklist sAnimationState:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/view/animation/AnimationUtilsImpl$AnimationState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 44
    new-instance v0, Landroid/view/animation/AnimationUtilsImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/view/animation/AnimationUtilsImpl$$ExternalSyntheticLambda0;-><init>()V

    .line 45
    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Landroid/view/animation/AnimationUtilsImpl;->sAnimationState:Ljava/lang/ThreadLocal;

    .line 44
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$static$0()Landroid/view/animation/AnimationUtilsImpl$AnimationState;
    .registers 2

    .line 45
    new-instance v0, Landroid/view/animation/AnimationUtilsImpl$AnimationState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationUtilsImpl$AnimationState;-><init>(Landroid/view/animation/AnimationUtilsImpl$AnimationState-IA;)V

    return-object v0
.end method


# virtual methods
.method public blacklist currentAnimationTimeNanos()J
    .registers 6

    .line 63
    sget-object v0, Landroid/view/animation/AnimationUtilsImpl;->sAnimationState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationUtilsImpl$AnimationState;

    .line 64
    .local v0, "state":Landroid/view/animation/AnimationUtilsImpl$AnimationState;
    iget-boolean v1, v0, Landroid/view/animation/AnimationUtilsImpl$AnimationState;->animationClockLocked:Z

    if-eqz v1, :cond_1b

    .line 66
    iget-wide v1, v0, Landroid/view/animation/AnimationUtilsImpl$AnimationState;->currentVsyncTimeNanos:J

    iget-wide v3, v0, Landroid/view/animation/AnimationUtilsImpl$AnimationState;->lastReportedTimeNanos:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_18

    .line 67
    iget-wide v1, v0, Landroid/view/animation/AnimationUtilsImpl$AnimationState;->lastReportedTimeNanos:J

    iput-wide v1, v0, Landroid/view/animation/AnimationUtilsImpl$AnimationState;->currentVsyncTimeNanos:J

    .line 69
    :cond_18
    iget-wide v1, v0, Landroid/view/animation/AnimationUtilsImpl$AnimationState;->currentVsyncTimeNanos:J

    return-wide v1

    .line 71
    :cond_1b
    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/view/animation/AnimationUtilsImpl$AnimationState;->lastReportedTimeNanos:J

    .line 72
    iget-wide v1, v0, Landroid/view/animation/AnimationUtilsImpl$AnimationState;->lastReportedTimeNanos:J

    return-wide v1
.end method

.method public blacklist getAnimationClockLocked()Z
    .registers 2

    .line 80
    sget-object v0, Landroid/view/animation/AnimationUtilsImpl;->sAnimationState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationUtilsImpl$AnimationState;

    iget-boolean v0, v0, Landroid/view/animation/AnimationUtilsImpl$AnimationState;->animationClockLocked:Z

    return v0
.end method

.method public blacklist getFrame()I
    .registers 2

    .line 84
    sget-object v0, Landroid/view/animation/AnimationUtilsImpl;->sAnimationState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationUtilsImpl$AnimationState;

    iget v0, v0, Landroid/view/animation/AnimationUtilsImpl$AnimationState;->frame:I

    return v0
.end method

.method public blacklist getMiuiClipAnimation(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/animation/Animation;
    .registers 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 29
    new-instance v0, Landroid/view/animation/MiuiClipAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/MiuiClipAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public blacklist getMiuiRoundAnimation(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/animation/Animation;
    .registers 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 33
    new-instance v0, Landroid/view/animation/MiuiRoundAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/MiuiRoundAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public blacklist getSpringInterpolator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)Landroid/view/animation/BaseInterpolator;
    .registers 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 21
    new-instance v0, Landroid/view/animation/SpringInterpolator;

    invoke-direct {v0, p1, p2, p3}, Landroid/view/animation/SpringInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public blacklist getTranslateWithClipAnimation(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/animation/Animation;
    .registers 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 25
    new-instance v0, Landroid/view/animation/TranslateWithClipAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/TranslateWithClipAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public blacklist lastAnimationTimeNanos()J
    .registers 3

    .line 76
    sget-object v0, Landroid/view/animation/AnimationUtilsImpl;->sAnimationState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationUtilsImpl$AnimationState;

    iget-wide v0, v0, Landroid/view/animation/AnimationUtilsImpl$AnimationState;->lastVsyncTimeNanos:J

    return-wide v0
.end method

.method public blacklist lockAnimationClockNanos(JI)V
    .registers 7
    .param p1, "vsyncNanos"    # J
    .param p3, "frame"    # I

    .line 49
    sget-object v0, Landroid/view/animation/AnimationUtilsImpl;->sAnimationState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationUtilsImpl$AnimationState;

    .line 50
    .local v0, "state":Landroid/view/animation/AnimationUtilsImpl$AnimationState;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/animation/AnimationUtilsImpl$AnimationState;->animationClockLocked:Z

    .line 51
    iget-wide v1, v0, Landroid/view/animation/AnimationUtilsImpl$AnimationState;->currentVsyncTimeNanos:J

    iput-wide v1, v0, Landroid/view/animation/AnimationUtilsImpl$AnimationState;->lastVsyncTimeNanos:J

    .line 52
    iput-wide p1, v0, Landroid/view/animation/AnimationUtilsImpl$AnimationState;->currentVsyncTimeNanos:J

    .line 53
    iput p3, v0, Landroid/view/animation/AnimationUtilsImpl$AnimationState;->frame:I

    .line 54
    return-void
.end method

.method public blacklist unlockAnimationClock()V
    .registers 3

    .line 58
    sget-object v0, Landroid/view/animation/AnimationUtilsImpl;->sAnimationState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationUtilsImpl$AnimationState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/animation/AnimationUtilsImpl$AnimationState;->animationClockLocked:Z

    .line 59
    return-void
.end method
