.class public final synthetic Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/MediaSessionRecord;

.field public final synthetic f$1:Landroid/media/session/ISessionControllerCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionControllerCallback;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/media/MediaSessionRecord;

    iput-object p2, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda9;->f$1:Landroid/media/session/ISessionControllerCallback;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/media/MediaSessionRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda9;->f$1:Landroid/media/session/ISessionControllerCallback;

    invoke-static {v0, p0}, Lcom/android/server/media/MediaSessionRecord;->$r8$lambda$aR06ipXqvTJwQuSwJSP52jd0tIk(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionControllerCallback;)V

    return-void
.end method
