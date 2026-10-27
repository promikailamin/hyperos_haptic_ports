.class public abstract Landroid/app/IAlarmManager$Stub;
.super Landroid/os/Binder;
.source "IAlarmManager.java"

# interfaces
.implements Landroid/app/IAlarmManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IAlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IAlarmManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.IAlarmManager"

.field static final blacklist TRANSACTION_canScheduleExactAlarms:I = 0x8

.field static final blacklist TRANSACTION_getConfigVersion:I = 0xa

.field static final greylist-max-o TRANSACTION_getNextAlarmClock:I = 0x7

.field static final greylist-max-o TRANSACTION_getNextWakeFromIdleTime:I = 0x6

.field static final blacklist TRANSACTION_hasScheduleExactAlarm:I = 0x9

.field static final greylist TRANSACTION_remove:I = 0x4

.field static final blacklist TRANSACTION_removeAll:I = 0x5

.field static final greylist TRANSACTION_set:I = 0x1

.field static final greylist-max-o TRANSACTION_setTime:I = 0x2

.field static final greylist-max-o TRANSACTION_setTimeZone:I = 0x3


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 78
    nop

    .line 79
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 78
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IAlarmManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 80
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 68
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 69
    const-string v0, "android.app.IAlarmManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IAlarmManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 70
    if-eqz p1, :cond_d

    .line 73
    iput-object p1, p0, Landroid/app/IAlarmManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 74
    return-void

    .line 71
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;
    .registers 3

    .line 87
    if-nez p0, :cond_4

    .line 88
    const/4 p0, 0x0

    return-object p0

    .line 90
    :cond_4
    const-string v0, "android.app.IAlarmManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/IAlarmManager;

    if-eqz v1, :cond_13

    .line 92
    check-cast v0, Landroid/app/IAlarmManager;

    return-object v0

    .line 94
    :cond_13
    new-instance v0, Landroid/app/IAlarmManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/IAlarmManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 103
    packed-switch p0, :pswitch_data_28

    .line 147
    const/4 p0, 0x0

    return-object p0

    .line 143
    :pswitch_5
    const-string p0, "getConfigVersion"

    return-object p0

    .line 139
    :pswitch_8
    const-string p0, "hasScheduleExactAlarm"

    return-object p0

    .line 135
    :pswitch_b
    const-string p0, "canScheduleExactAlarms"

    return-object p0

    .line 131
    :pswitch_e
    const-string p0, "getNextAlarmClock"

    return-object p0

    .line 127
    :pswitch_11
    const-string p0, "getNextWakeFromIdleTime"

    return-object p0

    .line 123
    :pswitch_14
    const-string/jumbo p0, "removeAll"

    return-object p0

    .line 119
    :pswitch_18
    const-string/jumbo p0, "remove"

    return-object p0

    .line 115
    :pswitch_1c
    const-string/jumbo p0, "setTimeZone"

    return-object p0

    .line 111
    :pswitch_20
    const-string/jumbo p0, "setTime"

    return-object p0

    .line 107
    :pswitch_24
    const-string/jumbo p0, "set"

    return-object p0

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 98
    return-object p0
.end method

