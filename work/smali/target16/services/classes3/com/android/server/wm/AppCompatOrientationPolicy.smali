.class public Lcom/android/server/wm/AppCompatOrientationPolicy;
.super Ljava/lang/Object;
.source "AppCompatOrientationPolicy.java"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatOverrides;)V
    .registers 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/server/wm/AppCompatOrientationPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 52
    iput-object p2, p0, Lcom/android/server/wm/AppCompatOrientationPolicy;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    return-void
.end method


# virtual methods
.method public overrideOrientationIfNeeded(I)I
    .registers 13

    .line 57
    iget-object v0, p0, Lcom/android/server/wm/AppCompatOrientationPolicy;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 58
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatOverrides;->getAspectRatioOverrides()Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->shouldIgnoreActivitySizeRestrictionsForDisplay()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_e

    return v2

    .line 63
    :cond_e
    iget-object v1, p0, Lcom/android/server/wm/AppCompatOrientationPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v3, 0x1

    if-eqz v1, :cond_1d

    .line 65
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getIgnoreOrientationRequest()Z

    move-result v4

    if-eqz v4, :cond_1d

    move v4, v3

    goto :goto_1e

    :cond_1d
    const/4 v4, 0x0

    .line 66
    :goto_1e
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->hasFullscreenOverride()Z

    move-result v5

    .line 67
    iget-object v6, p0, Lcom/android/server/wm/AppCompatOrientationPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 68
    invoke-static {v6}, Lcom/android/server/wm/AppCompatCameraPolicy;->shouldCameraCompatControlOrientation(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v6

    .line 69
    const-string v7, "Requested orientation "

    const-string v8, " is overridden to "

    const-string v9, " for "

    const-string v10, "ActivityTaskManager"

    if-eqz v5, :cond_6b

    if-eqz v4, :cond_6b

    .line 70
    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result v4

    if-nez v4, :cond_40

    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result v4

    if-eqz v4, :cond_6b

    :cond_40
    if-nez v6, :cond_6b

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatOrientationPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 77
    invoke-static {v10, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 85
    :cond_6b
    iget-object v2, p0, Lcom/android/server/wm/AppCompatOrientationPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerService;->mapOrientationRequest(I)I

    move-result p1

    .line 87
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->shouldApplyUserMinAspectRatioOverride()Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 88
    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientation(I)Z

    move-result v0

    if-eqz v0, :cond_83

    const/16 v0, 0xe

    if-ne p1, v0, :cond_b1

    .line 90
    :cond_83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatOrientationPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-static {v3}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " by user aspect ratio settings."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 90
    invoke-static {v10, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 97
    :cond_b1
    iget-object v0, p0, Lcom/android/server/wm/AppCompatOrientationPolicy;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatOverrides;->getOrientationOverrides()Lcom/android/server/wm/AppCompatOrientationOverrides;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatOrientationOverrides;->isAllowOrientationOverrideOptOut()Z

    move-result v0

    if-eqz v0, :cond_bf

    goto/16 :goto_180

    :cond_bf
    if-eqz v1, :cond_d7

    .line 102
    iget-object v0, p0, Lcom/android/server/wm/AppCompatOrientationPolicy;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 103
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatOverrides;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatCameraOverrides;->isOverrideOrientationOnlyForCameraEnabled()Z

    move-result v0

    if-eqz v0, :cond_d7

    iget-object v0, p0, Lcom/android/server/wm/AppCompatOrientationPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 106
    invoke-static {v0}, Lcom/android/server/wm/AppCompatCameraPolicy;->isActivityEligibleForOrientationOverride(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_d7

    goto/16 :goto_180

    .line 110
    :cond_d7
    iget-object v0, p0, Lcom/android/server/wm/AppCompatOrientationPolicy;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 111
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatOverrides;->getOrientationOverrides()Lcom/android/server/wm/AppCompatOrientationOverrides;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mOrientationOverridesState:Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;

    .line 114
    iget-boolean v1, v0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mIsOverrideToReverseLandscapeOrientationEnabled:Z

    const-string v2, "Requested orientation  "

    if-eqz v1, :cond_11a

    .line 115
    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result v1

    if-nez v1, :cond_ef

    iget-boolean v1, v0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mIsOverrideAnyOrientationEnabled:Z

    if-eqz v1, :cond_11a

    .line 117
    :cond_ef
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatOrientationPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x8

    .line 119
    invoke-static {p0}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 117
    invoke-static {v10, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 123
    :cond_11a
    iget-boolean v1, v0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mIsOverrideAnyOrientationEnabled:Z

    if-nez v1, :cond_125

    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientation(I)Z

    move-result v1

    if-eqz v1, :cond_125

    goto :goto_180

    .line 127
    :cond_125
    iget-boolean v1, v0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mIsOverrideToPortraitOrientationEnabled:Z

    if-eqz v1, :cond_152

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatOrientationPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-static {v3}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 128
    invoke-static {v10, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 134
    :cond_152
    iget-boolean v0, v0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mIsOverrideToNosensorOrientationEnabled:Z

    if-eqz v0, :cond_180

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatOrientationPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x5

    .line 137
    invoke-static {p0}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 135
    invoke-static {v10, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_180
    :goto_180
    return p1
.end method

.method public shouldIgnoreRequestedOrientation(I)Z
    .registers 7

    .line 172
    iget-object v0, p0, Lcom/android/server/wm/AppCompatOrientationPolicy;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 173
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatOverrides;->getOrientationOverrides()Lcom/android/server/wm/AppCompatOrientationOverrides;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatOrientationOverrides;->shouldEnableIgnoreOrientationRequest()Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "Ignoring orientation update to "

    const-string v4, "ActivityTaskManager"

    if-eqz v1, :cond_61

    .line 175
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatOrientationOverrides;->getIsRelaunchingAfterRequestedOrientationChanged()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " due to relaunching after setRequestedOrientation for "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatOrientationPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 176
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 183
    :cond_38
    iget-object v1, p0, Lcom/android/server/wm/AppCompatOrientationPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v1}, Lcom/android/server/wm/AppCompatCameraPolicy;->isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " due to camera compat treatment for "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatOrientationPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 184
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 190
    :cond_61
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatOrientationOverrides;->shouldIgnoreOrientationRequestLoop()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as orientation request loop was detected for "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatOrientationPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 191
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_88
    const/4 p0, 0x0

    return p0
.end method
