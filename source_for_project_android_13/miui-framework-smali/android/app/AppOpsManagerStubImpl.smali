.class public Landroid/app/AppOpsManagerStubImpl;
.super Landroid/app/AppOpsManagerStub;
.source "AppOpsManagerStubImpl.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Landroid/app/AppOpsManagerStub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist opToDefaultMode(I)I
    .registers 3
    .param p1, "op"    # I

    .line 12
    invoke-static {p1}, Landroid/app/AppOpsManagerInjector;->opToDefaultMode(I)I

    move-result v0

    return v0
.end method