.method protected blacklist getConfigVersion_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 506
    iget-object v0, p0, Landroid/app/IAlarmManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/IAlarmManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/IAlarmManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 507
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 511
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 154
    invoke-static {p1}, Landroid/app/IAlarmManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v15, p3

    .line 159
    const-string v3, "android.app.IAlarmManager"

    const/4 v4, 0x1

    if-lt v1, v4, :cond_15

    const v5, 0xffffff

    if-gt v1, v5, :cond_15

    .line 160
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    :cond_15
    const v5, 0x5f4e5446

    if-ne v1, v5, :cond_1e

    .line 163
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    return v4

    .line 166
    :cond_1e
    packed-switch v1, :pswitch_data_130

    .line 284
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 277
    :pswitch_26
    invoke-virtual {v0}, Landroid/app/IAlarmManager$Stub;->getConfigVersion()I

    move-result v0

    .line 278
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    move/from16 v16, v4

    goto/16 :goto_12f

    .line 266
    :pswitch_34
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 268
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 269
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-virtual {v0, v1, v3}, Landroid/app/IAlarmManager$Stub;->hasScheduleExactAlarm(Ljava/lang/String;I)Z

    move-result v0

    .line 271
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 273
    move/from16 v16, v4

    goto/16 :goto_12f

    .line 256
    :pswitch_4d
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 257
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    invoke-virtual {v0, v1}, Landroid/app/IAlarmManager$Stub;->canScheduleExactAlarms(Ljava/lang/String;)Z

    move-result v0

    .line 259
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 261
    move/from16 v16, v4

    goto/16 :goto_12f

    .line 246
    :pswitch_62
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 247
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {v0, v1}, Landroid/app/IAlarmManager$Stub;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    .line 249
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {v15, v0, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 251
    move/from16 v16, v4

    goto/16 :goto_12f

    .line 238
    :pswitch_77
    invoke-virtual {v0}, Landroid/app/IAlarmManager$Stub;->getNextWakeFromIdleTime()J

    move-result-wide v0

    .line 239
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {v15, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 241
    move/from16 v16, v4

    goto/16 :goto_12f

    .line 230
    :pswitch_85
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {v0, v1}, Landroid/app/IAlarmManager$Stub;->removeAll(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    move/from16 v16, v4

    goto/16 :goto_12f

    .line 219
    :pswitch_96
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 221
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/IAlarmListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmListener;

    move-result-object v3

    .line 222
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {v0, v1, v3}, Landroid/app/IAlarmManager$Stub;->remove(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 224
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    move/from16 v16, v4

    goto/16 :goto_12f

    .line 210
    :pswitch_b3
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {v0, v1}, Landroid/app/IAlarmManager$Stub;->setTimeZone(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    move/from16 v16, v4

    goto/16 :goto_12f

    .line 200
    :pswitch_c4
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 201
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 202
    invoke-virtual {v0, v5, v6}, Landroid/app/IAlarmManager$Stub;->setTime(J)Z

    move-result v0

    .line 203
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 205
    move/from16 v16, v4

    goto :goto_12f

    .line 171
    :pswitch_d8
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 175
    move v5, v3

    move v6, v4

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 177
    move v7, v5

    move v8, v6

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 179
    move v9, v7

    move v10, v8

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 181
    move v11, v9

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 183
    sget-object v12, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v12}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/PendingIntent;

    .line 185
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Landroid/app/IAlarmListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmListener;

    move-result-object v13

    .line 187
    move v14, v10

    move-object v10, v12

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 189
    sget-object v14, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v14}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/WorkSource;

    .line 191
    sget-object v0, Landroid/app/AlarmManager$AlarmClockInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 192
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    const/16 v16, 0x1

    move v2, v11

    move-object v11, v13

    move-object v13, v14

    move-object v14, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v14}, Landroid/app/IAlarmManager$Stub;->set(Ljava/lang/String;IJJJILandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 194
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    nop

    .line 287
    :goto_12f
    return v16

    :pswitch_data_130
    .packed-switch 0x1
        :pswitch_d8
        :pswitch_c4
        :pswitch_b3
        :pswitch_96
        :pswitch_85
        :pswitch_77
        :pswitch_62
        :pswitch_4d
        :pswitch_34
        :pswitch_26
    .end packed-switch
.end method

.method protected blacklist setTimeZone_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 495
    iget-object v0, p0, Landroid/app/IAlarmManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/IAlarmManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/IAlarmManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.SET_TIME_ZONE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 496
    return-void
.end method

.method protected blacklist setTime_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 490
    iget-object v0, p0, Landroid/app/IAlarmManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/IAlarmManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/IAlarmManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.SET_TIME"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 491
    return-void
.end method
