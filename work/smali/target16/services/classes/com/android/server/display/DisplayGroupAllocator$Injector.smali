.class public Lcom/android/server/display/DisplayGroupAllocator$Injector;
.super Ljava/lang/Object;
.source "DisplayGroupAllocator.java"


# direct methods
.method public static bridge synthetic -$$Nest$mcanEnterDesktopMode(Lcom/android/server/display/DisplayGroupAllocator$Injector;Landroid/content/Context;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayGroupAllocator$Injector;->canEnterDesktopMode(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canDisplayHostTasksLocked(Lcom/android/server/display/LogicalDisplay;)Z
    .registers 2

    .line 164
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->canHostTasksLocked()Z

    move-result p0

    return p0
.end method

.method public final canEnterDesktopMode(Landroid/content/Context;)Z
    .registers 2

    .line 156
    invoke-static {p1}, Lcom/android/server/wm/DesktopModeHelper;->canEnterDesktopMode(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isDesktopModeSupportedOnInternalDisplay(Landroid/content/Context;)Z
    .registers 2

    .line 160
    invoke-static {p1}, Lcom/android/server/wm/DesktopModeHelper;->isDesktopModeSupportedOnInternalDisplay(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
