.class public Lcom/android/server/wm/AppTransitionController;
.super Ljava/lang/Object;
.source "AppTransitionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AppTransitionController$TransitContainerType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final TYPE_ACTIVITY:I = 0x1

.field private static final TYPE_NONE:I = 0x0

.field private static final TYPE_TASK:I = 0x3

.field private static final TYPE_TASK_FRAGMENT:I = 0x2


# instance fields
.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mMiuiThumbnailAppTokenList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTempTransitionReasons:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/WindowContainer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempTransitionWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    .line 135
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mTempTransitionReasons:Landroid/util/ArrayMap;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mTempTransitionWindows:Ljava/util/ArrayList;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mMiuiThumbnailAppTokenList:Ljava/util/ArrayList;

    .line 144
    iput-object p1, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 145
    iput-object p2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 146
    iget-object v0, p2, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iput-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    .line 147
    return-void
.end method

.method private applyAnimations(Landroid/util/ArraySet;Landroid/util/ArraySet;ILandroid/view/WindowManager$LayoutParams;Z)V
    .registers 16
    .param p3, "transit"    # I
    .param p4, "animLp"    # Landroid/view/WindowManager$LayoutParams;
    .param p5, "voiceInteraction"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;I",
            "Landroid/view/WindowManager$LayoutParams;",
            "Z)V"
        }
    .end annotation

    .line 1053
    .local p1, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    .local p2, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    const/4 v0, -0x1

    if-eq p3, v0, :cond_86

    .line 1054
    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto/16 :goto_86

    .line 1065
    :cond_11
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/android/server/wm/AppTransitionController;->getAnimationTargets(Landroid/util/ArraySet;Landroid/util/ArraySet;Z)Landroid/util/ArraySet;

    move-result-object v0

    .line 1067
    .local v0, "openingWcs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    const/4 v8, 0x0

    invoke-static {p1, p2, v8}, Lcom/android/server/wm/AppTransitionController;->getAnimationTargets(Landroid/util/ArraySet;Landroid/util/ArraySet;Z)Landroid/util/ArraySet;

    move-result-object v9

    .line 1077
    .local v9, "closingWcs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    invoke-static {p3}, Lcom/android/server/wm/AppTransitionController;->isTaskAnimationOld(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1078
    invoke-static {}, Lcom/android/server/wm/AppTransitionStub;->get()Lcom/android/server/wm/AppTransitionStub;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-interface {v1, v0, v9, v2}, Lcom/android/server/wm/AppTransitionStub;->switchTransitType(Landroid/util/ArraySet;Landroid/util/ArraySet;Lcom/android/server/wm/WindowManagerService;)V

    .line 1081
    :cond_2a
    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move v4, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/AppTransitionController;->applyAnimations(Landroid/util/ArraySet;Landroid/util/ArraySet;IZLandroid/view/WindowManager$LayoutParams;Z)V

    .line 1083
    const/4 v5, 0x0

    move-object v2, v9

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/AppTransitionController;->applyAnimations(Landroid/util/ArraySet;Landroid/util/ArraySet;IZLandroid/view/WindowManager$LayoutParams;Z)V

    .line 1085
    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v1

    .line 1086
    .local v1, "rac":Lcom/android/server/wm/RecentsAnimationController;
    if-eqz v1, :cond_45

    .line 1087
    invoke-virtual {v1}, Lcom/android/server/wm/RecentsAnimationController;->sendTasksAppeared()V

    .line 1091
    :cond_45
    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2, v0, v9}, Lcom/android/server/wm/AppTransition;->setLastAppTransitionTarget(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 1092
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4d
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_5e

    .line 1093
    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAtUnchecked(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    iput-boolean v8, v3, Lcom/android/server/wm/ActivityRecord;->mOverrideTaskTransition:Z

    .line 1092
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 1095
    .end local v2    # "i":I
    :cond_5e
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5f
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_70

    .line 1096
    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->valueAtUnchecked(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    iput-boolean v8, v3, Lcom/android/server/wm/ActivityRecord;->mOverrideTaskTransition:Z

    .line 1095
    add-int/lit8 v2, v2, 0x1

    goto :goto_5f

    .line 1099
    .end local v2    # "i":I
    :cond_70
    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 1101
    .local v2, "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    invoke-virtual {v2}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    move-result v3

    if-eqz v3, :cond_85

    .line 1102
    iget-object v3, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3, p3}, Lcom/android/server/wm/AccessibilityController;->onAppWindowTransition(II)V

    .line 1104
    :cond_85
    return-void

    .line 1055
    .end local v0    # "openingWcs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .end local v1    # "rac":Lcom/android/server/wm/RecentsAnimationController;
    .end local v2    # "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    .end local v9    # "closingWcs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    :cond_86
    :goto_86
    return-void
.end method

.method private applyAnimations(Landroid/util/ArraySet;Landroid/util/ArraySet;IZLandroid/view/WindowManager$LayoutParams;Z)V
    .registers 19
    .param p3, "transit"    # I
    .param p4, "visible"    # Z
    .param p5, "animLp"    # Landroid/view/WindowManager$LayoutParams;
    .param p6, "voiceInteraction"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;IZ",
            "Landroid/view/WindowManager$LayoutParams;",
            "Z)V"
        }
    .end annotation

    .line 862
    .local p1, "wcs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .local p2, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 863
    .local v0, "wcsCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_3e

    .line 864
    move-object v2, p1

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 869
    .local v3, "wc":Lcom/android/server/wm/WindowContainer;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v4

    .line 870
    .local v10, "transitioningDescendants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_15
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_2e

    .line 871
    move-object v11, p2

    invoke-virtual {p2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 872
    .local v5, "app":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v5, v3}, Lcom/android/server/wm/ActivityRecord;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 873
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 870
    .end local v5    # "app":Lcom/android/server/wm/ActivityRecord;
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_2e
    move-object v11, p2

    .line 876
    .end local v4    # "j":I
    move-object v4, v3

    move-object/from16 v5, p5

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p6

    move-object v9, v10

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/WindowContainer;->applyAnimation(Landroid/view/WindowManager$LayoutParams;IZZLjava/util/ArrayList;)Z

    .line 863
    .end local v3    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v10    # "transitioningDescendants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_3e
    move-object v2, p1

    move-object v11, p2

    .line 878
    .end local v1    # "i":I
    return-void
.end method

.method private static canBeWallpaperTarget(Landroid/util/ArraySet;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    .line 1449
    .local p0, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_18

    .line 1450
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->windowsCanBeWallpaperTarget()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1451
    return v1

    .line 1449
    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1454
    .end local v0    # "i":I
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method private static collectActivityTypes(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;)Landroid/util/ArraySet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 801
    .local p0, "array1":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    .local p1, "array2":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    .local p2, "array3":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 802
    .local v0, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_21

    .line 803
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 802
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 805
    .end local v1    # "i":I
    :cond_21
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_27
    if-ltz v1, :cond_3d

    .line 806
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 805
    add-int/lit8 v1, v1, -0x1

    goto :goto_27

    .line 808
    .end local v1    # "i":I
    :cond_3d
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_43
    if-ltz v1, :cond_59

    .line 809
    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getActivityType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 808
    add-int/lit8 v1, v1, -0x1

    goto :goto_43

    .line 811
    .end local v1    # "i":I
    :cond_59
    return-object v0
.end method

.method private containsVoiceInteraction(Landroid/util/ArraySet;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    .line 839
    .local p1, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_16

    .line 840
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    iget-boolean v2, v2, Lcom/android/server/wm/ActivityRecord;->mVoiceInteraction:Z

    if-eqz v2, :cond_13

    .line 841
    return v1

    .line 839
    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 844
    .end local v0    # "i":I
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method private findAnimLayoutParamsToken(ILandroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;)Lcom/android/server/wm/ActivityRecord;
    .registers 8
    .param p1, "transit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)",
            "Lcom/android/server/wm/ActivityRecord;"
        }
    .end annotation

    .line 780
    .local p2, "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .local p3, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    .local p4, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    .local p5, "changingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    new-instance v0, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda2;-><init>(ILandroid/util/ArraySet;)V

    invoke-static {p4, p3, p5, v0}, Lcom/android/server/wm/AppTransitionController;->lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 783
    .local v0, "result":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_c

    .line 784
    return-object v0

    .line 786
    :cond_c
    new-instance v1, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p4, p3, p5, v1}, Lcom/android/server/wm/AppTransitionController;->lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 788
    if-eqz v0, :cond_18

    .line 789
    return-object v0

    .line 791
    :cond_18
    new-instance v1, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {p4, p3, p5, v1}, Lcom/android/server/wm/AppTransitionController;->lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    return-object v1
.end method

.method private findParentTaskForAllEmbeddedWindows()Lcom/android/server/wm/Task;
    .registers 8

    .line 602
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mTempTransitionWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 603
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mTempTransitionWindows:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 604
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mTempTransitionWindows:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 605
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mTempTransitionWindows:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 608
    const/4 v0, 0x0

    .line 609
    .local v0, "leafTask":Lcom/android/server/wm/Task;
    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mTempTransitionWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_29
    if-ltz v1, :cond_6b

    .line 610
    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mTempTransitionWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-static {v2}, Lcom/android/server/wm/AppTransitionController;->getAppFromContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 611
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v2, :cond_3b

    .line 612
    const/4 v0, 0x0

    .line 613
    goto :goto_6b

    .line 625
    :cond_3b
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 627
    .local v3, "task":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_6a

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_48

    goto :goto_6a

    .line 632
    :cond_48
    if-eqz v0, :cond_4e

    if-eq v0, v3, :cond_4e

    .line 633
    const/4 v0, 0x0

    .line 634
    goto :goto_6b

    .line 636
    :cond_4e
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 638
    .local v4, "rootActivity":Lcom/android/server/wm/ActivityRecord;
    if-nez v4, :cond_56

    .line 639
    const/4 v0, 0x0

    .line 640
    goto :goto_6b

    .line 644
    :cond_56
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v5

    iget v6, v3, Lcom/android/server/wm/Task;->effectiveUid:I

    if-eq v5, v6, :cond_66

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    move-result v5

    if-nez v5, :cond_66

    .line 645
    const/4 v0, 0x0

    .line 646
    goto :goto_6b

    .line 648
    :cond_66
    move-object v0, v3

    .line 609
    .end local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v3    # "task":Lcom/android/server/wm/Task;
    .end local v4    # "rootActivity":Lcom/android/server/wm/ActivityRecord;
    add-int/lit8 v1, v1, -0x1

    goto :goto_29

    .line 628
    .restart local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v3    # "task":Lcom/android/server/wm/Task;
    :cond_6a
    :goto_6a
    const/4 v0, 0x0

    .line 650
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v3    # "task":Lcom/android/server/wm/Task;
    :cond_6b
    :goto_6b
    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mTempTransitionWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 651
    return-object v0
.end method

.method static findRootTaskFromContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Task;
    .registers 2
    .param p0, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 760
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_17

    .line 761
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 760
    :goto_17
    return-object v0
.end method

.method private findTaskFragmentOrganizer(Lcom/android/server/wm/Task;)Landroid/window/ITaskFragmentOrganizer;
    .registers 9
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 661
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 662
    return-object v0

    .line 665
    :cond_4
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/window/ITaskFragmentOrganizer;

    .line 666
    .local v1, "organizer":[Landroid/window/ITaskFragmentOrganizer;
    new-instance v2, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda6;

    invoke-direct {v2, v1}, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda6;-><init>([Landroid/window/ITaskFragmentOrganizer;)V

    invoke-virtual {p1, v2}, Lcom/android/server/wm/Task;->forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z

    move-result v2

    .line 677
    .local v2, "hasMultipleOrganizers":Z
    const/4 v3, 0x0

    if-eqz v2, :cond_23

    .line 678
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v4, :cond_22

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0x6b97e41c

    move-object v6, v0

    check-cast v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v3, v0, v0}, Lcom/android/internal/protolog/ProtoLogImpl;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 680
    :cond_22
    return-object v0

    .line 682
    :cond_23
    aget-object v0, v1, v3

    return-object v0
.end method

.method private static getAnimLp(Lcom/android/server/wm/ActivityRecord;)Landroid/view/WindowManager$LayoutParams;
    .registers 3
    .param p0, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 553
    const/4 v0, 0x0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_9

    :cond_8
    move-object v1, v0

    .line 554
    .local v1, "mainWindow":Lcom/android/server/wm/WindowState;
    :goto_9
    if-eqz v1, :cond_d

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    :cond_d
    return-object v0
.end method

.method static getAnimationTargets(Landroid/util/ArraySet;Landroid/util/ArraySet;Z)Landroid/util/ArraySet;
    .registers 20
    .param p2, "visible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;Z)",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation

    .line 909
    .local p0, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    .local p1, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    move/from16 v0, p2

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 910
    .local v1, "candidates":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/wm/WindowContainer;>;"
    if-eqz v0, :cond_c

    move-object/from16 v2, p0

    goto :goto_e

    :cond_c
    move-object/from16 v2, p1

    .line 912
    .local v2, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    :goto_e
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_18

    move v3, v5

    goto :goto_19

    :cond_18
    move v3, v4

    .line 913
    .local v3, "allAppAreFreeForm":Z
    :goto_19
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1a
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-ge v6, v7, :cond_31

    .line 914
    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/ActivityRecord;

    .line 915
    .local v7, "app":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->inFreeformWindowingMode()Z

    move-result v8

    if-nez v8, :cond_2e

    .line 916
    const/4 v3, 0x0

    .line 917
    goto :goto_31

    .line 913
    .end local v7    # "app":Lcom/android/server/wm/ActivityRecord;
    :cond_2e
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .line 921
    .end local v6    # "i":I
    :cond_31
    :goto_31
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_32
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v7

    const/4 v8, 0x2

    if-ge v6, v7, :cond_7c

    .line 922
    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/ActivityRecord;

    .line 926
    .restart local v7    # "app":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v7, v0}, Lcom/android/server/wm/ActivityRecord;->shouldApplyAnimation(Z)Z

    move-result v10

    if-eqz v10, :cond_79

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->inFreeformWindowingMode()Z

    move-result v10

    if-eqz v10, :cond_4d

    if-eqz v3, :cond_79

    .line 927
    :cond_4d
    invoke-virtual {v1, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 928
    sget-boolean v10, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v10, :cond_79

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .local v10, "protoLogParam0":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v11

    .local v11, "protoLogParam1":Z
    const/4 v12, 0x0

    .local v12, "protoLogParam2":Z
    sget-object v13, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v14, 0x754ced9f

    const/16 v15, 0x3c

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v10, v9, v4

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v9, v5

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v9, v8

    const/4 v8, 0x0

    invoke-static {v13, v14, v15, v8, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 921
    .end local v7    # "app":Lcom/android/server/wm/ActivityRecord;
    .end local v10    # "protoLogParam0":Ljava/lang/String;
    .end local v11    # "protoLogParam1":Z
    .end local v12    # "protoLogParam2":Z
    :cond_79
    add-int/lit8 v6, v6, 0x1

    goto :goto_32

    .line 934
    .end local v6    # "i":I
    :cond_7c
    if-eqz v0, :cond_81

    move-object/from16 v6, p1

    goto :goto_83

    :cond_81
    move-object/from16 v6, p0

    .line 937
    .local v6, "otherApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    :goto_83
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 938
    .local v7, "otherAncestors":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_89
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v10

    if-ge v9, v10, :cond_a2

    .line 939
    invoke-virtual {v6, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowContainer;

    .local v10, "wc":Lcom/android/server/wm/WindowContainer;
    :goto_95
    if-eqz v10, :cond_9f

    .line 940
    invoke-virtual {v7, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 939
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v10

    goto :goto_95

    .line 938
    .end local v10    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_9f
    add-int/lit8 v9, v9, 0x1

    goto :goto_89

    .line 945
    .end local v9    # "i":I
    :cond_a2
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 946
    .local v9, "targets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 947
    .local v10, "siblings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowContainer;>;"
    :goto_ac
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_146

    .line 948
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowContainer;

    .line 949
    .local v11, "current":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v12

    .line 950
    .local v12, "parent":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 951
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 952
    const/4 v13, 0x1

    .line 954
    .local v13, "canPromote":Z
    invoke-static {v11}, Lcom/android/server/wm/AppTransitionController;->isTaskViewTask(Lcom/android/server/wm/WindowContainer;)Z

    move-result v14

    if-eqz v14, :cond_ca

    .line 959
    goto :goto_ac

    .line 960
    :cond_ca
    if-eqz v12, :cond_13a

    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->canCreateRemoteAnimationTarget()Z

    move-result v14

    if-eqz v14, :cond_13a

    .line 961
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->canBeAnimationTarget()Z

    move-result v14

    if-eqz v14, :cond_13a

    .line 965
    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v14

    if-eqz v14, :cond_e6

    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v14

    iget-boolean v14, v14, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    if-nez v14, :cond_13a

    .line 969
    :cond_e6
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->isChangingAppTransition()Z

    move-result v14

    if-eqz v14, :cond_ed

    goto :goto_13a

    .line 984
    :cond_ed
    invoke-virtual {v7, v12}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f4

    .line 985
    const/4 v13, 0x0

    .line 991
    :cond_f4
    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v14

    if-eqz v14, :cond_113

    .line 992
    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/wm/Task;->getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v14

    if-eqz v14, :cond_113

    .line 993
    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/wm/Task;->getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v14

    if-eqz v14, :cond_113

    .line 994
    const/4 v13, 0x0

    .line 1013
    :cond_113
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_114
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v15

    if-ge v14, v15, :cond_13b

    .line 1014
    invoke-virtual {v12, v14}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v15

    .line 1015
    .local v15, "sibling":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1, v15}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_12e

    .line 1016
    invoke-static {v15}, Lcom/android/server/wm/AppTransitionController;->isTaskViewTask(Lcom/android/server/wm/WindowContainer;)Z

    move-result v16

    if-nez v16, :cond_137

    .line 1021
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_137

    .line 1023
    :cond_12e
    if-eq v15, v11, :cond_137

    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v16

    if-eqz v16, :cond_137

    .line 1024
    const/4 v13, 0x0

    .line 1013
    .end local v15    # "sibling":Lcom/android/server/wm/WindowContainer;
    :cond_137
    :goto_137
    add-int/lit8 v14, v14, 0x1

    goto :goto_114

    .line 970
    .end local v14    # "j":I
    :cond_13a
    :goto_13a
    const/4 v13, 0x0

    .line 1029
    :cond_13b
    if-eqz v13, :cond_141

    .line 1030
    invoke-virtual {v1, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_144

    .line 1032
    :cond_141
    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1034
    .end local v11    # "current":Lcom/android/server/wm/WindowContainer;
    .end local v12    # "parent":Lcom/android/server/wm/WindowContainer;
    .end local v13    # "canPromote":Z
    :goto_144
    goto/16 :goto_ac

    .line 1035
    :cond_146
    sget-boolean v11, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    if-eqz v11, :cond_161

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .local v11, "protoLogParam0":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .local v12, "protoLogParam1":Ljava/lang/String;
    sget-object v13, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v14, 0x57116af2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v11, v8, v4

    aput-object v12, v8, v5

    const/4 v5, 0x0

    invoke-static {v13, v14, v4, v5, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1037
    .end local v11    # "protoLogParam0":Ljava/lang/String;
    .end local v12    # "protoLogParam1":Ljava/lang/String;
    :cond_161
    return-object v9
.end method

.method static getAppFromContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;
    .registers 2
    .param p0, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 766
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto :goto_13

    .line 767
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 766
    :goto_13
    return-object v0
.end method

.method private static getAppsForAnimation(Landroid/util/ArraySet;Z)Landroid/util/ArraySet;
    .registers 4
    .param p1, "excludeLauncherFromAnimation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;Z)",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation

    .line 181
    .local p0, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 182
    .local v0, "appsForAnimation":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    if-eqz p1, :cond_f

    .line 183
    new-instance v1, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    .line 185
    :cond_f
    return-object v0
.end method

.method private getOldWallpaper()Lcom/android/server/wm/WindowState;
    .registers 7

    .line 159
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 160
    .local v0, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 161
    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->getFirstAppTransition()I

    move-result v1

    .line 163
    .local v1, "firstTransit":I
    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/server/wm/AppTransitionController;->getAnimationTargets(Landroid/util/ArraySet;Landroid/util/ArraySet;Z)Landroid/util/ArraySet;

    move-result-object v2

    .line 165
    .local v2, "openingWcs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    const/4 v3, 0x0

    if-eqz v0, :cond_44

    .line 166
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->hasWallpaper()Z

    move-result v5

    if-nez v5, :cond_43

    if-eq v1, v4, :cond_29

    const/4 v5, 0x3

    if-ne v1, v5, :cond_44

    .line 170
    :cond_29
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_44

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_44

    iget-object v5, p0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    .line 171
    invoke-virtual {v5}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    move-result v5

    if-eqz v5, :cond_44

    :cond_43
    goto :goto_45

    :cond_44
    move v4, v3

    :goto_45
    move v3, v4

    .line 174
    .local v3, "showWallpaper":Z
    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperController;->isWallpaperTargetAnimating()Z

    move-result v4

    if-nez v4, :cond_53

    if-nez v3, :cond_51

    goto :goto_53

    .line 175
    :cond_51
    move-object v4, v0

    goto :goto_54

    :cond_53
    :goto_53
    const/4 v4, 0x0

    .line 174
    :goto_54
    return-object v4
.end method

.method private static getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/ActivityRecord;
    .registers 7
    .param p1, "ignoreInvisible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "+",
            "Lcom/android/server/wm/WindowContainer;",
            ">;Z)",
            "Lcom/android/server/wm/ActivityRecord;"
        }
    .end annotation

    .line 1468
    .local p0, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+Lcom/android/server/wm/WindowContainer;>;"
    const/high16 v0, -0x80000000

    .line 1469
    .local v0, "topPrefixOrderIndex":I
    const/4 v1, 0x0

    .line 1470
    .local v1, "topApp":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_9
    if-ltz v2, :cond_2b

    .line 1471
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-static {v3}, Lcom/android/server/wm/AppTransitionController;->getAppFromContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 1472
    .local v3, "app":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_28

    if-eqz p1, :cond_20

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v4

    if-nez v4, :cond_20

    .line 1473
    goto :goto_28

    .line 1475
    :cond_20
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getPrefixOrderIndex()I

    move-result v4

    .line 1476
    .local v4, "prefixOrderIndex":I
    if-le v4, v0, :cond_28

    .line 1477
    move v0, v4

    .line 1478
    move-object v1, v3

    .line 1470
    .end local v3    # "app":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "prefixOrderIndex":I
    :cond_28
    :goto_28
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    .line 1481
    .end local v2    # "i":I
    :cond_2b
    return-object v1
.end method

.method static getTransitCompatType(Lcom/android/server/wm/AppTransition;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Z)I
    .registers 30
    .param p0, "appTransition"    # Lcom/android/server/wm/AppTransition;
    .param p4, "wallpaperTarget"    # Lcom/android/server/wm/WindowState;
    .param p5, "oldWallpaper"    # Lcom/android/server/wm/WindowState;
    .param p6, "skipAppTransitionAnimation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/AppTransition;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;",
            "Lcom/android/server/wm/WindowState;",
            "Lcom/android/server/wm/WindowState;",
            "Z)I"
        }
    .end annotation

    .line 358
    .local p1, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    .local p2, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    .local p3, "changingContainers":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/AppTransitionController;->canBeWallpaperTarget(Landroid/util/ArraySet;)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_16

    if-eqz v3, :cond_16

    move v5, v7

    goto :goto_17

    :cond_16
    move v5, v6

    .line 360
    .local v5, "openingAppHasWallpaper":Z
    :goto_17
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransitionController;->canBeWallpaperTarget(Landroid/util/ArraySet;)Z

    move-result v8

    if-eqz v8, :cond_21

    if-eqz v3, :cond_21

    move v8, v7

    goto :goto_22

    :cond_21
    move v8, v6

    .line 364
    .local v8, "closingAppHasWallpaper":Z
    :goto_22
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getKeyguardTransition()I

    move-result v9

    const/4 v10, 0x6

    packed-switch v9, :pswitch_data_22c

    .line 382
    const/4 v9, -0x1

    if-nez p6, :cond_227

    .line 383
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->removeSplitTaskShotIfNeed()Z

    move-result v11

    if-eqz v11, :cond_51

    move-object/from16 v13, p3

    goto/16 :goto_229

    .line 375
    :pswitch_3b
    const/16 v6, 0x17

    return v6

    .line 372
    :pswitch_3e
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_47

    const/16 v10, 0x16

    goto :goto_48

    .line 373
    :cond_47
    nop

    .line 372
    :goto_48
    return v10

    .line 366
    :pswitch_49
    if-eqz v5, :cond_4e

    const/16 v6, 0x15

    goto :goto_50

    .line 367
    :cond_4e
    const/16 v6, 0x14

    .line 366
    :goto_50
    return v6

    .line 387
    :cond_51
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getTransitFlags()I

    move-result v11

    .line 388
    .local v11, "flags":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getFirstAppTransition()I

    move-result v12

    .line 392
    .local v12, "firstTransit":I
    invoke-virtual {v0, v10}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    move-result v13

    if-eqz v13, :cond_9f

    invoke-virtual/range {p3 .. p3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_9f

    .line 394
    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    move-result-object v7

    .line 395
    invoke-interface {v7}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->skipAppTransitionAnimationForEmbeddingDivider()Z

    move-result v7

    if-eqz v7, :cond_70

    .line 396
    return v9

    .line 399
    :cond_70
    nop

    .line 400
    move-object/from16 v13, p3

    invoke-virtual {v13, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowContainer;

    invoke-static {v6}, Lcom/android/server/wm/AppTransitionController;->getTransitContainerType(Lcom/android/server/wm/WindowContainer;)I

    move-result v6

    .line 401
    .local v6, "changingType":I
    packed-switch v6, :pswitch_data_236

    .line 407
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TRANSIT_CHANGE with unrecognized changing type="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 403
    :pswitch_99
    const/16 v7, 0x1b

    return v7

    .line 405
    :pswitch_9c
    const/16 v7, 0x1e

    return v7

    .line 392
    .end local v6    # "changingType":I
    :cond_9f
    move-object/from16 v13, p3

    .line 411
    and-int/lit8 v14, v11, 0x10

    if-eqz v14, :cond_a8

    .line 412
    const/16 v6, 0x1a

    return v6

    .line 414
    :cond_a8
    if-nez v12, :cond_ab

    .line 415
    return v6

    .line 424
    :cond_ab
    invoke-static {v12}, Lcom/android/server/wm/AppTransition;->isNormalTransit(I)Z

    move-result v14

    if-eqz v14, :cond_10a

    .line 425
    const/4 v14, 0x1

    .line 426
    .local v14, "allOpeningVisible":Z
    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v15

    xor-int/2addr v15, v7

    .line 427
    .local v15, "allTranslucentOpeningApps":Z
    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v9, v16

    .local v9, "i":I
    :goto_bf
    if-ltz v9, :cond_d8

    .line 428
    invoke-virtual {v1, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/wm/ActivityRecord;

    .line 429
    .local v17, "activity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v18

    if-nez v18, :cond_d5

    .line 430
    const/4 v14, 0x0

    .line 431
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v18

    if-eqz v18, :cond_d5

    .line 432
    const/4 v15, 0x0

    .line 427
    .end local v17    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_d5
    add-int/lit8 v9, v9, -0x1

    goto :goto_bf

    .line 436
    .end local v9    # "i":I
    :cond_d8
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v9

    xor-int/2addr v9, v7

    .line 437
    .local v9, "allTranslucentClosingApps":Z
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArraySet;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v10, v17

    .local v10, "i":I
    :goto_e5
    if-ltz v10, :cond_f8

    .line 438
    invoke-virtual {v2, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v17

    if-eqz v17, :cond_f5

    .line 439
    const/4 v9, 0x0

    .line 440
    goto :goto_f8

    .line 437
    :cond_f5
    add-int/lit8 v10, v10, -0x1

    goto :goto_e5

    .line 444
    .end local v10    # "i":I
    :cond_f8
    :goto_f8
    if-eqz v9, :cond_ff

    if-eqz v14, :cond_ff

    .line 445
    const/16 v6, 0x19

    return v6

    .line 447
    :cond_ff
    if-eqz v15, :cond_10a

    invoke-virtual/range {p2 .. p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_10a

    .line 448
    const/16 v6, 0x18

    return v6

    .line 452
    .end local v9    # "allTranslucentClosingApps":Z
    .end local v14    # "allOpeningVisible":Z
    .end local v15    # "allTranslucentOpeningApps":Z
    :cond_10a
    invoke-static {v1, v6}, Lcom/android/server/wm/AppTransitionController;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    .line 454
    .local v9, "topOpeningApp":Lcom/android/server/wm/ActivityRecord;
    invoke-static {v2, v7}, Lcom/android/server/wm/AppTransitionController;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v10

    .line 457
    .local v10, "topClosingApp":Lcom/android/server/wm/ActivityRecord;
    const/4 v14, 0x0

    if-eqz v8, :cond_131

    if-eqz v5, :cond_131

    .line 458
    sget-boolean v15, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v15, :cond_127

    sget-object v15, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x6042b19

    move-object/from16 v19, v14

    check-cast v19, [Ljava/lang/Object;

    invoke-static {v15, v7, v6, v14, v14}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 459
    :cond_127
    packed-switch v12, :pswitch_data_23e

    .line 465
    goto :goto_167

    :pswitch_12b
    const/16 v6, 0xf

    return v6

    .line 462
    :pswitch_12e
    const/16 v6, 0xe

    return v6

    .line 467
    :cond_131
    if-eqz v4, :cond_150

    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_150

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 468
    invoke-virtual {v1, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_150

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 469
    invoke-virtual {v2, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_150

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-ne v10, v7, :cond_150

    .line 472
    const/16 v6, 0xc

    return v6

    .line 473
    :cond_150
    if-eqz v3, :cond_167

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_167

    iget-object v7, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 474
    invoke-virtual {v1, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_167

    iget-object v7, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-ne v9, v7, :cond_167

    .line 479
    const/16 v6, 0xd

    return v6

    .line 482
    :cond_167
    :goto_167
    const/4 v7, 0x1

    invoke-static {v1, v2, v7}, Lcom/android/server/wm/AppTransitionController;->getAnimationTargets(Landroid/util/ArraySet;Landroid/util/ArraySet;Z)Landroid/util/ArraySet;

    move-result-object v15

    .line 484
    .local v15, "openingWcs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    invoke-static {v1, v2, v6}, Lcom/android/server/wm/AppTransitionController;->getAnimationTargets(Landroid/util/ArraySet;Landroid/util/ArraySet;Z)Landroid/util/ArraySet;

    move-result-object v7

    .line 486
    .local v7, "closingWcs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    invoke-virtual {v15}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_17d

    .line 487
    invoke-virtual {v15, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/wm/WindowContainer;

    goto :goto_17f

    :cond_17d
    move-object/from16 v19, v14

    .line 488
    .local v19, "openingContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :goto_17f
    invoke-virtual {v7}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_18c

    .line 489
    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/WindowContainer;

    goto :goto_18d

    :cond_18c
    nop

    .line 490
    .local v14, "closingContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :goto_18d
    invoke-static/range {v19 .. v19}, Lcom/android/server/wm/AppTransitionController;->getTransitContainerType(Lcom/android/server/wm/WindowContainer;)I

    move-result v6

    .line 491
    .local v6, "openingType":I
    invoke-static {v14}, Lcom/android/server/wm/AppTransitionController;->getTransitContainerType(Lcom/android/server/wm/WindowContainer;)I

    move-result v1

    .line 492
    .local v1, "closingType":I
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    move-result v21

    if-eqz v21, :cond_1a1

    if-ne v6, v3, :cond_1a1

    .line 493
    const/16 v3, 0xa

    return v3

    .line 495
    :cond_1a1
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    move-result v3

    if-eqz v3, :cond_1ae

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1ae

    .line 496
    const/16 v3, 0xb

    return v3

    .line 498
    :cond_1ae
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    move-result v22

    if-eqz v22, :cond_1d1

    .line 499
    const/4 v3, 0x3

    if-ne v6, v3, :cond_1c6

    .line 500
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getTransitFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_1c3

    .line 501
    const/16 v3, 0x10

    goto :goto_1c5

    :cond_1c3
    const/16 v3, 0x8

    .line 500
    :goto_1c5
    return v3

    .line 503
    :cond_1c6
    const/4 v3, 0x1

    if-ne v6, v3, :cond_1cb

    .line 504
    const/4 v3, 0x6

    return v3

    .line 506
    :cond_1cb
    const/4 v3, 0x2

    if-ne v6, v3, :cond_1d2

    .line 507
    const/16 v3, 0x1c

    return v3

    .line 498
    :cond_1d1
    const/4 v3, 0x2

    .line 510
    :cond_1d2
    invoke-virtual {v0, v3}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    move-result v18

    if-eqz v18, :cond_20d

    .line 511
    const/4 v3, 0x3

    if-ne v1, v3, :cond_1de

    .line 512
    const/16 v3, 0x9

    return v3

    .line 514
    :cond_1de
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1e4

    .line 515
    const/16 v3, 0x1d

    return v3

    .line 517
    :cond_1e4
    const/4 v3, 0x1

    if-ne v1, v3, :cond_20a

    .line 518
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArraySet;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v3, v17

    .local v3, "i":I
    :goto_1ef
    if-ltz v3, :cond_206

    .line 519
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 v18, v1

    .end local v1    # "closingType":I
    .local v18, "closingType":I
    move-object/from16 v1, v17

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-eqz v1, :cond_201

    .line 520
    const/4 v1, 0x7

    return v1

    .line 518
    :cond_201
    add-int/lit8 v3, v3, -0x1

    move/from16 v1, v18

    goto :goto_1ef

    .end local v18    # "closingType":I
    .restart local v1    # "closingType":I
    :cond_206
    move/from16 v18, v1

    .line 524
    .end local v1    # "closingType":I
    .end local v3    # "i":I
    .restart local v18    # "closingType":I
    const/4 v1, -0x1

    return v1

    .line 517
    .end local v18    # "closingType":I
    .restart local v1    # "closingType":I
    :cond_20a
    move/from16 v18, v1

    .end local v1    # "closingType":I
    .restart local v18    # "closingType":I
    goto :goto_20f

    .line 510
    .end local v18    # "closingType":I
    .restart local v1    # "closingType":I
    :cond_20d
    move/from16 v18, v1

    .line 527
    .end local v1    # "closingType":I
    .restart local v18    # "closingType":I
    :goto_20f
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    move-result v1

    if-eqz v1, :cond_225

    .line 528
    invoke-virtual {v15}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_225

    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_225

    .line 529
    const/16 v1, 0x12

    return v1

    .line 531
    :cond_225
    const/4 v1, 0x0

    return v1

    .line 382
    .end local v6    # "openingType":I
    .end local v7    # "closingWcs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .end local v9    # "topOpeningApp":Lcom/android/server/wm/ActivityRecord;
    .end local v10    # "topClosingApp":Lcom/android/server/wm/ActivityRecord;
    .end local v11    # "flags":I
    .end local v12    # "firstTransit":I
    .end local v14    # "closingContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v15    # "openingWcs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .end local v18    # "closingType":I
    .end local v19    # "openingContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :cond_227
    move-object/from16 v13, p3

    .line 385
    :goto_229
    const/4 v1, -0x1

    return v1

    nop

    :pswitch_data_22c
    .packed-switch 0x7
        :pswitch_49
        :pswitch_3e
        :pswitch_3b
    .end packed-switch

    :pswitch_data_236
    .packed-switch 0x2
        :pswitch_9c
        :pswitch_99
    .end packed-switch

    :pswitch_data_23e
    .packed-switch 0x1
        :pswitch_12e
        :pswitch_12b
        :pswitch_12e
        :pswitch_12b
    .end packed-switch
.end method

.method private static getTransitContainerType(Lcom/android/server/wm/WindowContainer;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;)I"
        }
    .end annotation

    .line 536
    .local p0, "container":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 537
    return v0

    .line 539
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 540
    const/4 v0, 0x3

    return v0

    .line 542
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 543
    const/4 v0, 0x2

    return v0

    .line 545
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 546
    const/4 v0, 0x1

    return v0

    .line 548
    :cond_1c
    return v0
.end method

.method private getUnHierarchicalAnimationTargets(Landroid/util/ArraySet;Landroid/util/ArraySet;Z)Landroid/util/ArraySet;
    .registers 9
    .param p3, "visible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;Z)",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation

    .line 1118
    .local p1, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    .local p2, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1119
    .local v0, "candidates":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/wm/WindowContainer;>;"
    if-eqz p3, :cond_9

    move-object v1, p1

    goto :goto_a

    :cond_9
    move-object v1, p2

    .line 1120
    .local v1, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    :goto_a
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_23

    .line 1121
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 1122
    .local v3, "app":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v3, p3}, Lcom/android/server/wm/ActivityRecord;->shouldApplyAnimation(Z)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1123
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1120
    .end local v3    # "app":Lcom/android/server/wm/ActivityRecord;
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1126
    .end local v2    # "i":I
    :cond_23
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v2
.end method

.method private handleChangingApps(I)V
    .registers 12
    .param p1, "transit"    # I

    .line 1241
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 1242
    .local v0, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 1243
    .local v1, "appsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_34

    .line 1244
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 1245
    .local v3, "wc":Lcom/android/server/wm/WindowContainer;
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v4, :cond_28

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam0":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0xb2054f0

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-static {v5, v6, v9, v7, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1246
    .end local v4    # "protoLogParam0":Ljava/lang/String;
    :cond_28
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    move v6, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/WindowContainer;->applyAnimation(Landroid/view/WindowManager$LayoutParams;IZZLjava/util/ArrayList;)Z

    .line 1243
    .end local v3    # "wc":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1248
    .end local v2    # "i":I
    :cond_34
    return-void
.end method

.method private handleClosingApps()V
    .registers 12

    .line 1193
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 1194
    .local v0, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 1196
    .local v1, "appsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_9c

    .line 1197
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 1198
    .local v3, "app":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_28

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam0":Ljava/lang/String;
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, 0x2f5c2e52

    const/4 v9, 0x0

    new-array v10, v5, [Ljava/lang/Object;

    aput-object v4, v10, v6

    invoke-static {v7, v8, v6, v9, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1201
    .end local v4    # "protoLogParam0":Ljava/lang/String;
    :cond_28
    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->mIsCastMode:Z

    if-eqz v4, :cond_45

    .line 1202
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is in small window mode, don\'t close it"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WindowManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    goto :goto_98

    .line 1207
    :cond_45
    invoke-virtual {v3, v6, v6}, Lcom/android/server/wm/ActivityRecord;->commitVisibility(ZZ)V

    .line 1208
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->updateReportedVisibilityLocked()V

    .line 1212
    iput-boolean v5, v3, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    .line 1215
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_5a

    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v4, :cond_5a

    .line 1216
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V

    .line 1219
    :cond_5a
    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const/16 v7, 0x68

    invoke-virtual {v4, v7}, Lcom/android/server/wm/AppTransition;->needCreateMiuiActivityThumbnail(I)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 1221
    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mMiuiThumbnailAppTokenList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1222
    iput-boolean v6, v3, Lcom/android/server/wm/ActivityRecord;->mIsMiuiThumbnail:Z

    .line 1223
    iput-boolean v5, v3, Lcom/android/server/wm/ActivityRecord;->mIsMiuiActivityThumbnail:Z

    .line 1224
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->attachThumbnailAnimation()V

    goto :goto_8b

    .line 1225
    :cond_73
    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const/16 v7, 0x6a

    invoke-virtual {v4, v7}, Lcom/android/server/wm/AppTransition;->needCreateMiuiActivityThumbnail(I)Z

    move-result v4

    if-eqz v4, :cond_8b

    .line 1227
    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mMiuiThumbnailAppTokenList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1228
    iput-boolean v6, v3, Lcom/android/server/wm/ActivityRecord;->mIsMiuiThumbnail:Z

    .line 1229
    iput-boolean v5, v3, Lcom/android/server/wm/ActivityRecord;->mIsMiuiActivityScaledThumbnail:Z

    .line 1230
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->attachThumbnailAnimation()V

    .line 1234
    :cond_8b
    :goto_8b
    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionThumbnailDown()Z

    move-result v4

    if-eqz v4, :cond_98

    .line 1235
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->attachThumbnailAnimation()V

    .line 1196
    .end local v3    # "app":Lcom/android/server/wm/ActivityRecord;
    :cond_98
    :goto_98
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_9

    .line 1238
    .end local v2    # "i":I
    :cond_9c
    return-void
.end method

.method private handleNonAppWindowsInTransition(II)V
    .registers 9
    .param p1, "transit"    # I
    .param p2, "flags"    # I

    .line 1251
    const/16 v0, 0x14

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_37

    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->sEnableRemoteKeyguardGoingAwayAnimation:Z

    if-nez v3, :cond_37

    .line 1253
    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_37

    and-int/lit8 v3, p2, 0x2

    if-nez v3, :cond_37

    and-int/lit8 v3, p2, 0x8

    if-nez v3, :cond_37

    .line 1256
    iget-object v3, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_20

    move v4, v2

    goto :goto_21

    :cond_20
    move v4, v1

    :goto_21
    invoke-interface {v3, v4}, Lcom/android/server/policy/WindowManagerPolicy;->createKeyguardWallpaperExit(Z)Landroid/view/animation/Animation;

    move-result-object v3

    .line 1258
    .local v3, "anim":Landroid/view/animation/Animation;
    if-eqz v3, :cond_37

    .line 1259
    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 1260
    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WallpaperController;->startWallpaperAnimation(Landroid/view/animation/Animation;)V

    .line 1264
    .end local v3    # "anim":Landroid/view/animation/Animation;
    :cond_37
    const/16 v3, 0x15

    if-eq p1, v0, :cond_3d

    if-ne p1, v3, :cond_57

    :cond_3d
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->sEnableRemoteKeyguardGoingAwayAnimation:Z

    if-nez v0, :cond_57

    .line 1267
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-ne p1, v3, :cond_47

    move v3, v2

    goto :goto_48

    :cond_47
    move v3, v1

    :goto_48
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_4e

    move v4, v2

    goto :goto_4f

    :cond_4e
    move v4, v1

    :goto_4f
    and-int/lit8 v5, p2, 0x8

    if-eqz v5, :cond_54

    move v1, v2

    :cond_54
    invoke-virtual {v0, v3, v4, v1}, Lcom/android/server/wm/DisplayContent;->startKeyguardExitOnNonAppWindows(ZZZ)V

    .line 1272
    :cond_57
    return-void
.end method

.method private handleOpeningApps()V
    .registers 14

    .line 1130
    const-string v0, "<<< CLOSE TRANSACTION handleAppTransitionReady()"

    const-string v1, "handleAppTransitionReady"

    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 1132
    .local v2, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    iget-object v3, p0, Lcom/android/server/wm/AppTransitionController;->mMiuiThumbnailAppTokenList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_15

    .line 1133
    iget-object v3, p0, Lcom/android/server/wm/AppTransitionController;->mMiuiThumbnailAppTokenList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1136
    :cond_15
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    .line 1138
    .local v3, "appsCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1a
    if-ge v4, v3, :cond_d4

    .line 1139
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 1140
    .local v5, "app":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_39

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam0":Ljava/lang/String;
    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, 0x610e94b5

    const/4 v11, 0x0

    new-array v12, v8, [Ljava/lang/Object;

    aput-object v6, v12, v7

    invoke-static {v9, v10, v7, v11, v12}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1142
    .end local v6    # "protoLogParam0":Ljava/lang/String;
    :cond_39
    invoke-virtual {v5, v8, v7}, Lcom/android/server/wm/ActivityRecord;->commitVisibility(ZZ)V

    .line 1148
    const/4 v6, 0x2

    invoke-virtual {v5, v6, v8}, Lcom/android/server/wm/ActivityRecord;->getAnimatingContainer(II)Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    .line 1150
    .local v6, "wc":Lcom/android/server/wm/WindowContainer;
    if-eqz v6, :cond_4d

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getAnimationSources()Landroid/util/ArraySet;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_56

    .line 1154
    :cond_4d
    iget-object v9, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v9, v9, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    iget-object v10, v5, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1156
    :cond_56
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->updateReportedVisibilityLocked()V

    .line 1157
    iput-boolean v7, v5, Lcom/android/server/wm/ActivityRecord;->waitingToShow:Z

    .line 1158
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    const-string v9, "WindowManager"

    if-eqz v7, :cond_66

    const-string v7, ">>> OPEN TRANSACTION handleAppTransitionReady()"

    invoke-static {v9, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    :cond_66
    iget-object v7, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 1162
    :try_start_6b
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->showAllWindowsLocked()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_c6

    .line 1164
    iget-object v7, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 1165
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v7, :cond_7a

    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    :cond_7a
    iget-object v7, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const/16 v9, 0x67

    invoke-virtual {v7, v9}, Lcom/android/server/wm/AppTransition;->needCreateMiuiActivityThumbnail(I)Z

    move-result v7

    if-eqz v7, :cond_91

    .line 1173
    iget-object v7, p0, Lcom/android/server/wm/AppTransitionController;->mMiuiThumbnailAppTokenList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1174
    iput-boolean v8, v5, Lcom/android/server/wm/ActivityRecord;->mIsMiuiActivityThumbnail:Z

    .line 1175
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->attachThumbnailAnimation()V

    goto :goto_a7

    .line 1176
    :cond_91
    iget-object v7, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const/16 v9, 0x69

    invoke-virtual {v7, v9}, Lcom/android/server/wm/AppTransition;->needCreateMiuiActivityThumbnail(I)Z

    move-result v7

    if-eqz v7, :cond_a7

    .line 1178
    iget-object v7, p0, Lcom/android/server/wm/AppTransitionController;->mMiuiThumbnailAppTokenList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1179
    iput-boolean v8, v5, Lcom/android/server/wm/ActivityRecord;->mIsMiuiActivityScaledThumbnail:Z

    .line 1180
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->attachThumbnailAnimation()V

    .line 1184
    :cond_a7
    :goto_a7
    iget-object v7, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v7}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionThumbnailUp()Z

    move-result v7

    if-eqz v7, :cond_b5

    .line 1185
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->attachThumbnailAnimation()V

    goto :goto_c2

    .line 1186
    :cond_b5
    iget-object v7, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v7}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionOpenCrossProfileApps()Z

    move-result v7

    if-eqz v7, :cond_c2

    .line 1187
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->attachCrossProfileAppsThumbnailAnimation()V

    .line 1138
    .end local v5    # "app":Lcom/android/server/wm/ActivityRecord;
    .end local v6    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_c2
    :goto_c2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1a

    .line 1164
    .restart local v5    # "app":Lcom/android/server/wm/ActivityRecord;
    .restart local v6    # "wc":Lcom/android/server/wm/WindowContainer;
    :catchall_c6
    move-exception v7

    iget-object v8, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 1165
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_d3

    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    :cond_d3
    throw v7

    .line 1190
    .end local v4    # "i":I
    .end local v5    # "app":Lcom/android/server/wm/ActivityRecord;
    .end local v6    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_d4
    return-void
.end method

.method static isTaskAnimationOld(I)Z
    .registers 2
    .param p0, "transit"    # I

    .line 1108
    const/16 v0, 0x9

    if-eq p0, v0, :cond_13

    const/16 v0, 0x8

    if-eq p0, v0, :cond_13

    const/16 v0, 0xa

    if-eq p0, v0, :cond_13

    const/16 v0, 0xb

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method private static isTaskViewTask(Lcom/android/server/wm/WindowContainer;)Z
    .registers 2
    .param p0, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 892
    instance-of v0, p0, Lcom/android/server/wm/Task;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lcom/android/server/wm/Task;

    iget-boolean v0, v0, Lcom/android/server/wm/Task;->mRemoveWithTaskOrganizer:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method static synthetic lambda$findAnimLayoutParamsToken$5(ILandroid/util/ArraySet;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4
    .param p0, "transit"    # I
    .param p1, "activityTypes"    # Landroid/util/ArraySet;
    .param p2, "w"    # Lcom/android/server/wm/ActivityRecord;

    .line 781
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 782
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/view/RemoteAnimationDefinition;->hasTransition(ILandroid/util/ArraySet;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 781
    :goto_13
    return v0
.end method

.method static synthetic lambda$findAnimLayoutParamsToken$6(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2
    .param p0, "w"    # Lcom/android/server/wm/ActivityRecord;

    .line 787
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method static synthetic lambda$findAnimLayoutParamsToken$7(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2
    .param p0, "w"    # Lcom/android/server/wm/ActivityRecord;

    .line 792
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static synthetic lambda$findTaskFragmentOrganizer$2([Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;)Z
    .registers 6
    .param p0, "organizer"    # [Landroid/window/ITaskFragmentOrganizer;
    .param p1, "taskFragment"    # Lcom/android/server/wm/TaskFragment;

    .line 667
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object v0

    .line 668
    .local v0, "tfOrganizer":Landroid/window/ITaskFragmentOrganizer;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 669
    return v1

    .line 671
    :cond_8
    aget-object v2, p0, v1

    if-eqz v2, :cond_1e

    aget-object v2, p0, v1

    invoke-interface {v2}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v0}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 672
    const/4 v1, 0x1

    return v1

    .line 674
    :cond_1e
    aput-object v0, p0, v1

    .line 675
    return v1
.end method

.method static synthetic lambda$handleAppTransitionReady$0(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p0, "app"    # Lcom/android/server/wm/ActivityRecord;

    .line 241
    const/4 v0, 0x2

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->isAnimating(II)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$handleAppTransitionReady$1(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p0, "app"    # Lcom/android/server/wm/ActivityRecord;

    .line 243
    const/4 v0, 0x2

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->isAnimating(II)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$overrideWithTaskFragmentRemoteAnimation$3(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2
    .param p0, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 728
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->setDropInputForAnimation(Z)V

    return-void
.end method

.method static synthetic lambda$overrideWithTaskFragmentRemoteAnimation$4(Lcom/android/server/wm/Task;)V
    .registers 2
    .param p0, "task"    # Lcom/android/server/wm/Task;

    .line 727
    new-instance v0, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda0;-><init>()V

    .line 729
    .local v0, "updateActivities":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 730
    return-void
.end method

.method static synthetic lambda$transitionGoodToGoForTaskFragments$8(Lcom/android/server/wm/TaskFragment;)Z
    .registers 8
    .param p0, "taskFragment"    # Lcom/android/server/wm/TaskFragment;

    .line 1394
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isReadyToTransit()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    .line 1395
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1d

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x59800c97

    const/4 v5, 0x0

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v0, v6, v1

    invoke-static {v3, v4, v1, v5, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1397
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_1d
    return v2

    .line 1399
    :cond_1e
    return v1
.end method

.method private static lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)",
            "Lcom/android/server/wm/ActivityRecord;"
        }
    .end annotation

    .line 817
    .local p0, "array1":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    .local p1, "array2":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    .local p2, "array3":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .local p3, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 818
    .local v0, "array2base":I
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 819
    .local v1, "array3base":I
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/2addr v2, v1

    .line 820
    .local v2, "count":I
    const/high16 v3, -0x80000000

    .line 821
    .local v3, "bestPrefixOrderIndex":I
    const/4 v4, 0x0

    .line 822
    .local v4, "bestToken":Lcom/android/server/wm/ActivityRecord;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_12
    if-ge v5, v2, :cond_48

    .line 823
    if-ge v5, v0, :cond_1d

    .line 824
    invoke-virtual {p0, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowContainer;

    goto :goto_30

    .line 825
    :cond_1d
    if-ge v5, v1, :cond_28

    .line 826
    sub-int v6, v5, v0

    invoke-virtual {p1, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowContainer;

    goto :goto_30

    .line 827
    :cond_28
    sub-int v6, v5, v1

    invoke-virtual {p2, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowContainer;

    :goto_30
    nop

    .line 828
    .local v6, "wtoken":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getPrefixOrderIndex()I

    move-result v7

    .line 829
    .local v7, "prefixOrderIndex":I
    invoke-static {v6}, Lcom/android/server/wm/AppTransitionController;->getAppFromContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    .line 830
    .local v8, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v8, :cond_45

    invoke-interface {p3, v8}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_45

    if-le v7, v3, :cond_45

    .line 831
    move v3, v7

    .line 832
    move-object v4, v8

    .line 822
    .end local v6    # "wtoken":Lcom/android/server/wm/WindowContainer;
    .end local v7    # "prefixOrderIndex":I
    .end local v8    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_45
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 835
    .end local v5    # "i":I
    :cond_48
    return-object v4
.end method

.method private overrideWithRemoteAnimationIfSet(Lcom/android/server/wm/ActivityRecord;ILandroid/util/ArraySet;)V
    .registers 6
    .param p1, "animLpActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "transit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/ActivityRecord;",
            "I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 743
    .local p3, "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 744
    .local v0, "adapter":Landroid/view/RemoteAnimationAdapter;
    const/16 v1, 0x1a

    if-ne p2, v1, :cond_6

    goto :goto_26

    .line 746
    :cond_6
    invoke-static {p2}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransitOld(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 747
    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    if-eqz v1, :cond_15

    .line 748
    invoke-virtual {v1, p2, p3}, Landroid/view/RemoteAnimationDefinition;->getAdapter(ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v1

    goto :goto_16

    .line 749
    :cond_15
    const/4 v1, 0x0

    :goto_16
    move-object v0, v1

    goto :goto_26

    .line 750
    :cond_18
    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->getRemoteAnimationController()Lcom/android/server/wm/RemoteAnimationController;

    move-result-object v1

    if-nez v1, :cond_26

    .line 751
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/AppTransitionController;->getRemoteAnimationOverride(Lcom/android/server/wm/WindowContainer;ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v0

    .line 753
    :cond_26
    :goto_26
    if-eqz v0, :cond_2f

    .line 754
    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;)V

    .line 756
    :cond_2f
    return-void
.end method

.method private overrideWithTaskFragmentRemoteAnimation(ILandroid/util/ArraySet;)Z
    .registers 20
    .param p1, "transit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 694
    .local p2, "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/AppTransitionController;->transitionMayContainNonAppWindows(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 695
    return v2

    .line 698
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransitionController;->findParentTaskForAllEmbeddedWindows()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 699
    .local v1, "task":Lcom/android/server/wm/Task;
    invoke-direct {v0, v1}, Lcom/android/server/wm/AppTransitionController;->findTaskFragmentOrganizer(Lcom/android/server/wm/Task;)Landroid/window/ITaskFragmentOrganizer;

    move-result-object v3

    .line 700
    .local v3, "organizer":Landroid/window/ITaskFragmentOrganizer;
    const/4 v4, 0x0

    if-eqz v3, :cond_22

    .line 702
    iget-object v5, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    iget v6, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v5, v3, v6}, Lcom/android/server/wm/TaskFragmentOrganizerController;->getRemoteAnimationDefinition(Landroid/window/ITaskFragmentOrganizer;I)Landroid/view/RemoteAnimationDefinition;

    move-result-object v5

    goto :goto_23

    .line 703
    :cond_22
    move-object v5, v4

    :goto_23
    nop

    .line 704
    .local v5, "definition":Landroid/view/RemoteAnimationDefinition;
    if-eqz v5, :cond_2f

    .line 705
    move/from16 v6, p1

    move-object/from16 v7, p2

    invoke-virtual {v5, v6, v7}, Landroid/view/RemoteAnimationDefinition;->getAdapter(ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v8

    goto :goto_34

    .line 706
    :cond_2f
    move/from16 v6, p1

    move-object/from16 v7, p2

    move-object v8, v4

    :goto_34
    nop

    .line 707
    .local v8, "adapter":Landroid/view/RemoteAnimationAdapter;
    if-nez v8, :cond_38

    .line 708
    return v2

    .line 710
    :cond_38
    iget-object v9, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v9, v9, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v9, v8}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;)V

    .line 711
    sget-boolean v9, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    const/4 v10, 0x1

    if-eqz v9, :cond_58

    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .local v9, "protoLogParam0":Ljava/lang/String;
    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v12, -0x29e1972c

    new-array v13, v10, [Ljava/lang/Object;

    aput-object v9, v13, v2

    invoke-static {v11, v12, v2, v4, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 715
    .end local v9    # "protoLogParam0":Ljava/lang/String;
    :cond_58
    iget-object v9, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v9, v9, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 716
    invoke-virtual {v9, v3}, Lcom/android/server/wm/TaskFragmentOrganizerController;->getTaskFragmentOrganizerUid(Landroid/window/ITaskFragmentOrganizer;)I

    move-result v9

    .line 717
    .local v9, "organizerUid":I
    invoke-virtual {v1, v9}, Lcom/android/server/wm/Task;->isFullyTrustedEmbedding(I)Z

    move-result v11

    xor-int/2addr v11, v10

    .line 719
    .local v11, "shouldDisableInputForRemoteAnimation":Z
    iget-object v12, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v12, v12, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 720
    invoke-virtual {v12}, Lcom/android/server/wm/AppTransition;->getRemoteAnimationController()Lcom/android/server/wm/RemoteAnimationController;

    move-result-object v12

    .line 721
    .local v12, "remoteAnimationController":Lcom/android/server/wm/RemoteAnimationController;
    if-eqz v11, :cond_93

    if-eqz v12, :cond_93

    .line 726
    new-instance v13, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda10;

    invoke-direct {v13, v1}, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/wm/Task;)V

    invoke-virtual {v12, v13}, Lcom/android/server/wm/RemoteAnimationController;->setOnRemoteAnimationReady(Ljava/lang/Runnable;)V

    .line 731
    sget-boolean v13, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v13, :cond_93

    iget v13, v1, Lcom/android/server/wm/Task;->mTaskId:I

    int-to-long v13, v13

    .local v13, "protoLogParam0":J
    sget-object v15, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v4, v2

    const/4 v0, 0x0

    const v2, 0x7d327001

    invoke-static {v15, v2, v10, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 734
    .end local v13    # "protoLogParam0":J
    :cond_93
    return v10
.end method

.method private transitionGoodToGo(Landroid/util/ArraySet;Landroid/util/ArrayMap;)Z
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "+",
            "Lcom/android/server/wm/WindowContainer;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/WindowContainer;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 1276
    .local p1, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+Lcom/android/server/wm/WindowContainer;>;"
    .local p2, "outReasons":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/wm/WindowContainer;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v2, :cond_3c

    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    int-to-long v8, v2

    .local v8, "protoLogParam0":J
    iget-object v2, v0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    .local v2, "protoLogParam1":Z
    iget-object v10, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v10, v10, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v10}, Lcom/android/server/wm/AppTransition;->isTimeout()Z

    move-result v10

    .local v10, "protoLogParam2":Z
    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v12, 0x79ee0313

    const/16 v13, 0x3d

    new-array v14, v3, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v14, v7

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v14, v5

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v14, v4

    invoke-static {v11, v12, v13, v6, v14}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1279
    .end local v2    # "protoLogParam1":Z
    .end local v8    # "protoLogParam0":J
    .end local v10    # "protoLogParam2":Z
    :cond_3c
    iget-object v2, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isTimeout()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 1280
    return v5

    .line 1282
    :cond_47
    iget-object v2, v0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v7}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 1283
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getRotationAnimation()Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v2

    .line 1292
    .local v2, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v2, :cond_77

    invoke-virtual {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v8

    if-eqz v8, :cond_77

    iget-object v8, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1293
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayRotation;->needsUpdate()Z

    move-result v8

    if-eqz v8, :cond_77

    .line 1294
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v3, :cond_76

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x2572bb7a

    move-object v5, v6

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v7, v6, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1296
    :cond_76
    return v7

    .line 1298
    :cond_77
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_78
    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->size()I

    move-result v9

    if-ge v8, v9, :cond_14b

    .line 1299
    move-object/from16 v9, p1

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowContainer;

    .line 1300
    .local v10, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-static {v10}, Lcom/android/server/wm/AppTransitionController;->getAppFromContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v11

    .line 1301
    .local v11, "activity":Lcom/android/server/wm/ActivityRecord;
    if-nez v11, :cond_93

    .line 1302
    move-object/from16 v20, v2

    move/from16 v18, v3

    move v3, v4

    goto/16 :goto_13f

    .line 1306
    :cond_93
    iget-boolean v12, v11, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v12, :cond_9e

    .line 1307
    move-object/from16 v20, v2

    move/from16 v18, v3

    move v3, v4

    goto/16 :goto_13f

    .line 1312
    :cond_9e
    const/16 v12, 0x8

    invoke-virtual {v11, v4, v12}, Lcom/android/server/wm/ActivityRecord;->isAnimating(II)Z

    move-result v12

    if-eqz v12, :cond_b6

    .line 1313
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v3, :cond_b5

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x13442ff4

    move-object v5, v6

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v7, v6, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1315
    :cond_b5
    return v7

    .line 1319
    :cond_b6
    sget-boolean v12, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v12, :cond_103

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .local v12, "protoLogParam0":Ljava/lang/String;
    iget-boolean v14, v11, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    .local v14, "protoLogParam1":Z
    iget-boolean v15, v11, Lcom/android/server/wm/ActivityRecord;->startingDisplayed:Z

    .local v15, "protoLogParam2":Z
    iget-boolean v6, v11, Lcom/android/server/wm/ActivityRecord;->startingMoved:Z

    .local v6, "protoLogParam3":Z
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->isRelaunching()Z

    move-result v16

    .local v16, "protoLogParam4":Z
    iget-object v13, v11, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .local v13, "protoLogParam5":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v12, v4, v7

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    aput-object v21, v4, v5

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    const/16 v19, 0x2

    aput-object v21, v4, v19

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    const/16 v18, 0x3

    aput-object v21, v4, v18

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    const/16 v17, 0x4

    aput-object v21, v4, v17

    const/16 v21, 0x5

    aput-object v13, v4, v21

    move-object/from16 v20, v2

    const/4 v2, 0x0

    const v5, 0x11488da1

    const/16 v7, 0x3fc

    .end local v2    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .local v20, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    invoke-static {v3, v5, v7, v2, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_109

    .end local v6    # "protoLogParam3":Z
    .end local v12    # "protoLogParam0":Ljava/lang/String;
    .end local v13    # "protoLogParam5":Ljava/lang/String;
    .end local v14    # "protoLogParam1":Z
    .end local v15    # "protoLogParam2":Z
    .end local v16    # "protoLogParam4":Z
    .end local v20    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .restart local v2    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :cond_103
    move-object/from16 v20, v2

    move/from16 v18, v3

    const/16 v17, 0x4

    .line 1325
    .end local v2    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .restart local v20    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :goto_109
    iget-boolean v2, v11, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    if-eqz v2, :cond_115

    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->isRelaunching()Z

    move-result v2

    if-nez v2, :cond_115

    const/4 v2, 0x1

    goto :goto_116

    :cond_115
    const/4 v2, 0x0

    .line 1326
    .local v2, "allDrawn":Z
    :goto_116
    if-nez v2, :cond_122

    iget-boolean v3, v11, Lcom/android/server/wm/ActivityRecord;->startingDisplayed:Z

    if-nez v3, :cond_122

    iget-boolean v3, v11, Lcom/android/server/wm/ActivityRecord;->startingMoved:Z

    if-nez v3, :cond_122

    .line 1327
    const/4 v3, 0x0

    return v3

    .line 1329
    :cond_122
    if-eqz v2, :cond_12d

    .line 1330
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v11, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13f

    .line 1332
    :cond_12d
    const/4 v3, 0x2

    .line 1333
    iget-object v4, v11, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    instance-of v4, v4, Lcom/android/server/wm/SplashScreenStartingData;

    if-eqz v4, :cond_136

    .line 1334
    const/4 v13, 0x1

    goto :goto_138

    .line 1335
    :cond_136
    move/from16 v13, v17

    .line 1333
    :goto_138
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1332
    invoke-virtual {v1, v11, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    .end local v2    # "allDrawn":Z
    .end local v10    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v11    # "activity":Lcom/android/server/wm/ActivityRecord;
    :goto_13f
    add-int/lit8 v8, v8, 0x1

    move v4, v3

    move/from16 v3, v18

    move-object/from16 v2, v20

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto/16 :goto_78

    .end local v20    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .local v2, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :cond_14b
    move-object/from16 v9, p1

    move-object/from16 v20, v2

    .line 1340
    .end local v2    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .end local v8    # "i":I
    .restart local v20    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    iget-object v2, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isFetchingAppTransitionsSpecs()Z

    move-result v2

    if-eqz v2, :cond_16d

    .line 1341
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v2, :cond_16b

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x3c25e891

    const/4 v4, 0x0

    move-object v6, v4

    check-cast v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_16c

    :cond_16b
    const/4 v5, 0x0

    .line 1342
    :goto_16c
    return v5

    .line 1346
    :cond_16d
    iget-object v2, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v2}, Lcom/android/server/wm/UnknownAppVisibilityController;->appRemovedFinishActivity()V

    .line 1349
    iget-object v2, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v2}, Lcom/android/server/wm/UnknownAppVisibilityController;->allResolved()Z

    move-result v2

    if-nez v2, :cond_1a0

    .line 1350
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v2, :cond_19e

    iget-object v2, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v2}, Lcom/android/server/wm/UnknownAppVisibilityController;->getDebugMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam0":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x1698204e

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v7, 0x0

    invoke-static {v3, v4, v6, v7, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_19f

    .end local v2    # "protoLogParam0":Ljava/lang/String;
    :cond_19e
    const/4 v6, 0x0

    .line 1352
    :goto_19f
    return v6

    .line 1356
    :cond_1a0
    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v2, v0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    move-result v2

    if-eqz v2, :cond_1b5

    iget-object v2, v0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    .line 1357
    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperController;->wallpaperTransitionReady()Z

    move-result v2

    if-eqz v2, :cond_1b3

    goto :goto_1b5

    :cond_1b3
    move v5, v6

    goto :goto_1b6

    :cond_1b5
    :goto_1b5
    nop

    .line 1356
    :goto_1b6
    return v5
.end method

.method private transitionGoodToGoForTaskFragments()Z
    .registers 7

    .line 1361
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTimeout()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 1362
    return v1

    .line 1368
    :cond_c
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1369
    .local v0, "rootTasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_1a
    if-ltz v2, :cond_30

    .line 1370
    iget-object v3, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1369
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 1372
    .end local v2    # "i":I
    :cond_30
    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .restart local v2    # "i":I
    :goto_39
    if-ltz v2, :cond_4f

    .line 1373
    iget-object v3, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1372
    add-int/lit8 v2, v2, -0x1

    goto :goto_39

    .line 1375
    .end local v2    # "i":I
    :cond_4f
    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .restart local v2    # "i":I
    :goto_58
    if-ltz v2, :cond_6e

    .line 1376
    iget-object v3, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 1377
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-static {v3}, Lcom/android/server/wm/AppTransitionController;->findRootTaskFromContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 1376
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1375
    add-int/lit8 v2, v2, -0x1

    goto :goto_58

    .line 1386
    .end local v2    # "i":I
    :cond_6e
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .restart local v2    # "i":I
    :goto_73
    const/4 v3, 0x0

    if-ltz v2, :cond_8e

    .line 1387
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Task;

    .line 1388
    .local v4, "rootTask":Lcom/android/server/wm/Task;
    if-nez v4, :cond_7f

    .line 1391
    goto :goto_8b

    .line 1393
    :cond_7f
    new-instance v5, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v4, v5}, Lcom/android/server/wm/Task;->forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z

    move-result v5

    .line 1401
    .local v5, "notReady":Z
    if-eqz v5, :cond_8b

    .line 1402
    return v3

    .line 1386
    .end local v4    # "rootTask":Lcom/android/server/wm/Task;
    .end local v5    # "notReady":Z
    :cond_8b
    :goto_8b
    add-int/lit8 v2, v2, -0x1

    goto :goto_73

    .line 1407
    .end local v2    # "i":I
    :cond_8e
    invoke-static {}, Lcom/android/server/wm/AppTransitionStub;->get()Lcom/android/server/wm/AppTransitionStub;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-interface {v2, v4}, Lcom/android/server/wm/AppTransitionStub;->deferTransitionForMultiWindow(Landroid/util/ArraySet;)Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 1408
    return v3

    .line 1411
    :cond_9d
    return v1
.end method

.method private transitionMayContainNonAppWindows(I)Z
    .registers 4
    .param p1, "transit"    # I

    .line 589
    invoke-static {p1}, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->shouldStartNonAppWindowAnimationsForKeyguardExit(I)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 590
    invoke-static {v0, v1, p1}, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->shouldAttachNavBarToApp(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;I)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 591
    invoke-static {v0}, Lcom/android/server/wm/WallpaperAnimationAdapter;->shouldStartWallpaperAnimation(Lcom/android/server/wm/DisplayContent;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    .line 589
    :goto_1c
    return v0
.end method

.method private unfreezeEmbeddedChangingWindows()V
    .registers 6

    .line 575
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 576
    .local v0, "changingContainers":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_24

    .line 577
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 578
    .local v2, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isEmbedded()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 579
    iget-object v3, v2, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/SurfaceFreezer;->unfreeze(Landroid/view/SurfaceControl$Transaction;)V

    .line 576
    .end local v2    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_21
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 582
    .end local v1    # "i":I
    :cond_24
    return-void
.end method


# virtual methods
.method getRemoteAnimationOverride(Lcom/android/server/wm/WindowContainer;ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;
    .registers 6
    .param p1, "container"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "transit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer;",
            "I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/view/RemoteAnimationAdapter;"
        }
    .end annotation

    .line 559
    .local p3, "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_f

    .line 560
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;

    move-result-object v0

    .line 561
    .local v0, "definition":Landroid/view/RemoteAnimationDefinition;
    if-eqz v0, :cond_f

    .line 562
    invoke-virtual {v0, p2, p3}, Landroid/view/RemoteAnimationDefinition;->getAdapter(ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v1

    .line 564
    .local v1, "adapter":Landroid/view/RemoteAnimationAdapter;
    if-eqz v1, :cond_f

    .line 565
    return-object v1

    .line 569
    .end local v0    # "definition":Landroid/view/RemoteAnimationDefinition;
    .end local v1    # "adapter":Landroid/view/RemoteAnimationAdapter;
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    if-eqz v0, :cond_18

    .line 570
    invoke-virtual {v0, p2, p3}, Landroid/view/RemoteAnimationDefinition;->getAdapter(ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v0

    goto :goto_19

    .line 571
    :cond_18
    const/4 v0, 0x0

    .line 569
    :goto_19
    return-object v0
.end method

.method handleAppTransitionReady()V
    .registers 26

    .line 192
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mTempTransitionReasons:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 193
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v1, v7, Lcom/android/server/wm/AppTransitionController;->mTempTransitionReasons:Landroid/util/ArrayMap;

    invoke-direct {v7, v0, v1}, Lcom/android/server/wm/AppTransitionController;->transitionGoodToGo(Landroid/util/ArraySet;Landroid/util/ArrayMap;)Z

    move-result v0

    if-eqz v0, :cond_258

    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    iget-object v1, v7, Lcom/android/server/wm/AppTransitionController;->mTempTransitionReasons:Landroid/util/ArrayMap;

    .line 194
    invoke-direct {v7, v0, v1}, Lcom/android/server/wm/AppTransitionController;->transitionGoodToGo(Landroid/util/ArraySet;Landroid/util/ArrayMap;)Z

    move-result v0

    if-eqz v0, :cond_258

    .line 195
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransitionController;->transitionGoodToGoForTaskFragments()Z

    move-result v0

    if-nez v0, :cond_27

    goto/16 :goto_258

    .line 198
    :cond_27
    const-wide/16 v8, 0x20

    const-string v0, "AppTransitionReady"

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 200
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    const/4 v1, 0x0

    const/4 v10, 0x0

    if-eqz v0, :cond_3f

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, 0xf3d8ebc

    move-object v3, v1

    check-cast v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v10, v1, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 202
    :cond_3f
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v2, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda7;-><init>()V

    const/4 v11, 0x1

    invoke-virtual {v0, v2, v11}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 205
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v12, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 207
    .local v12, "appTransition":Lcom/android/server/wm/AppTransition;
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 209
    invoke-virtual {v12}, Lcom/android/server/wm/AppTransition;->removeAppTransitionTimeoutCallbacks()V

    .line 211
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-boolean v10, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    .line 213
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 214
    .local v0, "appCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_65
    if-ge v2, v0, :cond_77

    .line 219
    iget-object v3, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAtUnchecked(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->clearAnimatingFlags()V

    .line 214
    add-int/lit8 v2, v2, 0x1

    goto :goto_65

    .line 221
    .end local v2    # "i":I
    :cond_77
    iget-object v2, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v13

    .line 222
    .end local v0    # "appCount":I
    .local v13, "appCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_80
    if-ge v0, v13, :cond_98

    .line 224
    iget-object v2, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 225
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAtUnchecked(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 224
    invoke-static {v2}, Lcom/android/server/wm/AppTransitionController;->getAppFromContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 226
    .local v2, "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_95

    .line 227
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->clearAnimatingFlags()V

    .line 222
    .end local v2    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_95
    add-int/lit8 v0, v0, 0x1

    goto :goto_80

    .line 234
    .end local v0    # "i":I
    :cond_98
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    iget-object v2, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindowsForAppTransitionIfNeeded(Landroid/util/ArraySet;)V

    .line 239
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 240
    invoke-virtual {v0}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda8;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_ca

    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 242
    invoke-virtual {v0}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda9;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_c8

    goto :goto_ca

    :cond_c8
    move v0, v10

    goto :goto_cb

    :cond_ca
    :goto_ca
    move v0, v11

    :goto_cb
    move v14, v0

    .line 244
    .local v14, "excludeLauncherFromAnimation":Z
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-static {v0, v14}, Lcom/android/server/wm/AppTransitionController;->getAppsForAnimation(Landroid/util/ArraySet;Z)Landroid/util/ArraySet;

    move-result-object v6

    .line 246
    .local v6, "openingAppsForAnimation":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-static {v0, v14}, Lcom/android/server/wm/AppTransitionController;->getAppsForAnimation(Landroid/util/ArraySet;Z)Landroid/util/ArraySet;

    move-result-object v5

    .line 249
    .local v5, "closingAppsForAnimation":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v15, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    iget-object v2, v7, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    .line 252
    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v19

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransitionController;->getOldWallpaper()Lcom/android/server/wm/WindowState;

    move-result-object v20

    iget-object v2, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v2, v2, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    .line 249
    move-object/from16 v16, v6

    move-object/from16 v17, v5

    move-object/from16 v18, v0

    move/from16 v21, v2

    invoke-static/range {v15 .. v21}, Lcom/android/server/wm/AppTransitionController;->getTransitCompatType(Lcom/android/server/wm/AppTransition;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Z)I

    move-result v15

    .line 254
    .local v15, "transit":I
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-boolean v10, v0, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    .line 256
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    const/16 v16, 0x2

    if-eqz v0, :cond_15c

    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v2, v0

    .local v2, "protoLogParam0":J
    invoke-virtual {v12}, Lcom/android/server/wm/AppTransition;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam1":Ljava/lang/String;
    move v4, v14

    .local v4, "protoLogParam2":Z
    iget-object v8, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v8, v8, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .local v8, "protoLogParam3":Ljava/lang/String;
    iget-object v9, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v9, v9, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .local v9, "protoLogParam4":Ljava/lang/String;
    invoke-static {v15}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .local v19, "protoLogParam5":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v11, 0x6

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v11, v10

    const/16 v21, 0x1

    aput-object v0, v11, v21

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    aput-object v24, v11, v16

    const/16 v24, 0x3

    aput-object v8, v11, v24

    const/16 v24, 0x4

    aput-object v9, v11, v24

    const/16 v24, 0x5

    aput-object v19, v11, v24

    move-object/from16 v20, v0

    move-wide/from16 v22, v2

    const/16 v0, 0x31

    const/4 v2, 0x0

    const v10, -0x808c946

    .end local v0    # "protoLogParam1":Ljava/lang/String;
    .end local v2    # "protoLogParam0":J
    .local v20, "protoLogParam1":Ljava/lang/String;
    .local v22, "protoLogParam0":J
    invoke-static {v1, v10, v0, v2, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 267
    .end local v4    # "protoLogParam2":Z
    .end local v8    # "protoLogParam3":Ljava/lang/String;
    .end local v9    # "protoLogParam4":Ljava/lang/String;
    .end local v19    # "protoLogParam5":Ljava/lang/String;
    .end local v20    # "protoLogParam1":Ljava/lang/String;
    .end local v22    # "protoLogParam0":J
    :cond_15c
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-static {v6, v5, v0}, Lcom/android/server/wm/AppTransitionController;->collectActivityTypes(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;)Landroid/util/ArraySet;

    move-result-object v8

    .line 269
    .local v8, "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    move-object/from16 v1, p0

    move v2, v15

    move-object v3, v8

    move-object v4, v6

    move-object v9, v5

    .end local v5    # "closingAppsForAnimation":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    .local v9, "closingAppsForAnimation":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    move-object v10, v6

    .end local v6    # "openingAppsForAnimation":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    .local v10, "openingAppsForAnimation":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AppTransitionController;->findAnimLayoutParamsToken(ILandroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v11

    .line 272
    .local v11, "animLpActivity":Lcom/android/server/wm/ActivityRecord;
    nop

    .line 273
    const/4 v0, 0x0

    invoke-static {v10, v0}, Lcom/android/server/wm/AppTransitionController;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 274
    .local v5, "topOpeningApp":Lcom/android/server/wm/ActivityRecord;
    nop

    .line 275
    invoke-static {v9, v0}, Lcom/android/server/wm/AppTransitionController;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 276
    .local v4, "topClosingApp":Lcom/android/server/wm/ActivityRecord;
    iget-object v1, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 277
    invoke-static {v1, v0}, Lcom/android/server/wm/AppTransitionController;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 278
    .local v3, "topChangingApp":Lcom/android/server/wm/ActivityRecord;
    invoke-static {v11}, Lcom/android/server/wm/AppTransitionController;->getAnimLp(Lcom/android/server/wm/ActivityRecord;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v19

    .line 281
    .local v19, "animLp":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {v7, v15, v8}, Lcom/android/server/wm/AppTransitionController;->overrideWithTaskFragmentRemoteAnimation(ILandroid/util/ArraySet;)Z

    move-result v1

    if-nez v1, :cond_197

    .line 283
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransitionController;->unfreezeEmbeddedChangingWindows()V

    .line 284
    invoke-direct {v7, v11, v15, v8}, Lcom/android/server/wm/AppTransitionController;->overrideWithRemoteAnimationIfSet(Lcom/android/server/wm/ActivityRecord;ILandroid/util/ArraySet;)V

    .line 287
    :cond_197
    invoke-direct {v7, v9}, Lcom/android/server/wm/AppTransitionController;->containsVoiceInteraction(Landroid/util/ArraySet;)Z

    move-result v1

    if-nez v1, :cond_1a6

    .line 288
    invoke-direct {v7, v10}, Lcom/android/server/wm/AppTransitionController;->containsVoiceInteraction(Landroid/util/ArraySet;)Z

    move-result v1

    if-eqz v1, :cond_1a4

    goto :goto_1a6

    :cond_1a4
    move v6, v0

    goto :goto_1a7

    :cond_1a6
    :goto_1a6
    const/4 v6, 0x1

    .line 291
    .local v6, "voiceInteraction":Z
    :goto_1a7
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->deferStartingAnimations()V

    .line 293
    move-object/from16 v1, p0

    move-object v2, v10

    move-object/from16 v20, v8

    move-object v8, v3

    .end local v3    # "topChangingApp":Lcom/android/server/wm/ActivityRecord;
    .local v8, "topChangingApp":Lcom/android/server/wm/ActivityRecord;
    .local v20, "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    move-object v3, v9

    move-object/from16 v22, v9

    move-object v9, v4

    .end local v4    # "topClosingApp":Lcom/android/server/wm/ActivityRecord;
    .local v9, "topClosingApp":Lcom/android/server/wm/ActivityRecord;
    .local v22, "closingAppsForAnimation":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    move v4, v15

    move-object/from16 v23, v10

    move-object v10, v5

    .end local v5    # "topOpeningApp":Lcom/android/server/wm/ActivityRecord;
    .local v10, "topOpeningApp":Lcom/android/server/wm/ActivityRecord;
    .local v23, "openingAppsForAnimation":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    move-object/from16 v5, v19

    :try_start_1be
    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AppTransitionController;->applyAnimations(Landroid/util/ArraySet;Landroid/util/ArraySet;ILandroid/view/WindowManager$LayoutParams;Z)V

    .line 295
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransitionController;->handleClosingApps()V

    .line 296
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransitionController;->handleOpeningApps()V

    .line 297
    invoke-direct {v7, v15}, Lcom/android/server/wm/AppTransitionController;->handleChangingApps(I)V

    .line 299
    iget-object v0, v12, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    if-eqz v0, :cond_1dc

    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->hasTopFixedRotationLaunchingApp()Z

    move-result v0

    if-eqz v0, :cond_1dc

    .line 300
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->hideFloatWindows(Z)V

    .line 303
    :cond_1dc
    invoke-virtual {v12, v15, v10, v9, v8}, Lcom/android/server/wm/AppTransition;->setLastAppTransition(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    .line 306
    invoke-virtual {v12}, Lcom/android/server/wm/AppTransition;->getTransitFlags()I

    move-result v0

    .line 307
    .local v0, "flags":I
    invoke-virtual {v12, v15, v10}, Lcom/android/server/wm/AppTransition;->goodToGo(ILcom/android/server/wm/ActivityRecord;)I

    move-result v1

    .line 308
    .local v1, "layoutRedo":I
    invoke-direct {v7, v15, v0}, Lcom/android/server/wm/AppTransitionController;->handleNonAppWindowsInTransition(II)V

    .line 309
    invoke-virtual {v12}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 310
    invoke-virtual {v12}, Lcom/android/server/wm/AppTransition;->clear()V
    :try_end_1f0
    .catchall {:try_start_1be .. :try_end_1f0} :catchall_24f

    .line 312
    .end local v0    # "flags":I
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    .line 313
    nop

    .line 315
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget-object v2, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskSnapshotController;->onTransitionStarting(Lcom/android/server/wm/DisplayContent;)V

    .line 317
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 318
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 319
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 320
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v0}, Lcom/android/server/wm/UnknownAppVisibilityController;->clear()V

    .line 324
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 326
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 328
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    iget-object v2, v7, Lcom/android/server/wm/AppTransitionController;->mTempTransitionReasons:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyTransitionStarting(Landroid/util/ArrayMap;)V

    .line 331
    const-wide/16 v2, 0x20

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 333
    invoke-static {}, Lcom/android/server/wm/PreloadStateManagerStub;->get()Lcom/android/server/wm/PreloadStateManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wm/PreloadStateManagerStub;->checkEnableAudio()V

    .line 334
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v3, v1, 0x1

    or-int/lit8 v3, v3, 0x2

    or-int/2addr v2, v3

    iput v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 336
    return-void

    .line 312
    .end local v1    # "layoutRedo":I
    :catchall_24f
    move-exception v0

    iget-object v1, v7, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v1}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    .line 313
    throw v0

    .line 196
    .end local v6    # "voiceInteraction":Z
    .end local v8    # "topChangingApp":Lcom/android/server/wm/ActivityRecord;
    .end local v9    # "topClosingApp":Lcom/android/server/wm/ActivityRecord;
    .end local v10    # "topOpeningApp":Lcom/android/server/wm/ActivityRecord;
    .end local v11    # "animLpActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v12    # "appTransition":Lcom/android/server/wm/AppTransition;
    .end local v13    # "appCount":I
    .end local v14    # "excludeLauncherFromAnimation":Z
    .end local v15    # "transit":I
    .end local v19    # "animLp":Landroid/view/WindowManager$LayoutParams;
    .end local v20    # "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v22    # "closingAppsForAnimation":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v23    # "openingAppsForAnimation":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    :cond_258
    :goto_258
    return-void
.end method

.method isTransitWithinTask(ILcom/android/server/wm/Task;)Z
    .registers 7
    .param p1, "transit"    # I
    .param p2, "task"    # Lcom/android/server/wm/Task;

    .line 1421
    const/4 v0, 0x0

    if-eqz p2, :cond_53

    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 1422
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_53

    .line 1427
    :cond_e
    const/4 v1, 0x6

    if-eq p1, v1, :cond_19

    const/4 v1, 0x7

    if-eq p1, v1, :cond_19

    const/16 v1, 0x12

    if-eq p1, v1, :cond_19

    .line 1431
    return v0

    .line 1434
    :cond_19
    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 1435
    .local v2, "activity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 1436
    .local v3, "activityTask":Lcom/android/server/wm/Task;
    if-eq v3, p2, :cond_34

    .line 1437
    return v0

    .line 1439
    .end local v2    # "activity":Lcom/android/server/wm/ActivityRecord;
    .end local v3    # "activityTask":Lcom/android/server/wm/Task;
    :cond_34
    goto :goto_21

    .line 1440
    :cond_35
    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 1441
    .restart local v2    # "activity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eq v3, p2, :cond_50

    .line 1442
    return v0

    .line 1444
    .end local v2    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_50
    goto :goto_3d

    .line 1445
    :cond_51
    const/4 v0, 0x1

    return v0

    .line 1425
    :cond_53
    :goto_53
    return v0
.end method

.method registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    .registers 2
    .param p1, "definition"    # Landroid/view/RemoteAnimationDefinition;

    .line 150
    iput-object p1, p0, Lcom/android/server/wm/AppTransitionController;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    .line 151
    return-void
.end method
