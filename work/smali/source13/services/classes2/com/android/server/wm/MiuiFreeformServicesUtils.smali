.class public Lcom/android/server/wm/MiuiFreeformServicesUtils;
.super Ljava/lang/Object;
.source "MiuiFreeformServicesUtils.java"


# static fields
.field public static final APPLICATION_LOCK_NAME:Ljava/lang/String; = "com.miui.securitycenter/com.miui.applicationlock.ConfirmAccessControl"

.field static final CVW_INPUT_CONSUMER:Ljava/lang/String; = "cvw_input_consumer"

.field private static imp:Lcom/android/server/wm/MiuiFreeformServiceStub;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getInstance()Lcom/android/server/wm/MiuiFreeformServiceStub;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjuestFrameForChild(Lcom/android/server/wm/WindowState;)V
    .registers 2
    .param p0, "win"    # Lcom/android/server/wm/WindowState;

    .line 451
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->adjuestFrameForChild(Lcom/android/server/wm/WindowState;)V

    .line 452
    return-void
.end method

.method public static adjuestFreeFormTouchRegion(Lcom/android/server/wm/WindowState;Landroid/graphics/Region;)V
    .registers 3
    .param p0, "win"    # Lcom/android/server/wm/WindowState;
    .param p1, "outRegion"    # Landroid/graphics/Region;

    .line 463
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/MiuiFreeformServiceStub;->adjuestFreeFormTouchRegion(Lcom/android/server/wm/WindowState;Landroid/graphics/Region;)V

    .line 464
    return-void
.end method

.method public static adjuestScaleAndFrame(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/Task;)V
    .registers 3
    .param p0, "win"    # Lcom/android/server/wm/WindowState;
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 448
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/MiuiFreeformServiceStub;->adjuestScaleAndFrame(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/Task;)V

    .line 449
    return-void
.end method

.method public static checkFreeformSupport(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/app/ActivityOptions;)V
    .registers 3
    .param p0, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "options"    # Landroid/app/ActivityOptions;

    .line 413
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/MiuiFreeformServiceStub;->checkFreeformSupport(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/app/ActivityOptions;)V

    .line 414
    return-void
.end method

.method public static getAbnormalFreeformBlackList(Z)Ljava/util/List;
    .registers 3
    .param p0, "fromSystem"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 46
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getAbnormalFreeformBlackList(Z)Ljava/util/List;

    move-result-object v0

    .line 47
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_f

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    return-object v1
.end method

.method public static getAbnormalFreeformWhiteList(Z)Ljava/util/List;
    .registers 3
    .param p0, "fromSystem"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 53
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getAbnormalFreeformWhiteList(Z)Ljava/util/List;

    move-result-object v0

    .line 54
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_f

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    return-object v1
.end method

.method public static getActivityOptions(Landroid/content/Context;Ljava/lang/String;ZZZIZ)Landroid/app/ActivityOptions;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "freeformPkg"    # Ljava/lang/String;
    .param p2, "noCheck"    # Z
    .param p3, "isMiniFreeformMode"    # Z
    .param p4, "isDesktopModeActive"    # Z
    .param p5, "newTaskId"    # I
    .param p6, "isNormalFreeform"    # Z

    .line 588
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getActivityOptions(Landroid/content/Context;Ljava/lang/String;ZZZIZ)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static getAdditionalFreeformAspectRatio1Apps()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 222
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getAdditionalFreeformAspectRatio1Apps()Ljava/util/List;

    move-result-object v0

    .line 223
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_f

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    return-object v1
.end method

.method public static getAdditionalFreeformAspectRatio2Apps()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 227
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getAdditionalFreeformAspectRatio2Apps()Ljava/util/List;

    move-result-object v0

    .line 228
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_f

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    return-object v1
.end method

.method public static getApplicationLockActivityList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 121
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getApplicationLockActivityList()Ljava/util/List;

    move-result-object v0

    .line 122
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_f

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    return-object v1
.end method

.method public static getAudioForegroundPinAppList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 163
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getAudioForegroundPinAppList()Ljava/util/List;

    move-result-object v0

    .line 164
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_f

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    return-object v1
.end method

.method public static getAuthorisedFreeformList(Z)Ljava/util/List;
    .registers 3
    .param p0, "fromSystem"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 217
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getAuthorisedFreeformList(Z)Ljava/util/List;

    move-result-object v0

    .line 218
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_f

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    return-object v1
.end method

