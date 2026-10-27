.class Landroid/gamepad/IExtraTouchIdListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IExtraTouchIdListener.java"

# interfaces
.implements Landroid/gamepad/IExtraTouchIdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gamepad/IExtraTouchIdListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Landroid/gamepad/IExtraTouchIdListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 67
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 70
    iget-object v0, p0, Landroid/gamepad/IExtraTouchIdListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 74
    const-string v0, "android.gamepad.IExtraTouchIdListener"

    return-object v0
.end method
