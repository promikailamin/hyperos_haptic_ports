.class public abstract Lcom/miui/whetstone/IWhetstoneSysInfoService$Stub;
.super Landroid/os/Binder;
.source "IWhetstoneSysInfoService.java"

# interfaces
.implements Lcom/miui/whetstone/IWhetstoneSysInfoService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/IWhetstoneSysInfoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/IWhetstoneSysInfoService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getSysInfo:I = 0x1

.field static final blacklist TRANSACTION_getSysInfos:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 29
    const-string v0, "com.miui.whetstone.IWhetstoneSysInfoService"

    invoke-virtual {p0, p0, v0}, Lcom/miui/whetstone/IWhetstoneSysInfoService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IWhetstoneSysInfoService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 37
    if-nez p0, :cond_4

    .line 38
    const/4 v0, 0x0

    return-object v0

    .line 40
    :cond_4
    const-string v0, "com.miui.whetstone.IWhetstoneSysInfoService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 41
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/miui/whetstone/IWhetstoneSysInfoService;

    if-eqz v1, :cond_14

    .line 42
    move-object v1, v0

    check-cast v1, Lcom/miui/whetstone/IWhetstoneSysInfoService;

    return-object v1

    .line 44
    :cond_14
    new-instance v1, Lcom/miui/whetstone/IWhetstoneSysInfoService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/whetstone/IWhetstoneSysInfoService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 48
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    const-string v0, "com.miui.whetstone.IWhetstoneSysInfoService"

    .line 53
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 54
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    :cond_d
    packed-switch p1, :pswitch_data_42

    .line 64
    packed-switch p1, :pswitch_data_48

    .line 88
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 60
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    return v1

    .line 79
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 81
    invoke-virtual {p0, v2}, Lcom/miui/whetstone/IWhetstoneSysInfoService$Stub;->getSysInfos([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 84
    goto :goto_40

    .line 69
    .end local v2    # "_arg0":[Ljava/lang/String;
    .end local v3    # "_result":[Ljava/lang/String;
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 71
    invoke-virtual {p0, v2}, Lcom/miui/whetstone/IWhetstoneSysInfoService$Stub;->getSysInfo(Ljava/lang/String;)J

    move-result-wide v3

    .line 72
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 74
    nop

    .line 91
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":J
    :goto_40
    return v1

    nop

    :pswitch_data_42
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_1c
    .end packed-switch
.end method
