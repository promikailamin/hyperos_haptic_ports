.class public abstract Lcom/android/server/profcollect/IProfCollectd$Stub;
.super Landroid/os/Binder;
.source "IProfCollectd.java"

# interfaces
.implements Lcom/android/server/profcollect/IProfCollectd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/profcollect/IProfCollectd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/profcollect/IProfCollectd$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_get_supported_provider:I = 0x6

.field static final TRANSACTION_process:I = 0x4

.field static final TRANSACTION_registerProviderStatusCallback:I = 0x7

.field static final TRANSACTION_report:I = 0x5

.field static final TRANSACTION_schedule:I = 0x1

.field static final TRANSACTION_terminate:I = 0x2

.field static final TRANSACTION_trace_once:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 45
    const-string v0, "com.android.server.profcollect.IProfCollectd"

    invoke-virtual {p0, p0, v0}, Lcom/android/server/profcollect/IProfCollectd$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/server/profcollect/IProfCollectd;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 53
    if-nez p0, :cond_4

    .line 54
    const/4 v0, 0x0

    return-object v0

    .line 56
    :cond_4
    const-string v0, "com.android.server.profcollect.IProfCollectd"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 57
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/server/profcollect/IProfCollectd;

    if-eqz v1, :cond_14

    .line 58
    move-object v1, v0

    check-cast v1, Lcom/android/server/profcollect/IProfCollectd;

    return-object v1

    .line 60
    :cond_14
    new-instance v1, Lcom/android/server/profcollect/IProfCollectd$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/server/profcollect/IProfCollectd$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 64
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    const-string v0, "com.android.server.profcollect.IProfCollectd"

    .line 69
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 70
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    :cond_d
    packed-switch p1, :pswitch_data_68

    .line 80
    packed-switch p1, :pswitch_data_6e

    .line 134
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 76
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    return v1

    .line 126
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/profcollect/IProviderStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/server/profcollect/IProviderStatusCallback;

    move-result-object v2

    .line 127
    .local v2, "_arg0":Lcom/android/server/profcollect/IProviderStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {p0, v2}, Lcom/android/server/profcollect/IProfCollectd$Stub;->registerProviderStatusCallback(Lcom/android/server/profcollect/IProviderStatusCallback;)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    goto :goto_67

    .line 118
    .end local v2    # "_arg0":Lcom/android/server/profcollect/IProviderStatusCallback;
    :pswitch_2e
    invoke-virtual {p0}, Lcom/android/server/profcollect/IProfCollectd$Stub;->get_supported_provider()Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    goto :goto_67

    .line 111
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_39
    invoke-virtual {p0}, Lcom/android/server/profcollect/IProfCollectd$Stub;->report()Ljava/lang/String;

    move-result-object v2

    .line 112
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    goto :goto_67

    .line 105
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_44
    invoke-virtual {p0}, Lcom/android/server/profcollect/IProfCollectd$Stub;->process()V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    goto :goto_67

    .line 97
    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 99
    invoke-virtual {p0, v2}, Lcom/android/server/profcollect/IProfCollectd$Stub;->trace_once(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    goto :goto_67

    .line 90
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_59
    invoke-virtual {p0}, Lcom/android/server/profcollect/IProfCollectd$Stub;->terminate()V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    goto :goto_67

    .line 84
    :pswitch_60
    invoke-virtual {p0}, Lcom/android/server/profcollect/IProfCollectd$Stub;->schedule()V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    nop

    .line 137
    :goto_67
    return v1

    :pswitch_data_68
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_60
        :pswitch_59
        :pswitch_4b
        :pswitch_44
        :pswitch_39
        :pswitch_2e
        :pswitch_1c
    .end packed-switch
.end method
