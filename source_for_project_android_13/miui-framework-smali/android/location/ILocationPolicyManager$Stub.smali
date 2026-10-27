.class public abstract Landroid/location/ILocationPolicyManager$Stub;
.super Landroid/os/Binder;
.source "ILocationPolicyManager.java"

# interfaces
.implements Landroid/location/ILocationPolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/ILocationPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/ILocationPolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_checkUidLocationOp:I = 0x8

.field static final blacklist TRANSACTION_checkUidNavigationScreenLock:I = 0x6

.field static final blacklist TRANSACTION_getLocationPolicies:I = 0xc

.field static final blacklist TRANSACTION_getRestrictBackground:I = 0xe

.field static final blacklist TRANSACTION_getUidPolicy:I = 0x2

.field static final blacklist TRANSACTION_getUidsWithPolicy:I = 0x3

.field static final blacklist TRANSACTION_isUidForeground:I = 0x7

.field static final blacklist TRANSACTION_registerListener:I = 0x9

.field static final blacklist TRANSACTION_setFakeGpsFeatureOnState:I = 0xf

.field static final blacklist TRANSACTION_setLocationPolicies:I = 0xb

.field static final blacklist TRANSACTION_setPhoneStationary:I = 0x10

.field static final blacklist TRANSACTION_setRestrictBackground:I = 0xd

.field static final blacklist TRANSACTION_setUidNavigationStart:I = 0x4

.field static final blacklist TRANSACTION_setUidNavigationStop:I = 0x5

.field static final blacklist TRANSACTION_setUidPolicy:I = 0x1

