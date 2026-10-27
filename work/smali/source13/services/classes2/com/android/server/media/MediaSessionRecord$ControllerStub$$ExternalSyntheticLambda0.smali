.class public final synthetic Lcom/android/server/media/MediaSessionRecord$ControllerStub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

.field public final synthetic f$1:Landroid/media/session/ISessionControllerCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/MediaSessionRecord$ControllerStub;Landroid/media/session/ISessionControllerCallback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    iput-object p2, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub$$ExternalSyntheticLambda0;->f$1:Landroid/media/session/ISessionControllerCallback;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub$$ExternalSyntheticLambda0;->f$1:Landroid/media/session/ISessionControllerCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->lambda$registerCallback$0$com-android-server-media-MediaSessionRecord$ControllerStub(Landroid/media/session/ISessionControllerCallback;)V

    return-void
.end method
