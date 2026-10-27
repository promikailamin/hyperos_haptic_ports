.class public interface abstract Landroid/accounts/AccountManagerStub;
.super Ljava/lang/Object;
.source "AccountManagerStub.java"


# static fields
.field public static final blacklist sInstance:Landroid/accounts/AccountManagerStub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 11
    const-class v0, Landroid/accounts/AccountManagerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManagerStub;

    sput-object v0, Landroid/accounts/AccountManagerStub;->sInstance:Landroid/accounts/AccountManagerStub;

    return-void
.end method

.method public static blacklist getInstance()Landroid/accounts/AccountManagerStub;
    .registers 1

    .line 14
    sget-object v0, Landroid/accounts/AccountManagerStub;->sInstance:Landroid/accounts/AccountManagerStub;

    return-object v0
.end method


# virtual methods
.method public abstract blacklist handleIfContainsXiaomiAccountType(Landroid/content/Intent;)Z
.end method
