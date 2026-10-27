.class Lcom/android/internal/widget/remotecompose/player/platform/HapticSupport$1;
.super Ljava/lang/Object;
.source "HapticSupport.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/CoreDocument$HapticEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/remotecompose/player/platform/HapticSupport;->setupHaptics(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$view:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/player/platform/HapticSupport;Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/HapticSupport$1;->val$view:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist haptic(I)V
    .registers 5

    .line 65
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/HapticSupport$1;->val$view:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    invoke-static {}, Lcom/android/internal/widget/remotecompose/player/platform/HapticSupport;->-$$Nest$sfgetsHapticTable()[I

    move-result-object v1

    invoke-static {}, Lcom/android/internal/widget/remotecompose/player/platform/HapticSupport;->-$$Nest$sfgetsHapticTable()[I

    move-result-object v2

    array-length v2, v2

    rem-int/2addr p1, v2

    aget p1, v1, p1

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->performHapticFeedback(I)Z

    .line 66
    return-void
.end method
