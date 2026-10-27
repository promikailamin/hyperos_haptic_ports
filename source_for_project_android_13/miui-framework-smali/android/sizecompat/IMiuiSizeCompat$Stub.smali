.class public abstract Landroid/sizecompat/IMiuiSizeCompat$Stub;
.super Landroid/os/Binder;
.source "IMiuiSizeCompat.java"

# interfaces
.implements Landroid/sizecompat/IMiuiSizeCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sizecompat/IMiuiSizeCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sizecompat/IMiuiSizeCompat$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cancelSizeCompatNotification:I = 0x6

.field static final blacklist TRANSACTION_getMiuiGameSizeCompatEnabledApps:I = 0x9

.field static final blacklist TRANSACTION_getMiuiSizeCompatAppRatio:I = 0xa

.field static final blacklist TRANSACTION_getMiuiSizeCompatEnabledApps:I = 0x1

.field static final blacklist TRANSACTION_getMiuiSizeCompatInstalledApps:I = 0x7

.field static final blacklist TRANSACTION_restorePrevRatio:I = 0x5

.field static final blacklist TRANSACTION_setMiuiGameSizeCompatList:I = 0x8

.field static final blacklist TRANSACTION_setMiuiSizeCompatEnabled:I = 0x2

.field static final blacklist TRANSACTION_setMiuiSizeCompatRatio:I = 0x3

.field static final blacklist TRANSACTION_switchToFullscreen:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 61
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 62
    const-string v0, "android.sizecompat.IMiuiSizeCompat"

    invoke-virtual {p0, p0, v0}, Landroid/sizecompat/IMiuiSizeCompat$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/sizecompat/IMiuiSizeCompat;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 70
    if-nez p0, :cond_4

    .line 71
    const/4 v0, 0x0

    return-object v0

    .line 73
    :cond_4
    const-string v0, "android.sizecompat.IMiuiSizeCompat"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 74
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/sizecompat/IMiuiSizeCompat;

    if-eqz v1, :cond_14

    .line 75
    move-object v1, v0

    check-cast v1, Landroid/sizecompat/IMiuiSizeCompat;

    return-object v1

    .line 77
    :cond_14
    new-instance v1, Landroid/sizecompat/IMiuiSizeCompat$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/sizecompat/IMiuiSizeCompat$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method static synthetic blacklist lambda$onTransact$0(Landroid/os/Parcel;Ljava/lang/String;Landroid/sizecompat/AspectRatioInfo;)V
    .registers 4
    .param p0, "reply"    # Landroid/os/Parcel;
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Landroid/sizecompat/AspectRatioInfo;

    .line 108
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 110
    return-void
.end method

.method static synthetic blacklist lambda$onTransact$1(Landroid/os/Parcel;Ljava/lang/String;Landroid/sizecompat/AspectRatioInfo;)V
    .registers 4
    .param p0, "reply"    # Landroid/os/Parcel;
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Landroid/sizecompat/AspectRatioInfo;

    .line 176
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 178
    return-void
.end method

