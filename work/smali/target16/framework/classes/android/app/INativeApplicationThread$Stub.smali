.class public abstract Landroid/app/INativeApplicationThread$Stub;
.super Landroid/os/Binder;
.source "INativeApplicationThread.java"

# interfaces
.implements Landroid/app/INativeApplicationThread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/INativeApplicationThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/INativeApplicationThread$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_bindApplication:I = 0x6

.field static final blacklist TRANSACTION_scheduleBindService:I = 0x3

.field static final blacklist TRANSACTION_scheduleCreateService:I = 0x1

.field static final blacklist TRANSACTION_scheduleDestroyService:I = 0x2

.field static final blacklist TRANSACTION_scheduleTrimMemory:I = 0x5

.field static final blacklist TRANSACTION_scheduleUnbindService:I = 0x4

.field static final blacklist TRANSACTION_setProcessState:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 55
    const-string v0, "android.app.INativeApplicationThread"

    invoke-virtual {p0, p0, v0}, Landroid/app/INativeApplicationThread$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/INativeApplicationThread;
    .registers 3

    .line 63
    if-nez p0, :cond_4

    .line 64
    const/4 p0, 0x0

    return-object p0

    .line 66
    :cond_4
    const-string v0, "android.app.INativeApplicationThread"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/INativeApplicationThread;

    if-eqz v1, :cond_13

    .line 68
    check-cast v0, Landroid/app/INativeApplicationThread;

    return-object v0

    .line 70
    :cond_13
    new-instance v0, Landroid/app/INativeApplicationThread$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/INativeApplicationThread$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 79
    packed-switch p0, :pswitch_data_20

    .line 111
    const/4 p0, 0x0

    return-object p0

    .line 107
    :pswitch_5
    const-string/jumbo p0, "setProcessState"

    return-object p0

    .line 103
    :pswitch_9
    const-string p0, "bindApplication"

    return-object p0

    .line 99
    :pswitch_c
    const-string/jumbo p0, "scheduleTrimMemory"

    return-object p0

    .line 95
    :pswitch_10
    const-string/jumbo p0, "scheduleUnbindService"

    return-object p0

    .line 91
    :pswitch_14
    const-string/jumbo p0, "scheduleBindService"

    return-object p0

    .line 87
    :pswitch_18
    const-string/jumbo p0, "scheduleDestroyService"

    return-object p0

    .line 83
    :pswitch_1c
    const-string/jumbo p0, "scheduleCreateService"

    return-object p0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 74
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 343
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 118
    invoke-static {p1}, Landroid/app/INativeApplicationThread$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    nop

    .line 123
    const-string v2, "android.app.INativeApplicationThread"

    const/4 v10, 0x1

    if-lt p1, v10, :cond_e

    const v3, 0xffffff

    if-gt p1, v3, :cond_e

    .line 124
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    :cond_e
    const v4, 0x5f4e5446

    if-ne p1, v4, :cond_17

    .line 127
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    return v10

    .line 130
    :cond_17
    packed-switch p1, :pswitch_data_a2

    .line 215
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 208
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    invoke-virtual {p0, v1}, Landroid/app/INativeApplicationThread$Stub;->setProcessState(I)V

    .line 211
    goto/16 :goto_a1

    .line 202
    :pswitch_2b
    invoke-virtual {p0}, Landroid/app/INativeApplicationThread$Stub;->bindApplication()V

    .line 203
    goto/16 :goto_a1

    .line 195
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {p0, v1}, Landroid/app/INativeApplicationThread$Stub;->scheduleTrimMemory(I)V

    .line 198
    goto :goto_a1

    .line 183
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-virtual {p0, v1, v2, v4}, Landroid/app/INativeApplicationThread$Stub;->scheduleUnbindService(Landroid/os/IBinder;Landroid/os/IBinder;I)V

    .line 190
    goto :goto_a1

    .line 161
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/app/INativeApplicationThread$Stub;->scheduleBindService(Landroid/os/IBinder;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZIJ)V

    .line 178
    goto :goto_a1

    .line 153
    :pswitch_76
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {p0, v1}, Landroid/app/INativeApplicationThread$Stub;->scheduleDestroyService(Landroid/os/IBinder;)V

    .line 156
    goto :goto_a1

    .line 135
    :pswitch_81
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/INativeApplicationThread$Stub;->scheduleCreateService(Landroid/os/IBinder;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 148
    nop

    .line 218
    :goto_a1
    return v10

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_81
        :pswitch_76
        :pswitch_4e
        :pswitch_3b
        :pswitch_30
        :pswitch_2b
        :pswitch_1f
    .end packed-switch
.end method
