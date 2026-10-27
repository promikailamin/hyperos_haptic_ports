.class public final Landroid/app/StatusBarManagerStubImpl$Provider;
.super Ljava/lang/Object;
.source "StatusBarManagerStubImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/StatusBarManagerStubImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Landroid/app/StatusBarManagerStubImpl;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist provideNewInstance()Landroid/app/StatusBarManagerStubImpl;
    .registers 2

    .line 14
    new-instance v0, Landroid/app/StatusBarManagerStubImpl;

    invoke-direct {v0}, Landroid/app/StatusBarManagerStubImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/app/StatusBarManagerStubImpl$Provider;->provideNewInstance()Landroid/app/StatusBarManagerStubImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Landroid/app/StatusBarManagerStubImpl;
    .registers 2

    .line 10
    sget-object v0, Landroid/app/StatusBarManagerStubImpl$Provider$SINGLETON;->INSTANCE:Landroid/app/StatusBarManagerStubImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/app/StatusBarManagerStubImpl$Provider;->provideSingleton()Landroid/app/StatusBarManagerStubImpl;

    move-result-object v0

    return-object v0
.end method
