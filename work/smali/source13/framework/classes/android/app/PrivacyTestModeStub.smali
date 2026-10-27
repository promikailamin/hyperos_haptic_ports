.class public Landroid/app/PrivacyTestModeStub;
.super Ljava/lang/Object;
.source "PrivacyTestModeStub.java"


# static fields
.field static final blacklist INSTANCE:Landroid/app/PrivacyTestModeStub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 14
    const-class v0, Landroid/app/PrivacyTestModeStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PrivacyTestModeStub;

    sput-object v0, Landroid/app/PrivacyTestModeStub;->INSTANCE:Landroid/app/PrivacyTestModeStub;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist get()Landroid/app/PrivacyTestModeStub;
    .registers 1

    .line 17
    sget-object v0, Landroid/app/PrivacyTestModeStub;->INSTANCE:Landroid/app/PrivacyTestModeStub;

    return-object v0
.end method


# virtual methods
.method public blacklist collectPrivacyTestModeInfo(IILandroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "packageName"    # Ljava/lang/String;

    .line 25
    return-void
.end method

.method public blacklist collectPrivacyTestModeInfo(Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Context;)V
    .registers 6
    .param p1, "callerProcessName"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "context"    # Landroid/content/Context;

    .line 22
    return-void
.end method
