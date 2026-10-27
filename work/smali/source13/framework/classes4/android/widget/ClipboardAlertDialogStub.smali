.class public interface abstract Landroid/widget/ClipboardAlertDialogStub;
.super Ljava/lang/Object;
.source "ClipboardAlertDialogStub.java"


# direct methods
.method public static blacklist getInstance()Landroid/widget/ClipboardAlertDialogStub;
    .registers 1

    .line 15
    const-class v0, Landroid/widget/ClipboardAlertDialogStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ClipboardAlertDialogStub;

    return-object v0
.end method


# virtual methods
.method public abstract blacklist createClipboardAlertDialog(Landroid/view/View;Landroid/content/ClipDescription;Landroid/os/Bundle;)V
.end method

.method public abstract blacklist getClipboardAlertDialog()Z
.end method

.method public abstract blacklist setClipboardAlertDialog(Z)V
.end method
