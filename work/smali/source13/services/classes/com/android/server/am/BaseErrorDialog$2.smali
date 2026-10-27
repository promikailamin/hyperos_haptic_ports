.class Lcom/android/server/am/BaseErrorDialog$2;
.super Landroid/os/Handler;
.source "BaseErrorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BaseErrorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BaseErrorDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/BaseErrorDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/BaseErrorDialog;

    .line 136
    iput-object p1, p0, Lcom/android/server/am/BaseErrorDialog$2;->this$0:Lcom/android/server/am/BaseErrorDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 138
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_11

    .line 139
    iget-object v0, p0, Lcom/android/server/am/BaseErrorDialog$2;->this$0:Lcom/android/server/am/BaseErrorDialog;

    invoke-static {v0, v1}, Lcom/android/server/am/BaseErrorDialog;->-$$Nest$fputmConsuming(Lcom/android/server/am/BaseErrorDialog;Z)V

    .line 140
    iget-object v0, p0, Lcom/android/server/am/BaseErrorDialog$2;->this$0:Lcom/android/server/am/BaseErrorDialog;

    invoke-static {v0, v2}, Lcom/android/server/am/BaseErrorDialog;->-$$Nest$msetEnabled(Lcom/android/server/am/BaseErrorDialog;Z)V

    goto :goto_1a

    .line 141
    :cond_11
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_1a

    .line 142
    iget-object v0, p0, Lcom/android/server/am/BaseErrorDialog$2;->this$0:Lcom/android/server/am/BaseErrorDialog;

    invoke-static {v0, v1}, Lcom/android/server/am/BaseErrorDialog;->-$$Nest$msetEnabled(Lcom/android/server/am/BaseErrorDialog;Z)V

    .line 144
    :cond_1a
    :goto_1a
    return-void
.end method
