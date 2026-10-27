.class public abstract Landroid/app/IUriGrantsManager$Stub;
.super Landroid/os/Binder;
.source "IUriGrantsManager.java"

# interfaces
.implements Landroid/app/IUriGrantsManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IUriGrantsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IUriGrantsManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_checkGrantUriPermission_ignoreNonSystem:I = 0x7

.field static final blacklist TRANSACTION_clearGrantedUriPermissions:I = 0x5

.field static final blacklist TRANSACTION_getGrantedUriPermissions:I = 0x4

.field static final blacklist TRANSACTION_getUriPermissions:I = 0x6

.field static final blacklist TRANSACTION_grantUriPermissionFromOwner:I = 0x3

.field static final blacklist TRANSACTION_releasePersistableUriPermission:I = 0x2

.field static final blacklist TRANSACTION_takePersistableUriPermission:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 61
    const-string v0, "android.app.IUriGrantsManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IUriGrantsManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/IUriGrantsManager;
    .registers 3

    .line 69
    if-nez p0, :cond_4

    .line 70
    const/4 p0, 0x0

    return-object p0

    .line 72
    :cond_4
    const-string v0, "android.app.IUriGrantsManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/IUriGrantsManager;

    if-eqz v1, :cond_13

    .line 74
    check-cast v0, Landroid/app/IUriGrantsManager;

    return-object v0

    .line 76
    :cond_13
    new-instance v0, Landroid/app/IUriGrantsManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/IUriGrantsManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 85
    packed-switch p0, :pswitch_data_1c

    .line 117
    const/4 p0, 0x0

    return-object p0

    .line 113
    :pswitch_5
    const-string p0, "checkGrantUriPermission_ignoreNonSystem"

    return-object p0

    .line 109
    :pswitch_8
    const-string p0, "getUriPermissions"

    return-object p0

    .line 105
    :pswitch_b
    const-string p0, "clearGrantedUriPermissions"

    return-object p0

    .line 101
    :pswitch_e
    const-string p0, "getGrantedUriPermissions"

    return-object p0

    .line 97
    :pswitch_11
    const-string p0, "grantUriPermissionFromOwner"

    return-object p0

    .line 93
    :pswitch_14
    const-string/jumbo p0, "releasePersistableUriPermission"

    return-object p0

    .line 89
    :pswitch_18
    const-string/jumbo p0, "takePersistableUriPermission"

    return-object p0

    :pswitch_data_1c
    .packed-switch 0x1
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

    .line 80
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 417
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 124
    invoke-static {p1}, Landroid/app/IUriGrantsManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 128
    nop

    .line 129
    const-string v0, "android.app.IUriGrantsManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 130
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 133
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    return v1

    .line 136
    :cond_17
    packed-switch p1, :pswitch_data_fc

    .line 246
    move-object v2, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 229
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 233
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/net/Uri;

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/app/IUriGrantsManager$Stub;->checkGrantUriPermission_ignoreNonSystem(ILjava/lang/String;Landroid/net/Uri;II)I

    move-result p1

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    goto/16 :goto_fa

    .line 215
    :pswitch_49
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 221
    invoke-virtual {p0, p1, p4, v0}, Landroid/app/IUriGrantsManager$Stub;->getUriPermissions(Ljava/lang/String;ZZ)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 224
    goto/16 :goto_fa

    .line 204
    :pswitch_65
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 208
    invoke-virtual {p0, p1, p4}, Landroid/app/IUriGrantsManager$Stub;->clearGrantedUriPermissions(Ljava/lang/String;I)V

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    goto/16 :goto_fa

    .line 192
    :pswitch_79
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {p0, p1, p4}, Landroid/app/IUriGrantsManager$Stub;->getGrantedUriPermissions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 199
    goto :goto_fa

    .line 171
    :pswitch_90
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 177
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/net/Uri;

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual/range {v2 .. v9}, Landroid/app/IUriGrantsManager$Stub;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    goto :goto_fa

    .line 156
    :pswitch_bc
    move-object v2, p0

    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    invoke-virtual {p0, p1, p4, v0, v3}, Landroid/app/IUriGrantsManager$Stub;->releasePersistableUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    goto :goto_fa

    .line 141
    :pswitch_db
    move-object v2, p0

    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, p1, p4, v0, v3}, Landroid/app/IUriGrantsManager$Stub;->takePersistableUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    nop

    .line 249
    :goto_fa
    return v1

    nop

    :pswitch_data_fc
    .packed-switch 0x1
        :pswitch_db
        :pswitch_bc
        :pswitch_90
        :pswitch_79
        :pswitch_65
        :pswitch_49
        :pswitch_20
    .end packed-switch
.end method
