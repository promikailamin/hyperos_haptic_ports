.class public abstract Landroid/content/pm/ICrossProfileApps$Stub;
.super Landroid/os/Binder;
.source "ICrossProfileApps.java"

# interfaces
.implements Landroid/content/pm/ICrossProfileApps;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ICrossProfileApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/ICrossProfileApps$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.content.pm.ICrossProfileApps"

.field static final blacklist TRANSACTION_canConfigureInteractAcrossProfiles:I = 0x7

.field static final blacklist TRANSACTION_canInteractAcrossProfiles:I = 0x4

.field static final blacklist TRANSACTION_canRequestInteractAcrossProfiles:I = 0x5

.field static final blacklist TRANSACTION_canUserAttemptToConfigureInteractAcrossProfiles:I = 0x8

.field static final blacklist TRANSACTION_clearInteractAcrossProfilesAppOps:I = 0xa

.field static final greylist-max-o TRANSACTION_getTargetUserProfiles:I = 0x3

.field static final blacklist TRANSACTION_resetInteractAcrossProfilesAppOps:I = 0x9

.field static final blacklist TRANSACTION_setInteractAcrossProfilesAppOp:I = 0x6

.field static final greylist-max-o TRANSACTION_startActivityAsUser:I = 0x1

.field static final blacklist TRANSACTION_startActivityAsUserByIntent:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 63
    const-string v0, "android.content.pm.ICrossProfileApps"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/ICrossProfileApps$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/content/pm/ICrossProfileApps;
    .registers 3

    .line 71
    if-nez p0, :cond_4

    .line 72
    const/4 p0, 0x0

    return-object p0

    .line 74
    :cond_4
    const-string v0, "android.content.pm.ICrossProfileApps"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/content/pm/ICrossProfileApps;

    if-eqz v1, :cond_13

    .line 76
    check-cast v0, Landroid/content/pm/ICrossProfileApps;

    return-object v0

    .line 78
    :cond_13
    new-instance v0, Landroid/content/pm/ICrossProfileApps$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/content/pm/ICrossProfileApps$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 87
    packed-switch p0, :pswitch_data_28

    .line 131
    const/4 p0, 0x0

    return-object p0

    .line 127
    :pswitch_5
    const-string p0, "clearInteractAcrossProfilesAppOps"

    return-object p0

    .line 123
    :pswitch_8
    const-string/jumbo p0, "resetInteractAcrossProfilesAppOps"

    return-object p0

    .line 119
    :pswitch_c
    const-string p0, "canUserAttemptToConfigureInteractAcrossProfiles"

    return-object p0

    .line 115
    :pswitch_f
    const-string p0, "canConfigureInteractAcrossProfiles"

    return-object p0

    .line 111
    :pswitch_12
    const-string/jumbo p0, "setInteractAcrossProfilesAppOp"

    return-object p0

    .line 107
    :pswitch_16
    const-string p0, "canRequestInteractAcrossProfiles"

    return-object p0

    .line 103
    :pswitch_19
    const-string p0, "canInteractAcrossProfiles"

    return-object p0

    .line 99
    :pswitch_1c
    const-string p0, "getTargetUserProfiles"

    return-object p0

    .line 95
    :pswitch_1f
    const-string/jumbo p0, "startActivityAsUserByIntent"

    return-object p0

    .line 91
    :pswitch_23
    const-string/jumbo p0, "startActivityAsUser"

    return-object p0

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_23
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 82
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 504
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 138
    invoke-static {p1}, Landroid/content/pm/ICrossProfileApps$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 142
    nop

    .line 143
    const-string v3, "android.content.pm.ICrossProfileApps"

    const/4 v9, 0x1

    if-lt p1, v9, :cond_e

    const v4, 0xffffff

    if-gt p1, v4, :cond_e

    .line 144
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    :cond_e
    const v4, 0x5f4e5446

    if-ne p1, v4, :cond_17

    .line 147
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    return v9

    .line 150
    :cond_17
    packed-switch p1, :pswitch_data_132

    .line 285
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 277
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 279
    invoke-virtual {p0, v1}, Landroid/content/pm/ICrossProfileApps$Stub;->clearInteractAcrossProfilesAppOps(I)V

    .line 280
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    goto/16 :goto_130

    .line 266
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-virtual {p0, v1, v3}, Landroid/content/pm/ICrossProfileApps$Stub;->resetInteractAcrossProfilesAppOps(ILjava/util/List;)V

    .line 271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    goto/16 :goto_130

    .line 254
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    invoke-virtual {p0, v1, v3}, Landroid/content/pm/ICrossProfileApps$Stub;->canUserAttemptToConfigureInteractAcrossProfiles(ILjava/lang/String;)Z

    move-result v0

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 261
    goto/16 :goto_130

    .line 242
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 246
    invoke-virtual {p0, v1, v3}, Landroid/content/pm/ICrossProfileApps$Stub;->canConfigureInteractAcrossProfiles(ILjava/lang/String;)Z

    move-result v0

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 249
    goto/16 :goto_130

    .line 229
    :pswitch_6f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {p0, v1, v3, v4}, Landroid/content/pm/ICrossProfileApps$Stub;->setInteractAcrossProfilesAppOp(ILjava/lang/String;I)V

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    goto/16 :goto_130

    .line 219
    :pswitch_86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 221
    invoke-virtual {p0, v1}, Landroid/content/pm/ICrossProfileApps$Stub;->canRequestInteractAcrossProfiles(Ljava/lang/String;)Z

    move-result v0

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 224
    goto/16 :goto_130

    .line 209
    :pswitch_99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {p0, v1}, Landroid/content/pm/ICrossProfileApps$Stub;->canInteractAcrossProfiles(Ljava/lang/String;)Z

    move-result v0

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 214
    goto/16 :goto_130

    .line 199
    :pswitch_ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-virtual {p0, v1}, Landroid/content/pm/ICrossProfileApps$Stub;->getTargetUserProfiles(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {p3, v0, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 204
    goto/16 :goto_130

    .line 178
    :pswitch_bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 182
    move-object v4, v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 184
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 186
    move-object v6, v4

    move-object v4, v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 188
    move-object v7, v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 190
    sget-object v8, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    move-object v0, p0

    move-object v2, v7

    move-object v7, v8

    invoke-virtual/range {v0 .. v7}, Landroid/content/pm/ICrossProfileApps$Stub;->startActivityAsUserByIntent(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    goto :goto_130

    .line 155
    :pswitch_f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 161
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 169
    sget-object v8, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    move-object v2, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/content/pm/ICrossProfileApps$Stub;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;IZLandroid/os/IBinder;Landroid/os/Bundle;)V

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    nop

    .line 288
    :goto_130
    return v9

    nop

    :pswitch_data_132
    .packed-switch 0x1
        :pswitch_f8
        :pswitch_bf
        :pswitch_ac
        :pswitch_99
        :pswitch_86
        :pswitch_6f
        :pswitch_58
        :pswitch_41
        :pswitch_2e
        :pswitch_1f
    .end packed-switch
.end method
