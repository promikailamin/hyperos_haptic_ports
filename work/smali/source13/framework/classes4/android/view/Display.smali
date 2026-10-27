.class public final Landroid/view/Display;
.super Ljava/lang/Object;
.source "Display.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Display$HdrCapabilities;,
        Landroid/view/Display$Mode;,
        Landroid/view/Display$ColorMode;
    }
.end annotation


# static fields
.field private static final greylist-max-o CACHED_APP_SIZE_DURATION_MILLIS:I = 0x14

.field public static final greylist-max-o COLOR_MODE_ADOBE_RGB:I = 0x8

.field public static final greylist-max-o COLOR_MODE_BT601_525:I = 0x3

.field public static final greylist-max-o COLOR_MODE_BT601_525_UNADJUSTED:I = 0x4

.field public static final greylist-max-o COLOR_MODE_BT601_625:I = 0x1

.field public static final greylist-max-o COLOR_MODE_BT601_625_UNADJUSTED:I = 0x2

.field public static final greylist-max-o COLOR_MODE_BT709:I = 0x5

.field public static final greylist-max-o COLOR_MODE_DCI_P3:I = 0x6

.field public static final greylist-max-o COLOR_MODE_DEFAULT:I = 0x0

.field public static final greylist-max-o COLOR_MODE_DISPLAY_P3:I = 0x9

.field public static final greylist-max-o COLOR_MODE_INVALID:I = -0x1

.field public static final greylist-max-o COLOR_MODE_SRGB:I = 0x7

.field private static final greylist-max-o DEBUG:Z = false

.field public static final whitelist DEFAULT_DISPLAY:I = 0x0

.field public static final blacklist DEFAULT_DISPLAY_GROUP:I = 0x0

.field public static final blacklist DISPLAY_MODE_ID_FOR_FRAME_RATE_OVERRIDE:I = 0xff

.field public static final blacklist FLAG_ALWAYS_UNLOCKED:I = 0x200

.field public static final greylist-max-o FLAG_CAN_SHOW_WITH_INSECURE_KEYGUARD:I = 0x20

.field public static final blacklist FLAG_OWN_DISPLAY_GROUP:I = 0x100

.field public static final whitelist FLAG_PRESENTATION:I = 0x8

.field public static final whitelist FLAG_PRIVATE:I = 0x4

.field public static final whitelist FLAG_ROUND:I = 0x10

.field public static final greylist-max-o FLAG_SCALING_DISABLED:I = 0x40000000

.field public static final whitelist FLAG_SECURE:I = 0x2

.field public static final blacklist FLAG_SHOULD_SHOW_SYSTEM_DECORATIONS:I = 0x40

.field public static final whitelist FLAG_SUPPORTS_PROTECTED_BUFFERS:I = 0x1

.field public static final blacklist FLAG_TOUCH_FEEDBACK_DISABLED:I = 0x400

.field public static final blacklist FLAG_TRUSTED:I = 0x80

.field public static final whitelist INVALID_DISPLAY:I = -0x1

.field public static final blacklist INVALID_DISPLAY_GROUP:I = -0x1

.field public static final blacklist INVALID_DISPLAY_HEIGHT:I = -0x1

.field public static final blacklist INVALID_DISPLAY_REFRESH_RATE:F = 0.0f

.field public static final blacklist INVALID_DISPLAY_WIDTH:I = -0x1

.field public static final blacklist NEXT_BUILTIN_DISPLAY:I = 0x2

.field public static final greylist-max-o REMOVE_MODE_DESTROY_CONTENT:I = 0x1

.field public static final greylist-max-o REMOVE_MODE_MOVE_CONTENT_TO_PRIMARY:I = 0x0

.field public static final whitelist STATE_DOZE:I = 0x3

.field public static final whitelist STATE_DOZE_SUSPEND:I = 0x4

.field public static final whitelist STATE_OFF:I = 0x1

.field public static final whitelist STATE_ON:I = 0x2

.field public static final whitelist STATE_ON_SUSPEND:I = 0x6

.field public static final whitelist STATE_UNKNOWN:I = 0x0

.field public static final whitelist STATE_VR:I = 0x5

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Display"

.field public static final greylist-max-r TYPE_EXTERNAL:I = 0x2

.field public static final blacklist TYPE_INTERNAL:I = 0x1

.field public static final greylist-max-o TYPE_OVERLAY:I = 0x4

.field public static final greylist TYPE_UNKNOWN:I = 0x0

.field public static final greylist TYPE_VIRTUAL:I = 0x5

.field public static final greylist TYPE_WIFI:I = 0x3


# instance fields
.field private greylist-max-o mCachedAppHeightCompat:I

.field private greylist-max-o mCachedAppWidthCompat:I

.field private greylist-max-o mDisplayAdjustments:Landroid/view/DisplayAdjustments;

.field private final greylist-max-o mDisplayId:I

.field private greylist mDisplayInfo:Landroid/view/DisplayInfo;

.field private final greylist-max-o mFlags:I

.field private final greylist-max-o mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

.field private greylist-max-o mIsValid:Z

.field private greylist-max-o mLastCachedAppSizeUpdate:J

.field private final blacklist mLock:Ljava/lang/Object;

.field private final greylist-max-o mOwnerPackageName:Ljava/lang/String;

.field private final greylist-max-o mOwnerUid:I

.field private final greylist-max-o mResources:Landroid/content/res/Resources;

.field private final greylist-max-o mTempMetrics:Landroid/util/DisplayMetrics;

.field private final greylist-max-o mType:I


