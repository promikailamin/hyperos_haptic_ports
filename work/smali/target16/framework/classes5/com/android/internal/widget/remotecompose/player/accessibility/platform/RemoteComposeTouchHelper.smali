.class public Lcom/android/internal/widget/remotecompose/player/accessibility/platform/RemoteComposeTouchHelper;
.super Ljava/lang/Object;
.source "RemoteComposeTouchHelper.java"


# static fields
.field public static final blacklist REGISTRAR:Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeAccessibilityRegistrar;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 25
    new-instance v0, Lcom/android/internal/widget/remotecompose/player/accessibility/platform/PlatformRemoteComposeAccessibilityRegistrar;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/player/accessibility/platform/PlatformRemoteComposeAccessibilityRegistrar;-><init>()V

    sput-object v0, Lcom/android/internal/widget/remotecompose/player/accessibility/platform/RemoteComposeTouchHelper;->REGISTRAR:Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeAccessibilityRegistrar;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
