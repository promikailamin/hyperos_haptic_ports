.class public final Lmiui/util/GetCameraOccupierStubImpl$Provider;
.super Ljava/lang/Object;
.source "GetCameraOccupierStubImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/GetCameraOccupierStubImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Lmiui/util/GetCameraOccupierStubImpl;",
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
.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Lmiui/util/GetCameraOccupierStubImpl$Provider;->provideNewInstance()Lmiui/util/GetCameraOccupierStubImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideNewInstance()Lmiui/util/GetCameraOccupierStubImpl;
    .registers 2

    .line 14
    new-instance v0, Lmiui/util/GetCameraOccupierStubImpl;

    invoke-direct {v0}, Lmiui/util/GetCameraOccupierStubImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Lmiui/util/GetCameraOccupierStubImpl$Provider;->provideSingleton()Lmiui/util/GetCameraOccupierStubImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Lmiui/util/GetCameraOccupierStubImpl;
    .registers 2

    .line 10
    sget-object v0, Lmiui/util/GetCameraOccupierStubImpl$Provider$SINGLETON;->INSTANCE:Lmiui/util/GetCameraOccupierStubImpl;

    return-object v0
.end method
