.class public abstract Landroid/app/people/IPeopleManager$Stub;
.super Landroid/os/Binder;
.source "IPeopleManager.java"

# interfaces
.implements Landroid/app/people/IPeopleManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/people/IPeopleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/people/IPeopleManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addOrUpdateStatus:I = 0x7

.field static final blacklist TRANSACTION_clearStatus:I = 0x8

.field static final blacklist TRANSACTION_clearStatuses:I = 0x9

.field static final blacklist TRANSACTION_getConversation:I = 0x1

.field static final blacklist TRANSACTION_getLastInteraction:I = 0x6

.field static final blacklist TRANSACTION_getRecentConversations:I = 0x2

.field static final blacklist TRANSACTION_getStatuses:I = 0xa

.field static final blacklist TRANSACTION_isConversation:I = 0x5

.field static final blacklist TRANSACTION_registerConversationListener:I = 0xb

.field static final blacklist TRANSACTION_removeAllRecentConversations:I = 0x4

.field static final blacklist TRANSACTION_removeRecentConversation:I = 0x3

.field static final blacklist TRANSACTION_unregisterConversationListener:I = 0xc


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 89
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 90
    const-string v0, "android.app.people.IPeopleManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/people/IPeopleManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/people/IPeopleManager;
    .registers 3

    .line 98
    if-nez p0, :cond_4

    .line 99
    const/4 p0, 0x0

    return-object p0

    .line 101
    :cond_4
    const-string v0, "android.app.people.IPeopleManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/people/IPeopleManager;

    if-eqz v1, :cond_13

    .line 103
    check-cast v0, Landroid/app/people/IPeopleManager;

    return-object v0

    .line 105
    :cond_13
    new-instance v0, Landroid/app/people/IPeopleManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/people/IPeopleManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 114
    packed-switch p0, :pswitch_data_2e

    .line 166
    const/4 p0, 0x0

    return-object p0

    .line 162
    :pswitch_5
    const-string/jumbo p0, "unregisterConversationListener"

    return-object p0

    .line 158
    :pswitch_9
    const-string/jumbo p0, "registerConversationListener"

    return-object p0

    .line 154
    :pswitch_d
    const-string p0, "getStatuses"

    return-object p0

    .line 150
    :pswitch_10
    const-string p0, "clearStatuses"

    return-object p0

    .line 146
    :pswitch_13
    const-string p0, "clearStatus"

    return-object p0

    .line 142
    :pswitch_16
    const-string p0, "addOrUpdateStatus"

    return-object p0

    .line 138
    :pswitch_19
    const-string p0, "getLastInteraction"

    return-object p0

    .line 134
    :pswitch_1c
    const-string p0, "isConversation"

    return-object p0

    .line 130
    :pswitch_1f
    const-string/jumbo p0, "removeAllRecentConversations"

    return-object p0

    .line 126
    :pswitch_23
    const-string/jumbo p0, "removeRecentConversation"

    return-object p0

    .line 122
    :pswitch_27
    const-string p0, "getRecentConversations"

    return-object p0

    .line 118
    :pswitch_2a
    const-string p0, "getConversation"

    return-object p0

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_27
        :pswitch_23
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 109
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 606
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 173
    invoke-static {p1}, Landroid/app/people/IPeopleManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 177
    nop

    .line 178
    const-string v0, "android.app.people.IPeopleManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 179
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 182
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    return v1

    .line 185
    :cond_17
    packed-switch p1, :pswitch_data_134

    .line 338
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 330
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/people/IConversationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/people/IConversationListener;

    move-result-object p1

    .line 331
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 332
    invoke-virtual {p0, p1}, Landroid/app/people/IPeopleManager$Stub;->unregisterConversationListener(Landroid/app/people/IConversationListener;)V

    .line 333
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    goto/16 :goto_133

    .line 315
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/people/IConversationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/people/IConversationListener;

    move-result-object v2

    .line 322
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 323
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/app/people/IPeopleManager$Stub;->registerConversationListener(Ljava/lang/String;ILjava/lang/String;Landroid/app/people/IConversationListener;)V

    .line 324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    goto/16 :goto_133

    .line 301
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 307
    invoke-virtual {p0, p1, p4, v0}, Landroid/app/people/IPeopleManager$Stub;->getStatuses(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 310
    goto/16 :goto_133

    .line 288
    :pswitch_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 294
    invoke-virtual {p0, p1, p4, v0}, Landroid/app/people/IPeopleManager$Stub;->clearStatuses(Ljava/lang/String;ILjava/lang/String;)V

    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    goto/16 :goto_133

    .line 273
    :pswitch_83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/app/people/IPeopleManager$Stub;->clearStatus(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    goto/16 :goto_133

    .line 258
    :pswitch_9e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 264
    sget-object v2, Landroid/app/people/ConversationStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/people/ConversationStatus;

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 266
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/app/people/IPeopleManager$Stub;->addOrUpdateStatus(Ljava/lang/String;ILjava/lang/String;Landroid/app/people/ConversationStatus;)V

    .line 267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    goto/16 :goto_133

    .line 244
    :pswitch_bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    invoke-virtual {p0, p1, p4, v0}, Landroid/app/people/IPeopleManager$Stub;->getLastInteraction(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide p1

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 253
    goto :goto_133

    .line 230
    :pswitch_d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 236
    invoke-virtual {p0, p1, p4, v0}, Landroid/app/people/IPeopleManager$Stub;->isConversation(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 239
    goto :goto_133

    .line 223
    :pswitch_f1
    invoke-virtual {p0}, Landroid/app/people/IPeopleManager$Stub;->removeAllRecentConversations()V

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    goto :goto_133

    .line 211
    :pswitch_f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {p0, p1, p4, v0}, Landroid/app/people/IPeopleManager$Stub;->removeRecentConversation(Ljava/lang/String;ILjava/lang/String;)V

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    goto :goto_133

    .line 203
    :pswitch_10e
    invoke-virtual {p0}, Landroid/app/people/IPeopleManager$Stub;->getRecentConversations()Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 206
    goto :goto_133

    .line 190
    :pswitch_119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {p0, p1, p4, v0}, Landroid/app/people/IPeopleManager$Stub;->getConversation(Ljava/lang/String;ILjava/lang/String;)Landroid/app/people/ConversationChannel;

    move-result-object p1

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 199
    nop

    .line 341
    :goto_133
    return v1

    :pswitch_data_134
    .packed-switch 0x1
        :pswitch_119
        :pswitch_10e
        :pswitch_f8
        :pswitch_f1
        :pswitch_d7
        :pswitch_bd
        :pswitch_9e
        :pswitch_83
        :pswitch_6c
        :pswitch_51
        :pswitch_32
        :pswitch_1f
    .end packed-switch
.end method
