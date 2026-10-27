.class public Landroid/animation/LayoutTransition;
.super Ljava/lang/Object;
.source "LayoutTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/LayoutTransition$CleanupCallback;,
        Landroid/animation/LayoutTransition$TransitionListener;
    }
.end annotation


# static fields
.field private static greylist-max-o ACCEL_DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator; = null

.field public static final whitelist APPEARING:I = 0x2

.field public static final whitelist CHANGE_APPEARING:I = 0x0

.field public static final whitelist CHANGE_DISAPPEARING:I = 0x1

.field public static final whitelist CHANGING:I = 0x4

.field private static greylist-max-o DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator; = null

.field private static greylist-max-o DEFAULT_DURATION:J = 0x0L

.field public static final whitelist DISAPPEARING:I = 0x3

.field private static final greylist-max-o FLAG_APPEARING:I = 0x1

.field private static final greylist-max-o FLAG_CHANGE_APPEARING:I = 0x4

.field private static final greylist-max-o FLAG_CHANGE_DISAPPEARING:I = 0x8

.field private static final greylist-max-o FLAG_CHANGING:I = 0x10

.field private static final greylist-max-o FLAG_DISAPPEARING:I = 0x2

.field private static greylist-max-o defaultChange:Landroid/animation/ObjectAnimator;

.field private static greylist-max-o defaultChangeIn:Landroid/animation/ObjectAnimator;

.field private static greylist-max-o defaultChangeOut:Landroid/animation/ObjectAnimator;

.field private static greylist-max-o defaultFadeIn:Landroid/animation/ObjectAnimator;

.field private static greylist-max-o defaultFadeOut:Landroid/animation/ObjectAnimator;

.field private static greylist-max-o sAppearingInterpolator:Landroid/animation/TimeInterpolator;

.field private static greylist-max-o sChangingAppearingInterpolator:Landroid/animation/TimeInterpolator;

.field private static greylist-max-o sChangingDisappearingInterpolator:Landroid/animation/TimeInterpolator;

.field private static greylist-max-o sChangingInterpolator:Landroid/animation/TimeInterpolator;

.field private static greylist-max-o sDisappearingInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field private final greylist-max-o currentAppearingAnimations:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Landroid/view/View;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o currentChangingAnimations:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Landroid/view/View;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o currentDisappearingAnimations:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Landroid/view/View;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o layoutChangeListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroid/view/View$OnLayoutChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mAnimateParentHierarchy:Z

.field private greylist-max-o mAppearingAnim:Landroid/animation/Animator;

.field private greylist-max-o mAppearingDelay:J

.field private greylist-max-o mAppearingDuration:J

.field private greylist-max-o mAppearingInterpolator:Landroid/animation/TimeInterpolator;

.field private greylist-max-o mChangingAnim:Landroid/animation/Animator;

.field private greylist-max-o mChangingAppearingAnim:Landroid/animation/Animator;

.field private greylist-max-o mChangingAppearingDelay:J

.field private greylist-max-o mChangingAppearingDuration:J

.field private greylist-max-o mChangingAppearingInterpolator:Landroid/animation/TimeInterpolator;

.field private greylist-max-o mChangingAppearingStagger:J

.field private greylist-max-o mChangingDelay:J

.field private greylist-max-o mChangingDisappearingAnim:Landroid/animation/Animator;

.field private greylist-max-o mChangingDisappearingDelay:J

.field private greylist-max-o mChangingDisappearingDuration:J

.field private greylist-max-o mChangingDisappearingInterpolator:Landroid/animation/TimeInterpolator;

.field private greylist-max-o mChangingDisappearingStagger:J

.field private greylist-max-o mChangingDuration:J

.field private greylist-max-o mChangingInterpolator:Landroid/animation/TimeInterpolator;

.field private greylist-max-o mChangingStagger:J

.field private greylist-max-o mDisappearingAnim:Landroid/animation/Animator;

.field private greylist-max-o mDisappearingDelay:J

.field private greylist-max-o mDisappearingDuration:J

.field private greylist-max-o mDisappearingInterpolator:Landroid/animation/TimeInterpolator;

.field private greylist-max-o mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/LayoutTransition$TransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mTransitionTypes:I

