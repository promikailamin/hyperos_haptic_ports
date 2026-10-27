.class Lcom/android/server/wm/RefreshRatePolicy;
.super Ljava/lang/Object;
.source "RefreshRatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;
    }
.end annotation


# static fields
.field static final LAYER_PRIORITY_FOCUSED_WITHOUT_MODE:I = 0x1

.field static final LAYER_PRIORITY_FOCUSED_WITH_MODE:I = 0x0

.field static final LAYER_PRIORITY_NOT_FOCUSED_WITH_MODE:I = 0x2

.field static final LAYER_PRIORITY_UNSET:I = -0x1


# instance fields
.field private final mForceList:Lcom/android/server/wm/ForceRefreshRatePackageList;

.field private final mHighRefreshRateDenylist:Lcom/android/server/wm/HighRefreshRateDenylist;

.field private final mLowRefreshRateMode:Landroid/view/Display$Mode;

.field private mMaxSupportedRefreshRate:F

.field private mMinSupportedRefreshRate:F

.field private final mNonHighRefreshRatePackages:Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;

.field private final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmMaxSupportedRefreshRate(Lcom/android/server/wm/RefreshRatePolicy;)F
    .registers 1

    iget p0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mMaxSupportedRefreshRate:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMinSupportedRefreshRate(Lcom/android/server/wm/RefreshRatePolicy;)F
    .registers 1

    iget p0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mMinSupportedRefreshRate:F

    return p0
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/DisplayInfo;Lcom/android/server/wm/HighRefreshRateDenylist;)V
    .registers 5
    .param p1, "wmService"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p3, "denylist"    # Lcom/android/server/wm/HighRefreshRateDenylist;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;-><init>(Lcom/android/server/wm/RefreshRatePolicy;)V

    iput-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;

    .line 87
    invoke-direct {p0, p2}, Lcom/android/server/wm/RefreshRatePolicy;->findLowRefreshRateMode(Landroid/view/DisplayInfo;)Landroid/view/Display$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateMode:Landroid/view/Display$Mode;

    .line 88
    iput-object p3, p0, Lcom/android/server/wm/RefreshRatePolicy;->mHighRefreshRateDenylist:Lcom/android/server/wm/HighRefreshRateDenylist;

    .line 89
    iput-object p1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 90
    new-instance v0, Lcom/android/server/wm/ForceRefreshRatePackageList;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/ForceRefreshRatePackageList;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/DisplayInfo;)V

    iput-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mForceList:Lcom/android/server/wm/ForceRefreshRatePackageList;

    .line 91
    return-void
.end method

