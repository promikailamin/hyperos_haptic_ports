.class public Lcom/android/server/wm/AppWarnings$2;
.super Landroid/view/ContextThemeWrapper;
.source "AppWarnings.java"


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;I)V
    .registers 4

    .line 502
    invoke-direct {p0, p2, p3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public startActivity(Landroid/content/Intent;)V
    .registers 4

    .line 507
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/view/ContextThemeWrapper;->sendBroadcast(Landroid/content/Intent;)V

    const/high16 v0, 0x10000000

    .line 509
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 510
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
