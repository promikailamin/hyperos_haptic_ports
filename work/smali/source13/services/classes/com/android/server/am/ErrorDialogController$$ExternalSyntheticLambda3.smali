.class public final synthetic Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ErrorDialogController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ErrorDialogController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/ErrorDialogController;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/ErrorDialogController;

    invoke-virtual {v0}, Lcom/android/server/am/ErrorDialogController;->lambda$showCrashDialogs$1$com-android-server-am-ErrorDialogController()V

    return-void
.end method