.method private findLowRefreshRateMode(Landroid/view/DisplayInfo;)Landroid/view/Display$Mode;
    .registers 8
    .param p1, "displayInfo"    # Landroid/view/DisplayInfo;

    .line 98
    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    move-result-object v0

    .line 99
    .local v0, "mode":Landroid/view/Display$Mode;
    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getDefaultRefreshRates()[F

    move-result-object v1

    .line 100
    .local v1, "refreshRates":[F
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v2

    .line 101
    .local v2, "bestRefreshRate":F
    iput v2, p0, Lcom/android/server/wm/RefreshRatePolicy;->mMinSupportedRefreshRate:F

    .line 102
    iput v2, p0, Lcom/android/server/wm/RefreshRatePolicy;->mMaxSupportedRefreshRate:F

    .line 103
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_13
    if-ltz v3, :cond_3c

    .line 104
    iget v4, p0, Lcom/android/server/wm/RefreshRatePolicy;->mMinSupportedRefreshRate:F

    aget v5, v1, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lcom/android/server/wm/RefreshRatePolicy;->mMinSupportedRefreshRate:F

    .line 105
    iget v4, p0, Lcom/android/server/wm/RefreshRatePolicy;->mMaxSupportedRefreshRate:F

    aget v5, v1, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/android/server/wm/RefreshRatePolicy;->mMaxSupportedRefreshRate:F

    .line 107
    aget v4, v1, v3

    const/high16 v5, 0x42700000    # 60.0f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_39

    aget v4, v1, v3

    cmpg-float v4, v4, v2

    if-gez v4, :cond_39

    .line 108
    aget v2, v1, v3

    .line 103
    :cond_39
    add-int/lit8 v3, v3, -0x1

    goto :goto_13

    .line 111
    .end local v3    # "i":I
    :cond_3c
    invoke-virtual {p1, v2}, Landroid/view/DisplayInfo;->findDefaultModeByRefreshRate(F)Landroid/view/Display$Mode;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method addRefreshRateRangeForPackage(Ljava/lang/String;FF)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "minRefreshRate"    # F
    .param p3, "maxRefreshRate"    # F

    .line 116
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;->add(Ljava/lang/String;FF)V

    .line 117
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 118
    return-void
.end method

.method calculatePriority(Lcom/android/server/wm/WindowState;)I
    .registers 5
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 150
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v0

    .line 151
    .local v0, "isFocused":Z
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RefreshRatePolicy;->getPreferredModeId(Lcom/android/server/wm/WindowState;)I

    move-result v1

    .line 153
    .local v1, "preferredModeId":I
    if-nez v0, :cond_e

    if-lez v1, :cond_e

    .line 154
    const/4 v2, 0x2

    return v2

    .line 156
    :cond_e
    if-eqz v0, :cond_14

    if-nez v1, :cond_14

    .line 157
    const/4 v2, 0x1

    return v2

    .line 159
    :cond_14
    if-eqz v0, :cond_1a

    if-lez v1, :cond_1a

    .line 160
    const/4 v2, 0x0

    return v2

    .line 162
    :cond_1a
    const/4 v2, -0x1

    return v2
.end method

.method getPreferredMaxRefreshRate(Lcom/android/server/wm/WindowState;)F
    .registers 5
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 232
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->isAnimating(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 233
    return v1

    .line 236
    :cond_9
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_16

    .line 237
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    return v0

    .line 240
    :cond_16
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;->get(Ljava/lang/String;)Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    move-result-object v2

    .line 243
    .local v2, "range":Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;
    if-eqz v2, :cond_25

    .line 244
    iget v1, v2, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->max:F

    return v1

    .line 247
    :cond_25
    return v1
.end method

.method getPreferredMinRefreshRate(Lcom/android/server/wm/WindowState;)F
    .registers 5
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 209
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->isAnimating(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 210
    return v1

    .line 213
    :cond_9
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_16

    .line 214
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    return v0

    .line 217
    :cond_16
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;->get(Ljava/lang/String;)Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    move-result-object v2

    .line 222
    .local v2, "range":Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;
    if-eqz v2, :cond_25

    .line 223
    iget v1, v2, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->min:F

    return v1

    .line 226
    :cond_25
    return v1
.end method

.method getPreferredModeId(Lcom/android/server/wm/WindowState;)I
    .registers 4
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 128
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->isAnimating(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 129
    const/4 v0, 0x0

    return v0

    .line 133
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mForceList:Lcom/android/server/wm/ForceRefreshRatePackageList;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ForceRefreshRatePackageList;->getForceRefreshRateId(Ljava/lang/String;)I

    move-result v0

    .line 134
    .local v0, "forceRefreshRateId":I
    if-lez v0, :cond_16

    .line 135
    return v0

    .line 138
    :cond_16
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    return v1
.end method

.method getPreferredRefreshRate(Lcom/android/server/wm/WindowState;)F
    .registers 11
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 168
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->isAnimating(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 169
    return v1

    .line 173
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mForceList:Lcom/android/server/wm/ForceRefreshRatePackageList;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ForceRefreshRatePackageList;->getForceRefreshRate(Ljava/lang/String;)F

    move-result v0

    .line 174
    .local v0, "forceRefreshRate":F
    cmpl-float v2, v0, v1

    if-lez v2, :cond_18

    .line 175
    return v0

    .line 180
    :cond_18
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    .line 181
    .local v2, "preferredModeId":I
    if-lez v2, :cond_3a

    .line 182
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    .line 183
    .local v3, "info":Landroid/view/DisplayInfo;
    if-eqz v3, :cond_3a

    .line 184
    iget-object v4, v3, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_28
    if-ge v6, v5, :cond_3a

    aget-object v7, v4, v6

    .line 185
    .local v7, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v7}, Landroid/view/Display$Mode;->getModeId()I

    move-result v8

    if-ne v2, v8, :cond_37

    .line 186
    invoke-virtual {v7}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    return v1

    .line 184
    .end local v7    # "mode":Landroid/view/Display$Mode;
    :cond_37
    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    .line 192
    .end local v3    # "info":Landroid/view/DisplayInfo;
    :cond_3a
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    cmpl-float v3, v3, v1

    if-lez v3, :cond_47

    .line 193
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    return v1

    .line 198
    :cond_47
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v3

    .line 199
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wm/RefreshRatePolicy;->mHighRefreshRateDenylist:Lcom/android/server/wm/HighRefreshRateDenylist;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/HighRefreshRateDenylist;->isDenylisted(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 200
    iget-object v1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateMode:Landroid/view/Display$Mode;

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    return v1

    .line 203
    :cond_5a
    return v1
.end method

.method removeRefreshRateRangeForPackage(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;->remove(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 123
    return-void
.end method