# direct methods
.method public constructor greylist-max-o <init>(Landroid/hardware/display/DisplayManagerGlobal;ILandroid/view/DisplayInfo;Landroid/content/res/Resources;)V
    .registers 11
    .param p1, "global"    # Landroid/hardware/display/DisplayManagerGlobal;
    .param p2, "displayId"    # I
    .param p3, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p4, "res"    # Landroid/content/res/Resources;

    .line 555
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/Display;-><init>(Landroid/hardware/display/DisplayManagerGlobal;ILandroid/view/DisplayInfo;Landroid/view/DisplayAdjustments;Landroid/content/res/Resources;)V

    .line 556
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/hardware/display/DisplayManagerGlobal;ILandroid/view/DisplayInfo;Landroid/view/DisplayAdjustments;)V
    .registers 11
    .param p1, "global"    # Landroid/hardware/display/DisplayManagerGlobal;
    .param p2, "displayId"    # I
    .param p3, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p4, "daj"    # Landroid/view/DisplayAdjustments;

    .line 543
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/Display;-><init>(Landroid/hardware/display/DisplayManagerGlobal;ILandroid/view/DisplayInfo;Landroid/view/DisplayAdjustments;Landroid/content/res/Resources;)V

    .line 544
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/hardware/display/DisplayManagerGlobal;ILandroid/view/DisplayInfo;Landroid/view/DisplayAdjustments;Landroid/content/res/Resources;)V
    .registers 8
    .param p1, "global"    # Landroid/hardware/display/DisplayManagerGlobal;
    .param p2, "displayId"    # I
    .param p3, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p4, "daj"    # Landroid/view/DisplayAdjustments;
    .param p5, "res"    # Landroid/content/res/Resources;

    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    .line 115
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    .line 560
    iput-object p1, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    .line 561
    iput p2, p0, Landroid/view/Display;->mDisplayId:I

    .line 562
    iput-object p3, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 563
    iput-object p5, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    .line 564
    if-eqz p5, :cond_25

    .line 565
    new-instance v0, Landroid/view/DisplayAdjustments;

    invoke-virtual {p5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/DisplayAdjustments;-><init>(Landroid/content/res/Configuration;)V

    goto :goto_30

    .line 566
    :cond_25
    new-instance v0, Landroid/view/DisplayAdjustments;

    if-eqz p4, :cond_2d

    invoke-direct {v0, p4}, Landroid/view/DisplayAdjustments;-><init>(Landroid/view/DisplayAdjustments;)V

    goto :goto_30

    :cond_2d
    invoke-direct {v0}, Landroid/view/DisplayAdjustments;-><init>()V

    :goto_30
    iput-object v0, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    .line 567
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Display;->mIsValid:Z

    .line 570
    iget v0, p3, Landroid/view/DisplayInfo;->flags:I

    iput v0, p0, Landroid/view/Display;->mFlags:I

    .line 571
    iget v0, p3, Landroid/view/DisplayInfo;->type:I

    iput v0, p0, Landroid/view/Display;->mType:I

    .line 572
    iget v0, p3, Landroid/view/DisplayInfo;->ownerUid:I

    iput v0, p0, Landroid/view/Display;->mOwnerUid:I

    .line 573
    iget-object v0, p3, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/Display;->mOwnerPackageName:Ljava/lang/String;

    .line 574
    return-void
.end method

.method private blacklist adjustMetrics(Landroid/util/DisplayMetrics;II)V
    .registers 6
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;
    .param p2, "realRotation"    # I
    .param p3, "localRotation"    # I

    .line 1835
    invoke-static {p2, p3}, Landroid/view/Display;->noFlip(II)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1838
    :cond_7
    invoke-direct {p0}, Landroid/view/Display;->miuiNoFlip()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 1840
    :cond_e
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1841
    .local v0, "w":I
    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1842
    iput v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1844
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 1845
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    iput v1, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 1846
    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 1847
    return-void
.end method

.method private blacklist adjustSize(Landroid/graphics/Point;II)V
    .registers 6
    .param p1, "size"    # Landroid/graphics/Point;
    .param p2, "realRotation"    # I
    .param p3, "localRotation"    # I

    .line 1819
    invoke-static {p2, p3}, Landroid/view/Display;->noFlip(II)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1822
    :cond_7
    invoke-direct {p0}, Landroid/view/Display;->miuiNoFlip()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 1824
    :cond_e
    iget v0, p1, Landroid/graphics/Point;->x:I

    .line 1825
    .local v0, "w":I
    iget v1, p1, Landroid/graphics/Point;->y:I

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 1826
    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 1827
    return-void
.end method

.method private blacklist getLocalRotation()I
    .registers 3

    .line 1850
    iget-object v0, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_9

    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    return v0

    .line 1851
    :cond_9
    nop

    .line 1852
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v0

    .line 1853
    .local v0, "localRotation":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    return v0

    .line 1854
    :cond_18
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    return v1
.end method

.method public static blacklist hasAccess(IIII)Z
    .registers 5
    .param p0, "uid"    # I
    .param p1, "flags"    # I
    .param p2, "ownerUid"    # I
    .param p3, "displayId"    # I

    .line 1699
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_19

    if-eq p0, p2, :cond_19

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_19

    if-eqz p0, :cond_19

    .line 1704
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0, p3}, Landroid/hardware/display/DisplayManagerGlobal;->isUidPresentOnDisplay(II)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    .line 1699
    :goto_1a
    return v0
.end method

.method public static whitelist hasSmallFreeformFeature()Z
    .registers 1

    .line 1425
    invoke-static {}, Landroid/util/MiuiFreeformUtils;->hasSmallFreeformFeature()Z

    move-result v0

    return v0
.end method

.method public static blacklist isActiveState(I)Z
    .registers 2
    .param p0, "state"    # I

    .line 1939
    const/4 v0, 0x2

    if-eq p0, v0, :cond_9

    const/4 v0, 0x5

    if-ne p0, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method

.method public static greylist-max-o isDozeState(I)Z
    .registers 2
    .param p0, "state"    # I

    .line 1930
    const/4 v0, 0x3

    if-eq p0, v0, :cond_9

    const/4 v0, 0x4

    if-ne p0, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method

