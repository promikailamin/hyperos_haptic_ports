.class public abstract Lmiui/dfc/IDfcService$Stub;
.super Landroid/os/Binder;
.source "IDfcService.java"

# interfaces
.implements Lmiui/dfc/IDfcService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/dfc/IDfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/dfc/IDfcService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_compressDuplicateFiles:I = 0x5

.field static final blacklist TRANSACTION_getDFCVersion:I = 0x1

.field static final blacklist TRANSACTION_getDuplicateFiles:I = 0x7

.field static final blacklist TRANSACTION_isSupportDFC:I = 0x2

.field static final blacklist TRANSACTION_restoreDuplicateFiles:I = 0x3

.field static final blacklist TRANSACTION_scanDuplicateFiles:I = 0x4

.field static final blacklist TRANSACTION_setDFCExceptRules:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "miui.dfc.IDfcService"

    invoke-virtual {p0, p0, v0}, Lmiui/dfc/IDfcService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lmiui/dfc/IDfcService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 54
    if-nez p0, :cond_4

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_4
    const-string v0, "miui.dfc.IDfcService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/dfc/IDfcService;

    if-eqz v1, :cond_14

    .line 59
    move-object v1, v0

    check-cast v1, Lmiui/dfc/IDfcService;

    return-object v1

    .line 61
    :cond_14
    new-instance v1, Lmiui/dfc/IDfcService$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/dfc/IDfcService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 65
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

    .line 69
    const-string v0, "miui.dfc.IDfcService"

    .line 70
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 71
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    :cond_d
    packed-switch p1, :pswitch_data_8e

    .line 81
    packed-switch p1, :pswitch_data_94

    .line 149
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 77
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    return v1

    .line 140
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lmiui/dfc/IGetDuplicateFilesCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/dfc/IGetDuplicateFilesCallback;

    move-result-object v3

    .line 143
    .local v3, "_arg1":Lmiui/dfc/IGetDuplicateFilesCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    invoke-virtual {p0, v2, v3}, Lmiui/dfc/IDfcService$Stub;->getDuplicateFiles(Ljava/lang/String;Lmiui/dfc/IGetDuplicateFilesCallback;)V

    .line 145
    goto :goto_8c

    .line 132
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lmiui/dfc/IGetDuplicateFilesCallback;
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 133
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 134
    invoke-virtual {p0, v2}, Lmiui/dfc/IDfcService$Stub;->setDFCExceptRules(Ljava/lang/String;)V

    .line 135
    goto :goto_8c

    .line 122
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 124
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lmiui/dfc/IDupCompressCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/dfc/IDupCompressCallback;

    move-result-object v3

    .line 125
    .local v3, "_arg1":Lmiui/dfc/IDupCompressCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 126
    invoke-virtual {p0, v2, v3}, Lmiui/dfc/IDfcService$Stub;->compressDuplicateFiles(Ljava/lang/String;Lmiui/dfc/IDupCompressCallback;)V

    .line 127
    goto :goto_8c

    .line 110
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lmiui/dfc/IDupCompressCallback;
    :pswitch_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 112
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lmiui/dfc/IDuplicateFileScanCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/dfc/IDuplicateFileScanCallback;

    move-result-object v3

    .line 114
    .local v3, "_arg1":Lmiui/dfc/IDuplicateFileScanCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 115
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 116
    invoke-virtual {p0, v2, v3, v4}, Lmiui/dfc/IDfcService$Stub;->scanDuplicateFiles(Ljava/lang/String;Lmiui/dfc/IDuplicateFileScanCallback;I)V

    .line 117
    goto :goto_8c

    .line 100
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lmiui/dfc/IDuplicateFileScanCallback;
    .end local v4    # "_arg2":I
    :pswitch_64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 101
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 102
    invoke-virtual {p0, v2}, Lmiui/dfc/IDfcService$Stub;->restoreDuplicateFiles(Ljava/lang/String;)J

    move-result-wide v3

    .line 103
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 105
    goto :goto_8c

    .line 92
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":J
    :pswitch_76
    invoke-virtual {p0}, Lmiui/dfc/IDfcService$Stub;->isSupportDFC()Z

    move-result v2

    .line 93
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 95
    goto :goto_8c

    .line 85
    .end local v2    # "_result":Z
    :pswitch_81
    invoke-virtual {p0}, Lmiui/dfc/IDfcService$Stub;->getDFCVersion()I

    move-result v2

    .line 86
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    nop

    .line 152
    .end local v2    # "_result":I
    :goto_8c
    return v1

    nop

    :pswitch_data_8e
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_81
        :pswitch_76
        :pswitch_64
        :pswitch_4d
        :pswitch_3a
        :pswitch_2f
        :pswitch_1c
    .end packed-switch
.end method
