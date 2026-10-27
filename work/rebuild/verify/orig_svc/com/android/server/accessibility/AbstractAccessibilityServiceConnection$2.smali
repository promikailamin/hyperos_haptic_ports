.class public Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;
.super Landroid/view/accessibility/IWindowSurfaceInfoCallback$Stub;
.source "AbstractAccessibilityServiceConnection.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

.field public final synthetic val$callback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

.field public final synthetic val$interactionId:I

.field public final synthetic val$listener:Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/window/ScreenCaptureInternal$ScreenCaptureListener;)V
    .registers 5

    .line 1464
    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    iput-object p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;->val$callback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iput p3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;->val$interactionId:I

    iput-object p4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;->val$listener:Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;

    invoke-direct {p0}, Landroid/view/accessibility/IWindowSurfaceInfoCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public provideWindowSurfaceInfo(IILandroid/view/SurfaceControl;)V
    .registers 7

    .line 1470
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->-$$Nest$mcanCaptureSecureLayers(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_15

    and-int/lit16 p1, p1, 0x2000

    if-eqz p1, :cond_15

    .line 1475
    :try_start_c
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;->val$callback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iget p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;->val$interactionId:I

    const/4 p2, 0x6

    invoke-interface {p1, p2, p0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->sendTakeScreenshotOfWindowError(II)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_14} :catch_14

    :catch_14
    return-void

    .line 1488
    :cond_15
    new-instance p1, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;

    invoke-direct {p1, p3}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    const/4 v1, 0x0

    .line 1491
    invoke-virtual {p1, v1}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->setChildrenOnly(Z)Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;

    move-result-object p1

    int-to-long v1, p2

    .line 1492
    invoke-virtual {p1, v1, v2}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->setUid(J)Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;

    move-result-object p1

    check-cast p1, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;

    .line 1493
    invoke-virtual {p1, v0}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->setSecureContentPolicy(I)Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;

    move-result-object p1

    check-cast p1, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;

    .line 1494
    invoke-virtual {p1}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCaptureInternal$LayerCaptureArgs;

    move-result-object p1

    .line 1495
    iget-object p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    iget-object p2, p2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;->val$listener:Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;

    invoke-interface {p2, p1, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->performScreenCapture(Landroid/window/ScreenCaptureInternal$LayerCaptureArgs;Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;)I

    move-result p1

    if-eqz p1, :cond_44

    .line 1498
    :try_start_3c
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;->val$callback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iget p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;->val$interactionId:I

    const/4 p2, 0x1

    invoke-interface {p1, p2, p0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->sendTakeScreenshotOfWindowError(II)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_44} :catch_44

    .line 1508
    :catch_44
    :cond_44
    invoke-virtual {p3}, Landroid/view/SurfaceControl;->release()V

    return-void
.end method
