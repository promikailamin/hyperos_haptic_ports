.class public abstract Lcom/android/server/wm/utils/DisplayInfoOverrides;
.super Ljava/lang/Object;
.source "DisplayInfoOverrides.java"


# static fields
.field public static final WM_OVERRIDE_FIELDS:Lcom/android/server/wm/utils/DisplayInfoOverrides$DisplayInfoFieldsUpdater;

.field public static final WM_OVERRIDE_GROUPS:I

.field public static final WM_OVERRIDE_GROUPS_ENUMSET:Ljava/util/EnumSet;


# direct methods
.method public static synthetic $r8$lambda$jgt4-o-_IMdp6knRL61iyTsmoLA(Landroid/view/DisplayInfo;Landroid/view/DisplayInfo;)V
    .registers 3

    .line 36
    iget v0, p1, Landroid/view/DisplayInfo;->appWidth:I

    iput v0, p0, Landroid/view/DisplayInfo;->appWidth:I

    .line 37
    iget v0, p1, Landroid/view/DisplayInfo;->appHeight:I

    iput v0, p0, Landroid/view/DisplayInfo;->appHeight:I

    .line 38
    iget v0, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iput v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 39
    iget v0, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    iput v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 40
    iget v0, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iput v0, p0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 41
    iget v0, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    iput v0, p0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 42
    iget v0, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v0, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 43
    iget v0, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 44
    iget v0, p1, Landroid/view/DisplayInfo;->physicalXDpi:F

    iput v0, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 45
    iget v0, p1, Landroid/view/DisplayInfo;->physicalYDpi:F

    iput v0, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 46
    iget v0, p1, Landroid/view/DisplayInfo;->rotation:I

    iput v0, p0, Landroid/view/DisplayInfo;->rotation:I

    .line 47
    iget-object v0, p1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iput-object v0, p0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 48
    iget v0, p1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v0, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 49
    iget-object v0, p1, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    iput-object v0, p0, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    .line 50
    iget-object p1, p1, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    iput-object p1, p0, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 35
    new-instance v0, Lcom/android/server/wm/utils/DisplayInfoOverrides$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/utils/DisplayInfoOverrides$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/wm/utils/DisplayInfoOverrides;->WM_OVERRIDE_FIELDS:Lcom/android/server/wm/utils/DisplayInfoOverrides$DisplayInfoFieldsUpdater;

    .line 58
    sget-object v0, Landroid/view/DisplayInfo$DisplayInfoGroup;->ORIENTATION_AND_ROTATION:Landroid/view/DisplayInfo$DisplayInfoGroup;

    .line 59
    invoke-virtual {v0}, Landroid/view/DisplayInfo$DisplayInfoGroup;->getMask()I

    move-result v1

    sget-object v2, Landroid/view/DisplayInfo$DisplayInfoGroup;->DIMENSIONS_AND_SHAPES:Landroid/view/DisplayInfo$DisplayInfoGroup;

    .line 60
    invoke-virtual {v2}, Landroid/view/DisplayInfo$DisplayInfoGroup;->getMask()I

    move-result v3

    or-int/2addr v1, v3

    sput v1, Lcom/android/server/wm/utils/DisplayInfoOverrides;->WM_OVERRIDE_GROUPS:I

    .line 68
    invoke-static {v0, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/utils/DisplayInfoOverrides;->WM_OVERRIDE_GROUPS_ENUMSET:Ljava/util/EnumSet;

    return-void
.end method

.method public static copyDisplayInfoFields(Landroid/view/DisplayInfo;Landroid/view/DisplayInfo;Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/DisplayInfoOverrides$DisplayInfoFieldsUpdater;)V
    .registers 4

    .line 79
    invoke-virtual {p0, p1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    if-eqz p2, :cond_8

    .line 82
    invoke-interface {p3, p0, p2}, Lcom/android/server/wm/utils/DisplayInfoOverrides$DisplayInfoFieldsUpdater;->setFields(Landroid/view/DisplayInfo;Landroid/view/DisplayInfo;)V

    :cond_8
    return-void
.end method
