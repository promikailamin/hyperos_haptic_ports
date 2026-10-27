.class public final synthetic Lcom/android/server/wm/DisplayHashController$SyncCommand$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayHashController$SyncCommand;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayHashController$SyncCommand;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayHashController$SyncCommand$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayHashController$SyncCommand;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayHashController$SyncCommand$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayHashController$SyncCommand;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayHashController$SyncCommand;->lambda$run$0$com-android-server-wm-DisplayHashController$SyncCommand(Landroid/os/Bundle;)V

    return-void
.end method
