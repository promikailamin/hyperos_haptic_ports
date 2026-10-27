.class public Lcom/android/server/wm/TransparentPolicy;
.super Ljava/lang/Object;
.source "TransparentPolicy.java"


# static fields
.field public static final FIRST_OPAQUE_NOT_FINISHING_ACTIVITY_PREDICATE:Ljava/util/function/Predicate;


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mDestroyListeners:Ljava/util/List;

.field public final mIsTranslucentLetterboxingEnabledSupplier:Ljava/util/function/BooleanSupplier;

.field public final mTransparentPolicyState:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDestroyListeners(Lcom/android/server/wm/TransparentPolicy;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TransparentPolicy;->mDestroyListeners:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smresetTranslucentOverrideConfig(Landroid/content/res/Configuration;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/TransparentPolicy;->resetTranslucentOverrideConfig(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 57
    new-instance v0, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/wm/TransparentPolicy;->FIRST_OPAQUE_NOT_FINISHING_ACTIVITY_PREDICATE:Ljava/util/function/Predicate;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;)V
    .registers 4

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TransparentPolicy;->mDestroyListeners:Ljava/util/List;

    .line 79
    iput-object p1, p0, Lcom/android/server/wm/TransparentPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 81
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/server/wm/TransparentPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/android/server/wm/TransparentPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AppCompatConfiguration;)V

    iput-object v0, p0, Lcom/android/server/wm/TransparentPolicy;->mIsTranslucentLetterboxingEnabledSupplier:Ljava/util/function/BooleanSupplier;

    .line 82
    new-instance p2, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    invoke-direct {p2, p1}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    iput-object p2, p0, Lcom/android/server/wm/TransparentPolicy;->mTransparentPolicyState:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    return-void
.end method

.method public static resetTranslucentOverrideConfig(Landroid/content/res/Configuration;)V
    .registers 2

    const/4 v0, 0x0

    .line 220
    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 221
    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 222
    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 223
    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    return-void
.end method


# virtual methods
.method public applyOnOpaqueActivityBelow(Ljava/util/function/Consumer;)Z
    .registers 2

    .line 176
    iget-object p0, p0, Lcom/android/server/wm/TransparentPolicy;->mTransparentPolicyState:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    invoke-static {p0, p1}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->-$$Nest$mapplyOnOpaqueActivityBelow(Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;Ljava/util/function/Consumer;)Z

    move-result p0

    return p0
.end method

.method public clearInheritedAppCompatDisplayInsets()V
    .registers 1

    .line 168
    iget-object p0, p0, Lcom/android/server/wm/TransparentPolicy;->mTransparentPolicyState:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    invoke-static {p0}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->-$$Nest$mclearInheritedAppCompatDisplayInsets(Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "isTransparentPolicyRunning="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/TransparentPolicy;->isRunning()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public findOpaqueNotFinishingActivityBelow()Ljava/util/Optional;
    .registers 1

    .line 190
    iget-object p0, p0, Lcom/android/server/wm/TransparentPolicy;->mTransparentPolicyState:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    invoke-static {p0}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->-$$Nest$mfindOpaqueNotFinishingActivityBelow(Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getFirstOpaqueActivity()Ljava/util/Optional;
    .registers 2

    .line 181
    invoke-virtual {p0}, Lcom/android/server/wm/TransparentPolicy;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object p0, p0, Lcom/android/server/wm/TransparentPolicy;->mTransparentPolicyState:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    invoke-static {p0}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->-$$Nest$fgetmFirstOpaqueActivity(Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 182
    :cond_11
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getInheritedAppCompatDisplayInsets()Lcom/android/server/wm/AppCompatDisplayInsets;
    .registers 1

    .line 164
    iget-object p0, p0, Lcom/android/server/wm/TransparentPolicy;->mTransparentPolicyState:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    invoke-static {p0}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->-$$Nest$fgetmInheritedAppCompatDisplayInsets(Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;)Lcom/android/server/wm/AppCompatDisplayInsets;

    move-result-object p0

    return-object p0
.end method

.method public getInheritedAppCompatState()I
    .registers 1

    .line 155
    iget-object p0, p0, Lcom/android/server/wm/TransparentPolicy;->mTransparentPolicyState:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    invoke-static {p0}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->-$$Nest$fgetmInheritedAppCompatState(Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;)I

    move-result p0

    return p0
.end method

.method public getInheritedMaxAspectRatio()F
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/android/server/wm/TransparentPolicy;->mTransparentPolicyState:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    invoke-static {p0}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->-$$Nest$fgetmInheritedMaxAspectRatio(Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;)F

    move-result p0

    return p0
.end method

.method public getInheritedMinAspectRatio()F
    .registers 1

    .line 147
    iget-object p0, p0, Lcom/android/server/wm/TransparentPolicy;->mTransparentPolicyState:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    invoke-static {p0}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->-$$Nest$fgetmInheritedMinAspectRatio(Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;)F

    move-result p0

    return p0
.end method

.method public getInheritedOrientation()I
    .registers 1

    .line 160
    iget-object p0, p0, Lcom/android/server/wm/TransparentPolicy;->mTransparentPolicyState:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    invoke-static {p0}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->-$$Nest$fgetmInheritedOrientation(Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;)I

    move-result p0

    return p0
.end method

.method public hasInheritedOrientation()Z
    .registers 2

    .line 141
    invoke-virtual {p0}, Lcom/android/server/wm/TransparentPolicy;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object p0, p0, Lcom/android/server/wm/TransparentPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 142
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public isRunning()Z
    .registers 1

    .line 130
    iget-object p0, p0, Lcom/android/server/wm/TransparentPolicy;->mTransparentPolicyState:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    invoke-static {p0}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->-$$Nest$misRunning(Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;)Z

    move-result p0

    return p0
.end method

.method public final shouldSkipTransparentPolicy(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4

    const/4 v0, 0x1

    if-eqz p1, :cond_31

    .line 199
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    move-result v1

    if-nez v1, :cond_31

    .line 200
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->areBoundsLetterboxed()Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_31

    .line 206
    :cond_10
    iget-object p1, p0, Lcom/android/server/wm/TransparentPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 207
    invoke-virtual {p1}, Lcom/android/server/wm/AppCompatController;->getSizeCompatModePolicy()Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    move-result-object p1

    .line 208
    iget-object v1, p0, Lcom/android/server/wm/TransparentPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_31

    iget-object p0, p0, Lcom/android/server/wm/TransparentPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result p0

    if-nez p0, :cond_31

    .line 209
    invoke-virtual {p1}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->hasAppCompatDisplayInsetsWithoutInheritance()Z

    move-result p0

    if-eqz p0, :cond_2f

    goto :goto_31

    :cond_2f
    const/4 p0, 0x0

    return p0

    :cond_31
    :goto_31
    return v0
.end method

.method public start()V
    .registers 7

    .line 90
    iget-object v0, p0, Lcom/android/server/wm/TransparentPolicy;->mIsTranslucentLetterboxingEnabledSupplier:Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3a

    .line 93
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/TransparentPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_3a

    .line 97
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/TransparentPolicy;->mTransparentPolicyState:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    invoke-static {v0}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->-$$Nest$misRunning(Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;)Z

    move-result v0

    .line 98
    iget-object v1, p0, Lcom/android/server/wm/TransparentPolicy;->mTransparentPolicyState:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    invoke-static {v1}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->-$$Nest$mreset(Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;)V

    .line 101
    iget-object v1, p0, Lcom/android/server/wm/TransparentPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    sget-object v2, Lcom/android/server/wm/TransparentPolicy;->FIRST_OPAQUE_NOT_FINISHING_ACTIVITY_PREDICATE:Ljava/util/function/Predicate;

    iget-object v3, p0, Lcom/android/server/wm/TransparentPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 107
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TransparentPolicy;->shouldSkipTransparentPolicy(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_3b

    if-eqz v0, :cond_3a

    .line 109
    iget-object p0, p0, Lcom/android/server/wm/TransparentPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->recomputeConfiguration()V

    :cond_3a
    :goto_3a
    return-void

    .line 113
    :cond_3b
    iget-object p0, p0, Lcom/android/server/wm/TransparentPolicy;->mTransparentPolicyState:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    invoke-static {p0, v1}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->-$$Nest$mstart(Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public stop()V
    .registers 3

    .line 117
    iget-object v0, p0, Lcom/android/server/wm/TransparentPolicy;->mDestroyListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 118
    iget-object v1, p0, Lcom/android/server/wm/TransparentPolicy;->mDestroyListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TransparentPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/TransparentPolicy;->start()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 120
    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/TransparentPolicy;->mDestroyListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 121
    iget-object p0, p0, Lcom/android/server/wm/TransparentPolicy;->mTransparentPolicyState:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    invoke-static {p0}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->-$$Nest$mreset(Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;)V

    return-void
.end method
