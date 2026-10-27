.class public abstract Landroid/app/contextualsearch/IContextualSearchManager$Stub;
.super Landroid/os/Binder;
.source "IContextualSearchManager.java"

# interfaces
.implements Landroid/app/contextualsearch/IContextualSearchManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/contextualsearch/IContextualSearchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/contextualsearch/IContextualSearchManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getContextualSearchState:I = 0x4

.field static final blacklist TRANSACTION_isContextualSearchAvailable:I = 0x1

.field static final blacklist TRANSACTION_startContextualSearch:I = 0x3

.field static final blacklist TRANSACTION_startContextualSearchForActivity:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 41
    const-string v0, "android.app.contextualsearch.IContextualSearchManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/contextualsearch/IContextualSearchManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/contextualsearch/IContextualSearchManager;
    .registers 3

    .line 49
    if-nez p0, :cond_4

    .line 50
    const/4 p0, 0x0

    return-object p0

    .line 52
    :cond_4
    const-string v0, "android.app.contextualsearch.IContextualSearchManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/contextualsearch/IContextualSearchManager;

    if-eqz v1, :cond_13

    .line 54
    check-cast v0, Landroid/app/contextualsearch/IContextualSearchManager;

    return-object v0

    .line 56
    :cond_13
    new-instance v0, Landroid/app/contextualsearch/IContextualSearchManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/contextualsearch/IContextualSearchManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 65
    packed-switch p0, :pswitch_data_14

    .line 85
    const/4 p0, 0x0

    return-object p0

    .line 81
    :pswitch_5
    const-string p0, "getContextualSearchState"

    return-object p0

    .line 77
    :pswitch_8
    const-string/jumbo p0, "startContextualSearch"

    return-object p0

    .line 73
    :pswitch_c
    const-string/jumbo p0, "startContextualSearchForActivity"

    return-object p0

    .line 69
    :pswitch_10
    const-string p0, "isContextualSearchAvailable"

    return-object p0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 60
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 233
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 92
    invoke-static {p1}, Landroid/app/contextualsearch/IContextualSearchManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 96
    nop

    .line 97
    const-string v0, "android.app.contextualsearch.IContextualSearchManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 98
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 101
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    return v1

    .line 104
    :cond_17
    packed-switch p1, :pswitch_data_68

    .line 146
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 137
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/app/contextualsearch/IContextualSearchCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/contextualsearch/IContextualSearchCallback;

    move-result-object p3

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-virtual {p0, p1, p3}, Landroid/app/contextualsearch/IContextualSearchManager$Stub;->getContextualSearchState(Landroid/os/IBinder;Landroid/app/contextualsearch/IContextualSearchCallback;)V

    .line 142
    goto :goto_66

    .line 127
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 129
    sget-object p3, Landroid/app/contextualsearch/ContextualSearchConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/contextualsearch/ContextualSearchConfig;

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-virtual {p0, p1, p3}, Landroid/app/contextualsearch/IContextualSearchManager$Stub;->startContextualSearch(ILandroid/app/contextualsearch/ContextualSearchConfig;)V

    .line 132
    goto :goto_66

    .line 116
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 118
    sget-object p4, Landroid/app/contextualsearch/ContextualSearchConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/contextualsearch/ContextualSearchConfig;

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 120
    invoke-virtual {p0, p1, p4}, Landroid/app/contextualsearch/IContextualSearchManager$Stub;->startContextualSearchForActivity(Landroid/os/IBinder;Landroid/app/contextualsearch/ContextualSearchConfig;)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    goto :goto_66

    .line 108
    :pswitch_5b
    invoke-virtual {p0}, Landroid/app/contextualsearch/IContextualSearchManager$Stub;->isContextualSearchAvailable()Z

    move-result p1

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 111
    nop

    .line 149
    :goto_66
    return v1

    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_45
        :pswitch_32
        :pswitch_1f
    .end packed-switch
.end method
