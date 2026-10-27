.class Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView$1;
.super Ljava/lang/Object;
.source "RemoteComposeView.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist doFrame(J)V
    .registers 6

    .line 89
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    const-wide/32 v1, 0xf4240

    div-long/2addr p1, v1

    iput-wide p1, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->currentTime:J

    .line 90
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    iget-object p1, p1, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    iget p2, p2, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDebug:I

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setDebug(I)V

    .line 91
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->postInvalidateOnAnimation()V

    .line 92
    return-void
.end method
