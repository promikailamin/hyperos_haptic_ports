.class public Lbase/core/java/android/widget/ClipboardAlertDialogStubImpl;
.super Ljava/lang/Object;
.source "ClipboardAlertDialogStubImpl.java"

# interfaces
.implements Landroid/widget/ClipboardAlertDialogStub;


# static fields
.field private static final blacklist DESCRIPTION_CLIPBOARD:Ljava/lang/String; = "clipboard_description"

.field private static final blacklist PACKAGE_PHRASE:Ljava/lang/String; = "com.miui.phrase"

.field private static final blacklist PHRASE_CLIPBOARD_ALERT_DIALOG_ACTIVITY:Ljava/lang/String; = "com.miui.AddClipboardAlertDialogActivity"

.field private static final blacklist TAG:Ljava/lang/String; = "ClipboardAlertDialogStubImpl"


# instance fields
.field private blacklist mHasAlertDialog:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbase/core/java/android/widget/ClipboardAlertDialogStubImpl;->mHasAlertDialog:Z

    return-void
.end method


# virtual methods
.method public blacklist createClipboardAlertDialog(Landroid/view/View;Landroid/content/ClipDescription;Landroid/os/Bundle;)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "clipDescription"    # Landroid/content/ClipDescription;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 33
    const-string v0, "com.miui.phrase"

    :try_start_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 35
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 36
    .local v2, "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.miui.AddClipboardAlertDialogActivity"

    invoke-direct {v3, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 38
    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 39
    const-string v0, "clipboard_description"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 40
    invoke-virtual {v2, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 41
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2a} :catch_2b

    .line 44
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "intent":Landroid/content/Intent;
    goto :goto_35

    .line 42
    :catch_2b
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ClipboardAlertDialogStubImpl"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_35
    return-void
.end method

.method public blacklist getClipboardAlertDialog()Z
    .registers 2

    .line 54
    iget-boolean v0, p0, Lbase/core/java/android/widget/ClipboardAlertDialogStubImpl;->mHasAlertDialog:Z

    return v0
.end method

.method public blacklist setClipboardAlertDialog(Z)V
    .registers 2
    .param p1, "hasAlertDialog"    # Z

    .line 49
    iput-boolean p1, p0, Lbase/core/java/android/widget/ClipboardAlertDialogStubImpl;->mHasAlertDialog:Z

    .line 50
    return-void
.end method