.method static synthetic blacklist lambda$onTransact$2(Landroid/os/Parcel;Ljava/lang/String;Landroid/sizecompat/AspectRatioInfo;)V
    .registers 4
    .param p0, "reply"    # Landroid/os/Parcel;
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Landroid/sizecompat/AspectRatioInfo;

    .line 203
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 205
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 81
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    const-string v0, "android.sizecompat.IMiuiSizeCompat"

    .line 86
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 87
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    :cond_d
    packed-switch p1, :pswitch_data_108

    .line 97
    const/4 v2, -0x1

    packed-switch p1, :pswitch_data_10e

    .line 221
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 93
    :pswitch_19
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    return v1

    .line 212
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-virtual {p0, v2}, Landroid/sizecompat/IMiuiSizeCompat$Stub;->getMiuiSizeCompatAppRatio(Ljava/lang/String;)F

    move-result v3

    .line 215
    .local v3, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 217
    goto/16 :goto_106

    .line 196
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":F
    :pswitch_30
    invoke-virtual {p0}, Landroid/sizecompat/IMiuiSizeCompat$Stub;->getMiuiGameSizeCompatEnabledApps()Ljava/util/Map;

    move-result-object v3

    .line 197
    .local v3, "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/sizecompat/AspectRatioInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    if-nez v3, :cond_3e

    .line 199
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_106

    .line 201
    :cond_3e
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    new-instance v2, Landroid/sizecompat/IMiuiSizeCompat$Stub$$ExternalSyntheticLambda2;

    invoke-direct {v2, p3}, Landroid/sizecompat/IMiuiSizeCompat$Stub$$ExternalSyntheticLambda2;-><init>(Landroid/os/Parcel;)V

    invoke-interface {v3, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 207
    goto/16 :goto_106

    .line 185
    .end local v3    # "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/sizecompat/AspectRatioInfo;>;"
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 187
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 188
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-virtual {p0, v2, v3}, Landroid/sizecompat/IMiuiSizeCompat$Stub;->setMiuiGameSizeCompatList(Ljava/lang/String;Z)Z

    move-result v4

    .line 190
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 192
    goto/16 :goto_106

    .line 169
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_66
    invoke-virtual {p0}, Landroid/sizecompat/IMiuiSizeCompat$Stub;->getMiuiSizeCompatInstalledApps()Ljava/util/Map;

    move-result-object v3

    .line 170
    .local v3, "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/sizecompat/AspectRatioInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    if-nez v3, :cond_74

    .line 172
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_106

    .line 174
    :cond_74
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    new-instance v2, Landroid/sizecompat/IMiuiSizeCompat$Stub$$ExternalSyntheticLambda1;

    invoke-direct {v2, p3}, Landroid/sizecompat/IMiuiSizeCompat$Stub$$ExternalSyntheticLambda1;-><init>(Landroid/os/Parcel;)V

    invoke-interface {v3, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 180
    goto/16 :goto_106

    .line 161
    .end local v3    # "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/sizecompat/AspectRatioInfo;>;"
    :pswitch_85
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 162
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 163
    invoke-virtual {p0, v2}, Landroid/sizecompat/IMiuiSizeCompat$Stub;->cancelSizeCompatNotification(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    goto/16 :goto_106

    .line 154
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_94
    invoke-virtual {p0}, Landroid/sizecompat/IMiuiSizeCompat$Stub;->restorePrevRatio()V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    goto :goto_106

    .line 145
    :pswitch_9b
    sget-object v2, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerToken;

    .line 146
    .local v2, "_arg0":Landroid/window/WindowContainerToken;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    invoke-virtual {p0, v2}, Landroid/sizecompat/IMiuiSizeCompat$Stub;->switchToFullscreen(Landroid/window/WindowContainerToken;)Z

    move-result v3

    .line 148
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 150
    goto :goto_106

    .line 129
    .end local v2    # "_arg0":Landroid/window/WindowContainerToken;
    .end local v3    # "_result":Z
    :pswitch_b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 133
    .local v3, "_arg1":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 135
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 136
    .local v5, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 137
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/sizecompat/IMiuiSizeCompat$Stub;->setMiuiSizeCompatRatio(Ljava/lang/String;FZZ)Z

    move-result v6

    .line 138
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 140
    goto :goto_106

    .line 117
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":F
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":Z
    .end local v6    # "_result":Z
    :pswitch_cf
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 119
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/sizecompat/AspectRatioInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sizecompat/AspectRatioInfo;

    .line 120
    .local v3, "_arg1":Landroid/sizecompat/AspectRatioInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {p0, v2, v3}, Landroid/sizecompat/IMiuiSizeCompat$Stub;->setMiuiSizeCompatEnabled(Ljava/lang/String;Landroid/sizecompat/AspectRatioInfo;)Z

    move-result v4

    .line 122
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 124
    goto :goto_106

    .line 101
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/sizecompat/AspectRatioInfo;
    .end local v4    # "_result":Z
    :pswitch_e9
    invoke-virtual {p0}, Landroid/sizecompat/IMiuiSizeCompat$Stub;->getMiuiSizeCompatEnabledApps()Ljava/util/Map;

    move-result-object v3

    .line 102
    .local v3, "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/sizecompat/AspectRatioInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    if-nez v3, :cond_f6

    .line 104
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_106

    .line 106
    :cond_f6
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    new-instance v2, Landroid/sizecompat/IMiuiSizeCompat$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v2, p3}, Landroid/sizecompat/IMiuiSizeCompat$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;)V

    invoke-interface {v3, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 112
    nop

    .line 224
    .end local v3    # "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/sizecompat/AspectRatioInfo;>;"
    :goto_106
    return v1

    nop

    :pswitch_data_108
    .packed-switch 0x5f4e5446
        :pswitch_19
    .end packed-switch

    :pswitch_data_10e
    .packed-switch 0x1
        :pswitch_e9
        :pswitch_cf
        :pswitch_b1
        :pswitch_9b
        :pswitch_94
        :pswitch_85
        :pswitch_66
        :pswitch_4f
        :pswitch_30
        :pswitch_1d
    .end packed-switch
.end method