.method public static blacklist isHeightValid(I)Z
    .registers 2
    .param p0, "height"    # I

    .line 1972
    if-lez p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public static blacklist isOffState(I)Z
    .registers 2
    .param p0, "state"    # I

    .line 1947
    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public static blacklist isOnState(I)Z
    .registers 2
    .param p0, "state"    # I

    .line 1956
    const/4 v0, 0x2

    if-eq p0, v0, :cond_c

    const/4 v0, 0x5

    if-eq p0, v0, :cond_c

    const/4 v0, 0x6

    if-ne p0, v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v0, 0x1

    :goto_d
    return v0
.end method

.method public static blacklist isRefreshRateValid(F)Z
    .registers 2
    .param p0, "refreshRate"    # F

    .line 1980
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static greylist-max-o isSuspendedState(I)Z
    .registers 3
    .param p0, "state"    # I

    .line 1921
    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    const/4 v1, 0x4

    if-eq p0, v1, :cond_b

    const/4 v1, 0x6

    if-ne p0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :cond_b
    :goto_b
    return v0
.end method

.method public static blacklist isWidthValid(I)Z
    .registers 2
    .param p0, "width"    # I

    .line 1964
    if-lez p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private blacklist miuiIgnoreMaxBounds()Z
    .registers 4

    .line 1784
    invoke-static {}, Landroid/app/ActivityThread;->isEmbedded()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    .line 1785
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_17

    .line 1786
    return v1

    .line 1788
    :cond_17
    iget-object v0, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->isLetterBoxed()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1789
    return v1

    .line 1791
    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist miuiNoFlip()Z
    .registers 3

    .line 1775
    invoke-static {}, Landroid/app/ActivityThread;->isEmbedded()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 1776
    return v1

    .line 1778
    :cond_8
    iget-object v0, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->isLetterBoxed()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1779
    return v1

    .line 1781
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist noFlip(II)Z
    .registers 3
    .param p0, "realRotation"    # I
    .param p1, "localRotation"    # I

    .line 1770
    sub-int v0, p0, p1

    add-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private blacklist sandboxForLetterbox()V
    .registers 5

    .line 1795
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1796
    return-void

    .line 1798
    :cond_7
    iget-object v0, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_62

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->isLetterBoxed()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1799
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.home"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    .line 1800
    iget-object v0, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1801
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_61

    .line 1802
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1803
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1804
    iget-object v1, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 1805
    .local v1, "appBounds":Landroid/graphics/Rect;
    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, v2, Landroid/view/DisplayInfo;->appWidth:I

    .line 1806
    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, v2, Landroid/view/DisplayInfo;->appHeight:I

    .line 1808
    .end local v1    # "appBounds":Landroid/graphics/Rect;
    :cond_61
    return-void

    .line 1810
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_62
    return-void
.end method

.method private blacklist shouldReportMaxBounds()Z
    .registers 4

    .line 1660
    iget-object v0, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1661
    return v1

    .line 1665
    :cond_6
    invoke-direct {p0}, Landroid/view/Display;->miuiIgnoreMaxBounds()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1666
    return v1

    .line 1670
    :cond_d
    iget-object v0, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1671
    .local v0, "config":Landroid/content/res/Configuration;
    if-eqz v0, :cond_22

    iget-object v2, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_22

    const/4 v1, 0x1

    :cond_22
    return v1
.end method

.method public static greylist-max-o stateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .line 1895
    packed-switch p0, :pswitch_data_1e

    .line 1911
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1909
    :pswitch_8
    const-string v0, "ON_SUSPEND"

    return-object v0

    .line 1907
    :pswitch_b
    const-string v0, "VR"

    return-object v0

    .line 1905
    :pswitch_e
    const-string v0, "DOZE_SUSPEND"

    return-object v0

    .line 1903
    :pswitch_11
    const-string v0, "DOZE"

    return-object v0

    .line 1901
    :pswitch_14
    const-string v0, "ON"

    return-object v0

    .line 1899
    :pswitch_17
    const-string v0, "OFF"

    return-object v0

    .line 1897
    :pswitch_1a
    const-string v0, "UNKNOWN"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static greylist-max-o typeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .line 1873
    packed-switch p0, :pswitch_data_1a

    .line 1887
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1885
    :pswitch_8
    const-string v0, "VIRTUAL"

    return-object v0

    .line 1883
    :pswitch_b
    const-string v0, "OVERLAY"

    return-object v0

    .line 1881
    :pswitch_e
    const-string v0, "WIFI"

    return-object v0

    .line 1879
    :pswitch_11
    const-string v0, "EXTERNAL"

    return-object v0

    .line 1877
    :pswitch_14
    const-string v0, "INTERNAL"

    return-object v0

    .line 1875
    :pswitch_17
    const-string v0, "UNKNOWN"

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private greylist-max-o updateCachedAppSizeIfNeededLocked()V
    .registers 7

    .line 1756
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1757
    .local v0, "now":J
    iget-wide v2, p0, Landroid/view/Display;->mLastCachedAppSizeUpdate:J

    const-wide/16 v4, 0x14

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_29

    .line 1758
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1759
    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v3, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    .line 1760
    iget-object v2, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Landroid/view/Display;->mCachedAppWidthCompat:I

    .line 1761
    iget-object v2, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Landroid/view/Display;->mCachedAppHeightCompat:I

    .line 1762
    iput-wide v0, p0, Landroid/view/Display;->mLastCachedAppSizeUpdate:J

    .line 1764
    :cond_29
    return-void
.end method

