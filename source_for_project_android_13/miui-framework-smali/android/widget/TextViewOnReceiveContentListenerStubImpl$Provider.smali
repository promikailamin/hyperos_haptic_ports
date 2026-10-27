.class public final Landroid/widget/TextViewOnReceiveContentListenerStubImpl$Provider;
.super Ljava/lang/Object;
.source "TextViewOnReceiveContentListenerStubImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextViewOnReceiveContentListenerStubImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Landroid/widget/TextViewOnReceiveContentListenerStubImpl;",
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
.method public blacklist provideNewInstance()Landroid/widget/TextViewOnReceiveContentListenerStubImpl;
    .registers 2

    .line 14
    new-instance v0, Landroid/widget/TextViewOnReceiveContentListenerStubImpl;

    invoke-direct {v0}, Landroid/widget/TextViewOnReceiveContentListenerStubImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/widget/TextViewOnReceiveContentListenerStubImpl$Provider;->provideNewInstance()Landroid/widget/TextViewOnReceiveContentListenerStubImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Landroid/widget/TextViewOnReceiveContentListenerStubImpl;
    .registers 2

    .line 10
    sget-object v0, Landroid/widget/TextViewOnReceiveContentListenerStubImpl$Provider$SINGLETON;->INSTANCE:Landroid/widget/TextViewOnReceiveContentListenerStubImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/widget/TextViewOnReceiveContentListenerStubImpl$Provider;->provideSingleton()Landroid/widget/TextViewOnReceiveContentListenerStubImpl;

    move-result-object v0

    return-object v0
.end method
