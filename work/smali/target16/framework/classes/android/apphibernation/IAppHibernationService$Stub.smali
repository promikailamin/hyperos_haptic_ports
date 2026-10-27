.class public abstract Landroid/apphibernation/IAppHibernationService$Stub;
.super Landroid/os/Binder;
.source "IAppHibernationService.java"

# interfaces
.implements Landroid/apphibernation/IAppHibernationService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/apphibernation/IAppHibernationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/apphibernation/IAppHibernationService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getHibernatingPackagesForUser:I = 0x5

.field static final blacklist TRANSACTION_getHibernationStatsForUser:I = 0x6

.field static final blacklist TRANSACTION_isHibernatingForUser:I = 0x1

.field static final blacklist TRANSACTION_isHibernatingGlobally:I = 0x3

.field static final blacklist TRANSACTION_isOatArtifactDeletionEnabled:I = 0x7

.field static final blacklist TRANSACTION_setHibernatingForUser:I = 0x2

.field static final blacklist TRANSACTION_setHibernatingGlobally:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 57
    const-string v0, "android.apphibernation.IAppHibernationService"

    invoke-virtual {p0, p0, v0}, Landroid/apphibernation/IAppHibernationService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/apphibernation/IAppHibernationService;
    .registers 3

    .line 65
    if-nez p0, :cond_4

    .line 66
    const/4 p0, 0x0

    return-object p0

    .line 68
    :cond_4
    const-string v0, "android.apphibernation.IAppHibernationService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/apphibernation/IAppHibernationService;

    if-eqz v1, :cond_13

    .line 70
    check-cast v0, Landroid/apphibernation/IAppHibernationService;

    return-object v0

    .line 72
    :cond_13
    new-instance v0, Landroid/apphibernation/IAppHibernationService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/apphibernation/IAppHibernationService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 81
    packed-switch p0, :pswitch_data_1c

    .line 113
    const/4 p0, 0x0

    return-object p0

    .line 109
    :pswitch_5
    const-string p0, "isOatArtifactDeletionEnabled"

    return-object p0

    .line 105
    :pswitch_8
    const-string p0, "getHibernationStatsForUser"

    return-object p0

    .line 101
    :pswitch_b
    const-string p0, "getHibernatingPackagesForUser"

    return-object p0

    .line 97
    :pswitch_e
    const-string/jumbo p0, "setHibernatingGlobally"

    return-object p0

    .line 93
    :pswitch_12
    const-string p0, "isHibernatingGlobally"

    return-object p0

    .line 89
    :pswitch_15
    const-string/jumbo p0, "setHibernatingForUser"

    return-object p0

    .line 85
    :pswitch_19
    const-string p0, "isHibernatingForUser"

    return-object p0

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_19
        :pswitch_15
        :pswitch_12
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic blacklist lambda$onTransact$0(Landroid/os/Parcel;Ljava/lang/String;Landroid/apphibernation/HibernationStats;)V
    .registers 3

    .line 204
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 206
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 76
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 383
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 120
    invoke-static {p1}, Landroid/apphibernation/IAppHibernationService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    nop

    .line 125
    const-string v0, "android.apphibernation.IAppHibernationService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 126
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 129
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    return v1

    .line 132
    :cond_17
    packed-switch p1, :pswitch_data_b8

    .line 219
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 212
    :pswitch_1f
    invoke-virtual {p0}, Landroid/apphibernation/IAppHibernationService$Stub;->isOatArtifactDeletionEnabled()Z

    move-result p1

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 215
    goto/16 :goto_b6

    .line 193
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {p0, p1, p4}, Landroid/apphibernation/IAppHibernationService$Stub;->getHibernationStatsForUser(Ljava/util/List;I)Ljava/util/Map;

    move-result-object p1

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    if-nez p1, :cond_44

    .line 200
    const/4 p1, -0x1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b6

    .line 202
    :cond_44
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    new-instance p2, Landroid/apphibernation/IAppHibernationService$Stub$$ExternalSyntheticLambda0;

    invoke-direct {p2, p3}, Landroid/apphibernation/IAppHibernationService$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;)V

    invoke-interface {p1, p2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 208
    goto :goto_b6

    .line 183
    :pswitch_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, p1}, Landroid/apphibernation/IAppHibernationService$Stub;->getHibernatingPackagesForUser(I)Ljava/util/List;

    move-result-object p1

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 188
    goto :goto_b6

    .line 172
    :pswitch_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-virtual {p0, p1, p4}, Landroid/apphibernation/IAppHibernationService$Stub;->setHibernatingGlobally(Ljava/lang/String;Z)V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    goto :goto_b6

    .line 162
    :pswitch_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    invoke-virtual {p0, p1}, Landroid/apphibernation/IAppHibernationService$Stub;->isHibernatingGlobally(Ljava/lang/String;)Z

    move-result p1

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 167
    goto :goto_b6

    .line 149
    :pswitch_8a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {p0, p1, p4, v0}, Landroid/apphibernation/IAppHibernationService$Stub;->setHibernatingForUser(Ljava/lang/String;IZ)V

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    goto :goto_b6

    .line 137
    :pswitch_a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-virtual {p0, p1, p4}, Landroid/apphibernation/IAppHibernationService$Stub;->isHibernatingForUser(Ljava/lang/String;I)Z

    move-result p1

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 144
    nop

    .line 222
    :goto_b6
    return v1

    nop

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_a0
        :pswitch_8a
        :pswitch_78
        :pswitch_66
        :pswitch_54
        :pswitch_2b
        :pswitch_1f
    .end packed-switch
.end method
