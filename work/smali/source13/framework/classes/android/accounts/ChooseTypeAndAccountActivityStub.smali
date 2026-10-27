.class public interface abstract Landroid/accounts/ChooseTypeAndAccountActivityStub;
.super Ljava/lang/Object;
.source "ChooseTypeAndAccountActivityStub.java"


# static fields
.field public static final blacklist sInstance:Landroid/accounts/ChooseTypeAndAccountActivityStub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 11
    const-class v0, Landroid/accounts/ChooseTypeAndAccountActivityStub;

    .line 12
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/ChooseTypeAndAccountActivityStub;

    sput-object v0, Landroid/accounts/ChooseTypeAndAccountActivityStub;->sInstance:Landroid/accounts/ChooseTypeAndAccountActivityStub;

    .line 11
    return-void
.end method

.method public static blacklist getInstance()Landroid/accounts/ChooseTypeAndAccountActivityStub;
    .registers 1

    .line 15
    sget-object v0, Landroid/accounts/ChooseTypeAndAccountActivityStub;->sInstance:Landroid/accounts/ChooseTypeAndAccountActivityStub;

    return-object v0
.end method


# virtual methods
.method public abstract blacklist toMiuiChooseAccountTypeActivity(Landroid/content/Intent;)V
.end method
