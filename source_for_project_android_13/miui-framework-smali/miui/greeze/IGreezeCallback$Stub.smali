.class public abstract Lmiui/greeze/IGreezeCallback$Stub;
.super Landroid/os/Binder;
.source "IGreezeCallback.java"

# interfaces
.implements Lmiui/greeze/IGreezeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/greeze/IGreezeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/greeze/IGreezeCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_reportBinderState:I = 0x4

.field static final blacklist TRANSACTION_reportBinderTrans:I = 0x3

.field static final blacklist TRANSACTION_reportNet:I = 0x2

.field static final blacklist TRANSACTION_reportSignal:I = 0x1

.field static final blacklist TRANSACTION_serviceReady:I = 0x5

.field static final blacklist TRANSACTION_thawedByOther:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "miui.greeze.IGreezeCallback"

    invoke-virtual {p0, p0, v0}, Lmiui/greeze/IGreezeCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lmiui/greeze/IGreezeCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 48
    if-nez p0, :cond_4

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_4
    const-string v0, "miui.greeze.IGreezeCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/greeze/IGreezeCallback;

    if-eqz v1, :cond_14

    .line 53
    move-object v1, v0

    check-cast v1, Lmiui/greeze/IGreezeCallback;

    return-object v1

    .line 55
    :cond_14
    new-instance v1, Lmiui/greeze/IGreezeCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/greeze/IGreezeCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 59
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 31
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    move-object/from16 v11, p0

    move/from16 v12, p1

    const-string v13, "miui.greeze.IGreezeCallback"

    .line 64
    .local v13, "descriptor":Ljava/lang/String;
    const/4 v14, 0x1

    if-lt v12, v14, :cond_14

    const v0, 0xffffff

    if-gt v12, v0, :cond_14

    .line 65
    move-object/from16 v15, p2

    invoke-virtual {v15, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_16

    .line 64
    :cond_14
    move-object/from16 v15, p2

    .line 67
    :goto_16
    packed-switch v12, :pswitch_data_ca

    .line 75
    move-object/from16 v9, p3

    packed-switch v12, :pswitch_data_d0

    .line 159
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 71
    :pswitch_23
    move-object/from16 v9, p3

    invoke-virtual {v9, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    return v14

    .line 148
    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 150
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 152
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 153
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    invoke-virtual {v11, v0, v1, v2}, Lmiui/greeze/IGreezeCallback$Stub;->thawedByOther(III)V

    .line 155
    goto/16 :goto_c8

    .line 140
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 141
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {v11, v0}, Lmiui/greeze/IGreezeCallback$Stub;->serviceReady(Z)V

    .line 143
    goto/16 :goto_c8

    .line 124
    .end local v0    # "_arg0":Z
    :pswitch_49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 126
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 128
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 130
    .local v10, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 132
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 133
    .local v17, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 134
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v10

    move/from16 v4, v16

    move-wide/from16 v5, v17

    invoke-virtual/range {v0 .. v6}, Lmiui/greeze/IGreezeCallback$Stub;->reportBinderState(IIIIJ)V

    .line 135
    goto :goto_c8

    .line 102
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v10    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":J
    :pswitch_6d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 104
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 106
    .local v17, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 108
    .local v18, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 110
    .local v19, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 112
    .local v20, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v21

    .line 114
    .local v21, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 116
    .local v22, "_arg6":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .line 117
    .local v24, "_arg7":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 118
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move-wide/from16 v7, v22

    move-wide/from16 v9, v24

    invoke-virtual/range {v0 .. v10}, Lmiui/greeze/IGreezeCallback$Stub;->reportBinderTrans(IIIIIZJJ)V

    .line 119
    goto :goto_c8

    .line 92
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":I
    .end local v18    # "_arg2":I
    .end local v19    # "_arg3":I
    .end local v20    # "_arg4":I
    .end local v21    # "_arg5":Z
    .end local v22    # "_arg6":J
    .end local v24    # "_arg7":J
    :pswitch_a6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 94
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 95
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 96
    invoke-virtual {v11, v0, v1, v2}, Lmiui/greeze/IGreezeCallback$Stub;->reportNet(IJ)V

    .line 97
    goto :goto_c8

    .line 80
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":J
    :pswitch_b5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 82
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 84
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 85
    .local v2, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 86
    invoke-virtual {v11, v0, v1, v2, v3}, Lmiui/greeze/IGreezeCallback$Stub;->reportSignal(IIJ)V

    .line 87
    nop

    .line 162
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":J
    :goto_c8
    return v14

    nop

    :pswitch_data_ca
    .packed-switch 0x5f4e5446
        :pswitch_23
    .end packed-switch

    :pswitch_data_d0
    .packed-switch 0x1
        :pswitch_b5
        :pswitch_a6
        :pswitch_6d
        :pswitch_49
        :pswitch_3d
        :pswitch_29
    .end packed-switch
.end method
