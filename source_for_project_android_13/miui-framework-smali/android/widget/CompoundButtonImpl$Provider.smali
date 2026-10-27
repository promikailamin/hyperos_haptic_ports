.class public final Landroid/widget/CompoundButtonImpl$Provider;
.super Ljava/lang/Object;
.source "CompoundButtonImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CompoundButtonImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Landroid/widget/CompoundButtonImpl;",
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
.method public blacklist provideNewInstance()Landroid/widget/CompoundButtonImpl;
    .registers 2

    .line 14
    new-instance v0, Landroid/widget/CompoundButtonImpl;

    invoke-direct {v0}, Landroid/widget/CompoundButtonImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/widget/CompoundButtonImpl$Provider;->provideNewInstance()Landroid/widget/CompoundButtonImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Landroid/widget/CompoundButtonImpl;
    .registers 2

    .line 10
    sget-object v0, Landroid/widget/CompoundButtonImpl$Provider$SINGLETON;->INSTANCE:Landroid/widget/CompoundButtonImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/widget/CompoundButtonImpl$Provider;->provideSingleton()Landroid/widget/CompoundButtonImpl;

    move-result-object v0

    return-object v0
.end method
