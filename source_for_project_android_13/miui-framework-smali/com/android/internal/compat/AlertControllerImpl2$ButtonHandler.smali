.class final Lcom/android/internal/compat/AlertControllerImpl2$ButtonHandler;
.super Landroid/os/Handler;
.source "AlertControllerImpl2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/compat/AlertControllerImpl2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ButtonHandler"
.end annotation


# static fields
.field private static final blacklist MSG_DISMISS_DIALOG:I = 0x1


# instance fields
.field private blacklist mDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/DialogInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 80
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 81
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2$ButtonHandler;->mDialog:Ljava/lang/ref/WeakReference;

    .line 82
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 87
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/content/DialogInterface;

    if-eqz v0, :cond_b

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/DialogInterface;

    goto :goto_13

    .line 88
    :cond_b
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2$ButtonHandler;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/DialogInterface;

    :goto_13
    nop

    .line 89
    .local v0, "dlg":Landroid/content/DialogInterface;
    instance-of v1, v0, Landroid/app/Dialog;

    if-eqz v1, :cond_22

    move-object v1, v0

    check-cast v1, Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_22

    .line 90
    return-void

    .line 92
    :cond_22
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_3c

    :pswitch_27
    goto :goto_3b

    .line 103
    :pswitch_28
    goto :goto_3b

    .line 96
    :pswitch_29
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl2$ButtonHandler;->mDialog:Ljava/lang/ref/WeakReference;

    .line 97
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/DialogInterface;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-interface {v1, v2, v3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 98
    nop

    .line 108
    :goto_3b
    return-void

    :pswitch_data_3c
    .packed-switch -0x3
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_27
        :pswitch_28
    .end packed-switch
.end method
