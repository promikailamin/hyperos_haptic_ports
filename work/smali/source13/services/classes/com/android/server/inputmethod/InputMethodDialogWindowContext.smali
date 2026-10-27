.class public final Lcom/android/server/inputmethod/InputMethodDialogWindowContext;
.super Ljava/lang/Object;
.source "InputMethodDialogWindowContext.java"


# instance fields
.field private mDialogWindowContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Landroid/content/Context;
    .registers 8
    .param p1, "displayId"    # I

    .line 48
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodDialogWindowContext;->mDialogWindowContext:Landroid/content/Context;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    if-eq v0, p1, :cond_38

    .line 49
    :cond_a
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 50
    invoke-virtual {v0, p1}, Landroid/app/ActivityThread;->getSystemUiContext(I)Landroid/app/ContextImpl;

    move-result-object v0

    .line 51
    .local v0, "systemUiContext":Landroid/content/Context;
    const/16 v1, 0x7dc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v1

    .line 56
    .local v1, "windowContext":Landroid/content/Context;
    new-instance v2, Landroid/view/ContextThemeWrapper;

    const v3, 0x1030223

    invoke-direct {v2, v0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodDialogWindowContext;->mDialogWindowContext:Landroid/content/Context;

    .line 58
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 59
    const-string v3, "Theme.DayNight"

    const-string/jumbo v4, "style"

    const-string/jumbo v5, "miuix.stub"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 60
    .local v2, "alertDialogThemeId":I
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodDialogWindowContext;->mDialogWindowContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->setTheme(I)V

    .line 63
    .end local v0    # "systemUiContext":Landroid/content/Context;
    .end local v1    # "windowContext":Landroid/content/Context;
    .end local v2    # "alertDialogThemeId":I
    :cond_38
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodDialogWindowContext;->mDialogWindowContext:Landroid/content/Context;

    return-object v0
.end method
