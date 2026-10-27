.class public final Landroid/media/RingtoneManagerStubImpl$Provider;
.super Ljava/lang/Object;
.source "RingtoneManagerStubImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RingtoneManagerStubImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Landroid/media/RingtoneManagerStubImpl;",
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
.method public blacklist provideNewInstance()Landroid/media/RingtoneManagerStubImpl;
    .registers 2

    .line 14
    new-instance v0, Landroid/media/RingtoneManagerStubImpl;

    invoke-direct {v0}, Landroid/media/RingtoneManagerStubImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/media/RingtoneManagerStubImpl$Provider;->provideNewInstance()Landroid/media/RingtoneManagerStubImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Landroid/media/RingtoneManagerStubImpl;
    .registers 2

    .line 10
    sget-object v0, Landroid/media/RingtoneManagerStubImpl$Provider$SINGLETON;->INSTANCE:Landroid/media/RingtoneManagerStubImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/media/RingtoneManagerStubImpl$Provider;->provideSingleton()Landroid/media/RingtoneManagerStubImpl;

    move-result-object v0

    return-object v0
.end method