.method public static getCanStartActivityFromFullscreenToFreefromList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 62
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getCanStartActivityFromFullscreenToFreefromList()Ljava/util/List;

    move-result-object v0

    .line 63
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_f

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    return-object v1
.end method

.method public static getCvwUnsupportedFreeformWhiteList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 130
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getCvwUnsupportedFreeformWhiteList()Ljava/util/List;

    move-result-object v0

    .line 131
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_f

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    return-object v1
.end method

.method public static getDesktopFreeformWhiteList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 232
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getDesktopFreeformWhiteList()Ljava/util/List;

    move-result-object v0

    .line 233
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_f

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    return-object v1
.end method

.method public static getDesktopModeLaunchFreeformIgnoreTranslucentAppList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 82
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getDesktopModeLaunchFreeformIgnoreTranslucentAppList()Ljava/util/List;

    move-result-object v0

    .line 83
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_f

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    return-object v1
.end method

.method public static getDesktopModeLaunchFullscreenAppList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 87
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getDesktopModeLaunchFullscreenAppList()Ljava/util/List;

    move-result-object v0

    .line 88
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_f

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    return-object v1
.end method

.method public static getDesktopModeLaunchFullscreenNotHideOtherAppList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 92
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getDesktopModeLaunchFullscreenNotHideOtherAppList()Ljava/util/List;

    move-result-object v0

    .line 93
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_f

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    return-object v1
.end method

.method public static getEnableAbnormalFreeFormDebug(Z)I
    .registers 2
    .param p0, "fromSystem"    # Z

    .line 207
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getEnableAbnormalFreeFormDebug(Z)I

    move-result v0

    .line 208
    .local v0, "sEnableAbnormalFreeFormDebug":I
    return v0
.end method

.method public static getEnableKeepFreeformState()Z
    .registers 1

    .line 379
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getEnableKeepFreeformState()Z

    move-result v0

    return v0
.end method

.method public static getFixedRotationAppList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 178
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getFixedRotationAppList()Ljava/util/List;

    move-result-object v0

    .line 179
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_f

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    return-object v1
.end method

.method public static getForceLandscapeApplication()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 148
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getForceLandscapeApplication()Ljava/util/List;

    move-result-object v0

    .line 149
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_f

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    return-object v1
.end method

.method public static getForegroundPinAppBlackList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 173
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getForegroundPinAppBlackList()Ljava/util/List;

    move-result-object v0

    .line 174
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_f

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    return-object v1
.end method

.method public static getForegroundPinAppWhiteList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 168
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getForegroundPinAppWhiteList()Ljava/util/List;

    move-result-object v0

    .line 169
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_f

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    return-object v1
.end method

