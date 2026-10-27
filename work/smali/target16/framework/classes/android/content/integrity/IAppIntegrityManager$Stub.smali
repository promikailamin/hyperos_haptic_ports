.class public abstract Landroid/content/integrity/IAppIntegrityManager$Stub;
.super Landroid/os/Binder;
.source "IAppIntegrityManager.java"

# interfaces
.implements Landroid/content/integrity/IAppIntegrityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/integrity/IAppIntegrityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/integrity/IAppIntegrityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getCurrentRuleSetProvider:I = 0x3

.field static final blacklist TRANSACTION_getCurrentRuleSetVersion:I = 0x2

.field static final blacklist TRANSACTION_getCurrentRules:I = 0x4

.field static final blacklist TRANSACTION_getWhitelistedRuleProviders:I = 0x5

.field static final blacklist TRANSACTION_updateRuleSet:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 47
    const-string v0, "android.content.integrity.IAppIntegrityManager"

    invoke-virtual {p0, p0, v0}, Landroid/content/integrity/IAppIntegrityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/content/integrity/IAppIntegrityManager;
    .registers 3

    .line 55
    if-nez p0, :cond_4

    .line 56
    const/4 p0, 0x0

    return-object p0

    .line 58
    :cond_4
    const-string v0, "android.content.integrity.IAppIntegrityManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/content/integrity/IAppIntegrityManager;

    if-eqz v1, :cond_13

    .line 60
    check-cast v0, Landroid/content/integrity/IAppIntegrityManager;

    return-object v0

    .line 62
    :cond_13
    new-instance v0, Landroid/content/integrity/IAppIntegrityManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/content/integrity/IAppIntegrityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 71
    packed-switch p0, :pswitch_data_16

    .line 95
    const/4 p0, 0x0

    return-object p0

    .line 91
    :pswitch_5
    const-string p0, "getWhitelistedRuleProviders"

    return-object p0

    .line 87
    :pswitch_8
    const-string p0, "getCurrentRules"

    return-object p0

    .line 83
    :pswitch_b
    const-string p0, "getCurrentRuleSetProvider"

    return-object p0

    .line 79
    :pswitch_e
    const-string p0, "getCurrentRuleSetVersion"

    return-object p0

    .line 75
    :pswitch_11
    const-string/jumbo p0, "updateRuleSet"

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

    .line 66
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 273
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 102
    invoke-static {p1}, Landroid/content/integrity/IAppIntegrityManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 106
    nop

    .line 107
    const-string v0, "android.content.integrity.IAppIntegrityManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 108
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 111
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    return v1

    .line 114
    :cond_17
    packed-switch p1, :pswitch_data_6a

    .line 159
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 152
    :pswitch_1f
    invoke-virtual {p0}, Landroid/content/integrity/IAppIntegrityManager$Stub;->getWhitelistedRuleProviders()Ljava/util/List;

    move-result-object p1

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 155
    goto :goto_69

    .line 145
    :pswitch_2a
    invoke-virtual {p0}, Landroid/content/integrity/IAppIntegrityManager$Stub;->getCurrentRules()Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 148
    goto :goto_69

    .line 138
    :pswitch_35
    invoke-virtual {p0}, Landroid/content/integrity/IAppIntegrityManager$Stub;->getCurrentRuleSetProvider()Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    goto :goto_69

    .line 131
    :pswitch_40
    invoke-virtual {p0}, Landroid/content/integrity/IAppIntegrityManager$Stub;->getCurrentRuleSetVersion()Ljava/lang/String;

    move-result-object p1

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    goto :goto_69

    .line 119
    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 121
    sget-object p4, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/pm/ParceledListSlice;

    .line 123
    sget-object v0, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentSender;

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 125
    invoke-virtual {p0, p1, p4, v0}, Landroid/content/integrity/IAppIntegrityManager$Stub;->updateRuleSet(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/content/IntentSender;)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    nop

    .line 162
    :goto_69
    return v1

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_40
        :pswitch_35
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method
