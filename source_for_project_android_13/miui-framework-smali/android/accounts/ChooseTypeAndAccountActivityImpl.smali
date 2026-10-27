.class public Landroid/accounts/ChooseTypeAndAccountActivityImpl;
.super Ljava/lang/Object;
.source "ChooseTypeAndAccountActivityImpl.java"

# interfaces
.implements Landroid/accounts/ChooseTypeAndAccountActivityStub;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist toMiuiChooseAccountTypeActivity(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 15
    const-string v0, "com.miui.rom"

    const-string v1, "miui.accounts.MiuiChooseAccountTypeActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    return-void
.end method
