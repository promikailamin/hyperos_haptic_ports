.class public abstract Lcom/android/internal/widget/IRemoteViewsFactory$Stub;
.super Landroid/os/Binder;
.source "IRemoteViewsFactory.java"

# interfaces
.implements Lcom/android/internal/widget/IRemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/IRemoteViewsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/IRemoteViewsFactory$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.widget.IRemoteViewsFactory"

.field static final greylist-max-o TRANSACTION_getCount:I = 0x4

.field static final greylist-max-o TRANSACTION_getItemId:I = 0x8

.field static final greylist-max-o TRANSACTION_getLoadingView:I = 0x6

.field static final blacklist TRANSACTION_getRemoteCollectionItems:I = 0xb

.field static final greylist-max-o TRANSACTION_getViewAt:I = 0x5

.field static final greylist-max-o TRANSACTION_getViewTypeCount:I = 0x7

.field static final greylist-max-o TRANSACTION_hasStableIds:I = 0x9

.field static final greylist-max-o TRANSACTION_isCreated:I = 0xa

.field static final greylist-max-o TRANSACTION_onDataSetChanged:I = 0x1

.field static final greylist-max-o TRANSACTION_onDataSetChangedAsync:I = 0x2

.field static final greylist-max-o TRANSACTION_onDestroy:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 68
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 69
    const-string v0, "com.android.internal.widget.IRemoteViewsFactory"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public static greylist-max-r asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IRemoteViewsFactory;
    .registers 3

    .line 77
    if-nez p0, :cond_4

    .line 78
    const/4 p0, 0x0

    return-object p0

    .line 80
    :cond_4
    const-string v0, "com.android.internal.widget.IRemoteViewsFactory"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/widget/IRemoteViewsFactory;

    if-eqz v1, :cond_13

    .line 82
    check-cast v0, Lcom/android/internal/widget/IRemoteViewsFactory;

    return-object v0

    .line 84
    :cond_13
    new-instance v0, Lcom/android/internal/widget/IRemoteViewsFactory$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 93
    packed-switch p0, :pswitch_data_2a

    .line 141
    const/4 p0, 0x0

    return-object p0

    .line 137
    :pswitch_5
    const-string p0, "getRemoteCollectionItems"

    return-object p0

    .line 133
    :pswitch_8
    const-string p0, "isCreated"

    return-object p0

    .line 129
    :pswitch_b
    const-string p0, "hasStableIds"

    return-object p0

    .line 125
    :pswitch_e
    const-string p0, "getItemId"

    return-object p0

    .line 121
    :pswitch_11
    const-string p0, "getViewTypeCount"

    return-object p0

    .line 117
    :pswitch_14
    const-string p0, "getLoadingView"

    return-object p0

    .line 113
    :pswitch_17
    const-string p0, "getViewAt"

    return-object p0

    .line 109
    :pswitch_1a
    const-string p0, "getCount"

    return-object p0

    .line 105
    :pswitch_1d
    const-string/jumbo p0, "onDestroy"

    return-object p0

    .line 101
    :pswitch_21
    const-string/jumbo p0, "onDataSetChangedAsync"

    return-object p0

    .line 97
    :pswitch_25
    const-string/jumbo p0, "onDataSetChanged"

    return-object p0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
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

    .line 88
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 467
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 148
    invoke-static {p1}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 152
    nop

    .line 153
    const-string v0, "com.android.internal.widget.IRemoteViewsFactory"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 154
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 157
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    return v1

    .line 160
    :cond_17
    packed-switch p1, :pswitch_data_b0

    .line 252
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 239
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 245
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->getRemoteCollectionItems(IIZ)Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object p1

    .line 246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 248
    goto/16 :goto_af

    .line 231
    :pswitch_3a
    invoke-virtual {p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->isCreated()Z

    move-result p1

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 234
    goto :goto_af

    .line 224
    :pswitch_45
    invoke-virtual {p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->hasStableIds()Z

    move-result p1

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 227
    goto :goto_af

    .line 215
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->getItemId(I)J

    move-result-wide p1

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 220
    goto :goto_af

    .line 207
    :pswitch_62
    invoke-virtual {p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->getViewTypeCount()I

    move-result p1

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    goto :goto_af

    .line 200
    :pswitch_6d
    invoke-virtual {p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->getLoadingView()Landroid/widget/RemoteViews;

    move-result-object p1

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 203
    goto :goto_af

    .line 191
    :pswitch_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->getViewAt(I)Landroid/widget/RemoteViews;

    move-result-object p1

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 196
    goto :goto_af

    .line 183
    :pswitch_8a
    invoke-virtual {p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->getCount()I

    move-result p1

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    goto :goto_af

    .line 176
    :pswitch_95
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 178
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->onDestroy(Landroid/content/Intent;)V

    .line 179
    goto :goto_af

    .line 170
    :pswitch_a4
    invoke-virtual {p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->onDataSetChangedAsync()V

    .line 171
    goto :goto_af

    .line 164
    :pswitch_a8
    invoke-virtual {p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->onDataSetChanged()V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    nop

    .line 255
    :goto_af
    return v1

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_a8
        :pswitch_a4
        :pswitch_95
        :pswitch_8a
        :pswitch_78
        :pswitch_6d
        :pswitch_62
        :pswitch_50
        :pswitch_45
        :pswitch_3a
        :pswitch_1f
    .end packed-switch
.end method
