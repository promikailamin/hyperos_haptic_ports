.class public abstract Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;
.super Landroid/os/Binder;
.source "IPackageBackupRestoreObserver.java"

# interfaces
.implements Lmiui/app/backup/IPackageBackupRestoreObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/backup/IPackageBackupRestoreObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/backup/IPackageBackupRestoreObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onBackupEnd:I = 0x2

.field static final blacklist TRANSACTION_onBackupStart:I = 0x1

.field static final blacklist TRANSACTION_onCustomProgressChange:I = 0x7

.field static final blacklist TRANSACTION_onError:I = 0x6

.field static final blacklist TRANSACTION_onRestoreEnd:I = 0x4

.field static final blacklist TRANSACTION_onRestoreError:I = 0x5

.field static final blacklist TRANSACTION_onRestoreStart:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 43
    const-string v0, "miui.app.backup.IPackageBackupRestoreObserver"

    invoke-virtual {p0, p0, v0}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lmiui/app/backup/IPackageBackupRestoreObserver;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 51
    if-nez p0, :cond_4

    .line 52
    const/4 v0, 0x0

    return-object v0

    .line 54
    :cond_4
    const-string v0, "miui.app.backup.IPackageBackupRestoreObserver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 55
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/app/backup/IPackageBackupRestoreObserver;

    if-eqz v1, :cond_14

    .line 56
    move-object v1, v0

    check-cast v1, Lmiui/app/backup/IPackageBackupRestoreObserver;

    return-object v1

    .line 58
    :cond_14
    new-instance v1, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 62
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 26
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
    move-object/from16 v8, p0

    move/from16 v9, p1

    const-string v10, "miui.app.backup.IPackageBackupRestoreObserver"

    .line 67
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v9, v11, :cond_14

    const v0, 0xffffff

    if-gt v9, v0, :cond_14

    .line 68
    move-object/from16 v12, p2

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_16

    .line 67
    :cond_14
    move-object/from16 v12, p2

    .line 70
    :goto_16
    packed-switch v9, :pswitch_data_b2

    .line 78
    move-object/from16 v13, p3

    packed-switch v9, :pswitch_data_b8

    .line 162
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 74
    :pswitch_23
    move-object/from16 v13, p3

    invoke-virtual {v13, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    return v11

    .line 147
    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 149
    .local v14, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 151
    .local v15, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 153
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 155
    .local v17, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 156
    .local v19, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v15

    move/from16 v3, v16

    move-wide/from16 v4, v17

    move-wide/from16 v6, v19

    invoke-virtual/range {v0 .. v7}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->onCustomProgressChange(Ljava/lang/String;IIJJ)V

    .line 158
    goto :goto_b0

    .line 135
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":J
    .end local v19    # "_arg4":J
    :pswitch_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 139
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 140
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-virtual {v8, v0, v1, v2}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->onError(Ljava/lang/String;II)V

    .line 142
    goto :goto_b0

    .line 123
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 125
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 127
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 128
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 129
    invoke-virtual {v8, v0, v1, v2}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->onRestoreError(Ljava/lang/String;II)V

    .line 130
    goto :goto_b0

    .line 113
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 115
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 116
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 117
    invoke-virtual {v8, v0, v1}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->onRestoreEnd(Ljava/lang/String;I)V

    .line 118
    goto :goto_b0

    .line 103
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 106
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 107
    invoke-virtual {v8, v0, v1}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->onRestoreStart(Ljava/lang/String;I)V

    .line 108
    goto :goto_b0

    .line 93
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 95
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 96
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 97
    invoke-virtual {v8, v0, v1}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->onBackupEnd(Ljava/lang/String;I)V

    .line 98
    goto :goto_b0

    .line 83
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_a1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 86
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 87
    invoke-virtual {v8, v0, v1}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->onBackupStart(Ljava/lang/String;I)V

    .line 88
    nop

    .line 165
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :goto_b0
    return v11

    nop

    :pswitch_data_b2
    .packed-switch 0x5f4e5446
        :pswitch_23
    .end packed-switch

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_a1
        :pswitch_92
        :pswitch_83
        :pswitch_74
        :pswitch_61
        :pswitch_4e
        :pswitch_29
    .end packed-switch
.end method
