.class public abstract Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;
.super Landroid/os/Binder;
.source "IDomainVerificationManager.java"

# interfaces
.implements Landroid/content/pm/verify/domain/IDomainVerificationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/verify/domain/IDomainVerificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getDomainVerificationInfo:I = 0x2

.field static final blacklist TRANSACTION_getDomainVerificationUserState:I = 0x3

.field static final blacklist TRANSACTION_getOwnersForDomain:I = 0x4

.field static final blacklist TRANSACTION_getUriRelativeFilterGroups:I = 0x9

.field static final blacklist TRANSACTION_queryValidVerificationPackageNames:I = 0x1

.field static final blacklist TRANSACTION_setDomainVerificationLinkHandlingAllowed:I = 0x6

.field static final blacklist TRANSACTION_setDomainVerificationStatus:I = 0x5

.field static final blacklist TRANSACTION_setDomainVerificationUserSelection:I = 0x7

.field static final blacklist TRANSACTION_setUriRelativeFilterGroups:I = 0x8


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 65
    const-string v0, "android.content.pm.verify.domain.IDomainVerificationManager"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/content/pm/verify/domain/IDomainVerificationManager;
    .registers 3

    .line 73
    if-nez p0, :cond_4

    .line 74
    const/4 p0, 0x0

    return-object p0

    .line 76
    :cond_4
    const-string v0, "android.content.pm.verify.domain.IDomainVerificationManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/content/pm/verify/domain/IDomainVerificationManager;

    if-eqz v1, :cond_13

    .line 78
    check-cast v0, Landroid/content/pm/verify/domain/IDomainVerificationManager;

    return-object v0

    .line 80
    :cond_13
    new-instance v0, Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 89
    packed-switch p0, :pswitch_data_26

    .line 129
    const/4 p0, 0x0

    return-object p0

    .line 125
    :pswitch_5
    const-string p0, "getUriRelativeFilterGroups"

    return-object p0

    .line 121
    :pswitch_8
    const-string/jumbo p0, "setUriRelativeFilterGroups"

    return-object p0

    .line 117
    :pswitch_c
    const-string/jumbo p0, "setDomainVerificationUserSelection"

    return-object p0

    .line 113
    :pswitch_10
    const-string/jumbo p0, "setDomainVerificationLinkHandlingAllowed"

    return-object p0

    .line 109
    :pswitch_14
    const-string/jumbo p0, "setDomainVerificationStatus"

    return-object p0

    .line 105
    :pswitch_18
    const-string p0, "getOwnersForDomain"

    return-object p0

    .line 101
    :pswitch_1b
    const-string p0, "getDomainVerificationUserState"

    return-object p0

    .line 97
    :pswitch_1e
    const-string p0, "getDomainVerificationInfo"

    return-object p0

    .line 93
    :pswitch_21
    const-string/jumbo p0, "queryValidVerificationPackageNames"

    return-object p0

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 84
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 458
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 136
    invoke-static {p1}, Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 140
    nop

    .line 141
    const-string v0, "android.content.pm.verify.domain.IDomainVerificationManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 142
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 145
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    return v1

    .line 148
    :cond_17
    packed-switch p1, :pswitch_data_ee

    .line 259
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 248
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p4

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 252
    invoke-virtual {p0, p1, p4}, Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;->getUriRelativeFilterGroups(Ljava/lang/String;Ljava/util/List;)Landroid/os/Bundle;

    move-result-object p1

    .line 253
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 255
    goto/16 :goto_ed

    .line 237
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 239
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 241
    invoke-virtual {p0, p1, p4}, Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;->setUriRelativeFilterGroups(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    goto/16 :goto_ed

    .line 221
    :pswitch_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 223
    sget-object p4, Landroid/content/pm/verify/domain/DomainSet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/pm/verify/domain/DomainSet;

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;->setDomainVerificationUserSelection(Ljava/lang/String;Landroid/content/pm/verify/domain/DomainSet;ZI)I

    move-result p1

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    goto/16 :goto_ed

    .line 208
    :pswitch_70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-virtual {p0, p1, p4, v0}, Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;->setDomainVerificationLinkHandlingAllowed(Ljava/lang/String;ZI)V

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    goto :goto_ed

    .line 194
    :pswitch_86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 196
    sget-object p4, Landroid/content/pm/verify/domain/DomainSet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/pm/verify/domain/DomainSet;

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 200
    invoke-virtual {p0, p1, p4, v0}, Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;->setDomainVerificationStatus(Ljava/lang/String;Landroid/content/pm/verify/domain/DomainSet;I)I

    move-result p1

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    goto :goto_ed

    .line 182
    :pswitch_a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-virtual {p0, p1, p4}, Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;->getOwnersForDomain(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 189
    goto :goto_ed

    .line 170
    :pswitch_ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {p0, p1, p4}, Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;->getDomainVerificationUserState(Ljava/lang/String;I)Landroid/content/pm/verify/domain/DomainVerificationUserState;

    move-result-object p1

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 177
    goto :goto_ed

    .line 160
    :pswitch_d0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-virtual {p0, p1}, Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;->getDomainVerificationInfo(Ljava/lang/String;)Landroid/content/pm/verify/domain/DomainVerificationInfo;

    move-result-object p1

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 165
    goto :goto_ed

    .line 152
    :pswitch_e2
    invoke-virtual {p0}, Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;->queryValidVerificationPackageNames()Ljava/util/List;

    move-result-object p1

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 155
    nop

    .line 262
    :goto_ed
    return v1

    :pswitch_data_ee
    .packed-switch 0x1
        :pswitch_e2
        :pswitch_d0
        :pswitch_ba
        :pswitch_a4
        :pswitch_86
        :pswitch_70
        :pswitch_4d
        :pswitch_36
        :pswitch_1f
    .end packed-switch
.end method