.field private final greylist-max-o pendingAnimations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o staggerDelay:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetcurrentAppearingAnimations(Landroid/animation/LayoutTransition;)Ljava/util/LinkedHashMap;
    .registers 1

    iget-object p0, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetcurrentChangingAnimations(Landroid/animation/LayoutTransition;)Ljava/util/LinkedHashMap;
    .registers 1

    iget-object p0, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetcurrentDisappearingAnimations(Landroid/animation/LayoutTransition;)Ljava/util/LinkedHashMap;
    .registers 1

    iget-object p0, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetlayoutChangeListenerMap(Landroid/animation/LayoutTransition;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Landroid/animation/LayoutTransition;->layoutChangeListenerMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChangingAppearingDelay(Landroid/animation/LayoutTransition;)J
    .registers 3

    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingAppearingDelay:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChangingAppearingInterpolator(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;
    .registers 1

    iget-object p0, p0, Landroid/animation/LayoutTransition;->mChangingAppearingInterpolator:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChangingAppearingStagger(Landroid/animation/LayoutTransition;)J
    .registers 3

    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingAppearingStagger:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChangingDelay(Landroid/animation/LayoutTransition;)J
    .registers 3

    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingDelay:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChangingDisappearingDelay(Landroid/animation/LayoutTransition;)J
    .registers 3

    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingDelay:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChangingDisappearingInterpolator(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;
    .registers 1

    iget-object p0, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChangingDisappearingStagger(Landroid/animation/LayoutTransition;)J
    .registers 3

    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingStagger:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChangingInterpolator(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;
    .registers 1

    iget-object p0, p0, Landroid/animation/LayoutTransition;->mChangingInterpolator:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChangingStagger(Landroid/animation/LayoutTransition;)J
    .registers 3

    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingStagger:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListeners(Landroid/animation/LayoutTransition;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetpendingAnimations(Landroid/animation/LayoutTransition;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Landroid/animation/LayoutTransition;->pendingAnimations:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetstaggerDelay(Landroid/animation/LayoutTransition;)J
    .registers 3

    iget-wide v0, p0, Landroid/animation/LayoutTransition;->staggerDelay:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fputstaggerDelay(Landroid/animation/LayoutTransition;J)V
    .registers 3

    iput-wide p1, p0, Landroid/animation/LayoutTransition;->staggerDelay:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhasListeners(Landroid/animation/LayoutTransition;)Z
    .registers 1

    invoke-direct {p0}, Landroid/animation/LayoutTransition;->hasListeners()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsChangingAppearingInterpolator()Landroid/animation/TimeInterpolator;
    .registers 1

    sget-object v0, Landroid/animation/LayoutTransition;->sChangingAppearingInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsChangingDisappearingInterpolator()Landroid/animation/TimeInterpolator;
    .registers 1

    sget-object v0, Landroid/animation/LayoutTransition;->sChangingDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsChangingInterpolator()Landroid/animation/TimeInterpolator;
    .registers 1

    sget-object v0, Landroid/animation/LayoutTransition;->sChangingInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 170
    const-wide/16 v0, 0x12c

    sput-wide v0, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    .line 203
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/animation/LayoutTransition;->ACCEL_DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 205
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/animation/LayoutTransition;->DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 206
    sget-object v0, Landroid/animation/LayoutTransition;->ACCEL_DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    sput-object v0, Landroid/animation/LayoutTransition;->sAppearingInterpolator:Landroid/animation/TimeInterpolator;

    .line 207
    sget-object v0, Landroid/animation/LayoutTransition;->ACCEL_DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    sput-object v0, Landroid/animation/LayoutTransition;->sDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    .line 208
    sget-object v0, Landroid/animation/LayoutTransition;->DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    sput-object v0, Landroid/animation/LayoutTransition;->sChangingAppearingInterpolator:Landroid/animation/TimeInterpolator;

    .line 209
    sget-object v0, Landroid/animation/LayoutTransition;->DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    sput-object v0, Landroid/animation/LayoutTransition;->sChangingDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    .line 210
    sget-object v0, Landroid/animation/LayoutTransition;->DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    sput-object v0, Landroid/animation/LayoutTransition;->sChangingInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 11

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/LayoutTransition;->mDisappearingAnim:Landroid/animation/Animator;

    .line 152
    iput-object v0, p0, Landroid/animation/LayoutTransition;->mAppearingAnim:Landroid/animation/Animator;

    .line 153
    iput-object v0, p0, Landroid/animation/LayoutTransition;->mChangingAppearingAnim:Landroid/animation/Animator;

    .line 154
    iput-object v0, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingAnim:Landroid/animation/Animator;

    .line 155
    iput-object v0, p0, Landroid/animation/LayoutTransition;->mChangingAnim:Landroid/animation/Animator;

    .line 175
    sget-wide v1, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    iput-wide v1, p0, Landroid/animation/LayoutTransition;->mChangingAppearingDuration:J

    .line 176
    sget-wide v1, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    iput-wide v1, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingDuration:J

    .line 177
    sget-wide v1, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    iput-wide v1, p0, Landroid/animation/LayoutTransition;->mChangingDuration:J

    .line 178
    sget-wide v1, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    iput-wide v1, p0, Landroid/animation/LayoutTransition;->mAppearingDuration:J

    .line 179
    sget-wide v1, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    iput-wide v1, p0, Landroid/animation/LayoutTransition;->mDisappearingDuration:J

    .line 187
    sget-wide v1, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    iput-wide v1, p0, Landroid/animation/LayoutTransition;->mAppearingDelay:J

    .line 188
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/animation/LayoutTransition;->mDisappearingDelay:J

    .line 189
    iput-wide v1, p0, Landroid/animation/LayoutTransition;->mChangingAppearingDelay:J

    .line 190
    sget-wide v3, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    iput-wide v3, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingDelay:J

    .line 191
    iput-wide v1, p0, Landroid/animation/LayoutTransition;->mChangingDelay:J

    .line 196
    iput-wide v1, p0, Landroid/animation/LayoutTransition;->mChangingAppearingStagger:J

    .line 197
    iput-wide v1, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingStagger:J

    .line 198
    iput-wide v1, p0, Landroid/animation/LayoutTransition;->mChangingStagger:J

    .line 215
    sget-object v1, Landroid/animation/LayoutTransition;->sAppearingInterpolator:Landroid/animation/TimeInterpolator;

    iput-object v1, p0, Landroid/animation/LayoutTransition;->mAppearingInterpolator:Landroid/animation/TimeInterpolator;

    .line 216
    sget-object v1, Landroid/animation/LayoutTransition;->sDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    iput-object v1, p0, Landroid/animation/LayoutTransition;->mDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    .line 217
    sget-object v1, Landroid/animation/LayoutTransition;->sChangingAppearingInterpolator:Landroid/animation/TimeInterpolator;

    iput-object v1, p0, Landroid/animation/LayoutTransition;->mChangingAppearingInterpolator:Landroid/animation/TimeInterpolator;

    .line 218
    sget-object v1, Landroid/animation/LayoutTransition;->sChangingDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    iput-object v1, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    .line 219
    sget-object v1, Landroid/animation/LayoutTransition;->sChangingInterpolator:Landroid/animation/TimeInterpolator;

    iput-object v1, p0, Landroid/animation/LayoutTransition;->mChangingInterpolator:Landroid/animation/TimeInterpolator;

    .line 229
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/animation/LayoutTransition;->pendingAnimations:Ljava/util/HashMap;

    .line 231
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    .line 233
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    .line 235
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    .line 247
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/animation/LayoutTransition;->layoutChangeListenerMap:Ljava/util/HashMap;

    .line 262
    const/16 v1, 0xf

    iput v1, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    .line 276
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/animation/LayoutTransition;->mAnimateParentHierarchy:Z

    .line 285
    sget-object v2, Landroid/animation/LayoutTransition;->defaultChangeIn:Landroid/animation/ObjectAnimator;

    if-nez v2, :cond_158

    .line 287
    const-string/jumbo v2, "left"

    const/4 v3, 0x0

    filled-new-array {v3, v1}, [I

    move-result-object v4

    invoke-static {v2, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 288
    const-string/jumbo v4, "top"

    filled-new-array {v3, v1}, [I

    move-result-object v5

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 289
    const-string/jumbo v5, "right"

    filled-new-array {v3, v1}, [I

    move-result-object v6

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 290
    const-string v6, "bottom"

    filled-new-array {v3, v1}, [I

    move-result-object v7

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 291
    const-string/jumbo v7, "scrollX"

    filled-new-array {v3, v1}, [I

    move-result-object v8

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 292
    const-string/jumbo v8, "scrollY"

    filled-new-array {v3, v1}, [I

    move-result-object v9

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 293
    const/4 v9, 0x6

    new-array v9, v9, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v9, v3

    aput-object v4, v9, v1

    const/4 v1, 0x2

    aput-object v5, v9, v1

    const/4 v2, 0x3

    aput-object v6, v9, v2

    const/4 v2, 0x4

    aput-object v7, v9, v2

    const/4 v2, 0x5

    aput-object v8, v9, v2

    invoke-static {v0, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    sput-object v2, Landroid/animation/LayoutTransition;->defaultChangeIn:Landroid/animation/ObjectAnimator;

    .line 295
    sget-object v2, Landroid/animation/LayoutTransition;->defaultChangeIn:Landroid/animation/ObjectAnimator;

    sget-wide v3, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 296
    sget-object v2, Landroid/animation/LayoutTransition;->defaultChangeIn:Landroid/animation/ObjectAnimator;

    iget-wide v3, p0, Landroid/animation/LayoutTransition;->mChangingAppearingDelay:J

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 297
    sget-object v2, Landroid/animation/LayoutTransition;->defaultChangeIn:Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Landroid/animation/LayoutTransition;->mChangingAppearingInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 298
    sget-object v2, Landroid/animation/LayoutTransition;->defaultChangeIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object v2

    sput-object v2, Landroid/animation/LayoutTransition;->defaultChangeOut:Landroid/animation/ObjectAnimator;

    .line 299
    sget-object v2, Landroid/animation/LayoutTransition;->defaultChangeOut:Landroid/animation/ObjectAnimator;

    iget-wide v3, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingDelay:J

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 300
    sget-object v2, Landroid/animation/LayoutTransition;->defaultChangeOut:Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 301
    sget-object v2, Landroid/animation/LayoutTransition;->defaultChangeIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object v2

    sput-object v2, Landroid/animation/LayoutTransition;->defaultChange:Landroid/animation/ObjectAnimator;

    .line 302
    sget-object v2, Landroid/animation/LayoutTransition;->defaultChange:Landroid/animation/ObjectAnimator;

    iget-wide v3, p0, Landroid/animation/LayoutTransition;->mChangingDelay:J

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 303
    sget-object v2, Landroid/animation/LayoutTransition;->defaultChange:Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Landroid/animation/LayoutTransition;->mChangingInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 305
    new-array v2, v1, [F

    fill-array-data v2, :array_16e

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    sput-object v2, Landroid/animation/LayoutTransition;->defaultFadeIn:Landroid/animation/ObjectAnimator;

    .line 306
    sget-object v2, Landroid/animation/LayoutTransition;->defaultFadeIn:Landroid/animation/ObjectAnimator;

    sget-wide v4, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 307
    sget-object v2, Landroid/animation/LayoutTransition;->defaultFadeIn:Landroid/animation/ObjectAnimator;

    iget-wide v4, p0, Landroid/animation/LayoutTransition;->mAppearingDelay:J

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 308
    sget-object v2, Landroid/animation/LayoutTransition;->defaultFadeIn:Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Landroid/animation/LayoutTransition;->mAppearingInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 309
    new-array v1, v1, [F

    fill-array-data v1, :array_176

    invoke-static {v0, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sput-object v0, Landroid/animation/LayoutTransition;->defaultFadeOut:Landroid/animation/ObjectAnimator;

    .line 310
    sget-object v0, Landroid/animation/LayoutTransition;->defaultFadeOut:Landroid/animation/ObjectAnimator;

    sget-wide v1, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 311
    sget-object v0, Landroid/animation/LayoutTransition;->defaultFadeOut:Landroid/animation/ObjectAnimator;

    iget-wide v1, p0, Landroid/animation/LayoutTransition;->mDisappearingDelay:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 312
    sget-object v0, Landroid/animation/LayoutTransition;->defaultFadeOut:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Landroid/animation/LayoutTransition;->mDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 314
    :cond_158
    sget-object v0, Landroid/animation/LayoutTransition;->defaultChangeIn:Landroid/animation/ObjectAnimator;

    iput-object v0, p0, Landroid/animation/LayoutTransition;->mChangingAppearingAnim:Landroid/animation/Animator;

    .line 315
    sget-object v0, Landroid/animation/LayoutTransition;->defaultChangeOut:Landroid/animation/ObjectAnimator;

    iput-object v0, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingAnim:Landroid/animation/Animator;

    .line 316
    sget-object v0, Landroid/animation/LayoutTransition;->defaultChange:Landroid/animation/ObjectAnimator;

    iput-object v0, p0, Landroid/animation/LayoutTransition;->mChangingAnim:Landroid/animation/Animator;

    .line 317
    sget-object v0, Landroid/animation/LayoutTransition;->defaultFadeIn:Landroid/animation/ObjectAnimator;

    iput-object v0, p0, Landroid/animation/LayoutTransition;->mAppearingAnim:Landroid/animation/Animator;

    .line 318
    sget-object v0, Landroid/animation/LayoutTransition;->defaultFadeOut:Landroid/animation/ObjectAnimator;

    iput-object v0, p0, Landroid/animation/LayoutTransition;->mDisappearingAnim:Landroid/animation/Animator;

    .line 319
    return-void

    nop

    :array_16e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_176
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private greylist-max-o addChild(Landroid/view/ViewGroup;Landroid/view/View;Z)V
    .registers 9

    .line 1260
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    .line 1261
    return-void

    .line 1263
    :cond_7
    iget v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_11

    .line 1265
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/animation/LayoutTransition;->cancel(I)V

    .line 1267
    :cond_11
    const/4 v0, 0x4

    if-eqz p3, :cond_20

    iget v2, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/2addr v2, v0

    if-ne v2, v0, :cond_20

    .line 1269
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/animation/LayoutTransition;->cancel(I)V

    .line 1270
    invoke-virtual {p0, v0}, Landroid/animation/LayoutTransition;->cancel(I)V

    .line 1272
    :cond_20
    invoke-direct {p0}, Landroid/animation/LayoutTransition;->hasListeners()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_48

    iget v2, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_48

    .line 1273
    iget-object v2, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    .line 1274
    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1275
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/LayoutTransition$TransitionListener;

    .line 1276
    invoke-interface {v4, p0, p1, p2, v3}, Landroid/animation/LayoutTransition$TransitionListener;->startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 1277
    goto :goto_38

    .line 1279
    :cond_48
    if-eqz p3, :cond_52

    iget p3, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/2addr p3, v0

    if-ne p3, v0, :cond_52

    .line 1280
    invoke-direct {p0, p1, p2, v3}, Landroid/animation/LayoutTransition;->runChangeTransition(Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 1282
    :cond_52
    iget p3, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/2addr p3, v1

    if-ne p3, v1, :cond_5a

    .line 1283
    invoke-direct {p0, p1, p2}, Landroid/animation/LayoutTransition;->runAppearingTransition(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 1285
    :cond_5a
    return-void
.end method

.method private greylist-max-o hasListeners()Z
    .registers 2

    .line 1288
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private greylist-max-o removeChild(Landroid/view/ViewGroup;Landroid/view/View;Z)V
    .registers 9

    .line 1365
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    .line 1366
    return-void

    .line 1368
    :cond_7
    iget v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_10

    .line 1370
    invoke-virtual {p0, v1}, Landroid/animation/LayoutTransition;->cancel(I)V

    .line 1372
    :cond_10
    const/16 v0, 0x8

    if-eqz p3, :cond_21

    iget v2, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/2addr v2, v0

    if-ne v2, v0, :cond_21

    .line 1375
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/animation/LayoutTransition;->cancel(I)V

    .line 1376
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Landroid/animation/LayoutTransition;->cancel(I)V

    .line 1378
    :cond_21
    invoke-direct {p0}, Landroid/animation/LayoutTransition;->hasListeners()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_49

    iget v2, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_49

    .line 1379
    iget-object v2, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    .line 1380
    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1381
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/LayoutTransition$TransitionListener;

    .line 1382
    invoke-interface {v4, p0, p1, p2, v3}, Landroid/animation/LayoutTransition$TransitionListener;->startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 1383
    goto :goto_39

    .line 1385
    :cond_49
    if-eqz p3, :cond_53

    iget p3, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/2addr p3, v0

    if-ne p3, v0, :cond_53

    .line 1387
    invoke-direct {p0, p1, p2, v3}, Landroid/animation/LayoutTransition;->runChangeTransition(Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 1389
    :cond_53
    iget p3, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/2addr p3, v1

    if-ne p3, v1, :cond_5b

    .line 1390
    invoke-direct {p0, p1, p2}, Landroid/animation/LayoutTransition;->runDisappearingTransition(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 1392
    :cond_5b
    return-void
.end method

.method private greylist-max-o runAppearingTransition(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 7

    .line 1156
    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 1157
    if-eqz v0, :cond_d

    .line 1158
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1160
    :cond_d
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mAppearingAnim:Landroid/animation/Animator;

    if-nez v0, :cond_35

    .line 1161
    invoke-direct {p0}, Landroid/animation/LayoutTransition;->hasListeners()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1162
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    .line 1163
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1164
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/LayoutTransition$TransitionListener;

    .line 1165
    const/4 v2, 0x2

    invoke-interface {v1, p0, p1, p2, v2}, Landroid/animation/LayoutTransition$TransitionListener;->endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 1166
    goto :goto_23

    .line 1168
    :cond_34
    return-void

    .line 1170
    :cond_35
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mAppearingAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    .line 1171
    invoke-virtual {v0, p2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1172
    iget-wide v1, p0, Landroid/animation/LayoutTransition;->mAppearingDelay:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1173
    iget-wide v1, p0, Landroid/animation/LayoutTransition;->mAppearingDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1174
    iget-object v1, p0, Landroid/animation/LayoutTransition;->mAppearingInterpolator:Landroid/animation/TimeInterpolator;

    sget-object v2, Landroid/animation/LayoutTransition;->sAppearingInterpolator:Landroid/animation/TimeInterpolator;

    if-eq v1, v2, :cond_53

    .line 1175
    iget-object v1, p0, Landroid/animation/LayoutTransition;->mAppearingInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1177
    :cond_53
    instance-of v1, v0, Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_5f

    .line 1178
    move-object v1, v0

    check-cast v1, Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 1180
    :cond_5f
    new-instance v1, Landroid/animation/LayoutTransition$4;

    invoke-direct {v1, p0, p2, p1}, Landroid/animation/LayoutTransition$4;-><init>(Landroid/animation/LayoutTransition;Landroid/view/View;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1193
    iget-object p1, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, p2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1195
    return-void
.end method

.method private greylist-max-o runChangeTransition(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .registers 17

    .line 735
    nop

    .line 736
    nop

    .line 738
    const-wide/16 v2, 0x0

    const/4 v7, 0x0

    packed-switch p3, :pswitch_data_7c

    .line 756
    move-wide v5, v2

    move-object v4, v7

    move-object v8, v4

    goto :goto_21

    .line 750
    :pswitch_c
    iget-object v4, p0, Landroid/animation/LayoutTransition;->mChangingAnim:Landroid/animation/Animator;

    .line 751
    iget-wide v5, p0, Landroid/animation/LayoutTransition;->mChangingDuration:J

    .line 752
    sget-object v8, Landroid/animation/LayoutTransition;->defaultChange:Landroid/animation/ObjectAnimator;

    .line 753
    goto :goto_21

    .line 745
    :pswitch_13
    iget-object v4, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingAnim:Landroid/animation/Animator;

    .line 746
    iget-wide v5, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingDuration:J

    .line 747
    sget-object v8, Landroid/animation/LayoutTransition;->defaultChangeOut:Landroid/animation/ObjectAnimator;

    .line 748
    goto :goto_21

    .line 740
    :pswitch_1a
    iget-object v4, p0, Landroid/animation/LayoutTransition;->mChangingAppearingAnim:Landroid/animation/Animator;

    .line 741
    iget-wide v5, p0, Landroid/animation/LayoutTransition;->mChangingAppearingDuration:J

    .line 742
    sget-object v8, Landroid/animation/LayoutTransition;->defaultChangeIn:Landroid/animation/ObjectAnimator;

    .line 743
    nop

    .line 760
    :goto_21
    if-nez v4, :cond_24

    .line 761
    return-void

    .line 765
    :cond_24
    iput-wide v2, p0, Landroid/animation/LayoutTransition;->staggerDelay:J

    .line 767
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v9

    .line 768
    invoke-virtual {v9}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-nez v2, :cond_31

    .line 770
    return-void

    .line 772
    :cond_31
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    .line 774
    const/4 v2, 0x0

    move v11, v2

    :goto_37
    if-ge v11, v10, :cond_4e

    .line 775
    move-object v3, v4

    move-wide v4, v5

    invoke-virtual {p1, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 778
    move-object v12, p2

    if-eq v6, v12, :cond_49

    .line 779
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    invoke-direct/range {v0 .. v6}, Landroid/animation/LayoutTransition;->setupChangeAnimation(Landroid/view/ViewGroup;ILandroid/animation/Animator;JLandroid/view/View;)V

    .line 774
    :cond_49
    add-int/lit8 v11, v11, 0x1

    move-wide v5, v4

    move-object v4, v3

    goto :goto_37

    .line 782
    :cond_4e
    move-wide v4, v5

    iget-boolean v1, p0, Landroid/animation/LayoutTransition;->mAnimateParentHierarchy:Z

    if-eqz v1, :cond_6d

    .line 783
    move-object v6, p1

    .line 784
    :goto_54
    if-eqz v6, :cond_6d

    .line 785
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 786
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_69

    .line 787
    check-cast v1, Landroid/view/ViewGroup;

    move-object v0, p0

    move/from16 v2, p3

    move-object v3, v8

    invoke-direct/range {v0 .. v6}, Landroid/animation/LayoutTransition;->setupChangeAnimation(Landroid/view/ViewGroup;ILandroid/animation/Animator;JLandroid/view/View;)V

    .line 789
    move-object v6, v1

    goto :goto_6b

    .line 791
    :cond_69
    move-object v3, v8

    move-object v6, v7

    .line 794
    :goto_6b
    move-object v8, v3

    goto :goto_54

    .line 800
    :cond_6d
    new-instance v1, Landroid/animation/LayoutTransition$CleanupCallback;

    iget-object v0, p0, Landroid/animation/LayoutTransition;->layoutChangeListenerMap:Ljava/util/HashMap;

    invoke-direct {v1, v0, p1}, Landroid/animation/LayoutTransition$CleanupCallback;-><init>(Ljava/util/Map;Landroid/view/ViewGroup;)V

    .line 801
    invoke-virtual {v9, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 802
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 803
    return-void

    nop

    :pswitch_data_7c
    .packed-switch 0x2
        :pswitch_1a
        :pswitch_13
        :pswitch_c
    .end packed-switch
.end method

.method private greylist-max-o runDisappearingTransition(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 6

    .line 1204
    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 1205
    if-eqz v0, :cond_d

    .line 1206
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1208
    :cond_d
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mDisappearingAnim:Landroid/animation/Animator;

    if-nez v0, :cond_35

    .line 1209
    invoke-direct {p0}, Landroid/animation/LayoutTransition;->hasListeners()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1210
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    .line 1211
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1212
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/LayoutTransition$TransitionListener;

    .line 1213
    const/4 v2, 0x3

    invoke-interface {v1, p0, p1, p2, v2}, Landroid/animation/LayoutTransition$TransitionListener;->endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 1214
    goto :goto_23

    .line 1216
    :cond_34
    return-void

    .line 1218
    :cond_35
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mDisappearingAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    .line 1219
    iget-wide v1, p0, Landroid/animation/LayoutTransition;->mDisappearingDelay:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1220
    iget-wide v1, p0, Landroid/animation/LayoutTransition;->mDisappearingDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1221
    iget-object v1, p0, Landroid/animation/LayoutTransition;->mDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    sget-object v2, Landroid/animation/LayoutTransition;->sDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    if-eq v1, v2, :cond_50

    .line 1222
    iget-object v1, p0, Landroid/animation/LayoutTransition;->mDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1224
    :cond_50
    invoke-virtual {v0, p2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1225
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v1

    .line 1226
    new-instance v2, Landroid/animation/LayoutTransition$5;

    invoke-direct {v2, p0, p2, v1, p1}, Landroid/animation/LayoutTransition$5;-><init>(Landroid/animation/LayoutTransition;Landroid/view/View;FLandroid/view/ViewGroup;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1240
    instance-of p1, v0, Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_6b

    .line 1241
    move-object p1, v0

    check-cast p1, Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 1243
    :cond_6b
    iget-object p1, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, p2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1244
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1245
    return-void
.end method

.method private greylist-max-o setupChangeAnimation(Landroid/view/ViewGroup;ILandroid/animation/Animator;JLandroid/view/View;)V
    .registers 15

    .line 837
    iget-object v0, p0, Landroid/animation/LayoutTransition;->layoutChangeListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 838
    return-void

    .line 845
    :cond_9
    invoke-virtual {p6}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p6}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_16

    .line 846
    return-void

    .line 850
    :cond_16
    invoke-virtual {p3}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v2

    .line 853
    invoke-virtual {v2, p6}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 857
    invoke-virtual {v2}, Landroid/animation/Animator;->setupStartValues()V

    .line 860
    iget-object v0, p0, Landroid/animation/LayoutTransition;->pendingAnimations:Ljava/util/HashMap;

    invoke-virtual {v0, p6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 861
    if-eqz v0, :cond_32

    .line 862
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 863
    iget-object v0, p0, Landroid/animation/LayoutTransition;->pendingAnimations:Ljava/util/HashMap;

    invoke-virtual {v0, p6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    :cond_32
    iget-object v0, p0, Landroid/animation/LayoutTransition;->pendingAnimations:Ljava/util/HashMap;

    invoke-virtual {v0, p6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_76

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v4, 0x64

    add-long/2addr v4, p4

    .line 874
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 875
    new-instance v4, Landroid/animation/LayoutTransition$1;

    invoke-direct {v4, p0, p6}, Landroid/animation/LayoutTransition$1;-><init>(Landroid/animation/LayoutTransition;Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 881
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 885
    new-instance v0, Landroid/animation/LayoutTransition$2;

    move-object v1, p0

    move-object v7, p1

    move v3, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/animation/LayoutTransition$2;-><init>(Landroid/animation/LayoutTransition;Landroid/animation/Animator;IJLandroid/view/View;Landroid/view/ViewGroup;)V

    .line 962
    move-object v6, v2

    move-object v5, v0

    new-instance v0, Landroid/animation/LayoutTransition$3;

    move-object v2, p1

    move v4, p2

    move-object v3, p6

    invoke-direct/range {v0 .. v5}, Landroid/animation/LayoutTransition$3;-><init>(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;ILandroid/view/View$OnLayoutChangeListener;)V

    move-object v2, v0

    move-object v0, v5

    invoke-virtual {v6, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1000
    invoke-virtual {p6, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1002
    iget-object v1, p0, Landroid/animation/LayoutTransition;->layoutChangeListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    return-void

    nop

    :array_76
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public whitelist addChild(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 4

    .line 1326
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/animation/LayoutTransition;->addChild(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 1327
    return-void
.end method

.method public whitelist addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V
    .registers 3

    .line 1437
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 1438
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    .line 1440
    :cond_b
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1441
    return-void
.end method

.method public greylist-max-p cancel()V
    .registers 3

    .line 1077
    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_2d

    .line 1078
    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    .line 1079
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    .line 1080
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 1081
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 1082
    goto :goto_18

    .line 1083
    :cond_28
    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 1085
    :cond_2d
    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_5a

    .line 1086
    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    .line 1087
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    .line 1088
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 1089
    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    .line 1090
    goto :goto_45

    .line 1091
    :cond_55
    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 1093
    :cond_5a
    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_87

    .line 1094
    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    .line 1095
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    .line 1096
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_72
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_82

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 1097
    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    .line 1098
    goto :goto_72

    .line 1099
    :cond_82
    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 1101
    :cond_87
    return-void
.end method

.method public greylist-max-p cancel(I)V
    .registers 3

    .line 1113
    packed-switch p1, :pswitch_data_90

    goto/16 :goto_8f

    .line 1137
    :pswitch_5
    iget-object p1, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    if-lez p1, :cond_8f

    .line 1138
    iget-object p1, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    .line 1139
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedHashMap;

    .line 1140
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 1141
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 1142
    goto :goto_1d

    .line 1143
    :cond_2d
    iget-object p1, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clear()V

    goto :goto_8f

    .line 1127
    :pswitch_33
    iget-object p1, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    if-lez p1, :cond_8f

    .line 1128
    iget-object p1, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    .line 1129
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedHashMap;

    .line 1130
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 1131
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 1132
    goto :goto_4b

    .line 1133
    :cond_5b
    iget-object p1, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clear()V

    .line 1134
    goto :goto_8f

    .line 1117
    :pswitch_61
    iget-object p1, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    if-lez p1, :cond_8f

    .line 1118
    iget-object p1, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    .line 1119
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedHashMap;

    .line 1120
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_79
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 1121
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1122
    goto :goto_79

    .line 1123
    :cond_89
    iget-object p1, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clear()V

    .line 1124
    nop

    .line 1147
    :cond_8f
    :goto_8f
    return-void

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_61
        :pswitch_61
        :pswitch_33
        :pswitch_5
        :pswitch_61
    .end packed-switch
.end method

.method public whitelist disableTransitionType(I)V
    .registers 2

    .line 376
    packed-switch p1, :pswitch_data_28

    goto :goto_27

    .line 390
    :pswitch_4
    iget p1, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    goto :goto_27

    .line 381
    :pswitch_b
    iget p1, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    .line 382
    goto :goto_27

    .line 378
    :pswitch_12
    iget p1, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    .line 379
    goto :goto_27

    .line 387
    :pswitch_19
    iget p1, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/lit8 p1, p1, -0x9

    iput p1, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    .line 388
    goto :goto_27

    .line 384
    :pswitch_20
    iget p1, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/lit8 p1, p1, -0x5

    iput p1, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    .line 385
    nop

    .line 393
    :goto_27
    return-void

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_20
        :pswitch_19
        :pswitch_12
        :pswitch_b
        :pswitch_4
    .end packed-switch
.end method

.method public whitelist enableTransitionType(I)V
    .registers 2

    .line 349
    packed-switch p1, :pswitch_data_28

    goto :goto_27

    .line 363
    :pswitch_4
    iget p1, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    goto :goto_27

    .line 354
    :pswitch_b
    iget p1, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    .line 355
    goto :goto_27

    .line 351
    :pswitch_12
    iget p1, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    .line 352
    goto :goto_27

    .line 360
    :pswitch_19
    iget p1, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    .line 361
    goto :goto_27

    .line 357
    :pswitch_20
    iget p1, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    .line 358
    nop

    .line 366
    :goto_27
    return-void

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_20
        :pswitch_19
        :pswitch_12
        :pswitch_b
        :pswitch_4
    .end packed-switch
.end method

.method public greylist-max-o endChangingAnimations()V
    .registers 3

    .line 1035
    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    .line 1036
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    .line 1037
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 1038
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 1039
    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    .line 1040
    goto :goto_10

    .line 1042
    :cond_23
    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 1043
    return-void
.end method

.method public whitelist getAnimator(I)Landroid/animation/Animator;
    .registers 2

    .line 702
    packed-switch p1, :pswitch_data_14

    .line 715
    const/4 p1, 0x0

    return-object p1

    .line 708
    :pswitch_5
    iget-object p1, p0, Landroid/animation/LayoutTransition;->mChangingAnim:Landroid/animation/Animator;

    return-object p1

    .line 712
    :pswitch_8
    iget-object p1, p0, Landroid/animation/LayoutTransition;->mDisappearingAnim:Landroid/animation/Animator;

    return-object p1

    .line 710
    :pswitch_b
    iget-object p1, p0, Landroid/animation/LayoutTransition;->mAppearingAnim:Landroid/animation/Animator;

    return-object p1

    .line 706
    :pswitch_e
    iget-object p1, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingAnim:Landroid/animation/Animator;

    return-object p1

    .line 704
    :pswitch_11
    iget-object p1, p0, Landroid/animation/LayoutTransition;->mChangingAppearingAnim:Landroid/animation/Animator;

    return-object p1

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public whitelist getDuration(I)J
    .registers 4

    .line 521
    packed-switch p1, :pswitch_data_16

    .line 534
    const-wide/16 v0, 0x0

    return-wide v0

    .line 527
    :pswitch_6
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingDuration:J

    return-wide v0

    .line 531
    :pswitch_9
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mDisappearingDuration:J

    return-wide v0

    .line 529
    :pswitch_c
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mAppearingDuration:J

    return-wide v0

    .line 525
    :pswitch_f
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingDuration:J

    return-wide v0

    .line 523
    :pswitch_12
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingAppearingDuration:J

    return-wide v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public whitelist getInterpolator(I)Landroid/animation/TimeInterpolator;
    .registers 2

    .line 626
    packed-switch p1, :pswitch_data_14

    .line 639
    const/4 p1, 0x0

    return-object p1

    .line 632
    :pswitch_5
    iget-object p1, p0, Landroid/animation/LayoutTransition;->mChangingInterpolator:Landroid/animation/TimeInterpolator;

    return-object p1

    .line 636
    :pswitch_8
    iget-object p1, p0, Landroid/animation/LayoutTransition;->mDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    return-object p1

    .line 634
    :pswitch_b
    iget-object p1, p0, Landroid/animation/LayoutTransition;->mAppearingInterpolator:Landroid/animation/TimeInterpolator;

    return-object p1

    .line 630
    :pswitch_e
    iget-object p1, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    return-object p1

    .line 628
    :pswitch_11
    iget-object p1, p0, Landroid/animation/LayoutTransition;->mChangingAppearingInterpolator:Landroid/animation/TimeInterpolator;

    return-object p1

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public whitelist getStagger(I)J
    .registers 4

    .line 571
    packed-switch p1, :pswitch_data_10

    .line 580
    :pswitch_3
    const-wide/16 v0, 0x0

    return-wide v0

    .line 577
    :pswitch_6
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingStagger:J

    return-wide v0

    .line 575
    :pswitch_9
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingStagger:J

    return-wide v0

    .line 573
    :pswitch_c
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingAppearingStagger:J

    return-wide v0

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_c
        :pswitch_9
        :pswitch_3
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method public whitelist getStartDelay(I)J
    .registers 4

    .line 462
    packed-switch p1, :pswitch_data_16

    .line 475
    const-wide/16 v0, 0x0

    return-wide v0

    .line 468
    :pswitch_6
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingDelay:J

    return-wide v0

    .line 472
    :pswitch_9
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mDisappearingDelay:J

    return-wide v0

    .line 470
    :pswitch_c
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mAppearingDelay:J

    return-wide v0

    .line 466
    :pswitch_f
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingDelay:J

    return-wide v0

    .line 464
    :pswitch_12
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingAppearingDelay:J

    return-wide v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public whitelist getTransitionListeners()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/animation/LayoutTransition$TransitionListener;",
            ">;"
        }
    .end annotation

    .line 1460
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist hideChild(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1412
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 1413
    return-void
.end method

.method public whitelist hideChild(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .registers 5

    .line 1427
    const/16 v0, 0x8

    if-ne p3, v0, :cond_6

    const/4 p3, 0x1

    goto :goto_7

    :cond_6
    const/4 p3, 0x0

    :goto_7
    invoke-direct {p0, p1, p2, p3}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 1428
    return-void
.end method

.method public whitelist isChangingLayout()Z
    .registers 2

    .line 1054
    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist isRunning()Z
    .registers 2

    .line 1063
    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-gtz v0, :cond_1b

    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-gtz v0, :cond_1b

    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    .line 1064
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    .line 1063
    :goto_1c
    return v0
.end method

.method public whitelist isTransitionTypeEnabled(I)Z
    .registers 5

    .line 404
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_30

    .line 416
    return v0

    .line 414
    :pswitch_6
    iget p1, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    const/16 v2, 0x10

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_e

    move v0, v1

    :cond_e
    return v0

    .line 408
    :pswitch_f
    iget p1, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    const/4 v2, 0x2

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_16

    move v0, v1

    :cond_16
    return v0

    .line 406
    :pswitch_17
    iget p1, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_1d

    move v0, v1

    :cond_1d
    return v0

    .line 412
    :pswitch_1e
    iget p1, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    const/16 v2, 0x8

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_26

    move v0, v1

    :cond_26
    return v0

    .line 410
    :pswitch_27
    iget p1, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    const/4 v2, 0x4

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_2e

    move v0, v1

    :cond_2e
    return v0

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_27
        :pswitch_1e
        :pswitch_17
        :pswitch_f
        :pswitch_6
    .end packed-switch
.end method

.method public greylist-max-o layoutChange(Landroid/view/ViewGroup;)V
    .registers 4

    .line 1304
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    .line 1305
    return-void

    .line 1307
    :cond_7
    iget v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_19

    invoke-virtual {p0}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1312
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, p1, v0, v1}, Landroid/animation/LayoutTransition;->runChangeTransition(Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 1314
    :cond_19
    return-void
.end method

.method public whitelist removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 4

    .line 1404
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 1405
    return-void
.end method

.method public whitelist removeTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V
    .registers 3

    .line 1449
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 1450
    return-void

    .line 1452
    :cond_5
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1453
    return-void
.end method

.method public whitelist setAnimateParentHierarchy(Z)V
    .registers 2

    .line 823
    iput-boolean p1, p0, Landroid/animation/LayoutTransition;->mAnimateParentHierarchy:Z

    .line 824
    return-void
.end method

.method public whitelist setAnimator(ILandroid/animation/Animator;)V
    .registers 3

    .line 673
    packed-switch p1, :pswitch_data_14

    goto :goto_13

    .line 681
    :pswitch_4
    iput-object p2, p0, Landroid/animation/LayoutTransition;->mChangingAnim:Landroid/animation/Animator;

    .line 682
    goto :goto_13

    .line 687
    :pswitch_7
    iput-object p2, p0, Landroid/animation/LayoutTransition;->mDisappearingAnim:Landroid/animation/Animator;

    goto :goto_13

    .line 684
    :pswitch_a
    iput-object p2, p0, Landroid/animation/LayoutTransition;->mAppearingAnim:Landroid/animation/Animator;

    .line 685
    goto :goto_13

    .line 678
    :pswitch_d
    iput-object p2, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingAnim:Landroid/animation/Animator;

    .line 679
    goto :goto_13

    .line 675
    :pswitch_10
    iput-object p2, p0, Landroid/animation/LayoutTransition;->mChangingAppearingAnim:Landroid/animation/Animator;

    .line 676
    nop

    .line 690
    :goto_13
    return-void

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_10
        :pswitch_d
        :pswitch_a
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method

.method public whitelist setDuration(IJ)V
    .registers 4

    .line 490
    packed-switch p1, :pswitch_data_14

    goto :goto_13

    .line 498
    :pswitch_4
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mChangingDuration:J

    .line 499
    goto :goto_13

    .line 504
    :pswitch_7
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mDisappearingDuration:J

    goto :goto_13

    .line 501
    :pswitch_a
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mAppearingDuration:J

    .line 502
    goto :goto_13

    .line 495
    :pswitch_d
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingDuration:J

    .line 496
    goto :goto_13

    .line 492
    :pswitch_10
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mChangingAppearingDuration:J

    .line 493
    nop

    .line 507
    :goto_13
    return-void

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_10
        :pswitch_d
        :pswitch_a
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method

.method public whitelist setDuration(J)V
    .registers 3

    .line 330
    iput-wide p1, p0, Landroid/animation/LayoutTransition;->mChangingAppearingDuration:J

    .line 331
    iput-wide p1, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingDuration:J

    .line 332
    iput-wide p1, p0, Landroid/animation/LayoutTransition;->mChangingDuration:J

    .line 333
    iput-wide p1, p0, Landroid/animation/LayoutTransition;->mAppearingDuration:J

    .line 334
    iput-wide p1, p0, Landroid/animation/LayoutTransition;->mDisappearingDuration:J

    .line 335
    return-void
.end method

.method public whitelist setInterpolator(ILandroid/animation/TimeInterpolator;)V
    .registers 3

    .line 595
    packed-switch p1, :pswitch_data_14

    goto :goto_13

    .line 603
    :pswitch_4
    iput-object p2, p0, Landroid/animation/LayoutTransition;->mChangingInterpolator:Landroid/animation/TimeInterpolator;

    .line 604
    goto :goto_13

    .line 609
    :pswitch_7
    iput-object p2, p0, Landroid/animation/LayoutTransition;->mDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_13

    .line 606
    :pswitch_a
    iput-object p2, p0, Landroid/animation/LayoutTransition;->mAppearingInterpolator:Landroid/animation/TimeInterpolator;

    .line 607
    goto :goto_13

    .line 600
    :pswitch_d
    iput-object p2, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    .line 601
    goto :goto_13

    .line 597
    :pswitch_10
    iput-object p2, p0, Landroid/animation/LayoutTransition;->mChangingAppearingInterpolator:Landroid/animation/TimeInterpolator;

    .line 598
    nop

    .line 612
    :goto_13
    return-void

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_10
        :pswitch_d
        :pswitch_a
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method

.method public whitelist setStagger(IJ)V
    .registers 4

    .line 547
    packed-switch p1, :pswitch_data_e

    :pswitch_3
    goto :goto_d

    .line 555
    :pswitch_4
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mChangingStagger:J

    goto :goto_d

    .line 552
    :pswitch_7
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingStagger:J

    .line 553
    goto :goto_d

    .line 549
    :pswitch_a
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mChangingAppearingStagger:J

    .line 550
    nop

    .line 559
    :goto_d
    return-void

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_a
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public whitelist setStartDelay(IJ)V
    .registers 4

    .line 431
    packed-switch p1, :pswitch_data_14

    goto :goto_13

    .line 439
    :pswitch_4
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mChangingDelay:J

    .line 440
    goto :goto_13

    .line 445
    :pswitch_7
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mDisappearingDelay:J

    goto :goto_13

    .line 442
    :pswitch_a
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mAppearingDelay:J

    .line 443
    goto :goto_13

    .line 436
    :pswitch_d
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingDelay:J

    .line 437
    goto :goto_13

    .line 433
    :pswitch_10
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mChangingAppearingDelay:J

    .line 434
    nop

    .line 448
    :goto_13
    return-void

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_10
        :pswitch_d
        :pswitch_a
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method

.method public whitelist showChild(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1334
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/animation/LayoutTransition;->addChild(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 1335
    return-void
.end method

.method public whitelist showChild(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .registers 5

    .line 1349
    const/16 v0, 0x8

    if-ne p3, v0, :cond_6

    const/4 p3, 0x1

    goto :goto_7

    :cond_6
    const/4 p3, 0x0

    :goto_7
    invoke-direct {p0, p1, p2, p3}, Landroid/animation/LayoutTransition;->addChild(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 1350
    return-void
.end method

.method public greylist-max-o startChangingAnimations()V
    .registers 6

    .line 1016
    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    .line 1017
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    .line 1018
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 1019
    instance-of v2, v1, Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_28

    .line 1020
    move-object v2, v1

    check-cast v2, Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 1022
    :cond_28
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 1023
    goto :goto_10

    .line 1024
    :cond_2c
    return-void
.end method
