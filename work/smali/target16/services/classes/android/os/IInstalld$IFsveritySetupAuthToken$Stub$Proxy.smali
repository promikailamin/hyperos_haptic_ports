.class public Landroid/os/IInstalld$IFsveritySetupAuthToken$Stub$Proxy;
.super Ljava/lang/Object;
.source "IInstalld.java"

# interfaces
.implements Landroid/os/IInstalld$IFsveritySetupAuthToken;


# instance fields
.field public mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 2167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2168
    iput-object p1, p0, Landroid/os/IInstalld$IFsveritySetupAuthToken$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 2172
    iget-object p0, p0, Landroid/os/IInstalld$IFsveritySetupAuthToken$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method
