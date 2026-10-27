.class public final synthetic Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/MediaSessionRecord;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/MediaSessionRecord;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/media/MediaSessionRecord;

    iput-boolean p2, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda5;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/media/MediaSessionRecord;

    iget-boolean p0, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda5;->f$1:Z

    invoke-static {v0, p0}, Lcom/android/server/media/MediaSessionRecord;->$r8$lambda$YoDrzDNGFNqeGJ0VAPn4bT2h5c4(Lcom/android/server/media/MediaSessionRecord;Z)V

    return-void
.end method
