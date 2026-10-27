.class public abstract Landroid/content/pm/IPinItemRequest$Stub;
.super Landroid/os/Binder;
.source "IPinItemRequest.java"

# interfaces
.implements Landroid/content/pm/IPinItemRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPinItemRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPinItemRequest$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPinItemRequest"

.field static final greylist-max-o TRANSACTION_accept:I = 0x2

.field static final greylist-max-o TRANSACTION_getAppWidgetProviderInfo:I = 0x4

.field static final greylist-max-o TRANSACTION_getExtras:I = 0x5

.field static final greylist-max-o TRANSACTION_getShortcutInfo:I = 0x3

.field static final greylist-max-o TRANSACTION_isValid:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 48
    const-string v0, "android.content.pm.IPinItemRequest"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPinItemRequest$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPinItemRequest;
    .registers 3

    .line 56
    if-nez p0, :cond_4

    .line 57
    const/4 p0, 0x0

    return-object p0

    .line 59
    :cond_4
    const-string v0, "android.content.pm.IPinItemRequest"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/content/pm/IPinItemRequest;

    if-eqz v1, :cond_13

    .line 61
    check-cast v0, Landroid/content/pm/IPinItemRequest;

    return-object v0

    .line 63
    :cond_13
    new-instance v0, Landroid/content/pm/IPinItemRequest$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/content/pm/IPinItemRequest$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 72
    packed-switch p0, :pswitch_data_16

    .line 96
    const/4 p0, 0x0

    return-object p0

    .line 92
    :pswitch_5
    const-string p0, "getExtras"

    return-object p0

    .line 88
    :pswitch_8
    const-string p0, "getAppWidgetProviderInfo"

    return-object p0

    .line 84
    :pswitch_b
    const-string p0, "getShortcutInfo"

    return-object p0

    .line 80
    :pswitch_e
    const-string p0, "accept"

    return-object p0

    .line 76
    :pswitch_11
    const-string/jumbo p0, "isValid"

    return-object p0

    nop

    :pswitch_data_16
    .packed-switch 0x1
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

    .line 67
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 274
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 103
    invoke-static {p1}, Landroid/content/pm/IPinItemRequest$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 107
    nop

    .line 108
    const-string v0, "android.content.pm.IPinItemRequest"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 109
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 112
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    return v1

    .line 115
    :cond_17
    packed-switch p1, :pswitch_data_62

    .line 157
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 150
    :pswitch_1f
    invoke-virtual {p0}, Landroid/content/pm/IPinItemRequest$Stub;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 153
    goto :goto_61

    .line 143
    :pswitch_2a
    invoke-virtual {p0}, Landroid/content/pm/IPinItemRequest$Stub;->getAppWidgetProviderInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p1

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 146
    goto :goto_61

    .line 136
    :pswitch_35
    invoke-virtual {p0}, Landroid/content/pm/IPinItemRequest$Stub;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 139
    goto :goto_61

    .line 127
    :pswitch_40
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 129
    invoke-virtual {p0, p1}, Landroid/content/pm/IPinItemRequest$Stub;->accept(Landroid/os/Bundle;)Z

    move-result p1

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 132
    goto :goto_61

    .line 119
    :pswitch_56
    invoke-virtual {p0}, Landroid/content/pm/IPinItemRequest$Stub;->isValid()Z

    move-result p1

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 122
    nop

    .line 160
    :goto_61
    return v1

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_56
        :pswitch_40
        :pswitch_35
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method
