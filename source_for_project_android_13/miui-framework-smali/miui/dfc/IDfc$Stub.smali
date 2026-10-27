.class public abstract Lmiui/dfc/IDfc$Stub;
.super Landroid/os/Binder;
.source "IDfc.java"

# interfaces
.implements Lmiui/dfc/IDfc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/dfc/IDfc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/dfc/IDfc$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_Dfc_compressDuplicateFiles:I = 0x3

.field static final blacklist TRANSACTION_Dfc_forceStopScanDuplicateFiles:I = 0x5

.field static final blacklist TRANSACTION_Dfc_getDuplicateFiles:I = 0x2

.field static final blacklist TRANSACTION_Dfc_restoreDuplicateFiles:I = 0x4

.field static final blacklist TRANSACTION_Dfc_scanDuplicateFiles:I = 0x1

.field static final blacklist TRANSACTION_Dfc_setDFCExceptRules:I = 0x6

.field static final blacklist TRANSACTION_Dfc_stopCompressDuplicateFiles:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "miui.dfc.IDfc"

    invoke-virtual {p0, p0, v0}, Lmiui/dfc/IDfc$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lmiui/dfc/IDfc;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 54
    if-nez p0, :cond_4

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_4
    const-string v0, "miui.dfc.IDfc"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/dfc/IDfc;

    if-eqz v1, :cond_14

    .line 59
    move-object v1, v0

    check-cast v1, Lmiui/dfc/IDfc;

    return-object v1

    .line 61
    :cond_14
    new-instance v1, Lmiui/dfc/IDfc$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/dfc/IDfc$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v0, "miui.dfc.IDfc"

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
    packed-switch p1, :pswitch_data_7e

    .line 81
    packed-switch p1, :pswitch_data_84

    .line 145
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 77
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    return v1

    .line 139
    :pswitch_1c
    invoke-virtual {p0}, Lmiui/dfc/IDfc$Stub;->Dfc_stopCompressDuplicateFiles()V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    goto :goto_7c

    .line 131
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 133
    invoke-virtual {p0, v2}, Lmiui/dfc/IDfc$Stub;->Dfc_setDFCExceptRules(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    goto :goto_7c

    .line 124
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_31
    invoke-virtual {p0}, Lmiui/dfc/IDfc$Stub;->Dfc_forceStopScanDuplicateFiles()V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    goto :goto_7c

    .line 115
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 116
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 117
    invoke-virtual {p0, v2}, Lmiui/dfc/IDfc$Stub;->Dfc_restoreDuplicateFiles(Ljava/lang/String;)J

    move-result-wide v3

    .line 118
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 120
    goto :goto_7c

    .line 105
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":J
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 106
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 107
    invoke-virtual {p0, v2}, Lmiui/dfc/IDfc$Stub;->Dfc_compressDuplicateFiles(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    goto :goto_7c

    .line 95
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 96
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 97
    invoke-virtual {p0, v2}, Lmiui/dfc/IDfc$Stub;->Dfc_getDuplicateFiles(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 98
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    goto :goto_7c

    .line 86
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 87
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 88
    invoke-virtual {p0, v2}, Lmiui/dfc/IDfc$Stub;->Dfc_scanDuplicateFiles(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    nop

    .line 148
    .end local v2    # "_arg0":Ljava/lang/String;
    :goto_7c
    return v1

    nop

    :pswitch_data_7e
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_6e
        :pswitch_5c
        :pswitch_4a
        :pswitch_38
        :pswitch_31
        :pswitch_23
        :pswitch_1c
    .end packed-switch
.end method
