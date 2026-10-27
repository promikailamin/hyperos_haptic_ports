.class public interface abstract Landroid/accounts/AccountStub;
.super Ljava/lang/Object;
.source "AccountStub.java"


# static fields
.field public static final blacklist sInstance:Landroid/accounts/AccountStub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 9
    const-class v0, Landroid/accounts/AccountStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountStub;

    sput-object v0, Landroid/accounts/AccountStub;->sInstance:Landroid/accounts/AccountStub;

    return-void
.end method

.method public static blacklist getInstance()Landroid/accounts/AccountStub;
    .registers 1

    .line 12
    sget-object v0, Landroid/accounts/AccountStub;->sInstance:Landroid/accounts/AccountStub;

    return-object v0
.end method


# virtual methods
.method public abstract blacklist hideNameToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