.method public static getFreeFormAccessibleArea(Landroid/content/Context;Lcom/android/server/wm/DisplayContent;)Landroid/graphics/Rect;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 515
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getFreeFormAccessibleArea(Landroid/content/Context;Lcom/android/server/wm/DisplayContent;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static getFreeformBlackList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 34
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getFreeformBlackList()Ljava/util/List;

    move-result-object v0

    .line 35
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_f

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    return-object v1
.end method

.method public static getFreeformBlackList(Landroid/content/Context;Ljava/util/HashMap;Z)Ljava/util/List;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "isNeedUpdateList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;>;Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 39
    .local p1, "allTimestamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/LinkedList<Ljava/lang/Long;>;>;"
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getFreeformBlackList(Landroid/content/Context;Ljava/util/HashMap;Z)Ljava/util/List;

    move-result-object v0

    .line 40
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_f

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    return-object v1
.end method

.method public static getFreeformCaptionInsetsHeightToZeroList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 143
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getFreeformCaptionInsetsHeightToZeroList()Ljava/util/List;

    move-result-object v0

    .line 144
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_f

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    return-object v1
.end method

.method public static getFreeformDisableOverlayList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 67
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getFreeformDisableOverlayList()Ljava/util/List;

    move-result-object v0

    .line 68
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_f

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    return-object v1
.end method

.method public static getFreeformIgnoreRequestOrientationList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getFreeformIgnoreRequestOrientationList()Ljava/util/List;

    move-result-object v0

    .line 73
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_f

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    return-object v1
.end method

.method public static getFreeformNeedRelunchList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 77
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getFreeformNeedRelunchList()Ljava/util/List;

    move-result-object v0

    .line 78
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_f

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    return-object v1
.end method

.method public static getFreeformRecommendMapApplicationList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 96
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getFreeformRecommendMapApplicationList()Ljava/util/List;

    move-result-object v0

    .line 97
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_f

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    return-object v1
.end method

.method public static getFreeformRecommendWaitingApplicationList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 101
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getFreeformRecommendWaitingApplicationList()Ljava/util/List;

    move-result-object v0

    .line 102
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_f

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    return-object v1
.end method

.method public static getFreeformRect(Landroid/content/Context;ZZZZ)Landroid/graphics/Rect;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "needDisplayContentRotation"    # Z
    .param p2, "isVertical"    # Z
    .param p3, "isMiniFreeformMode"    # Z
    .param p4, "isFreeformLandscape"    # Z

    .line 389
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->getFreeformRect(Landroid/content/Context;ZZZZLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static getFreeformRect(Landroid/content/Context;ZZZZLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "needDisplayContentRotation"    # Z
    .param p2, "isVertical"    # Z
    .param p3, "isMiniFreeformMode"    # Z
    .param p4, "isFreeformLandscape"    # Z
    .param p5, "outBounds"    # Landroid/graphics/Rect;

    .line 394
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getFreeformRect(Landroid/content/Context;ZZZZLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 397
    .local v0, "rect":Landroid/graphics/Rect;
    if-eqz v0, :cond_10

    move-object v1, v0

    goto :goto_19

    :cond_10
    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0x32

    const/16 v3, 0x64

    invoke-direct {v1, v2, v2, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_19
    return-object v1
.end method

.method public static getFreeformResizeableWhiteList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 125
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getFreeformResizeableWhiteList()Ljava/util/List;

    move-result-object v0

    .line 126
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_f

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    return-object v1
.end method

.method public static getFreeformRoundCorner()F
    .registers 1

    .line 445
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getFreeformRoundCorner()F

    move-result v0

    return v0
.end method

.method public static getFreeformScale(Landroid/app/ActivityOptions;)F
    .registers 2
    .param p0, "options"    # Landroid/app/ActivityOptions;

    .line 519
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getFreeformScale(Landroid/app/ActivityOptions;)F

    move-result v0

    return v0
.end method

.method public static getFreeformVideoWhiteList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 57
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getFreeformVideoWhiteList()Ljava/util/List;

    move-result-object v0

    .line 58
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_f

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    return-object v1
.end method

.method public static getHideSelfIfNewFreeformTaskWhiteList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 111
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getHideSelfIfNewFreeformTaskWhiteList()Ljava/util/List;

    move-result-object v0

    .line 112
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_f

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    return-object v1
.end method

.method public static getHomeUid()I
    .registers 1

    .line 488
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getHomeUid()I

    move-result v0

    return v0
.end method

.method public static getHotSpaceOffsite()F
    .registers 1

    .line 501
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getHotSpaceOffsite()F

    move-result v0

    return v0
.end method

.method public static getHotSpaceResizeOffsetPad()I
    .registers 1

    .line 505
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getHotSpaceResizeOffsetPad()I

    move-result v0

    return v0
.end method

.method public static getHotSpaceTopCaptionUpwardsOffset()I
    .registers 1

    .line 507
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getHotSpaceTopCaptionUpwardsOffset()I

    move-result v0

    return v0
.end method

.method public static getLaunchInTaskList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 198
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getLaunchInTaskList()Ljava/util/List;

    move-result-object v0

    .line 199
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_f

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    return-object v1
.end method

.method public static getMiuiMultiWindowUtilsScale()F
    .registers 2

    .line 432
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getMiuiMultiWindowUtilsScale()F

    move-result v0

    .line 433
    .local v0, "scale":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_d

    move v1, v0

    goto :goto_f

    :cond_d
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_f
    return v1
.end method

.method public static getRotationFromDisplayApp()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 183
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getRotationFromDisplayApp()Ljava/util/List;

    move-result-object v0

    .line 184
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_f

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    return-object v1
.end method

.method public static getSensorDisableList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 212
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getSensorDisableList()Ljava/util/List;

    move-result-object v0

    .line 213
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_f

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    return-object v1
.end method

.method public static getSensorDisableWhiteList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 193
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getSensorDisableWhiteList()Ljava/util/List;

    move-result-object v0

    .line 194
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_f

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    return-object v1
.end method

.method public static getShadowRadius()F
    .registers 1

    .line 485
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getShadowRadius()F

    move-result v0

    return v0
.end method

.method public static getShowHiddenTaskIfFinishedWhiteList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 116
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getShowHiddenTaskIfFinishedWhiteList()Ljava/util/List;

    move-result-object v0

    .line 117
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_f

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    return-object v1
.end method

.method public static getStartFromFreeformBlackList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 106
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getStartFromFreeformBlackList()Ljava/util/List;

    move-result-object v0

    .line 107
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_f

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    return-object v1
.end method

.method public static getTopDecorCaptionViewHeight()I
    .registers 1

    .line 442
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getTopDecorCaptionViewHeight()I

    move-result v0

    return v0
.end method

.method public static getTopGameList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 153
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getTopGameList()Ljava/util/List;

    move-result-object v0

    .line 154
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_f

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    return-object v1
.end method

.method public static getTopVideoList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 158
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getTopVideoList()Ljava/util/List;

    move-result-object v0

    .line 159
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_f

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    return-object v1
.end method

.method public static getUnsupportedAppsInDesktop()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 237
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getUnsupportedAppsInDesktop()Ljava/util/List;

    move-result-object v0

    .line 238
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_f

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    return-object v1
.end method

.method public static getUseDefaultCameraPipelineApp()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 188
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->getUseDefaultCameraPipelineApp()Ljava/util/List;

    move-result-object v0

    .line 189
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_f

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    return-object v1
.end method

.method public static handleFreeformModeRequst(Landroid/os/IBinder;ILandroid/content/Context;)I
    .registers 4
    .param p0, "token"    # Landroid/os/IBinder;
    .param p1, "cmd"    # I
    .param p2, "mContext"    # Landroid/content/Context;

    .line 470
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/wm/MiuiFreeformServiceStub;->handleFreeformModeRequst(Landroid/os/IBinder;ILandroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static ignoreClearTaskFlagInFreeForm(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p0, "reusedActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "startActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 523
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/MiuiFreeformServiceStub;->ignoreClearTaskFlagInFreeForm(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    return v0
.end method

.method public static inFreeformWhiteList(Ljava/lang/String;)Z
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 139
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->inFreeformWhiteList(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isAppLockActivity(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .registers 3
    .param p0, "componentName"    # Landroid/content/ComponentName;
    .param p1, "cls"    # Landroid/content/ComponentName;

    .line 563
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/MiuiFreeformServiceStub;->isAppLockActivity(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public static isDisableSplashScreenInFreeFormTaskSwitch(Ljava/lang/String;)Z
    .registers 2
    .param p0, "componentName"    # Ljava/lang/String;

    .line 492
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->isDisableSplashScreenInFreeFormTaskSwitch(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isEnableAbnormalFreeform(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;Ljava/util/List;I)Z
    .registers 11
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "enableAbnormalFreeform"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .line 421
    .local p2, "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/server/wm/MiuiFreeformServiceStub;->isEnableAbnormalFreeform(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public static isEnteringDesktop()Z
    .registers 1

    .line 567
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->isEnteringDesktop()Z

    move-result v0

    return v0
.end method

.method public static isForceResizeable()Z
    .registers 1

    .line 425
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->isForceResizeable()Z

    move-result v0

    return v0
.end method

.method public static isFreeFormOverlayWindow(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 2
    .param p0, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .line 531
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->isFreeFormOverlayWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    return v0
.end method

.method public static isFullScreenStrategyNeededInDesktopMode(Lcom/android/server/wm/ActivityRecord;I)Z
    .registers 3
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "windowingMode"    # I

    .line 571
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/MiuiFreeformServiceStub;->isFullScreenStrategyNeededInDesktopMode(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v0

    return v0
.end method

.method public static isFullscreenNotHideOtherAppInDesktopMode(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 574
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->isFullscreenNotHideOtherAppInDesktopMode(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    return v0
.end method

.method public static isLandscapeGameApp(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 3
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .line 417
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/MiuiFreeformServiceStub;->isLandscapeGameApp(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isLaunchNotesInKeyGuard(Landroid/content/Intent;)Z
    .registers 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 581
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->isLaunchNotesInKeyGuard(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public static isMIUIProduct()Z
    .registers 1

    .line 539
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->isMIUIProduct()Z

    move-result v0

    return v0
.end method

.method public static isMiuiBuild()Z
    .registers 1

    .line 476
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->isMiuiBuild()Z

    move-result v0

    return v0
.end method

.method public static isMiuiChooserActivity(Ljava/lang/String;)Z
    .registers 2
    .param p0, "taskRealName"    # Ljava/lang/String;

    .line 551
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->isMiuiChooserActivity(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isMiuiCvwFeatureEnable()Z
    .registers 1

    .line 482
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->isMiuiCvwFeatureEnable()Z

    move-result v0

    return v0
.end method

.method public static isMiuiDesktopModeActive()Z
    .registers 1

    .line 555
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->isMiuiDesktopModeActive()Z

    move-result v0

    return v0
.end method

.method public static isMiuiDesktopModeEnabled()Z
    .registers 1

    .line 559
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->isMiuiDesktopModeEnabled()Z

    move-result v0

    return v0
.end method

.method public static isOrientationLandscape(I)Z
    .registers 2
    .param p0, "orientation"    # I

    .line 439
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->isOrientationLandscape(I)Z

    move-result v0

    return v0
.end method

.method public static isPadScreen(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 496
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->isPadScreen(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isSkipUpdateFreeFormShadow(Lcom/android/server/wm/Task;)Z
    .registers 2
    .param p0, "task"    # Lcom/android/server/wm/Task;

    .line 459
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->isSkipUpdateFreeFormShadow(Lcom/android/server/wm/Task;)Z

    move-result v0

    return v0
.end method

.method public static isSupportFreeFormInDesktopMode(Lcom/android/server/wm/Task;)Z
    .registers 2
    .param p0, "task"    # Lcom/android/server/wm/Task;

    .line 577
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->isSupportFreeFormInDesktopMode(Lcom/android/server/wm/Task;)Z

    move-result v0

    return v0
.end method

.method public static isSupportFreeFormMultiTask(Ljava/lang/String;)Z
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 535
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->isSupportFreeFormMultiTask(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportMiuiShadow()Z
    .registers 1

    .line 455
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->isSupportMiuiShadow()Z

    move-result v0

    return v0
.end method

.method public static isUseFreeFormAnimation(I)Z
    .registers 2
    .param p0, "transit"    # I

    .line 479
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->isUseFreeFormAnimation(I)Z

    move-result v0

    return v0
.end method

.method public static isWpsPreStartActivity(Ljava/lang/String;)Z
    .registers 2
    .param p0, "shortComponentName"    # Ljava/lang/String;

    .line 543
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->isWpsPreStartActivity(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isWpsSameActivity(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .registers 3
    .param p0, "componentName"    # Landroid/content/ComponentName;
    .param p1, "otherComponentName"    # Landroid/content/ComponentName;

    .line 547
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/MiuiFreeformServiceStub;->isWpsSameActivity(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public static loadFreeFormAnimation(Lcom/android/server/wm/WindowManagerService;IZLandroid/graphics/Rect;Lcom/android/server/wm/WindowContainer;)Landroid/view/animation/Animation;
    .registers 11
    .param p0, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "frame"    # Landroid/graphics/Rect;
    .param p4, "container"    # Lcom/android/server/wm/WindowContainer;

    .line 429
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/server/wm/MiuiFreeformServiceStub;->loadFreeFormAnimation(Lcom/android/server/wm/WindowManagerService;IZLandroid/graphics/Rect;Lcom/android/server/wm/WindowContainer;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public static modifyLaunchActivityOptionIfNeed(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/RootWindowContainer;Ljava/lang/String;Landroid/app/ActivityOptions;Lcom/android/server/wm/WindowProcessController;Landroid/content/Intent;ILandroid/content/pm/ActivityInfo;Lcom/android/server/wm/ActivityRecord;)Landroid/app/ActivityOptions;
    .registers 20
    .param p0, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "root"    # Lcom/android/server/wm/RootWindowContainer;
    .param p2, "callingPackgae"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/app/ActivityOptions;
    .param p4, "callerApp"    # Lcom/android/server/wm/WindowProcessController;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "userId"    # I
    .param p7, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p8, "sourceRecord"    # Lcom/android/server/wm/ActivityRecord;

    .line 403
    const/4 v0, 0x0

    .line 404
    .local v0, "copyOptions":Landroid/app/ActivityOptions;
    if-eqz p3, :cond_d

    .line 405
    new-instance v1, Landroid/app/ActivityOptions;

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    move-object v0, v1

    .line 407
    :cond_d
    sget-object v1, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    .line 408
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-interface/range {v1 .. v10}, Lcom/android/server/wm/MiuiFreeformServiceStub;->modifyLaunchActivityOptionIfNeed(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/RootWindowContainer;Ljava/lang/String;Landroid/app/ActivityOptions;Lcom/android/server/wm/WindowProcessController;Landroid/content/Intent;ILandroid/content/pm/ActivityInfo;Lcom/android/server/wm/ActivityRecord;)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 410
    .local v1, "result":Landroid/app/ActivityOptions;
    if-eqz v1, :cond_24

    move-object v2, v1

    goto :goto_25

    :cond_24
    move-object v2, v0

    :goto_25
    return-object v2
.end method

.method public static modifySupportFreeform(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 2
    .param p0, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 473
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->modifySupportFreeform(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 474
    return-void
.end method

.method public static multiFreeFormSupported(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 499
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->multiFreeFormSupported(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static needRelunchFreeform(Ljava/lang/String;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "tempConfig"    # Landroid/content/res/Configuration;
    .param p2, "fullConfig"    # Landroid/content/res/Configuration;

    .line 503
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/wm/MiuiFreeformServiceStub;->needRelunchFreeform(Ljava/lang/String;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result v0

    return v0
.end method

.method public static notNeedRelunchFreeform(Ljava/lang/String;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "tempConfig"    # Landroid/content/res/Configuration;
    .param p2, "fullConfig"    # Landroid/content/res/Configuration;

    .line 385
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/wm/MiuiFreeformServiceStub;->notNeedRelunchFreeform(Ljava/lang/String;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result v0

    return v0
.end method

.method public static onForegroundWindowChanged(Lcom/android/server/wm/WindowProcessController;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord$State;)V
    .registers 5
    .param p0, "app"    # Lcom/android/server/wm/WindowProcessController;
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "record"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "state"    # Lcom/android/server/wm/ActivityRecord$State;

    .line 467
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/wm/MiuiFreeformServiceStub;->onForegroundWindowChanged(Lcom/android/server/wm/WindowProcessController;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord$State;)V

    .line 468
    return-void
.end method

.method public static reviewFreeFormBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)F
    .registers 5
    .param p0, "currentBounds"    # Landroid/graphics/Rect;
    .param p1, "newBounds"    # Landroid/graphics/Rect;
    .param p2, "currentScale"    # F
    .param p3, "accessibleArea"    # Landroid/graphics/Rect;

    .line 511
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/wm/MiuiFreeformServiceStub;->reviewFreeFormBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)F

    move-result v0

    return v0
.end method

.method public static setAbnormalFreeformBlackList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 43
    .local p0, "abnormalFreeformBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->setAbnormalFreeformBlackList(Ljava/util/List;)V

    .line 44
    return-void
.end method

.method public static setAbnormalFreeformWhiteList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 50
    .local p0, "abnormalFreeformWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->setAbnormalFreeformWhiteList(Ljava/util/List;)V

    .line 51
    return-void
.end method

.method public static setAdditionalFreeformAspectRatio1Apps(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 363
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->setAdditionalFreeformAspectRatio1Apps(Ljava/util/List;)V

    .line 364
    return-void
.end method

.method public static setAdditionalFreeformAspectRatio2Apps(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 367
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->setAdditionalFreeformAspectRatio2Apps(Ljava/util/List;)V

    .line 368
    return-void
.end method

.method public static setApplicationLockActivityList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 299
    .local p0, "applicationLockActivityList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->setApplicationLockActivityList(Ljava/util/List;)V

    .line 300
    return-void
.end method

.method public static setAudioForegroundPinAppList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 323
    .local p0, "audioForegroundPinAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->setAudioForegroundPinAppList(Ljava/util/List;)V

    .line 324
    return-void
.end method

.method public static setAuthorisedFreeformList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 359
    .local p0, "authorisedFreeformList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->setAuthorisedFreeformList(Ljava/util/List;)V

    .line 360
    return-void
.end method

.method public static setCanStartActivityFromFullscreenToFreefromList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 246
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->setCanStartActivityFromFullscreenToFreefromList(Ljava/util/List;)V

    .line 247
    return-void
.end method

.method public static setCvwUnsupportedFreeformWhiteList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 135
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->setCvwUnsupportedFreeformWhiteList(Ljava/util/List;)V

    .line 136
    return-void
.end method

.method public static setDesktopFreeformWhiteList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 371
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->setDesktopFreeformWhiteList(Ljava/util/List;)V

    .line 372
    return-void
.end method

.method public static setDesktopModeLaunchFreeformIgnoreTranslucentAppList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 262
    .local p0, "needRelunchList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->setDesktopModeLaunchFreeformIgnoreTranslucentAppList(Ljava/util/List;)V

    .line 263
    return-void
.end method

.method public static setDesktopModeLaunchFullscreenAppList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 266
    .local p0, "needRelunchList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->setDesktopModeLaunchFullscreenAppList(Ljava/util/List;)V

    .line 267
    return-void
.end method

.method public static setDesktopModeLaunchFullscreenNotHideOtherAppList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 270
    .local p0, "noHideList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->setDesktopModeLaunchFullscreenNotHideOtherAppList(Ljava/util/List;)V

    .line 271
    return-void
.end method

.method public static setEnableAbnormalFreeFormDebug(I)V
    .registers 2
    .param p0, "enableAbnormalFreeFormDebug"    # I

    .line 203
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->setEnableAbnormalFreeFormDebug(I)V

    .line 204
    return-void
.end method

.method public static setEnableForegroundPin(Z)V
    .registers 2
    .param p0, "enableForegroundPin"    # Z

    .line 319
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->setEnableForegroundPin(Z)V

    .line 320
    return-void
.end method

.method public static setFixedRotationAppList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 335
    .local p0, "fixedRotationAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->setFixedRotationAppList(Ljava/util/List;)V

    .line 336
    return-void
.end method

.method public static setForceLandscapeApplication(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 307
    .local p0, "forceLandscapeApplication":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->setForceLandscapeApplication(Ljava/util/List;)V

    .line 308
    return-void
.end method

.method public static setForegroundPinAppBlackList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 331
    .local p0, "foregroundPinAppBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->setForegroundPinAppBlackList(Ljava/util/List;)V

    .line 332
    return-void
.end method

.method public static setForegroundPinAppWhiteList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 327
    .local p0, "foregroundPinAppWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->setForegroundPinAppWhiteList(Ljava/util/List;)V

    .line 328
    return-void
.end method

.method public static setFreeformBlackList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 31
    .local p0, "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->setFreeformBlackList(Ljava/util/List;)V

    .line 32
    return-void
.end method

.method public static setFreeformCaptionInsetsHeightToZeroList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 303
    .local p0, "freeformCaptionInsetsHeightToZeroList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->setFreeformCaptionInsetsHeightToZeroList(Ljava/util/List;)V

    .line 304
    return-void
.end method

.method public static setFreeformDisableOverlayList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 250
    .local p0, "disableOverlayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->setFreeformDisableOverlayList(Ljava/util/List;)V

    .line 251
    return-void
.end method

.method public static setFreeformIgnoreRequestOrientationList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 254
    .local p0, "ignoreRequestOrientationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->setFreeformIgnoreRequestOrientationList(Ljava/util/List;)V

    .line 255
    return-void
.end method

.method public static setFreeformNeedRelunchList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 258
    .local p0, "needRelunchList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->setFreeformNeedRelunchList(Ljava/util/List;)V

    .line 259
    return-void
.end method

.method public static setFreeformRecommendMapApplicationList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 274
    .local p0, "freeformRecommendMapApplicationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->setFreeformRecommendMapApplicationList(Ljava/util/List;)V

    .line 275
    return-void
.end method

.method public static setFreeformRecommendWaitingApplicationList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 278
    .local p0, "freeformRecommendWaitingApplicationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->setFreeformRecommendWaitingApplicationList(Ljava/util/List;)V

    .line 279
    return-void
.end method

.method public static setFreeformResizeableWhiteList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 295
    .local p0, "resizeableWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->setFreeformResizeableWhiteList(Ljava/util/List;)V

    .line 296
    return-void
.end method

.method public static setFreeformScale(FLandroid/app/ActivityOptions;)Z
    .registers 3
    .param p0, "scale"    # F
    .param p1, "options"    # Landroid/app/ActivityOptions;

    .line 527
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/MiuiFreeformServiceStub;->setFreeformScale(FLandroid/app/ActivityOptions;)Z

    move-result v0

    return v0
.end method

.method public static setFreeformVideoWhiteList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 242
    .local p0, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->setFreeformVideoWhiteList(Ljava/util/List;)V

    .line 243
    return-void
.end method

.method public static setHideSelfIfNewFreeformTaskWhiteList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 287
    .local p0, "hideSelfIfNewFreeformTaskWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->setHideSelfIfNewFreeformTaskWhiteList(Ljava/util/List;)V

    .line 288
    return-void
.end method

.method public static setLaunchInTaskList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 351
    .local p0, "launchInTaskList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->setLaunchInTaskList(Ljava/util/List;)V

    .line 352
    return-void
.end method

.method public static setMiuiMultiWindowUtilsScale(F)V
    .registers 2
    .param p0, "scale"    # F

    .line 436
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->setMiuiMultiWindowUtilsScale(F)V

    .line 437
    return-void
.end method

.method public static setRotationFromDisplayApp(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 339
    .local p0, "rotationFromDisplayApp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->setRotationFromDisplayApp(Ljava/util/List;)V

    .line 340
    return-void
.end method

.method public static setSafeActivityOptions(Lcom/android/server/wm/Task;)Lcom/android/server/wm/SafeActivityOptions;
    .registers 11
    .param p0, "task"    # Lcom/android/server/wm/Task;

    .line 593
    if-eqz p0, :cond_6a

    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isMiuiDesktopModeActive()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_6a

    .line 596
    :cond_f
    invoke-static {p0}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isSupportFreeFormInDesktopMode(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 597
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 598
    .local v0, "options":Landroid/app/ActivityOptions;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 599
    new-instance v1, Lcom/android/server/wm/SafeActivityOptions;

    invoke-direct {v1, v0}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    return-object v1

    .line 601
    .end local v0    # "options":Landroid/app/ActivityOptions;
    :cond_23
    iget-object v0, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    .line 602
    :cond_2e
    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    .line 603
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 604
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_49

    :cond_46
    const-string/jumbo v0, "unknown"

    :goto_49
    nop

    .line 605
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getInstance()Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->isNormalFreeForm(Lcom/android/server/wm/Task;Ljava/lang/String;)Z

    move-result v8

    .line 606
    .local v8, "isNormalFreeform":Z
    new-instance v9, Lcom/android/server/wm/SafeActivityOptions;

    iget-object v1, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 608
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isMiuiDesktopModeActive()Z

    move-result v5

    iget v6, p0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 606
    move-object v2, v0

    move v7, v8

    invoke-static/range {v1 .. v7}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->getActivityOptions(Landroid/content/Context;Ljava/lang/String;ZZZIZ)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    return-object v9

    .line 594
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v8    # "isNormalFreeform":Z
    :cond_6a
    :goto_6a
    const/4 v0, 0x0

    return-object v0
.end method

.method public static setSensorDisableList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 355
    .local p0, "sensorDisableList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->setSensorDisableList(Ljava/util/List;)V

    .line 356
    return-void
.end method

.method public static setSensorDisableWhiteList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 347
    .local p0, "sensorDisableWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->setSensorDisableWhiteList(Ljava/util/List;)V

    .line 348
    return-void
.end method

.method public static setShowHiddenTaskIfFinishedWhiteList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 291
    .local p0, "showHiddenTaskIfFinishedWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->setShowHiddenTaskIfFinishedWhiteList(Ljava/util/List;)V

    .line 292
    return-void
.end method

.method public static setStartFromFreeformBlackList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 283
    .local p0, "startFromFreeformBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->setStartFromFreeformBlackList(Ljava/util/List;)V

    .line 284
    return-void
.end method

.method public static setTopGameList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 311
    .local p0, "topGameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->setTopGameList(Ljava/util/List;)V

    .line 312
    return-void
.end method

.method public static setTopVideoList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 315
    .local p0, "topVideoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->setTopVideoList(Ljava/util/List;)V

    .line 316
    return-void
.end method

.method public static setUnsupportedAppsInDesktop(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 375
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->setUnsupportedAppsInDesktop(Ljava/util/List;)V

    .line 376
    return-void
.end method

.method public static setUseDefaultCameraPipelineApp(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 343
    .local p0, "useDefaultCameraPipelineApp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->setUseDefaultCameraPipelineApp(Ljava/util/List;)V

    .line 344
    return-void
.end method

.method public static supportsFreeform()Z
    .registers 1

    .line 382
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformServiceStub;->supportsFreeform()Z

    move-result v0

    return v0
.end method

.method public static updateApplicationConfiguration(Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/content/res/Configuration;Ljava/lang/String;)V
    .registers 4
    .param p0, "taskSupervisor"    # Lcom/android/server/wm/ActivityTaskSupervisor;
    .param p1, "globalConfiguration"    # Landroid/content/res/Configuration;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 28
    sget-object v0, Lcom/android/server/wm/MiuiFreeformServicesUtils;->imp:Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/wm/MiuiFreeformServiceStub;->updateApplicationConfiguration(Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/content/res/Configuration;Ljava/lang/String;)V

    .line 29
    return-void
.end method
