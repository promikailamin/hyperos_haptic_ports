.class public abstract Lcom/miui/window/IMiuiEmbeddingWindow$Stub;
.super Landroid/os/Binder;
.source "IMiuiEmbeddingWindow.java"

# interfaces
.implements Lcom/miui/window/IMiuiEmbeddingWindow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/window/IMiuiEmbeddingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/window/IMiuiEmbeddingWindow$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getEmbeddedApps:I = 0x5

.field static final blacklist TRANSACTION_getEmbeddingPortraitBounds:I = 0x9

.field static final blacklist TRANSACTION_getSystemEmbeddedRules:I = 0x1

.field static final blacklist TRANSACTION_isAppNeedRelaunch:I = 0x7

.field static final blacklist TRANSACTION_isDisableSensor:I = 0x8

.field static final blacklist TRANSACTION_isEmbeddingEnabledForPackage:I = 0x2

.field static final blacklist TRANSACTION_isUsingCameraWhenEmbedded:I = 0x3

.field static final blacklist TRANSACTION_setEmbeddedEnable:I = 0x6

.field static final blacklist TRANSACTION_setEmbeddingHomePage:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 58
    const-string v0, "com.miui.window.IMiuiEmbeddingWindow"

    invoke-virtual {p0, p0, v0}, Lcom/miui/window/IMiuiEmbeddingWindow$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/miui/window/IMiuiEmbeddingWindow;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 66
    if-nez p0, :cond_4

    .line 67
    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_4
    const-string v0, "com.miui.window.IMiuiEmbeddingWindow"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 70
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/miui/window/IMiuiEmbeddingWindow;

    if-eqz v1, :cond_14

    .line 71
    move-object v1, v0

    check-cast v1, Lcom/miui/window/IMiuiEmbeddingWindow;

    return-object v1

    .line 73
    :cond_14
    new-instance v1, Lcom/miui/window/IMiuiEmbeddingWindow$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/window/IMiuiEmbeddingWindow$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 82
    packed-switch p0, :pswitch_data_22

    .line 122
    const/4 v0, 0x0

    return-object v0

    .line 118
    :pswitch_5
    const-string v0, "getEmbeddingPortraitBounds"

    return-object v0

    .line 114
    :pswitch_8
    const-string v0, "isDisableSensor"

    return-object v0

    .line 110
    :pswitch_b
    const-string v0, "isAppNeedRelaunch"

    return-object v0

    .line 106
    :pswitch_e
    const-string/jumbo v0, "setEmbeddedEnable"

    return-object v0

    .line 102
    :pswitch_12
    const-string v0, "getEmbeddedApps"

    return-object v0

    .line 98
    :pswitch_15
    const-string/jumbo v0, "setEmbeddingHomePage"

    return-object v0

    .line 94
    :pswitch_19
    const-string v0, "isUsingCameraWhenEmbedded"

    return-object v0

    .line 90
    :pswitch_1c
    const-string v0, "isEmbeddingEnabledForPackage"

    return-object v0

    .line 86
    :pswitch_1f
    const-string v0, "getSystemEmbeddedRules"

    return-object v0

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_15
        :pswitch_12
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 77
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 430
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 129
    invoke-static {p1}, Lcom/miui/window/IMiuiEmbeddingWindow$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 133
    const-string v0, "com.miui.window.IMiuiEmbeddingWindow"

    .line 134
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 135
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    :cond_d
    packed-switch p1, :pswitch_data_b8

    .line 145
    packed-switch p1, :pswitch_data_be

    .line 235
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 141
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    return v1

    .line 228
    :pswitch_1c
    invoke-virtual {p0}, Lcom/miui/window/IMiuiEmbeddingWindow$Stub;->getEmbeddingPortraitBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 229
    .local v2, "_result":Landroid/graphics/Rect;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 231
    goto/16 :goto_b6

    .line 219
    .end local v2    # "_result":Landroid/graphics/Rect;
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 221
    invoke-virtual {p0, v2}, Lcom/miui/window/IMiuiEmbeddingWindow$Stub;->isDisableSensor(Ljava/lang/String;)Z

    move-result v3

    .line 222
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 224
    goto/16 :goto_b6

    .line 209
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 210
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {p0, v2}, Lcom/miui/window/IMiuiEmbeddingWindow$Stub;->isAppNeedRelaunch(Ljava/lang/String;)Z

    move-result v3

    .line 212
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 214
    goto :goto_b6

    .line 197
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 199
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 200
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-virtual {p0, v2, v3}, Lcom/miui/window/IMiuiEmbeddingWindow$Stub;->setEmbeddedEnable(Ljava/lang/String;Z)Z

    move-result v4

    .line 202
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 204
    goto :goto_b6

    .line 189
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_63
    invoke-virtual {p0}, Lcom/miui/window/IMiuiEmbeddingWindow$Stub;->getEmbeddedApps()Ljava/util/Map;

    move-result-object v2

    .line 190
    .local v2, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 192
    goto :goto_b6

    .line 180
    .end local v2    # "_result":Ljava/util/Map;
    :pswitch_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 181
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    invoke-virtual {p0, v2}, Lcom/miui/window/IMiuiEmbeddingWindow$Stub;->setEmbeddingHomePage(Landroid/os/IBinder;)Z

    move-result v3

    .line 183
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 185
    goto :goto_b6

    .line 170
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":Z
    :pswitch_80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 172
    invoke-virtual {p0, v2}, Lcom/miui/window/IMiuiEmbeddingWindow$Stub;->isUsingCameraWhenEmbedded(Ljava/lang/String;)Z

    move-result v3

    .line 173
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 175
    goto :goto_b6

    .line 160
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 161
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-virtual {p0, v2}, Lcom/miui/window/IMiuiEmbeddingWindow$Stub;->isEmbeddingEnabledForPackage(Ljava/lang/String;)Z

    move-result v3

    .line 163
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 165
    goto :goto_b6

    .line 150
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 151
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {p0, v2}, Lcom/miui/window/IMiuiEmbeddingWindow$Stub;->getSystemEmbeddedRules(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 153
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 155
    nop

    .line 238
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/Bundle;
    :goto_b6
    return v1

    nop

    :pswitch_data_b8
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_a4
        :pswitch_92
        :pswitch_80
        :pswitch_6e
        :pswitch_63
        :pswitch_4d
        :pswitch_3b
        :pswitch_28
        :pswitch_1c
    .end packed-switch
.end method
