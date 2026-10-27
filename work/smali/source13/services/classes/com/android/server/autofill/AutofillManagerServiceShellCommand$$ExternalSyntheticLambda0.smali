.class public final synthetic Lcom/android/server/autofill/AutofillManagerServiceShellCommand$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/AutofillManagerServiceShellCommand;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/internal/os/IResultReceiver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/AutofillManagerServiceShellCommand;ILcom/android/internal/os/IResultReceiver;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/autofill/AutofillManagerServiceShellCommand;

    iput p2, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$$ExternalSyntheticLambda0;->f$2:Lcom/android/internal/os/IResultReceiver;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/autofill/AutofillManagerServiceShellCommand;

    iget v1, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$$ExternalSyntheticLambda0;->f$2:Lcom/android/internal/os/IResultReceiver;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->lambda$requestList$2$com-android-server-autofill-AutofillManagerServiceShellCommand(ILcom/android/internal/os/IResultReceiver;)V

    return-void
.end method
