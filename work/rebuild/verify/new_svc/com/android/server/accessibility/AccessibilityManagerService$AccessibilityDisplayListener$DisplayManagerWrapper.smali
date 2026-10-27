.class Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener$DisplayManagerWrapper;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"


# instance fields
.field public final mDm:Landroid/hardware/display/DisplayManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 5934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5935
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener$DisplayManagerWrapper;->mDm:Landroid/hardware/display/DisplayManager;

    return-void
.end method


# virtual methods
.method public getDisplay(I)Landroid/view/Display;
    .registers 2

    .line 5953
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener$DisplayManagerWrapper;->mDm:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public getDisplays()[Landroid/view/Display;
    .registers 1

    .line 5948
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener$DisplayManagerWrapper;->mDm:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V
    .registers 3

    .line 5943
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener$DisplayManagerWrapper;->mDm:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method