.method private greylist-max-o updateDisplayInfoLocked()V
    .registers 5

    .line 1728
    iget-object v0, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget v1, p0, Landroid/view/Display;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 1729
    .local v0, "newInfo":Landroid/view/DisplayInfo;
    if-nez v0, :cond_12

    .line 1731
    iget-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    if-eqz v1, :cond_1b

    .line 1732
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    goto :goto_1b

    .line 1739
    :cond_12
    iput-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 1740
    iget-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    if-nez v1, :cond_1b

    .line 1741
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    .line 1749
    :cond_1b
    :goto_1b
    invoke-static {}, Lmiui/window/MiuiEmbeddingWindowStub;->get()Lmiui/window/MiuiEmbeddingWindowStub;

    move-result-object v1

    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v3, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    invoke-interface {v1, v2, v3}, Lmiui/window/MiuiEmbeddingWindowStub;->sandboxDisplayInfo(Landroid/view/DisplayInfo;Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1750
    return-void

    .line 1752
    :cond_2a
    invoke-direct {p0}, Landroid/view/Display;->sandboxForLetterbox()V

    .line 1753
    return-void
.end method


# virtual methods
.method public blacklist clearUserPreferredDisplayMode()V
    .registers 4

    .line 1297
    iget-object v0, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget v1, p0, Landroid/view/Display;->mDisplayId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->setUserPreferredDisplayMode(ILandroid/view/Display$Mode;)V

    .line 1298
    return-void
.end method

.method public blacklist getAddress()Landroid/view/DisplayAddress;
    .registers 3

    .line 693
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 694
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 695
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    monitor-exit v0

    return-object v1

    .line 696
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public whitelist getAppVsyncOffsetNanos()J
    .registers 4

    .line 1399
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1400
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1401
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-wide v1, v1, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    monitor-exit v0

    return-wide v1

    .line 1402
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public blacklist getBrightnessDefault()F
    .registers 3

    .line 766
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 767
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 768
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->brightnessDefault:F

    monitor-exit v0

    return v1

    .line 769
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public blacklist getBrightnessInfo()Landroid/hardware/display/BrightnessInfo;
    .registers 3

    .line 778
    iget-object v0, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget v1, p0, Landroid/view/Display;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getBrightnessInfo(I)Landroid/hardware/display/BrightnessInfo;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getColorMode()I
    .registers 3

    .line 1157
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1158
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1159
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->colorMode:I

    monitor-exit v0

    return v1

    .line 1160
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public whitelist getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 5
    .param p1, "outSmallestSize"    # Landroid/graphics/Point;
    .param p2, "outLargestSize"    # Landroid/graphics/Point;

    .line 881
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 882
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 883
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 884
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 885
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iput v1, p2, Landroid/graphics/Point;->x:I

    .line 886
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    iput v1, p2, Landroid/graphics/Point;->y:I

    .line 887
    monitor-exit v0

    .line 888
    return-void

    .line 887
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public whitelist getCutout()Landroid/view/DisplayCutout;
    .registers 7

    .line 1011
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1012
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1013
    iget-object v1, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    if-nez v1, :cond_10

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    monitor-exit v0

    return-object v1

    .line 1014
    :cond_10
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 1015
    .local v1, "localCutout":Landroid/view/DisplayCutout;
    if-nez v1, :cond_19

    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 1016
    :cond_19
    invoke-direct {p0}, Landroid/view/Display;->getLocalRotation()I

    move-result v2

    .line 1017
    .local v2, "rotation":I
    iget-object v3, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->rotation:I

    if-eq v2, v3, :cond_35

    .line 1018
    iget-object v3, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v4, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v5, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/view/DisplayCutout;->getRotated(IIII)Landroid/view/DisplayCutout;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 1021
    :cond_35
    monitor-exit v0

    return-object v1

    .line 1022
    .end local v1    # "localCutout":Landroid/view/DisplayCutout;
    .end local v2    # "rotation":I
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v1
.end method

.method public blacklist getDefaultMode()Landroid/view/Display$Mode;
    .registers 3

    .line 1101
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1102
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1103
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1104
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public whitelist getDeviceProductInfo()Landroid/hardware/display/DeviceProductInfo;
    .registers 3

    .line 1438
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1439
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1440
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    monitor-exit v0

    return-object v1

    .line 1441
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public greylist getDisplayAdjustments()Landroid/view/DisplayAdjustments;
    .registers 3

    .line 734
    iget-object v0, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_17

    .line 735
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v0

    .line 736
    .local v0, "currentAdjustments":Landroid/view/DisplayAdjustments;
    iget-object v1, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v1, v0}, Landroid/view/DisplayAdjustments;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 737
    new-instance v1, Landroid/view/DisplayAdjustments;

    invoke-direct {v1, v0}, Landroid/view/DisplayAdjustments;-><init>(Landroid/view/DisplayAdjustments;)V

    iput-object v1, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    .line 741
    .end local v0    # "currentAdjustments":Landroid/view/DisplayAdjustments;
    :cond_17
    iget-object v0, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    return-object v0
.end method

.method public blacklist getDisplayDecorationSupport()Landroid/hardware/graphics/common/DisplayDecorationSupport;
    .registers 3

    .line 1993
    iget-object v0, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget v1, p0, Landroid/view/Display;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayDecorationSupport(I)Landroid/hardware/graphics/common/DisplayDecorationSupport;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDisplayId()I
    .registers 2

    .line 584
    iget v0, p0, Landroid/view/Display;->mDisplayId:I

    return v0
.end method

.method public greylist-max-p getDisplayInfo(Landroid/view/DisplayInfo;)Z
    .registers 4
    .param p1, "outDisplayInfo"    # Landroid/view/DisplayInfo;

    .line 629
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 630
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 631
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p1, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 632
    iget-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    monitor-exit v0

    return v1

    .line 633
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public blacklist getDisplayRealMetricsSize(Landroid/util/DisplayMetrics;)V
    .registers 6
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;

    .line 2511
    monitor-enter p0

    .line 2512
    :try_start_1
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 2514
    iget-object v0, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2515
    .local v0, "config":Landroid/content/res/Configuration;
    if-eqz v0, :cond_26

    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_26

    .line 2516
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    sget-object v2, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iget-object v3, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    .line 2517
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 2516
    invoke-virtual {v1, p1, v2, v3}, Landroid/view/DisplayInfo;->getMaxBoundsMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V

    goto :goto_2e

    .line 2519
    :cond_26
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    sget-object v2, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/view/DisplayInfo;->getLogicalMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V

    .line 2523
    :goto_2e
    invoke-direct {p0}, Landroid/view/Display;->getLocalRotation()I

    move-result v1

    .line 2524
    .local v1, "rotation":I
    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->rotation:I

    if-eq v1, v2, :cond_3f

    .line 2525
    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->rotation:I

    invoke-direct {p0, p1, v2, v1}, Landroid/view/Display;->adjustMetrics(Landroid/util/DisplayMetrics;II)V

    .line 2527
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v1    # "rotation":I
    :cond_3f
    monitor-exit p0

    .line 2528
    return-void

    .line 2527
    :catchall_41
    move-exception v0

    monitor-exit p0
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_41

    throw v0
