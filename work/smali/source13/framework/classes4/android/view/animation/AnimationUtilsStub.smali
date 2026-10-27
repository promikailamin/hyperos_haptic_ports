.class public interface abstract Landroid/view/animation/AnimationUtilsStub;
.super Ljava/lang/Object;
.source "AnimationUtilsStub.java"


# static fields
.field public static final blacklist TAG:Ljava/lang/String; = "AnimationUtilsStub"

.field public static final blacklist sInstance:Landroid/view/animation/AnimationUtilsStub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 17
    const-class v0, Landroid/view/animation/AnimationUtilsStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationUtilsStub;

    sput-object v0, Landroid/view/animation/AnimationUtilsStub;->sInstance:Landroid/view/animation/AnimationUtilsStub;

    return-void
.end method

.method public static blacklist getInstance()Landroid/view/animation/AnimationUtilsStub;
    .registers 1

    .line 21
    sget-object v0, Landroid/view/animation/AnimationUtilsStub;->sInstance:Landroid/view/animation/AnimationUtilsStub;

    return-object v0
.end method


# virtual methods
.method public blacklist currentAnimationTimeNanos()J
    .registers 3

    .line 43
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getAnimationClockLocked()Z
    .registers 2

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getFrame()I
    .registers 2

    .line 55
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getMiuiClipAnimation(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/animation/Animation;
    .registers 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMiuiRoundAnimation(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/animation/Animation;
    .registers 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract blacklist getSpringInterpolator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)Landroid/view/animation/BaseInterpolator;
.end method

.method public blacklist getTranslateWithClipAnimation(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/animation/Animation;
    .registers 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist lastAnimationTimeNanos()J
    .registers 3

    .line 47
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public abstract blacklist lockAnimationClockNanos(JI)V
.end method

.method public abstract blacklist unlockAnimationClock()V
.end method
