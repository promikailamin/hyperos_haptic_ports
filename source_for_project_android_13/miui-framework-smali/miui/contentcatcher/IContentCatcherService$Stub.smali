.class public abstract Lmiui/contentcatcher/IContentCatcherService$Stub;
.super Landroid/os/Binder;
.source "IContentCatcherService.java"

# interfaces
.implements Lmiui/contentcatcher/IContentCatcherService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/contentcatcher/IContentCatcherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/contentcatcher/IContentCatcherService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_decorateContent:I = 0x7

.field static final blacklist TRANSACTION_getPageConfig:I = 0x1

.field static final blacklist TRANSACTION_onContentCatched:I = 0x4

.field static final blacklist TRANSACTION_registerContentInjector:I = 0x2

.field static final blacklist TRANSACTION_registerContentListener:I = 0x5

.field static final blacklist TRANSACTION_unregisterContentInjector:I = 0x3

.field static final blacklist TRANSACTION_unregisterContentListener:I = 0x6

.field static final blacklist TRANSACTION_updateClientConfig:I = 0x9

.field static final blacklist TRANSACTION_updateConfig:I = 0x8

.field static final blacklist TRANSACTION_updateJobValidity:I = 0xa


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    const-string v0, "miui.contentcatcher.IContentCatcherService"

    invoke-virtual {p0, p0, v0}, Lmiui/contentcatcher/IContentCatcherService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static whitelist asInterface(Landroid/os/IBinder;)Lmiui/contentcatcher/IContentCatcherService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 60
    if-nez p0, :cond_4

    .line 61
    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_4
    const-string v0, "miui.contentcatcher.IContentCatcherService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 64
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/contentcatcher/IContentCatcherService;

    if-eqz v1, :cond_14

    .line 65
    move-object v1, v0

    check-cast v1, Lmiui/contentcatcher/IContentCatcherService;

    return-object v1

    .line 67
    :cond_14
    new-instance v1, Lmiui/contentcatcher/IContentCatcherService$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/contentcatcher/IContentCatcherService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 71
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

    .line 75
    const-string v0, "miui.contentcatcher.IContentCatcherService"

    .line 76
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 77
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    :cond_d
    packed-switch p1, :pswitch_data_fe

    .line 87
    packed-switch p1, :pswitch_data_104

    .line 198
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 83
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    return v1

    .line 186
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 191
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    invoke-virtual {p0, v2, v3, v4}, Lmiui/contentcatcher/IContentCatcherService$Stub;->updateJobValidity(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    goto/16 :goto_fc

    .line 173
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Z
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 175
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 177
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 178
    .restart local v4    # "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {p0, v2, v3, v4}, Lmiui/contentcatcher/IContentCatcherService$Stub;->updateClientConfig(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    goto/16 :goto_fc

    .line 164
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Z
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 166
    invoke-virtual {p0, v2}, Lmiui/contentcatcher/IContentCatcherService$Stub;->updateConfig([Ljava/lang/String;)V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    goto/16 :goto_fc

    .line 151
    .end local v2    # "_arg0":[Ljava/lang/String;
    :pswitch_59
    sget-object v2, Lmiui/contentcatcher/sdk/ClientToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/contentcatcher/sdk/ClientToken;

    .line 153
    .local v2, "_arg0":Lmiui/contentcatcher/sdk/ClientToken;
    sget-object v3, Lmiui/contentcatcher/sdk/Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/contentcatcher/sdk/Token;

    .line 155
    .local v3, "_arg1":Lmiui/contentcatcher/sdk/Token;
    sget-object v4, Lmiui/contentcatcher/sdk/DecorateContentParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/contentcatcher/sdk/DecorateContentParam;

    .line 156
    .local v4, "_arg2":Lmiui/contentcatcher/sdk/DecorateContentParam;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {p0, v2, v3, v4}, Lmiui/contentcatcher/IContentCatcherService$Stub;->decorateContent(Lmiui/contentcatcher/sdk/ClientToken;Lmiui/contentcatcher/sdk/Token;Lmiui/contentcatcher/sdk/DecorateContentParam;)V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    goto/16 :goto_fc

    .line 142
    .end local v2    # "_arg0":Lmiui/contentcatcher/sdk/ClientToken;
    .end local v3    # "_arg1":Lmiui/contentcatcher/sdk/Token;
    .end local v4    # "_arg2":Lmiui/contentcatcher/sdk/DecorateContentParam;
    :pswitch_7c
    sget-object v2, Lmiui/contentcatcher/sdk/ClientToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/contentcatcher/sdk/ClientToken;

    .line 143
    .restart local v2    # "_arg0":Lmiui/contentcatcher/sdk/ClientToken;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    invoke-virtual {p0, v2}, Lmiui/contentcatcher/IContentCatcherService$Stub;->unregisterContentListener(Lmiui/contentcatcher/sdk/ClientToken;)V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    goto :goto_fc

    .line 131
    .end local v2    # "_arg0":Lmiui/contentcatcher/sdk/ClientToken;
    :pswitch_8e
    sget-object v2, Lmiui/contentcatcher/sdk/ClientToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/contentcatcher/sdk/ClientToken;

    .line 133
    .restart local v2    # "_arg0":Lmiui/contentcatcher/sdk/ClientToken;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lmiui/contentcatcher/sdk/listener/IContentListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;

    move-result-object v3

    .line 134
    .local v3, "_arg1":Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    invoke-virtual {p0, v2, v3}, Lmiui/contentcatcher/IContentCatcherService$Stub;->registerContentListener(Lmiui/contentcatcher/sdk/ClientToken;Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    goto :goto_fc

    .line 122
    .end local v2    # "_arg0":Lmiui/contentcatcher/sdk/ClientToken;
    .end local v3    # "_arg1":Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;
    :pswitch_a8
    sget-object v2, Lmiui/contentcatcher/sdk/Content;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/contentcatcher/sdk/Content;

    .line 123
    .local v2, "_arg0":Lmiui/contentcatcher/sdk/Content;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 124
    invoke-virtual {p0, v2}, Lmiui/contentcatcher/IContentCatcherService$Stub;->onContentCatched(Lmiui/contentcatcher/sdk/Content;)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    goto :goto_fc

    .line 113
    .end local v2    # "_arg0":Lmiui/contentcatcher/sdk/Content;
    :pswitch_ba
    sget-object v2, Lmiui/contentcatcher/sdk/Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/contentcatcher/sdk/Token;

    .line 114
    .local v2, "_arg0":Lmiui/contentcatcher/sdk/Token;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 115
    invoke-virtual {p0, v2}, Lmiui/contentcatcher/IContentCatcherService$Stub;->unregisterContentInjector(Lmiui/contentcatcher/sdk/Token;)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    goto :goto_fc

    .line 102
    .end local v2    # "_arg0":Lmiui/contentcatcher/sdk/Token;
    :pswitch_cc
    sget-object v2, Lmiui/contentcatcher/sdk/Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/contentcatcher/sdk/Token;

    .line 104
    .restart local v2    # "_arg0":Lmiui/contentcatcher/sdk/Token;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lmiui/contentcatcher/sdk/injector/IContentDecorateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/contentcatcher/sdk/injector/IContentDecorateCallback;

    move-result-object v3

    .line 105
    .local v3, "_arg1":Lmiui/contentcatcher/sdk/injector/IContentDecorateCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 106
    invoke-virtual {p0, v2, v3}, Lmiui/contentcatcher/IContentCatcherService$Stub;->registerContentInjector(Lmiui/contentcatcher/sdk/Token;Lmiui/contentcatcher/sdk/injector/IContentDecorateCallback;)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    goto :goto_fc

    .line 92
    .end local v2    # "_arg0":Lmiui/contentcatcher/sdk/Token;
    .end local v3    # "_arg1":Lmiui/contentcatcher/sdk/injector/IContentDecorateCallback;
    :pswitch_e6
    sget-object v2, Lmiui/contentcatcher/sdk/Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/contentcatcher/sdk/Token;

    .line 93
    .restart local v2    # "_arg0":Lmiui/contentcatcher/sdk/Token;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 94
    invoke-virtual {p0, v2}, Lmiui/contentcatcher/IContentCatcherService$Stub;->getPageConfig(Lmiui/contentcatcher/sdk/Token;)Lmiui/contentcatcher/sdk/data/PageConfig;

    move-result-object v3

    .line 95
    .local v3, "_result":Lmiui/contentcatcher/sdk/data/PageConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 97
    nop

    .line 201
    .end local v2    # "_arg0":Lmiui/contentcatcher/sdk/Token;
    .end local v3    # "_result":Lmiui/contentcatcher/sdk/data/PageConfig;
    :goto_fc
    return v1

    nop

    :pswitch_data_fe
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_104
    .packed-switch 0x1
        :pswitch_e6
        :pswitch_cc
        :pswitch_ba
        :pswitch_a8
        :pswitch_8e
        :pswitch_7c
        :pswitch_59
        :pswitch_4a
        :pswitch_33
        :pswitch_1c
    .end packed-switch
.end method
