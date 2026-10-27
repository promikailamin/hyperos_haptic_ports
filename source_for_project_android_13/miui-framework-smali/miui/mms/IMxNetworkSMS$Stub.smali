.class public abstract Lmiui/mms/IMxNetworkSMS$Stub;
.super Landroid/os/Binder;
.source "IMxNetworkSMS.java"

# interfaces
.implements Lmiui/mms/IMxNetworkSMS;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/mms/IMxNetworkSMS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/mms/IMxNetworkSMS$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_isMxOnline:I = 0x1

.field static final blacklist TRANSACTION_sendNetwokSMS:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 43
    const-string v0, "miui.mms.IMxNetworkSMS"

    invoke-virtual {p0, p0, v0}, Lmiui/mms/IMxNetworkSMS$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lmiui/mms/IMxNetworkSMS;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 51
    if-nez p0, :cond_4

    .line 52
    const/4 v0, 0x0

    return-object v0

    .line 54
    :cond_4
    const-string v0, "miui.mms.IMxNetworkSMS"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 55
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/mms/IMxNetworkSMS;

    if-eqz v1, :cond_14

    .line 56
    move-object v1, v0

    check-cast v1, Lmiui/mms/IMxNetworkSMS;

    return-object v1

    .line 58
    :cond_14
    new-instance v1, Lmiui/mms/IMxNetworkSMS$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/mms/IMxNetworkSMS$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 62
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 23
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    move/from16 v0, p1

    move-object/from16 v1, p3

    const-string v2, "miui.mms.IMxNetworkSMS"

    .line 67
    .local v2, "descriptor":Ljava/lang/String;
    const/4 v3, 0x1

    if-lt v0, v3, :cond_14

    const v4, 0xffffff

    if-gt v0, v4, :cond_14

    .line 68
    move-object/from16 v4, p2

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_16

    .line 67
    :cond_14
    move-object/from16 v4, p2

    .line 70
    :goto_16
    packed-switch v0, :pswitch_data_6a

    .line 78
    packed-switch v0, :pswitch_data_70

    .line 110
    move-object/from16 v6, p0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 74
    :pswitch_23
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    return v3

    .line 93
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 95
    .local v12, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 97
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 99
    .local v14, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 101
    .local v16, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 102
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 103
    move-object/from16 v5, p0

    move-object v6, v12

    move-object v7, v13

    move-wide v8, v14

    move/from16 v10, v16

    move/from16 v11, v17

    invoke-virtual/range {v5 .. v11}, Lmiui/mms/IMxNetworkSMS$Stub;->sendNetwokSMS(Ljava/lang/String;Ljava/lang/String;JZI)[Ljava/lang/String;

    move-result-object v5

    .line 104
    .local v5, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 106
    move-object/from16 v6, p0

    goto :goto_68

    .line 83
    .end local v5    # "_result":[Ljava/lang/String;
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":J
    .end local v16    # "_arg3":Z
    .end local v17    # "_arg4":I
    :pswitch_54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 84
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 85
    move-object/from16 v6, p0

    invoke-virtual {v6, v5}, Lmiui/mms/IMxNetworkSMS$Stub;->isMxOnline(Ljava/lang/String;)Z

    move-result v7

    .line 86
    .local v7, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 88
    nop

    .line 113
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Z
    :goto_68
    return v3

    nop

    :pswitch_data_6a
    .packed-switch 0x5f4e5446
        :pswitch_23
    .end packed-switch

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_54
        :pswitch_27
    .end packed-switch
.end method