.end method

.method public whitelist getFlags()I
    .registers 2

    .line 663
    iget v0, p0, Landroid/view/Display;->mFlags:I

    return v0
.end method

.method public whitelist getHdrCapabilities()Landroid/view/Display$HdrCapabilities;
    .registers 13

    .line 1197
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1198
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1199
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    array-length v1, v1

    if-nez v1, :cond_13

    .line 1200
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    monitor-exit v0

    return-object v1

    .line 1203
    :cond_13
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    if-nez v1, :cond_1c

    .line 1204
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 1207
    :cond_1c
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1208
    .local v1, "enabledTypesSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, v2, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-virtual {v2}, Landroid/view/Display$HdrCapabilities;->getSupportedHdrTypes()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_2c
    if-ge v5, v3, :cond_4e

    aget v6, v2, v5

    .line 1209
    .local v6, "supportedType":I
    const/4 v7, 0x0

    .line 1210
    .local v7, "typeDisabled":Z
    iget-object v8, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v8, v8, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    array-length v9, v8

    move v10, v4

    :goto_37
    if-ge v10, v9, :cond_42

    aget v11, v8, v10

    .line 1211
    .local v11, "userDisabledType":I
    if-ne v6, v11, :cond_3f

    .line 1212
    const/4 v7, 0x1

    .line 1213
    goto :goto_42

    .line 1210
    .end local v11    # "userDisabledType":I
    :cond_3f
    add-int/lit8 v10, v10, 0x1

    goto :goto_37

    .line 1216
    :cond_42
    :goto_42
    if-nez v7, :cond_4b

    .line 1217
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1208
    .end local v6    # "supportedType":I
    .end local v7    # "typeDisabled":Z
    :cond_4b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    .line 1221
    :cond_4e
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 1222
    .local v2, "enabledTypes":[I
    const/4 v3, 0x0

    .line 1223
    .local v3, "index":I
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_59
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1224
    .local v5, "enabledType":I
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "index":I
    .local v6, "index":I
    aput v5, v2, v3

    .line 1225
    .end local v5    # "enabledType":I
    move v3, v6

    goto :goto_59

    .line 1226
    .end local v6    # "index":I
    .restart local v3    # "index":I
    :cond_6f
    new-instance v4, Landroid/view/Display$HdrCapabilities;

    iget-object v5, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v5, v5, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-static {v5}, Landroid/view/Display$HdrCapabilities;->-$$Nest$fgetmMaxLuminance(Landroid/view/Display$HdrCapabilities;)F

    move-result v5

    iget-object v6, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v6, v6, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-static {v6}, Landroid/view/Display$HdrCapabilities;->-$$Nest$fgetmMaxAverageLuminance(Landroid/view/Display$HdrCapabilities;)F

    move-result v6

    iget-object v7, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v7, v7, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-static {v7}, Landroid/view/Display$HdrCapabilities;->-$$Nest$fgetmMinLuminance(Landroid/view/Display$HdrCapabilities;)F

    move-result v7

    invoke-direct {v4, v2, v5, v6, v7}, Landroid/view/Display$HdrCapabilities;-><init>([IFFF)V

    monitor-exit v0

    return-object v4

    .line 1230
    .end local v1    # "enabledTypesSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v2    # "enabledTypes":[I
    .end local v3    # "index":I
    :catchall_8e
    move-exception v1

    monitor-exit v0
    :try_end_90
    .catchall {:try_start_3 .. :try_end_90} :catchall_8e

    throw v1
.end method

.method public whitelist getHeight()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 926
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 927
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateCachedAppSizeIfNeededLocked()V

    .line 930
    iget-object v1, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    iget v2, p0, Landroid/view/Display;->mCachedAppHeightCompat:I

    invoke-static {v1, v2}, Landroid/util/MiuiFreeformUtils;->getHeight(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Landroid/view/Display;->mCachedAppHeightCompat:I

    .line 931
    monitor-exit v0

    return v1

    .line 932
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public blacklist getInstallOrientation()I
    .registers 3

    .line 987
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 988
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 989
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->installOrientation:I

    monitor-exit v0

    return v1

    .line 990
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public greylist-max-o getLayerStack()I
    .registers 3

    .line 646
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 647
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 648
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->layerStack:I

    monitor-exit v0

    return v1

    .line 649
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public greylist getMaximumSizeDimension()I
    .registers 4

    .line 897
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 898
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 899
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    monitor-exit v0

    return v1

    .line 900
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public whitelist getMetrics(Landroid/util/DisplayMetrics;)V
    .registers 5
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1481
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1482
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1483
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    .line 1486
    invoke-static {}, Landroid/view/WindowManagerGlobalStub;->getInstance()Landroid/view/WindowManagerGlobalStub;

    move-result-object v1

    iget-object v2, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v2, p1}, Landroid/view/WindowManagerGlobalStub;->getCutoutAdaptedMetrics(Landroid/content/res/Resources;Landroid/util/DisplayMetrics;)V

    .line 1491
    iget-object v1, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    invoke-static {v1, p1}, Landroid/util/MiuiFreeformUtils;->getMetrics(Landroid/content/res/Resources;Landroid/util/DisplayMetrics;)V

    .line 1492
    monitor-exit v0

    .line 1493
    return-void

    .line 1492
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public whitelist getMode()Landroid/view/Display$Mode;
    .registers 3

    .line 1089
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1090
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1091
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1092
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 3

    .line 753
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 754
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 755
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 756
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public whitelist getOrientation()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1000
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method public greylist getOwnerPackageName()Ljava/lang/String;
    .registers 2

    .line 723
    iget-object v0, p0, Landroid/view/Display;->mOwnerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getOwnerUid()I
    .registers 2

    .line 709
    iget v0, p0, Landroid/view/Display;->mOwnerUid:I

    return v0
.end method

.method public whitelist getPixelFormat()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1056
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getPreferredWideGamutColorSpace()Landroid/graphics/ColorSpace;
    .registers 3

    .line 1334
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1335
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1336
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->isWideColorGamut()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1337
    iget-object v1, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerGlobal;->getPreferredWideGamutColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1339
    :cond_16
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 1340
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public whitelist getPresentationDeadlineNanos()J
    .registers 4

    .line 1417
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1418
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1419
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-wide v1, v1, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    monitor-exit v0

    return-wide v1

    .line 1420
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public whitelist getRealMetrics(Landroid/util/DisplayMetrics;)V
    .registers 6
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1627
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1628
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1629
    invoke-direct {p0}, Landroid/view/Display;->shouldReportMaxBounds()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1630
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    sget-object v2, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iget-object v3, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    .line 1632
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 1630
    invoke-virtual {v1, p1, v2, v3}, Landroid/view/DisplayInfo;->getMaxBoundsMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V

    .line 1638
    monitor-exit v0

    return-void

    .line 1640
    :cond_1b
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    sget-object v2, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/view/DisplayInfo;->getLogicalMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V

    .line 1642
    invoke-direct {p0}, Landroid/view/Display;->getLocalRotation()I

    move-result v1

    .line 1643
    .local v1, "rotation":I
    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->rotation:I

    if-eq v1, v2, :cond_34

    .line 1644
    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->rotation:I

    invoke-direct {p0, p1, v2, v1}, Landroid/view/Display;->adjustMetrics(Landroid/util/DisplayMetrics;II)V

    .line 1646
    .end local v1    # "rotation":I
    :cond_34
    monitor-exit v0

    .line 1647
    return-void

    .line 1646
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw v1
.end method

.method public whitelist getRealSize(Landroid/graphics/Point;)V
    .registers 7
    .param p1, "outSize"    # Landroid/graphics/Point;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1542
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1543
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1544
    invoke-direct {p0}, Landroid/view/Display;->shouldReportMaxBounds()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_36

    .line 1545
    iget-object v1, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1546
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 1547
    .local v1, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, p1, Landroid/graphics/Point;->x:I

    .line 1548
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, p1, Landroid/graphics/Point;->y:I

    .line 1550
    invoke-static {}, Landroid/util/GMSDownscaleStub;->getInstance()Landroid/util/GMSDownscaleStub;

    move-result-object v3

    .line 1551
    iget-object v4, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    if-eqz v4, :cond_31

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    :cond_31
    invoke-virtual {v3, v2, p1}, Landroid/util/GMSDownscaleStub;->applyToPointForDownscale(Landroid/content/res/Configuration;Landroid/graphics/Point;)V

    .line 1557
    monitor-exit v0

    return-void

    .line 1559
    .end local v1    # "bounds":Landroid/graphics/Rect;
    :cond_36
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 1560
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 1561
    invoke-direct {p0}, Landroid/view/Display;->getLocalRotation()I

    move-result v1

    .line 1562
    .local v1, "rotation":I
    iget-object v3, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->rotation:I

    if-eq v1, v3, :cond_53

    .line 1563
    iget-object v3, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->rotation:I

    invoke-direct {p0, p1, v3, v1}, Landroid/view/Display;->adjustSize(Landroid/graphics/Point;II)V

    .line 1566
    :cond_53
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v3

    invoke-interface {v3}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAutoUIEnable()Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 1567
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v3

    invoke-interface {v3}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getMIUIAutoUI()Lcom/miui/autoui/MIUIAutoUIStub;

    move-result-object v3

    .line 1568
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Lcom/miui/autoui/MIUIAutoUIStub;->adjustSizeIfNeeded(Landroid/graphics/Point;Ljava/lang/String;)V

    .line 1573
    :cond_6c
    invoke-static {}, Landroid/util/GMSDownscaleStub;->getInstance()Landroid/util/GMSDownscaleStub;

    move-result-object v3

    .line 1574
    iget-object v4, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    if-eqz v4, :cond_78

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    :cond_78
    invoke-virtual {v3, v2, p1}, Landroid/util/GMSDownscaleStub;->applyToPointForDownscale(Landroid/content/res/Configuration;Landroid/graphics/Point;)V

    .line 1576
    .end local v1    # "rotation":I
    monitor-exit v0

    .line 1577
    return-void

    .line 1576
    :catchall_7d
    move-exception v1

    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_3 .. :try_end_7f} :catchall_7d

    throw v1
.end method

.method public whitelist getRectSize(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "outSize"    # Landroid/graphics/Rect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 843
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 844
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 845
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    .line 846
    iget-object v1, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 847
    monitor-exit v0

    .line 848
    return-void

    .line 847
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public whitelist getRefreshRate()F
    .registers 3

    .line 1063
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1064
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1065
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getRefreshRate()F

    move-result v1

    monitor-exit v0

    return v1

    .line 1066
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public greylist-max-o getRemoveMode()I
    .registers 2

    .line 1175
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->removeMode:I

    return v0
.end method

.method public blacklist getReportedHdrTypes()[I
    .registers 3

    .line 1243
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1244
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1245
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    if-nez v1, :cond_11

    .line 1246
    const/4 v1, 0x0

    new-array v1, v1, [I

    monitor-exit v0

    return-object v1

    .line 1248
    :cond_11
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-virtual {v1}, Landroid/view/Display$HdrCapabilities;->getSupportedHdrTypes()[I

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1249
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public whitelist getRotation()I
    .registers 5

    .line 959
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 960
    .local v0, "currentPackage":Ljava/lang/String;
    iget-object v1, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3f

    .line 962
    invoke-static {}, Landroid/util/MiuiFreeformUtils;->getRotationFromDisplayApp()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 963
    invoke-static {v0}, Lmiui/app/MiuiFreeFormManager;->openCameraInFreeForm(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 964
    invoke-static {}, Landroid/util/MiuiFreeformUtils;->getFixedRotationAppList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    goto :goto_3d

    .line 967
    :cond_30
    iget-object v1, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v1

    return v1

    .line 965
    :cond_3d
    :goto_3d
    const/4 v1, 0x0

    return v1

    .line 970
    :cond_3f
    iget-object v1, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 971
    :try_start_42
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 973
    invoke-static {}, Lmiui/window/MiuiEmbeddingWindowStub;->get()Lmiui/window/MiuiEmbeddingWindowStub;

    move-result-object v2

    iget-object v3, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-interface {v2, v3}, Lmiui/window/MiuiEmbeddingWindowStub;->overrideDisplayRotation(Landroid/view/DisplayInfo;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 974
    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->rotation:I

    monitor-exit v1

    return v2

    .line 977
    :cond_57
    invoke-direct {p0}, Landroid/view/Display;->getLocalRotation()I

    move-result v2

    monitor-exit v1

    return v2

    .line 978
    :catchall_5d
    move-exception v2

    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_42 .. :try_end_5f} :catchall_5d

    throw v2
.end method

.method public whitelist getRoundedCorner(I)Landroid/view/RoundedCorner;
    .registers 7
    .param p1, "position"    # I

    .line 1035
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1036
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1037
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    .line 1038
    .local v1, "roundedCorners":Landroid/view/RoundedCorners;
    invoke-direct {p0}, Landroid/view/Display;->getLocalRotation()I

    move-result v2

    .line 1039
    .local v2, "rotation":I
    if-eqz v1, :cond_21

    iget-object v3, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->rotation:I

    if-eq v2, v3, :cond_21

    .line 1040
    iget-object v3, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v4, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/RoundedCorners;->rotate(III)Landroid/view/RoundedCorners;

    .line 1043
    :cond_21
    if-nez v1, :cond_25

    const/4 v3, 0x0

    goto :goto_29

    :cond_25
    invoke-virtual {v1, p1}, Landroid/view/RoundedCorners;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v3

    :goto_29
    monitor-exit v0

    return-object v3

    .line 1044
    .end local v1    # "roundedCorners":Landroid/view/RoundedCorners;
    .end local v2    # "rotation":I
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public whitelist getSize(Landroid/graphics/Point;)V
    .registers 6
    .param p1, "outSize"    # Landroid/graphics/Point;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 822
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 823
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 824
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    .line 825
    iget-object v1, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 826
    iget-object v1, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 829
    iget-object v1, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    invoke-static {v1, p1}, Landroid/util/MiuiFreeformUtils;->getSize(Landroid/content/res/Resources;Landroid/graphics/Point;)V

    .line 830
    monitor-exit v0

    .line 831
    return-void

    .line 830
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public whitelist getState()I
    .registers 3

    .line 1682
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1683
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1684
    iget-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->state:I

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    monitor-exit v0

    return v1

    .line 1685
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public greylist-max-o getSupportedColorModes()[I
    .registers 4

    .line 1348
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1349
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1350
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->supportedColorModes:[I

    .line 1351
    .local v1, "colorModes":[I
    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1352
    .end local v1    # "colorModes":[I
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public whitelist getSupportedModes()[Landroid/view/Display$Mode;
    .registers 4

    .line 1111
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1112
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1113
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 1114
    .local v1, "modes":[Landroid/view/Display$Mode;
    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/Display$Mode;

    monitor-exit v0

    return-object v2

    .line 1115
    .end local v1    # "modes":[Landroid/view/Display$Mode;
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public whitelist getSupportedRefreshRates()[F
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1079
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1080
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1081
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getDefaultRefreshRates()[F

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1082
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public blacklist getSupportedWideColorGamut()[Landroid/graphics/ColorSpace;
    .registers 9

    .line 1365
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1366
    const/4 v1, 0x0

    :try_start_4
    new-array v2, v1, [Landroid/graphics/ColorSpace;

    .line 1367
    .local v2, "defaultColorSpaces":[Landroid/graphics/ColorSpace;
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1368
    invoke-virtual {p0}, Landroid/view/Display;->isWideColorGamut()Z

    move-result v3

    if-nez v3, :cond_11

    .line 1369
    monitor-exit v0

    return-object v2

    .line 1372
    :cond_11
    invoke-virtual {p0}, Landroid/view/Display;->getSupportedColorModes()[I

    move-result-object v3

    .line 1373
    .local v3, "colorModes":[I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1374
    .local v4, "colorSpaces":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/ColorSpace;>;"
    array-length v5, v3

    :goto_1b
    if-ge v1, v5, :cond_3a

    aget v6, v3, v1

    .line 1376
    .local v6, "colorMode":I
    sparse-switch v6, :sswitch_data_46

    goto :goto_37

    .line 1381
    :sswitch_23
    sget-object v7, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    invoke-static {v7}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 1378
    :sswitch_2d
    sget-object v7, Landroid/graphics/ColorSpace$Named;->DCI_P3:Landroid/graphics/ColorSpace$Named;

    invoke-static {v7}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1379
    nop

    .line 1374
    .end local v6    # "colorMode":I
    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 1385
    :cond_3a
    invoke-interface {v4, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/ColorSpace;

    monitor-exit v0

    return-object v1

    .line 1386
    .end local v2    # "defaultColorSpaces":[Landroid/graphics/ColorSpace;
    .end local v3    # "colorModes":[I
    .end local v4    # "colorSpaces":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/ColorSpace;>;"
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_4 .. :try_end_44} :catchall_42

    throw v1

    nop

    :sswitch_data_46
    .sparse-switch
        0x6 -> :sswitch_2d
        0x9 -> :sswitch_23
    .end sparse-switch
.end method

.method public blacklist getSystemPreferredDisplayMode()Landroid/view/Display$Mode;
    .registers 3

    .line 1188
    iget-object v0, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getSystemPreferredDisplayMode(I)Landroid/view/Display$Mode;

    move-result-object v0

    return-object v0
.end method

.method public greylist getType()I
    .registers 2

    .line 682
    iget v0, p0, Landroid/view/Display;->mType:I

    return v0
.end method

.method public blacklist getUniqueId()Ljava/lang/String;
    .registers 2

    .line 597
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v0, v0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUserPreferredDisplayMode()Landroid/view/Display$Mode;
    .registers 3

    .line 1308
    iget-object v0, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget v1, p0, Landroid/view/Display;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getUserPreferredDisplayMode(I)Landroid/view/Display$Mode;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getWidth()I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 908
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 909
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateCachedAppSizeIfNeededLocked()V

    .line 911
    invoke-static {}, Landroid/view/WindowManagerGlobalStub;->getInstance()Landroid/view/WindowManagerGlobalStub;

    move-result-object v1

    iget-object v2, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    iget v3, p0, Landroid/view/Display;->mCachedAppWidthCompat:I

    invoke-virtual {v1, v2, v3}, Landroid/view/WindowManagerGlobalStub;->getCutoutAdaptedWidth(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Landroid/view/Display;->mCachedAppWidthCompat:I

    .line 916
    iget-object v2, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    invoke-static {v2, v1}, Landroid/util/MiuiFreeformUtils;->getWidth(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Landroid/view/Display;->mCachedAppWidthCompat:I

    .line 917
    monitor-exit v0

    return v1

    .line 918
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public greylist-max-o hasAccess(I)Z
    .registers 5
    .param p1, "uid"    # I

    .line 1694
    iget v0, p0, Landroid/view/Display;->mFlags:I

    iget v1, p0, Landroid/view/Display;->mOwnerUid:I

    iget v2, p0, Landroid/view/Display;->mDisplayId:I

    invoke-static {p1, v0, v1, v2}, Landroid/view/Display;->hasAccess(IIII)Z

    move-result v0

    return v0
.end method

.method public whitelist isHdr()Z
    .registers 5

    .line 1259
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1260
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1261
    invoke-virtual {p0}, Landroid/view/Display;->getHdrCapabilities()Landroid/view/Display$HdrCapabilities;

    move-result-object v1

    .line 1262
    .local v1, "hdrCapabilities":Landroid/view/Display$HdrCapabilities;
    const/4 v2, 0x0

    if-nez v1, :cond_f

    .line 1263
    monitor-exit v0

    return v2

    .line 1265
    :cond_f
    invoke-virtual {v1}, Landroid/view/Display$HdrCapabilities;->getSupportedHdrTypes()[I

    move-result-object v3

    array-length v3, v3

    if-eqz v3, :cond_17

    const/4 v2, 0x1

    :cond_17
    monitor-exit v0

    return v2

    .line 1266
    .end local v1    # "hdrCapabilities":Landroid/view/Display$HdrCapabilities;
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public whitelist isMinimalPostProcessingSupported()Z
    .registers 3

    .line 1137
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1138
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1139
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-boolean v1, v1, Landroid/view/DisplayInfo;->minimalPostProcessingSupported:Z

    monitor-exit v0

    return v1

    .line 1140
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public greylist-max-o isPublicPresentation()Z
    .registers 3

    .line 1712
    iget v0, p0, Landroid/view/Display;->mFlags:I

    and-int/lit8 v0, v0, 0xc

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isTrusted()Z
    .registers 3

    .line 1723
    iget v0, p0, Landroid/view/Display;->mFlags:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist isValid()Z
    .registers 3

    .line 614
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 615
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 616
    iget-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    monitor-exit v0

    return v1

    .line 617
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public whitelist isWideColorGamut()Z
    .registers 3

    .line 1319
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1320
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1321
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->isWideColorGamut()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1322
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public greylist-max-o requestColorMode(I)V
    .registers 4
    .param p1, "colorMode"    # I

    .line 1149
    iget-object v0, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget v1, p0, Landroid/view/Display;->mDisplayId:I

    invoke-virtual {v0, v1, p1}, Landroid/hardware/display/DisplayManagerGlobal;->requestColorMode(II)V

    .line 1150
    return-void
.end method

.method public blacklist setUserPreferredDisplayMode(Landroid/view/Display$Mode;)V
    .registers 6
    .param p1, "mode"    # Landroid/view/Display$Mode;

    .line 1284
    new-instance v0, Landroid/view/Display$Mode;

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    .line 1285
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/view/Display$Mode;-><init>(IIF)V

    .line 1286
    .local v0, "preferredMode":Landroid/view/Display$Mode;
    iget-object v1, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget v2, p0, Landroid/view/Display;->mDisplayId:I

    invoke-virtual {v1, v2, v0}, Landroid/hardware/display/DisplayManagerGlobal;->setUserPreferredDisplayMode(ILandroid/view/Display$Mode;)V

    .line 1287
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 1860
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1861
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1862
    invoke-virtual {p0}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v1

    .line 1863
    .local v1, "adjustments":Landroid/view/DisplayAdjustments;
    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v3, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3, v1}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    .line 1864
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/Display;->mDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isValid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/view/Display;->mIsValid:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1866
    .end local v1    # "adjustments":Landroid/view/DisplayAdjustments;
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_4c

    throw v1
.end method
