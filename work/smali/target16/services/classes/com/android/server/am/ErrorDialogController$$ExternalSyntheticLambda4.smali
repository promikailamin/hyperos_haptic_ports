.class public final synthetic Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AppWaitingForDebuggerDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AppWaitingForDebuggerDialog;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
