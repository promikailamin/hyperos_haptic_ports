.class public abstract Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub;
.super Landroid/os/Binder;
.source "IContentSuggestionsManager.java"

# interfaces
.implements Landroid/app/contentsuggestions/IContentSuggestionsManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/contentsuggestions/IContentSuggestionsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_classifyContentSelections:I = 0x4

.field static final blacklist TRANSACTION_isEnabled:I = 0x6

.field static final blacklist TRANSACTION_notifyInteraction:I = 0x5

.field static final blacklist TRANSACTION_provideContextBitmap:I = 0x2

.field static final blacklist TRANSACTION_provideContextImage:I = 0x1

.field static final blacklist TRANSACTION_resetTemporaryService:I = 0x7

.field static final blacklist TRANSACTION_setDefaultServiceEnabled:I = 0x9

.field static final blacklist TRANSACTION_setTemporaryService:I = 0x8

.field static final blacklist TRANSACTION_suggestContentSelections:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 55
    const-string v0, "android.app.contentsuggestions.IContentSuggestionsManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/contentsuggestions/IContentSuggestionsManager;
    .registers 3

    .line 63
    if-nez p0, :cond_4

    .line 64
    const/4 p0, 0x0

    return-object p0

    .line 66
    :cond_4
    const-string v0, "android.app.contentsuggestions.IContentSuggestionsManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/contentsuggestions/IContentSuggestionsManager;

    if-eqz v1, :cond_13

    .line 68
    check-cast v0, Landroid/app/contentsuggestions/IContentSuggestionsManager;

    return-object v0

    .line 70
    :cond_13
    new-instance v0, Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 79
    packed-switch p0, :pswitch_data_28

    .line 119
    const/4 p0, 0x0

    return-object p0

    .line 115
    :pswitch_5
    const-string/jumbo p0, "setDefaultServiceEnabled"

    return-object p0

    .line 111
    :pswitch_9
    const-string/jumbo p0, "setTemporaryService"

    return-object p0

    .line 107
    :pswitch_d
    const-string/jumbo p0, "resetTemporaryService"

    return-object p0

    .line 103
    :pswitch_11
    const-string p0, "isEnabled"

    return-object p0

    .line 99
    :pswitch_14
    const-string/jumbo p0, "notifyInteraction"

    return-object p0

    .line 95
    :pswitch_18
    const-string p0, "classifyContentSelections"

    return-object p0

    .line 91
    :pswitch_1b
    const-string/jumbo p0, "suggestContentSelections"

    return-object p0

    .line 87
    :pswitch_1f
    const-string/jumbo p0, "provideContextBitmap"

    return-object p0

    .line 83
    :pswitch_23
    const-string/jumbo p0, "provideContextImage"

    return-object p0

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_23
        :pswitch_1f
        :pswitch_1b
        :pswitch_18
        :pswitch_14
        :pswitch_11
        :pswitch_d
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

    .line 397
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 126
    invoke-static {p1}, Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 130
    nop

    .line 131
    const-string v0, "android.app.contentsuggestions.IContentSuggestionsManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 132
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 135
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    return v1

    .line 138
    :cond_17
    packed-switch p1, :pswitch_data_e4

    .line 242
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 233
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 237
    invoke-virtual {p0, p1, p3}, Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub;->setDefaultServiceEnabled(IZ)V

    .line 238
    goto/16 :goto_e2

    .line 221
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    invoke-virtual {p0, p1, p3, p4}, Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub;->setTemporaryService(ILjava/lang/String;I)V

    .line 228
    goto/16 :goto_e2

    .line 213
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    invoke-virtual {p0, p1}, Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub;->resetTemporaryService(I)V

    .line 216
    goto/16 :goto_e2

    .line 203
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object p3

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {p0, p1, p3}, Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub;->isEnabled(ILcom/android/internal/os/IResultReceiver;)V

    .line 208
    goto/16 :goto_e2

    .line 191
    :pswitch_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 195
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {p0, p1, p3, p4}, Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub;->notifyInteraction(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 198
    goto :goto_e2

    .line 179
    :pswitch_7a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 181
    sget-object p3, Landroid/app/contentsuggestions/ClassificationsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/contentsuggestions/ClassificationsRequest;

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/app/contentsuggestions/IClassificationsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/contentsuggestions/IClassificationsCallback;

    move-result-object p4

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, p1, p3, p4}, Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub;->classifyContentSelections(ILandroid/app/contentsuggestions/ClassificationsRequest;Landroid/app/contentsuggestions/IClassificationsCallback;)V

    .line 186
    goto :goto_e2

    .line 167
    :pswitch_95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 169
    sget-object p3, Landroid/app/contentsuggestions/SelectionsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/contentsuggestions/SelectionsRequest;

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/app/contentsuggestions/ISelectionsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/contentsuggestions/ISelectionsCallback;

    move-result-object p4

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-virtual {p0, p1, p3, p4}, Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub;->suggestContentSelections(ILandroid/app/contentsuggestions/SelectionsRequest;Landroid/app/contentsuggestions/ISelectionsCallback;)V

    .line 174
    goto :goto_e2

    .line 155
    :pswitch_b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 157
    sget-object p3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Bitmap;

    .line 159
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {p0, p1, p3, p4}, Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub;->provideContextBitmap(ILandroid/graphics/Bitmap;Landroid/os/Bundle;)V

    .line 162
    goto :goto_e2

    .line 143
    :pswitch_cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 147
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, p1, p3, p4}, Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub;->provideContextImage(IILandroid/os/Bundle;)V

    .line 150
    nop

    .line 245
    :goto_e2
    return v1

    nop

    :pswitch_data_e4
    .packed-switch 0x1
        :pswitch_cb
        :pswitch_b0
        :pswitch_95
        :pswitch_7a
        :pswitch_63
        :pswitch_4f
        :pswitch_43
        :pswitch_2f
        :pswitch_1f
    .end packed-switch
.end method
