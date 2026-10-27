.class public final synthetic Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;

.field public final synthetic f$1:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;Landroid/os/RemoteCallback;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticLambda2;->f$0:Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;

    iput-object p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticLambda2;->f$1:Landroid/os/RemoteCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticLambda2;->f$0:Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;

    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticLambda2;->f$1:Landroid/os/RemoteCallback;

    invoke-static {v0, p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->$r8$lambda$W-j4Xn7yZInUPF9yC9lezdemB3M(Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;Landroid/os/RemoteCallback;Ljava/lang/Object;)V

    return-void
.end method
