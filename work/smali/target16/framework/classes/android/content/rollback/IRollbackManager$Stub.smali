.class public abstract Landroid/content/rollback/IRollbackManager$Stub;
.super Landroid/os/Binder;
.source "IRollbackManager.java"

# interfaces
.implements Landroid/content/rollback/IRollbackManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/rollback/IRollbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/rollback/IRollbackManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_blockRollbackManager:I = 0x8

.field static final blacklist TRANSACTION_commitRollback:I = 0x3

.field static final blacklist TRANSACTION_expireRollbackForPackage:I = 0x6

.field static final blacklist TRANSACTION_getAvailableRollbacks:I = 0x1

.field static final blacklist TRANSACTION_getRecentlyCommittedRollbacks:I = 0x2

.field static final blacklist TRANSACTION_notifyStagedSession:I = 0x7

.field static final blacklist TRANSACTION_reloadPersistedData:I = 0x5

.field static final blacklist TRANSACTION_snapshotAndRestoreUserData:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 67
    const-string v0, "android.content.rollback.IRollbackManager"

    invoke-virtual {p0, p0, v0}, Landroid/content/rollback/IRollbackManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/content/rollback/IRollbackManager;
    .registers 3

    .line 75
    if-nez p0, :cond_4

    .line 76
    const/4 p0, 0x0

    return-object p0

    .line 78
    :cond_4
    const-string v0, "android.content.rollback.IRollbackManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/content/rollback/IRollbackManager;

    if-eqz v1, :cond_13

    .line 80
    check-cast v0, Landroid/content/rollback/IRollbackManager;

    return-object v0

    .line 82
    :cond_13
    new-instance v0, Landroid/content/rollback/IRollbackManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/content/rollback/IRollbackManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 91
    packed-switch p0, :pswitch_data_20

    .line 127
    const/4 p0, 0x0

    return-object p0

    .line 123
    :pswitch_5
    const-string p0, "blockRollbackManager"

    return-object p0

    .line 119
    :pswitch_8
    const-string/jumbo p0, "notifyStagedSession"

    return-object p0

    .line 115
    :pswitch_c
    const-string p0, "expireRollbackForPackage"

    return-object p0

    .line 111
    :pswitch_f
    const-string/jumbo p0, "reloadPersistedData"

    return-object p0

    .line 107
    :pswitch_13
    const-string/jumbo p0, "snapshotAndRestoreUserData"

    return-object p0

    .line 103
    :pswitch_17
    const-string p0, "commitRollback"

    return-object p0

    .line 99
    :pswitch_1a
    const-string p0, "getRecentlyCommittedRollbacks"

    return-object p0

    .line 95
    :pswitch_1d
    const-string p0, "getAvailableRollbacks"

    return-object p0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 86
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 410
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 134
    invoke-static {p1}, Landroid/content/rollback/IRollbackManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    nop

    .line 139
    const-string v0, "android.content.rollback.IRollbackManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 140
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 143
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    return v1

    .line 146
    :cond_17
    packed-switch p1, :pswitch_data_b6

    .line 232
    move-object v2, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 224
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 226
    invoke-virtual {p0, v2, v3}, Landroid/content/rollback/IRollbackManager$Stub;->blockRollbackManager(J)V

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    goto/16 :goto_b5

    .line 214
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 216
    invoke-virtual {p0, p1}, Landroid/content/rollback/IRollbackManager$Stub;->notifyStagedSession(I)I

    move-result p1

    .line 217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    goto/16 :goto_b5

    .line 205
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {p0, p1}, Landroid/content/rollback/IRollbackManager$Stub;->expireRollbackForPackage(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    goto :goto_b5

    .line 198
    :pswitch_50
    invoke-virtual {p0}, Landroid/content/rollback/IRollbackManager$Stub;->reloadPersistedData()V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    goto :goto_b5

    .line 180
    :pswitch_57
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/content/rollback/IRollbackManager$Stub;->snapshotAndRestoreUserData(Ljava/lang/String;[IIJLjava/lang/String;I)V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    goto :goto_b5

    .line 165
    :pswitch_7a
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 167
    sget-object p4, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/pm/ParceledListSlice;

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 171
    sget-object v3, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentSender;

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-virtual {p0, p1, p4, v0, v3}, Landroid/content/rollback/IRollbackManager$Stub;->commitRollback(ILandroid/content/pm/ParceledListSlice;Ljava/lang/String;Landroid/content/IntentSender;)V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    goto :goto_b5

    .line 157
    :pswitch_9d
    move-object v2, p0

    invoke-virtual {p0}, Landroid/content/rollback/IRollbackManager$Stub;->getRecentlyCommittedRollbacks()Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 160
    goto :goto_b5

    .line 150
    :pswitch_a9
    move-object v2, p0

    invoke-virtual {p0}, Landroid/content/rollback/IRollbackManager$Stub;->getAvailableRollbacks()Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 153
    nop

    .line 235
    :goto_b5
    return v1

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_a9
        :pswitch_9d
        :pswitch_7a
        :pswitch_57
        :pswitch_50
        :pswitch_42
        :pswitch_2f
        :pswitch_20
    .end packed-switch
.end method
