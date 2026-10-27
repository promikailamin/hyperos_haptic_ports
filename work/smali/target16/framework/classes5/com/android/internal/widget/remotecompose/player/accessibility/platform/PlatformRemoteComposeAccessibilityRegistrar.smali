.class public Lcom/android/internal/widget/remotecompose/player/accessibility/platform/PlatformRemoteComposeAccessibilityRegistrar;
.super Ljava/lang/Object;
.source "PlatformRemoteComposeAccessibilityRegistrar.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeAccessibilityRegistrar;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist clearAccessibilityDelegate(Landroid/view/View;)V
    .registers 3

    .line 67
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 68
    return-void
.end method

.method public blacklist forRemoteComposePlayer(Landroid/view/View;Lcom/android/internal/widget/remotecompose/core/CoreDocument;)Lcom/android/internal/widget/remotecompose/player/accessibility/platform/PlatformRemoteComposeTouchHelper;
    .registers 6

    .line 43
    new-instance v0, Lcom/android/internal/widget/remotecompose/player/accessibility/platform/PlatformRemoteComposeTouchHelper;

    new-instance v1, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility;

    move-object v2, p1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/RemoteContextActions;

    invoke-direct {v1, p2, v2}, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility;-><init>(Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/RemoteContextActions;)V

    new-instance p2, Lcom/android/internal/widget/remotecompose/player/accessibility/platform/AndroidPlatformSemanticNodeApplier;

    invoke-direct {p2, p1}, Lcom/android/internal/widget/remotecompose/player/accessibility/platform/AndroidPlatformSemanticNodeApplier;-><init>(Landroid/view/View;)V

    invoke-direct {v0, p1, v1, p2}, Lcom/android/internal/widget/remotecompose/player/accessibility/platform/PlatformRemoteComposeTouchHelper;-><init>(Landroid/view/View;Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;Lcom/android/internal/widget/remotecompose/player/accessibility/SemanticNodeApplier;)V

    return-object v0
.end method

.method public blacklist setAccessibilityDelegate(Landroid/view/View;Lcom/android/internal/widget/remotecompose/core/CoreDocument;)V
    .registers 3

    .line 57
    nop

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/accessibility/platform/PlatformRemoteComposeAccessibilityRegistrar;->forRemoteComposePlayer(Landroid/view/View;Lcom/android/internal/widget/remotecompose/core/CoreDocument;)Lcom/android/internal/widget/remotecompose/player/accessibility/platform/PlatformRemoteComposeTouchHelper;

    move-result-object p2

    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 59
    return-void
.end method
