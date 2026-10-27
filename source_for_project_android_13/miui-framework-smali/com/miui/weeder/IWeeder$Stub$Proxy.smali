.class Lcom/miui/weeder/IWeeder$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWeeder.java"

# interfaces
.implements Lcom/miui/weeder/IWeeder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/weeder/IWeeder$Stub;
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

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/miui/weeder/IWeeder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 58
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/miui/weeder/IWeeder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 65
    const-string v0, "com.miui.weeder.IWeeder"

    return-object v0
.end method
