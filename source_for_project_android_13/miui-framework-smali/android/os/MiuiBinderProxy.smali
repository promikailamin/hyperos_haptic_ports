.class public final Landroid/os/MiuiBinderProxy;
.super Ljava/lang/Object;
.source "MiuiBinderProxy.java"


# instance fields
.field private blacklist TAG:Ljava/lang/String;

.field private blacklist mDescriptor:Ljava/lang/String;

.field private blacklist mService:Landroid/os/IBinder;


# direct methods
.method public constructor blacklist <init>(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 4
    .param p1, "service"    # Landroid/os/IBinder;
    .param p2, "interfaceDescriptor"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "MiuiBinderProxy"

    iput-object v0, p0, Landroid/os/MiuiBinderProxy;->TAG:Ljava/lang/String;

    .line 16
    iput-object p1, p0, Landroid/os/MiuiBinderProxy;->mService:Landroid/os/IBinder;

    .line 17
    iput-object p2, p0, Landroid/os/MiuiBinderProxy;->mDescriptor:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public varargs blacklist callNonOneWayTransact(I[Ljava/lang/Object;)I
    .registers 5
    .param p1, "transactId"    # I
    .param p2, "params"    # [Ljava/lang/Object;

    .line 30
    const-class v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Landroid/os/MiuiBinderProxy;->callTransact(IILjava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 31
    .local v0, "result":Ljava/lang/Object;
    if-nez v0, :cond_b

    const/4 v1, -0x1

    goto :goto_12

    :cond_b
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_12
    return v1
.end method

.method public varargs blacklist callNonOneWayTransact(ILjava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "transactId"    # I
    .param p3, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 26
    .local p2, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/os/MiuiBinderProxy;->callTransact(IILjava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs blacklist callOneWayTransact(I[Ljava/lang/Object;)I
    .registers 5
    .param p1, "transactId"    # I
    .param p2, "params"    # [Ljava/lang/Object;

    .line 21
    const-class v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0, p2}, Landroid/os/MiuiBinderProxy;->callTransact(IILjava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    .local v0, "result":Ljava/lang/Object;
    if-nez v0, :cond_b

    const/4 v1, -0x1

    goto :goto_12

    :cond_b
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_12
    return v1
.end method

.method public varargs blacklist callTransact(IILjava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 26
    .param p1, "transactId"    # I
    .param p2, "flag"    # I
    .param p4, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 35
    .local p3, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 36
    .local v4, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 37
    .local v5, "reply":Landroid/os/Parcel;
    const/4 v6, 0x0

    .line 39
    .local v6, "result":Ljava/lang/Object;
    :try_start_f
    iget-object v0, v1, Landroid/os/MiuiBinderProxy;->mDescriptor:Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 40
    array-length v0, v3
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_15} :catch_202
    .catchall {:try_start_f .. :try_end_15} :catchall_1fe

    const/4 v8, 0x0

    :goto_16
    const-string v15, "java.io.FileDescriptor"

    const-string v7, "java.lang.String"

    const-string v9, "java.lang.Double"

    const-string v10, "java.lang.Long"

    const-string v11, "java.lang.Boolean"

    const-string v12, "java.lang.Float"

    const-string v13, "java.lang.CharSequence"

    const-string v14, "java.lang.Integer"

    const/16 v16, -0x1

    const/16 v17, 0x1

    if-ge v8, v0, :cond_11a

    :try_start_2c
    aget-object v18, v3, v8

    move-object/from16 v19, v18

    .line 41
    .local v19, "param":Ljava/lang/Object;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_23e

    :cond_41
    goto :goto_83

    :sswitch_42
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    const/4 v9, 0x7

    goto :goto_85

    :sswitch_4a
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    move/from16 v9, v17

    goto :goto_85

    :sswitch_53
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    const/4 v9, 0x5

    goto :goto_85

    :sswitch_5b
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    const/4 v9, 0x3

    goto :goto_85

    :sswitch_63
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    const/4 v9, 0x2

    goto :goto_85

    :sswitch_6b
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    const/4 v9, 0x4

    goto :goto_85

    :sswitch_73
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    const/4 v9, 0x6

    goto :goto_85

    :sswitch_7b
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    const/4 v9, 0x0

    goto :goto_85

    :goto_83
    move/from16 v9, v16

    :goto_85
    packed-switch v9, :pswitch_data_260

    .line 67
    move-object/from16 v0, v19

    .end local v19    # "param":Ljava/lang/Object;
    .local v0, "param":Ljava/lang/Object;
    instance-of v7, v0, Landroid/os/IBinder;

    goto :goto_eb

    .line 64
    .end local v0    # "param":Ljava/lang/Object;
    .restart local v19    # "param":Ljava/lang/Object;
    :pswitch_8d
    move-object/from16 v0, v19

    .end local v19    # "param":Ljava/lang/Object;
    .restart local v0    # "param":Ljava/lang/Object;
    move-object v7, v0

    check-cast v7, Ljava/io/FileDescriptor;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 65
    goto/16 :goto_114

    .line 61
    .end local v0    # "param":Ljava/lang/Object;
    .restart local v19    # "param":Ljava/lang/Object;
    :pswitch_97
    move-object/from16 v0, v19

    .end local v19    # "param":Ljava/lang/Object;
    .restart local v0    # "param":Ljava/lang/Object;
    move-object v7, v0

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 62
    goto/16 :goto_114

    .line 58
    .end local v0    # "param":Ljava/lang/Object;
    .restart local v19    # "param":Ljava/lang/Object;
    :pswitch_a1
    move-object/from16 v0, v19

    .end local v19    # "param":Ljava/lang/Object;
    .restart local v0    # "param":Ljava/lang/Object;
    move-object v7, v0

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Landroid/os/Parcel;->writeDouble(D)V

    .line 59
    goto :goto_114

    .line 55
    .end local v0    # "param":Ljava/lang/Object;
    .restart local v19    # "param":Ljava/lang/Object;
    :pswitch_ae
    move-object/from16 v0, v19

    .end local v19    # "param":Ljava/lang/Object;
    .restart local v0    # "param":Ljava/lang/Object;
    move-object v7, v0

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeFloat(F)V

    .line 56
    goto :goto_114

    .line 52
    .end local v0    # "param":Ljava/lang/Object;
    .restart local v19    # "param":Ljava/lang/Object;
    :pswitch_bb
    move-object/from16 v0, v19

    .end local v19    # "param":Ljava/lang/Object;
    .restart local v0    # "param":Ljava/lang/Object;
    move-object v7, v0

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 53
    goto :goto_114

    .line 49
    .end local v0    # "param":Ljava/lang/Object;
    .restart local v19    # "param":Ljava/lang/Object;
    :pswitch_c8
    move-object/from16 v0, v19

    .end local v19    # "param":Ljava/lang/Object;
    .restart local v0    # "param":Ljava/lang/Object;
    move-object v7, v0

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 50
    goto :goto_114

    .line 46
    .end local v0    # "param":Ljava/lang/Object;
    .restart local v19    # "param":Ljava/lang/Object;
    :pswitch_d5
    move-object/from16 v0, v19

    .end local v19    # "param":Ljava/lang/Object;
    .restart local v0    # "param":Ljava/lang/Object;
    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    goto :goto_114

    .line 43
    .end local v0    # "param":Ljava/lang/Object;
    .restart local v19    # "param":Ljava/lang/Object;
    :pswitch_de
    move-object/from16 v0, v19

    .end local v19    # "param":Ljava/lang/Object;
    .restart local v0    # "param":Ljava/lang/Object;
    move-object v7, v0

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    goto :goto_114

    .line 67
    :goto_eb
    if-eqz v7, :cond_f4

    .line 68
    move-object v7, v0

    check-cast v7, Landroid/os/IBinder;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 69
    goto :goto_114

    .line 71
    :cond_f4
    iget-object v7, v1, Landroid/os/MiuiBinderProxy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "callBinderTransact not support param type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .end local v0    # "param":Ljava/lang/Object;
    :goto_114
    add-int/lit8 v8, v8, 0x1

    move/from16 v0, v20

    goto/16 :goto_16

    .line 75
    :cond_11a
    iget-object v0, v1, Landroid/os/MiuiBinderProxy;->mService:Landroid/os/IBinder;
    :try_end_11c
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_11c} :catch_202
    .catchall {:try_start_2c .. :try_end_11c} :catchall_1fe

    if-eqz v0, :cond_1f4

    move/from16 v8, p2

    :try_start_120
    invoke-interface {v0, v2, v4, v5, v8}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-eqz v0, :cond_1f6

    .line 76
    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V

    .line 77
    if-eqz p3, :cond_1f6

    .line 78
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_274

    :cond_136
    goto :goto_183

    :sswitch_137
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_136

    const/4 v7, 0x7

    goto :goto_185

    :sswitch_13f
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_136

    move/from16 v7, v17

    goto :goto_185

    :sswitch_148
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_136

    const/4 v7, 0x5

    goto :goto_185

    :sswitch_150
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_136

    const/4 v7, 0x3

    goto :goto_185

    :sswitch_158
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_136

    const/4 v7, 0x2

    goto :goto_185

    :sswitch_160
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_136

    const/4 v7, 0x4

    goto :goto_185

    :sswitch_168
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_136

    const/4 v7, 0x6

    goto :goto_185

    :sswitch_170
    const-string v7, "android.os.IBinder"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_136

    const/16 v7, 0x8

    goto :goto_185

    :sswitch_17b
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_136

    const/4 v7, 0x0

    goto :goto_185

    :goto_183
    move/from16 v7, v16

    :goto_185
    packed-switch v7, :pswitch_data_29a

    .line 107
    iget-object v0, v1, Landroid/os/MiuiBinderProxy;->TAG:Ljava/lang/String;

    goto :goto_1d7

    .line 104
    :pswitch_18b
    invoke-virtual {v5}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 105
    .end local v6    # "result":Ljava/lang/Object;
    .local v0, "result":Ljava/lang/Object;
    move-object v6, v0

    goto/16 :goto_1f6

    .line 101
    .end local v0    # "result":Ljava/lang/Object;
    .restart local v6    # "result":Ljava/lang/Object;
    :pswitch_192
    invoke-virtual {v5}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 102
    .end local v6    # "result":Ljava/lang/Object;
    .restart local v0    # "result":Ljava/lang/Object;
    move-object v6, v0

    goto/16 :goto_1f6

    .line 98
    .end local v0    # "result":Ljava/lang/Object;
    .restart local v6    # "result":Ljava/lang/Object;
    :pswitch_199
    invoke-virtual {v5}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    .line 99
    .end local v6    # "result":Ljava/lang/Object;
    .restart local v0    # "result":Ljava/lang/Object;
    move-object v6, v0

    goto :goto_1f6

    .line 95
    .end local v0    # "result":Ljava/lang/Object;
    .restart local v6    # "result":Ljava/lang/Object;
    :pswitch_19f
    invoke-virtual {v5}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 96
    .end local v6    # "result":Ljava/lang/Object;
    .restart local v0    # "result":Ljava/lang/Object;
    move-object v6, v0

    goto :goto_1f6

    .line 92
    .end local v0    # "result":Ljava/lang/Object;
    .restart local v6    # "result":Ljava/lang/Object;
    :pswitch_1a9
    invoke-virtual {v5}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 93
    .end local v6    # "result":Ljava/lang/Object;
    .restart local v0    # "result":Ljava/lang/Object;
    move-object v6, v0

    goto :goto_1f6

    .line 89
    .end local v0    # "result":Ljava/lang/Object;
    .restart local v6    # "result":Ljava/lang/Object;
    :pswitch_1b3
    invoke-virtual {v5}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 90
    .end local v6    # "result":Ljava/lang/Object;
    .restart local v0    # "result":Ljava/lang/Object;
    move-object v6, v0

    goto :goto_1f6

    .line 86
    .end local v0    # "result":Ljava/lang/Object;
    .restart local v6    # "result":Ljava/lang/Object;
    :pswitch_1bd
    invoke-virtual {v5}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 87
    .end local v6    # "result":Ljava/lang/Object;
    .restart local v0    # "result":Ljava/lang/Object;
    move-object v6, v0

    goto :goto_1f6

    .line 83
    .end local v0    # "result":Ljava/lang/Object;
    .restart local v6    # "result":Ljava/lang/Object;
    :pswitch_1c7
    invoke-virtual {v5}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .end local v6    # "result":Ljava/lang/Object;
    .restart local v0    # "result":Ljava/lang/Object;
    move-object v6, v0

    goto :goto_1f6

    .line 80
    .end local v0    # "result":Ljava/lang/Object;
    .restart local v6    # "result":Ljava/lang/Object;
    :pswitch_1cd
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 81
    .end local v6    # "result":Ljava/lang/Object;
    .restart local v0    # "result":Ljava/lang/Object;
    move-object v6, v0

    goto :goto_1f6

    .line 107
    .end local v0    # "result":Ljava/lang/Object;
    .restart local v6    # "result":Ljava/lang/Object;
    :goto_1d7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "callBinderTransact not support result type "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f1
    .catch Landroid/os/RemoteException; {:try_start_120 .. :try_end_1f1} :catch_1f2
    .catchall {:try_start_120 .. :try_end_1f1} :catchall_236

    goto :goto_1f6

    .line 112
    :catch_1f2
    move-exception v0

    goto :goto_205

    .line 75
    :cond_1f4
    move/from16 v8, p2

    .line 115
    :cond_1f6
    :goto_1f6
    nop

    :goto_1f7
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 116
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 117
    goto :goto_235

    .line 115
    :catchall_1fe
    move-exception v0

    move/from16 v8, p2

    goto :goto_237

    .line 112
    :catch_202
    move-exception v0

    move/from16 v8, p2

    .line 113
    .local v0, "e":Landroid/os/RemoteException;
    :goto_205
    :try_start_205
    iget-object v7, v1, Landroid/os/MiuiBinderProxy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "callBinderTransact "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Landroid/os/MiuiBinderProxy;->mDescriptor:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " failed. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_233
    .catchall {:try_start_205 .. :try_end_233} :catchall_236

    .line 115
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1f7

    .line 118
    :goto_235
    return-object v6

    .line 115
    :catchall_236
    move-exception v0

    :goto_237
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 116
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 117
    throw v0

    :sswitch_data_23e
    .sparse-switch
        -0x7a988a96 -> :sswitch_7b
        -0x3f507f75 -> :sswitch_73
        -0x1f76ce78 -> :sswitch_6b
        0x148d6054 -> :sswitch_63
        0x17c521d0 -> :sswitch_5b
        0x2d605225 -> :sswitch_53
        0x473e3665 -> :sswitch_4a
        0x64d0e727 -> :sswitch_42
    .end sparse-switch

    :pswitch_data_260
    .packed-switch 0x0
        :pswitch_de
        :pswitch_d5
        :pswitch_c8
        :pswitch_bb
        :pswitch_ae
        :pswitch_a1
        :pswitch_97
        :pswitch_8d
    .end packed-switch

    :sswitch_data_274
    .sparse-switch
        -0x7a988a96 -> :sswitch_17b
        -0x785941d8 -> :sswitch_170
        -0x3f507f75 -> :sswitch_168
        -0x1f76ce78 -> :sswitch_160
        0x148d6054 -> :sswitch_158
        0x17c521d0 -> :sswitch_150
        0x2d605225 -> :sswitch_148
        0x473e3665 -> :sswitch_13f
        0x64d0e727 -> :sswitch_137
    .end sparse-switch

    :pswitch_data_29a
    .packed-switch 0x0
        :pswitch_1cd
        :pswitch_1c7
        :pswitch_1bd
        :pswitch_1b3
        :pswitch_1a9
        :pswitch_19f
        :pswitch_199
        :pswitch_192
        :pswitch_18b
    .end packed-switch
.end method
