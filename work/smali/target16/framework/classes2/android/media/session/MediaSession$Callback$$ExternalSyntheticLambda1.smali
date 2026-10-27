.class public final synthetic Landroid/media/session/MediaSession$Callback$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/session/MediaSession$Callback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/session/MediaSession$Callback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/session/MediaSession$Callback$$ExternalSyntheticLambda1;->f$0:Landroid/media/session/MediaSession$Callback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/media/session/MediaSession$Callback$$ExternalSyntheticLambda1;->f$0:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v0}, Landroid/media/session/MediaSession$Callback;->onSkipToNext()V

    return-void
.end method
