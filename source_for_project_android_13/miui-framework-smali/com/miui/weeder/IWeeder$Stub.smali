.class public abstract Lcom/miui/weeder/IWeeder$Stub;
.super Landroid/os/Binder;
.source "IWeeder.java"

# interfaces
.implements Lcom/miui/weeder/IWeeder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/weeder/IWeeder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/weeder/IWeeder$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.miui.weeder.IWeeder"


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.miui.weeder.IWeeder"

    invoke-virtual {p0, p0, v0}, Lcom/miui/weeder/IWeeder$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/miui/weeder/IWeeder;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_4
    const-string v0, "com.miui.weeder.IWeeder"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/miui/weeder/IWeeder;

    if-eqz v1, :cond_14

    .line 28
    move-object v1, v0

    check-cast v1, Lcom/miui/weeder/IWeeder;

    return-object v1

    .line 30
    :cond_14
    new-instance v1, Lcom/miui/weeder/IWeeder$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/weeder/IWeeder$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 35
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    packed-switch p1, :pswitch_data_10

    .line 49
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 45
    :pswitch_8
    const-string v0, "com.miui.weeder.IWeeder"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_10
    .packed-switch 0x5f4e5446
        :pswitch_8
    .end packed-switch
.end method
