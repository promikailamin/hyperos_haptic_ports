.class public final synthetic Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BaseErrorDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BaseErrorDialog;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/BaseErrorDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/BaseErrorDialog;

    invoke-static {v0}, Lcom/android/server/am/ErrorDialogController;->$r8$lambda$wCv4wiNjBflM3ipc49qB7tV_3EY(Lcom/android/server/am/BaseErrorDialog;)V

    return-void
.end method
