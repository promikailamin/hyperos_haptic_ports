.class public abstract Lmiui/app/backup/IMiuiRestoreManager$Stub;
.super Landroid/os/Binder;
.source "IMiuiRestoreManager.java"

# interfaces
.implements Lmiui/app/backup/IMiuiRestoreManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/backup/IMiuiRestoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/backup/IMiuiRestoreManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_backupAppData:I = 0x7

.field static final blacklist TRANSACTION_getDataFileInfo:I = 0x5

.field static final blacklist TRANSACTION_listDataDir:I = 0x6

.field static final blacklist TRANSACTION_moveData:I = 0x1

.field static final blacklist TRANSACTION_registerRestoreListener:I = 0x2

.field static final blacklist TRANSACTION_transferData:I = 0x4

.field static final blacklist TRANSACTION_unregisterRestoreListener:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 48
    const-string v0, "miui.app.backup.IMiuiRestoreManager"

    invoke-virtual {p0, p0, v0}, Lmiui/app/backup/IMiuiRestoreManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lmiui/app/backup/IMiuiRestoreManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 56
    if-nez p0, :cond_4

    .line 57
    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_4
    const-string v0, "miui.app.backup.IMiuiRestoreManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 60
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/app/backup/IMiuiRestoreManager;

    if-eqz v1, :cond_14

    .line 61
    move-object v1, v0

    check-cast v1, Lmiui/app/backup/IMiuiRestoreManager;

    return-object v1

    .line 63
    :cond_14
    new-instance v1, Lmiui/app/backup/IMiuiRestoreManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/app/backup/IMiuiRestoreManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 67
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 30
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    const-string v14, "miui.app.backup.IMiuiRestoreManager"

    .line 72
    .local v14, "descriptor":Ljava/lang/String;
    const/4 v15, 0x1

    if-lt v11, v15, :cond_15

    const v0, 0xffffff

    if-gt v11, v0, :cond_15

    .line 73
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    :cond_15
    packed-switch v11, :pswitch_data_154

    .line 83
    packed-switch v11, :pswitch_data_15a

    .line 203
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 79
    :pswitch_20
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    return v15

    .line 180
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 182
    .local v9, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v16

    .line 184
    .local v16, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v17

    .line 186
    .local v17, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v18

    .line 188
    .local v18, "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v19

    .line 190
    .local v19, "_arg4":[Ljava/lang/String;
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/os/ParcelFileDescriptor;

    .line 192
    .local v20, "_arg5":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 194
    .local v21, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/backup/ITaskCommonCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/app/backup/ITaskCommonCallback;

    move-result-object v22

    .line 195
    .local v22, "_arg7":Lmiui/app/backup/ITaskCommonCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move/from16 v7, v21

    move-object/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Lmiui/app/backup/IMiuiRestoreManager$Stub;->backupAppData(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/os/ParcelFileDescriptor;ILmiui/app/backup/ITaskCommonCallback;)I

    move-result v0

    .line 197
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    goto/16 :goto_152

    .line 164
    .end local v0    # "_result":I
    .end local v9    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":[Ljava/lang/String;
    .end local v17    # "_arg2":[Ljava/lang/String;
    .end local v18    # "_arg3":[Ljava/lang/String;
    .end local v19    # "_arg4":[Ljava/lang/String;
    .end local v20    # "_arg5":Landroid/os/ParcelFileDescriptor;
    .end local v21    # "_arg6":I
    .end local v22    # "_arg7":Lmiui/app/backup/ITaskCommonCallback;
    :pswitch_6e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 166
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 168
    .local v7, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 170
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/backup/IListDirCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/app/backup/IListDirCallback;

    move-result-object v16

    .line 171
    .local v16, "_arg3":Lmiui/app/backup/IListDirCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 172
    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v7

    move v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lmiui/app/backup/IMiuiRestoreManager$Stub;->listDataDir(Ljava/lang/String;JILmiui/app/backup/IListDirCallback;)Z

    move-result v0

    .line 173
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 175
    goto/16 :goto_152

    .line 152
    .end local v0    # "_result":Z
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":J
    .end local v9    # "_arg2":I
    .end local v16    # "_arg3":Lmiui/app/backup/IListDirCallback;
    :pswitch_98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lmiui/app/backup/IGetFileInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/app/backup/IGetFileInfoCallback;

    move-result-object v1

    .line 155
    .local v1, "_arg1":Lmiui/app/backup/IGetFileInfoCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 156
    invoke-virtual {v10, v0, v1}, Lmiui/app/backup/IMiuiRestoreManager$Stub;->getDataFileInfo(Ljava/lang/String;Lmiui/app/backup/IGetFileInfoCallback;)Z

    move-result v2

    .line 157
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 159
    goto/16 :goto_152

    .line 126
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lmiui/app/backup/IGetFileInfoCallback;
    .end local v2    # "_result":Z
    :pswitch_b3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 128
    .local v16, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 130
    .local v17, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 132
    .local v18, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 134
    .local v19, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 136
    .local v20, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v21

    .line 138
    .local v21, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 140
    .local v22, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v23

    .line 142
    .local v23, "_arg7":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/backup/ITransferDataCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/app/backup/ITransferDataCallback;

    move-result-object v24

    .line 143
    .local v24, "_arg8":Lmiui/app/backup/ITransferDataCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move-object/from16 v9, v24

    invoke-virtual/range {v0 .. v9}, Lmiui/app/backup/IMiuiRestoreManager$Stub;->transferData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIZLmiui/app/backup/ITransferDataCallback;)Z

    move-result v0

    .line 145
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 147
    goto :goto_152

    .line 117
    .end local v0    # "_result":Z
    .end local v16    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v20    # "_arg4":I
    .end local v21    # "_arg5":Z
    .end local v22    # "_arg6":I
    .end local v23    # "_arg7":Z
    .end local v24    # "_arg8":Lmiui/app/backup/ITransferDataCallback;
    :pswitch_fd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/backup/IRestoreListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/app/backup/IRestoreListener;

    move-result-object v0

    .line 118
    .local v0, "_arg0":Lmiui/app/backup/IRestoreListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 119
    invoke-virtual {v10, v0}, Lmiui/app/backup/IMiuiRestoreManager$Stub;->unregisterRestoreListener(Lmiui/app/backup/IRestoreListener;)V

    .line 120
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    goto :goto_152

    .line 108
    .end local v0    # "_arg0":Lmiui/app/backup/IRestoreListener;
    :pswitch_10f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/backup/IRestoreListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/app/backup/IRestoreListener;

    move-result-object v0

    .line 109
    .restart local v0    # "_arg0":Lmiui/app/backup/IRestoreListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 110
    invoke-virtual {v10, v0}, Lmiui/app/backup/IMiuiRestoreManager$Stub;->registerRestoreListener(Lmiui/app/backup/IRestoreListener;)V

    .line 111
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    goto :goto_152

    .line 88
    .end local v0    # "_arg0":Lmiui/app/backup/IRestoreListener;
    :pswitch_121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 90
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 92
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 94
    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 96
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 98
    .local v17, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 99
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 100
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lmiui/app/backup/IMiuiRestoreManager$Stub;->moveData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)Z

    move-result v0

    .line 101
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 103
    nop

    .line 206
    .end local v0    # "_result":Z
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":Z
    .end local v18    # "_arg5":I
    :goto_152
    return v15

    nop

    :pswitch_data_154
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_15a
    .packed-switch 0x1
        :pswitch_121
        :pswitch_10f
        :pswitch_fd
        :pswitch_b3
        :pswitch_98
        :pswitch_6e
        :pswitch_24
    .end packed-switch
.end method
