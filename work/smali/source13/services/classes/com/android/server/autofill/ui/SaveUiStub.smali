.class public Lcom/android/server/autofill/ui/SaveUiStub;
.super Ljava/lang/Object;
.source "SaveUiStub.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/autofill/ui/SaveUiStub;
    .registers 1

    .line 14
    const-class v0, Lcom/android/server/autofill/ui/SaveUiStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ui/SaveUiStub;

    return-object v0
.end method


# virtual methods
.method public autoCancel()V
    .registers 1

    .line 31
    return-void
.end method

.method public autoSave()V
    .registers 1

    .line 28
    return-void
.end method

.method public changeBackground(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .registers 3
    .param p1, "decor"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 25
    return-void
.end method

.method public showDialog(Landroid/content/Context;Lcom/android/server/autofill/ui/OverlayControl;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "overlayControl"    # Lcom/android/server/autofill/ui/OverlayControl;
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "okListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p5, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method