.field static final blacklist TRANSACTION_unregisterListener:I = 0xa


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 84
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 85
    const-string v0, "android.location.ILocationPolicyManager"

    invoke-virtual {p0, p0, v0}, Landroid/location/ILocationPolicyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/location/ILocationPolicyManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 93
    if-nez p0, :cond_4

    .line 94
    const/4 v0, 0x0

    return-object v0

    .line 96
    :cond_4
    const-string v0, "android.location.ILocationPolicyManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 97
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/location/ILocationPolicyManager;

    if-eqz v1, :cond_14

    .line 98
    move-object v1, v0

    check-cast v1, Landroid/location/ILocationPolicyManager;

    return-object v1

    .line 100
    :cond_14
    new-instance v1, Landroid/location/ILocationPolicyManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/ILocationPolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 104
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    const-string v0, "android.location.ILocationPolicyManager"

    .line 109
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 110
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    :cond_d
    packed-switch p1, :pswitch_data_12a

    .line 120
    packed-switch p1, :pswitch_data_130

    .line 273
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 116
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    return v1

    .line 264
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 266
    .local v2, "_arg0":Z
    sget-object v3, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Location;

    .line 267
    .local v3, "_arg1":Landroid/location/Location;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 268
    invoke-virtual {p0, v2, v3}, Landroid/location/ILocationPolicyManager$Stub;->setPhoneStationary(ZLandroid/location/Location;)V

    .line 269
    goto/16 :goto_129

    .line 256
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Landroid/location/Location;
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 257
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    invoke-virtual {p0, v2}, Landroid/location/ILocationPolicyManager$Stub;->setFakeGpsFeatureOnState(Z)V

    .line 259
    goto/16 :goto_129

    .line 248
    .end local v2    # "_arg0":Z
    :pswitch_3c
    invoke-virtual {p0}, Landroid/location/ILocationPolicyManager$Stub;->getRestrictBackground()Z

    move-result v2

    .line 249
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 251
    goto/16 :goto_129

    .line 240
    .end local v2    # "_result":Z
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 241
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 242
    invoke-virtual {p0, v2}, Landroid/location/ILocationPolicyManager$Stub;->setRestrictBackground(Z)V

    .line 243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    goto/16 :goto_129

    .line 232
    .end local v2    # "_arg0":Z
    :pswitch_57
    invoke-virtual {p0}, Landroid/location/ILocationPolicyManager$Stub;->getLocationPolicies()[Landroid/location/LocationPolicy;

    move-result-object v2

    .line 233
    .local v2, "_result":[Landroid/location/LocationPolicy;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 235
    goto/16 :goto_129

    .line 224
    .end local v2    # "_result":[Landroid/location/LocationPolicy;
    :pswitch_63
    sget-object v2, Landroid/location/LocationPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/location/LocationPolicy;

    .line 225
    .local v2, "_arg0":[Landroid/location/LocationPolicy;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 226
    invoke-virtual {p0, v2}, Landroid/location/ILocationPolicyManager$Stub;->setLocationPolicies([Landroid/location/LocationPolicy;)V

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    goto/16 :goto_129

    .line 215
    .end local v2    # "_arg0":[Landroid/location/LocationPolicy;
    :pswitch_76
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/ILocationPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationPolicyListener;

    move-result-object v2

    .line 216
    .local v2, "_arg0":Landroid/location/ILocationPolicyListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {p0, v2}, Landroid/location/ILocationPolicyManager$Stub;->unregisterListener(Landroid/location/ILocationPolicyListener;)V

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    goto/16 :goto_129

    .line 206
    .end local v2    # "_arg0":Landroid/location/ILocationPolicyListener;
    :pswitch_89
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/ILocationPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationPolicyListener;

    move-result-object v2

    .line 207
    .restart local v2    # "_arg0":Landroid/location/ILocationPolicyListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 208
    invoke-virtual {p0, v2}, Landroid/location/ILocationPolicyManager$Stub;->registerListener(Landroid/location/ILocationPolicyListener;)V

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    goto/16 :goto_129

    .line 194
    .end local v2    # "_arg0":Landroid/location/ILocationPolicyListener;
    :pswitch_9c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 196
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 197
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    invoke-virtual {p0, v2, v3}, Landroid/location/ILocationPolicyManager$Stub;->checkUidLocationOp(II)Z

    move-result v4

    .line 199
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 201
    goto/16 :goto_129

    .line 184
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_b3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 185
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-virtual {p0, v2}, Landroid/location/ILocationPolicyManager$Stub;->isUidForeground(I)Z

    move-result v3

    .line 187
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 189
    goto :goto_129

    .line 174
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 175
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-virtual {p0, v2}, Landroid/location/ILocationPolicyManager$Stub;->checkUidNavigationScreenLock(I)Z

    move-result v3

    .line 177
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 179
    goto :goto_129

    .line 165
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 166
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    invoke-virtual {p0, v2}, Landroid/location/ILocationPolicyManager$Stub;->setUidNavigationStop(I)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    goto :goto_129

    .line 156
    .end local v2    # "_arg0":I
    :pswitch_e5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 157
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    invoke-virtual {p0, v2}, Landroid/location/ILocationPolicyManager$Stub;->setUidNavigationStart(I)V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    goto :goto_129

    .line 146
    .end local v2    # "_arg0":I
    :pswitch_f3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 147
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 148
    invoke-virtual {p0, v2}, Landroid/location/ILocationPolicyManager$Stub;->getUidsWithPolicy(I)[I

    move-result-object v3

    .line 149
    .local v3, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 151
    goto :goto_129

    .line 136
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[I
    :pswitch_105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 137
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    invoke-virtual {p0, v2}, Landroid/location/ILocationPolicyManager$Stub;->getUidPolicy(I)I

    move-result v3

    .line 139
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    goto :goto_129

    .line 125
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 127
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 128
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 129
    invoke-virtual {p0, v2, v3}, Landroid/location/ILocationPolicyManager$Stub;->setUidPolicy(II)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    nop

    .line 276
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :goto_129
    return v1

    :pswitch_data_12a
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_130
    .packed-switch 0x1
        :pswitch_117
        :pswitch_105
        :pswitch_f3
        :pswitch_e5
        :pswitch_d7
        :pswitch_c5
        :pswitch_b3
        :pswitch_9c
        :pswitch_89
        :pswitch_76
        :pswitch_63
        :pswitch_57
        :pswitch_48
        :pswitch_3c
        :pswitch_30
        :pswitch_1c
    .end packed-switch
.end method
