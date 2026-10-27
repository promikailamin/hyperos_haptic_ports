.class public Lcom/android/server/am/AppErrorDialog$1;
.super Landroid/os/Handler;
.source "AppErrorDialog.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/AppErrorDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppErrorDialog;)V
    .registers 2

    .line 152
    iput-object p1, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 154
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, p1}, Lcom/android/server/am/AppErrorDialog;->-$$Nest$msetResult(Lcom/android/server/am/AppErrorDialog;I)V

    .line 155
    iget-object p0, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->dismiss()V

    return-void
.end method
