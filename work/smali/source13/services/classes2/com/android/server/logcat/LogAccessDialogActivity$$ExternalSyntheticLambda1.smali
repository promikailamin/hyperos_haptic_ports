.class public final synthetic Lcom/android/server/logcat/LogAccessDialogActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/logcat/LogAccessDialogActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/logcat/LogAccessDialogActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/logcat/LogAccessDialogActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/logcat/LogAccessDialogActivity;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/logcat/LogAccessDialogActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/logcat/LogAccessDialogActivity;

    invoke-virtual {v0, p1}, Lcom/android/server/logcat/LogAccessDialogActivity;->lambda$onCreate$1$com-android-server-logcat-LogAccessDialogActivity(Landroid/content/DialogInterface;)V

    return-void
.end method
