.class public abstract Lcom/android/internal/compat/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/compat/AlertController$AlertParams;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist getButton(I)Landroid/widget/Button;
.end method

.method public abstract blacklist installContent()V
.end method

.method public abstract blacklist onKeyUp(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract blacklist setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
.end method

.method public abstract blacklist setCustomTitle(Landroid/view/View;)V
.end method

.method public abstract blacklist setTitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract blacklist setView(Landroid/view/View;)V
.end method
