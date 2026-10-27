.class public abstract Landroid/credentials/ICredentialManager$Stub;
.super Landroid/os/Binder;
.source "ICredentialManager.java"

# interfaces
.implements Landroid/credentials/ICredentialManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/credentials/ICredentialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/credentials/ICredentialManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_clearCredentialState:I = 0x5

.field static final blacklist TRANSACTION_executeCreateCredential:I = 0x3

.field static final blacklist TRANSACTION_executeGetCredential:I = 0x1

.field static final blacklist TRANSACTION_executePrepareGetCredential:I = 0x2

.field static final blacklist TRANSACTION_getCandidateCredentials:I = 0x4

.field static final blacklist TRANSACTION_getCredentialProviderServices:I = 0xa

.field static final blacklist TRANSACTION_getCredentialProviderServicesForTesting:I = 0xb

.field static final blacklist TRANSACTION_isEnabledCredentialProviderService:I = 0x9

.field static final blacklist TRANSACTION_isServiceEnabled:I = 0xc

.field static final blacklist TRANSACTION_registerCredentialDescription:I = 0x7

.field static final blacklist TRANSACTION_setEnabledProviders:I = 0x6

.field static final blacklist TRANSACTION_unregisterCredentialDescription:I = 0x8


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 76
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 77
    const-string v0, "android.credentials.ICredentialManager"

    invoke-virtual {p0, p0, v0}, Landroid/credentials/ICredentialManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/credentials/ICredentialManager;
    .registers 3

    .line 85
    if-nez p0, :cond_4

    .line 86
    const/4 p0, 0x0

    return-object p0

    .line 88
    :cond_4
    const-string v0, "android.credentials.ICredentialManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/credentials/ICredentialManager;

    if-eqz v1, :cond_13

    .line 90
    check-cast v0, Landroid/credentials/ICredentialManager;

    return-object v0

    .line 92
    :cond_13
    new-instance v0, Landroid/credentials/ICredentialManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/credentials/ICredentialManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 101
    packed-switch p0, :pswitch_data_2e

    .line 153
    const/4 p0, 0x0

    return-object p0

    .line 149
    :pswitch_5
    const-string/jumbo p0, "isServiceEnabled"

    return-object p0

    .line 145
    :pswitch_9
    const-string p0, "getCredentialProviderServicesForTesting"

    return-object p0

    .line 141
    :pswitch_c
    const-string p0, "getCredentialProviderServices"

    return-object p0

    .line 137
    :pswitch_f
    const-string p0, "isEnabledCredentialProviderService"

    return-object p0

    .line 133
    :pswitch_12
    const-string/jumbo p0, "unregisterCredentialDescription"

    return-object p0

    .line 129
    :pswitch_16
    const-string/jumbo p0, "registerCredentialDescription"

    return-object p0

    .line 125
    :pswitch_1a
    const-string/jumbo p0, "setEnabledProviders"

    return-object p0

    .line 121
    :pswitch_1e
    const-string p0, "clearCredentialState"

    return-object p0

    .line 117
    :pswitch_21
    const-string p0, "getCandidateCredentials"

    return-object p0

    .line 113
    :pswitch_24
    const-string p0, "executeCreateCredential"

    return-object p0

    .line 109
    :pswitch_27
    const-string p0, "executePrepareGetCredential"

    return-object p0

    .line 105
    :pswitch_2a
    const-string p0, "executeGetCredential"

    return-object p0

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1a
        :pswitch_16
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 96
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 589
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 160
    invoke-static {p1}, Landroid/credentials/ICredentialManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 164
    nop

    .line 165
    const-string v0, "android.credentials.ICredentialManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 166
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 169
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    return v1

    .line 172
    :cond_17
    packed-switch p1, :pswitch_data_176

    .line 328
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 321
    :pswitch_1f
    invoke-virtual {p0}, Landroid/credentials/ICredentialManager$Stub;->isServiceEnabled()Z

    move-result p1

    .line 322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 324
    goto/16 :goto_174

    .line 312
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 314
    invoke-virtual {p0, p1}, Landroid/credentials/ICredentialManager$Stub;->getCredentialProviderServicesForTesting(I)Ljava/util/List;

    move-result-object p1

    .line 315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 317
    goto/16 :goto_174

    .line 300
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 304
    invoke-virtual {p0, p1, p4}, Landroid/credentials/ICredentialManager$Stub;->getCredentialProviderServices(II)Ljava/util/List;

    move-result-object p1

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 307
    goto/16 :goto_174

    .line 288
    :pswitch_55
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 292
    invoke-virtual {p0, p1, p4}, Landroid/credentials/ICredentialManager$Stub;->isEnabledCredentialProviderService(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result p1

    .line 293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 295
    goto/16 :goto_174

    .line 277
    :pswitch_70
    sget-object p1, Landroid/credentials/UnregisterCredentialDescriptionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/credentials/UnregisterCredentialDescriptionRequest;

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    invoke-virtual {p0, p1, p4}, Landroid/credentials/ICredentialManager$Stub;->unregisterCredentialDescription(Landroid/credentials/UnregisterCredentialDescriptionRequest;Ljava/lang/String;)V

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    goto/16 :goto_174

    .line 266
    :pswitch_87
    sget-object p1, Landroid/credentials/RegisterCredentialDescriptionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/credentials/RegisterCredentialDescriptionRequest;

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-virtual {p0, p1, p4}, Landroid/credentials/ICredentialManager$Stub;->registerCredentialDescription(Landroid/credentials/RegisterCredentialDescriptionRequest;Ljava/lang/String;)V

    .line 271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    goto/16 :goto_174

    .line 251
    :pswitch_9e
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p4

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/credentials/ISetEnabledProvidersCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/credentials/ISetEnabledProvidersCallback;

    move-result-object v2

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/credentials/ICredentialManager$Stub;->setEnabledProviders(Ljava/util/List;Ljava/util/List;ILandroid/credentials/ISetEnabledProvidersCallback;)V

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    goto/16 :goto_174

    .line 237
    :pswitch_bd
    sget-object p1, Landroid/credentials/ClearCredentialStateRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/credentials/ClearCredentialStateRequest;

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/credentials/IClearCredentialStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/credentials/IClearCredentialStateCallback;

    move-result-object p4

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 243
    invoke-virtual {p0, p1, p4, v0}, Landroid/credentials/ICredentialManager$Stub;->clearCredentialState(Landroid/credentials/ClearCredentialStateRequest;Landroid/credentials/IClearCredentialStateCallback;Ljava/lang/String;)Landroid/os/ICancellationSignal;

    move-result-object p1

    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 246
    goto/16 :goto_174

    .line 221
    :pswitch_e0
    sget-object p1, Landroid/credentials/GetCredentialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/credentials/GetCredentialRequest;

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/credentials/IGetCandidateCredentialsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/credentials/IGetCandidateCredentialsCallback;

    move-result-object p4

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/credentials/ICredentialManager$Stub;->getCandidateCredentials(Landroid/credentials/GetCredentialRequest;Landroid/credentials/IGetCandidateCredentialsCallback;Landroid/os/IBinder;Ljava/lang/String;)Landroid/os/ICancellationSignal;

    move-result-object p1

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 232
    goto :goto_174

    .line 207
    :pswitch_106
    sget-object p1, Landroid/credentials/CreateCredentialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/credentials/CreateCredentialRequest;

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/credentials/ICreateCredentialCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/credentials/ICreateCredentialCallback;

    move-result-object p4

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    invoke-virtual {p0, p1, p4, v0}, Landroid/credentials/ICredentialManager$Stub;->executeCreateCredential(Landroid/credentials/CreateCredentialRequest;Landroid/credentials/ICreateCredentialCallback;Ljava/lang/String;)Landroid/os/ICancellationSignal;

    move-result-object p1

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 216
    goto :goto_174

    .line 191
    :pswitch_128
    sget-object p1, Landroid/credentials/GetCredentialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/credentials/GetCredentialRequest;

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/credentials/IPrepareGetCredentialCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/credentials/IPrepareGetCredentialCallback;

    move-result-object p4

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/credentials/IGetCredentialCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/credentials/IGetCredentialCallback;

    move-result-object v0

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/credentials/ICredentialManager$Stub;->executePrepareGetCredential(Landroid/credentials/GetCredentialRequest;Landroid/credentials/IPrepareGetCredentialCallback;Landroid/credentials/IGetCredentialCallback;Ljava/lang/String;)Landroid/os/ICancellationSignal;

    move-result-object p1

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 202
    goto :goto_174

    .line 177
    :pswitch_152
    sget-object p1, Landroid/credentials/GetCredentialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/credentials/GetCredentialRequest;

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/credentials/IGetCredentialCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/credentials/IGetCredentialCallback;

    move-result-object p4

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {p0, p1, p4, v0}, Landroid/credentials/ICredentialManager$Stub;->executeGetCredential(Landroid/credentials/GetCredentialRequest;Landroid/credentials/IGetCredentialCallback;Ljava/lang/String;)Landroid/os/ICancellationSignal;

    move-result-object p1

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 186
    nop

    .line 331
    :goto_174
    return v1

    nop

    :pswitch_data_176
    .packed-switch 0x1
        :pswitch_152
        :pswitch_128
        :pswitch_106
        :pswitch_e0
        :pswitch_bd
        :pswitch_9e
        :pswitch_87
        :pswitch_70
        :pswitch_55
        :pswitch_3e
        :pswitch_2b
        :pswitch_1f
    .end packed-switch
.end method
