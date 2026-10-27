.class public abstract Lmiui/migard/IMiGard$Stub;
.super Landroid/os/Binder;
.source "IMiGard.java"

# interfaces
.implements Lmiui/migard/IMiGard;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/migard/IMiGard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/migard/IMiGard$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addGameCleanUserProtectList:I = 0x6

.field static final blacklist TRANSACTION_configCompactorWhiteList:I = 0xb

.field static final blacklist TRANSACTION_configGameList:I = 0x9

.field static final blacklist TRANSACTION_configGameMemoryCleaner:I = 0xc

.field static final blacklist TRANSACTION_configKillerWhiteList:I = 0xa

.field static final blacklist TRANSACTION_configPowerWhiteList:I = 0x8

.field static final blacklist TRANSACTION_configTrace:I = 0x5

.field static final blacklist TRANSACTION_dumpTrace:I = 0x4

.field static final blacklist TRANSACTION_reclaimBackgroundMemory:I = 0xd

.field static final blacklist TRANSACTION_removeGameCleanUserProtectList:I = 0x7

.field static final blacklist TRANSACTION_startDefaultTrace:I = 0x1

.field static final blacklist TRANSACTION_startTrace:I = 0x2

.field static final blacklist TRANSACTION_stopTrace:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 63
    const-string v0, "miui.migard.IMiGard"

    invoke-virtual {p0, p0, v0}, Lmiui/migard/IMiGard$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lmiui/migard/IMiGard;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 71
    if-nez p0, :cond_4

    .line 72
    const/4 v0, 0x0

    return-object v0

    .line 74
    :cond_4
    const-string v0, "miui.migard.IMiGard"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 75
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/migard/IMiGard;

    if-eqz v1, :cond_14

    .line 76
    move-object v1, v0

    check-cast v1, Lmiui/migard/IMiGard;

    return-object v1

    .line 78
    :cond_14
    new-instance v1, Lmiui/migard/IMiGard$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/migard/IMiGard$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 82
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    const-string v0, "miui.migard.IMiGard"

    .line 87
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 88
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    :cond_d
    packed-switch p1, :pswitch_data_be

    .line 98
    packed-switch p1, :pswitch_data_c4

    .line 212
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 94
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    return v1

    .line 207
    :pswitch_1c
    invoke-virtual {p0}, Lmiui/migard/IMiGard$Stub;->reclaimBackgroundMemory()V

    .line 208
    goto/16 :goto_bd

    .line 198
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 201
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 202
    invoke-virtual {p0, v2, v3}, Lmiui/migard/IMiGard$Stub;->configGameMemoryCleaner(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    goto/16 :goto_bd

    .line 190
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 191
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    invoke-virtual {p0, v2}, Lmiui/migard/IMiGard$Stub;->configCompactorWhiteList(Ljava/util/List;)V

    .line 193
    goto/16 :goto_bd

    .line 182
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 183
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-virtual {p0, v2}, Lmiui/migard/IMiGard$Stub;->configKillerWhiteList(Ljava/util/List;)V

    .line 185
    goto/16 :goto_bd

    .line 174
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 175
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-virtual {p0, v2}, Lmiui/migard/IMiGard$Stub;->configGameList(Ljava/util/List;)V

    .line 177
    goto :goto_bd

    .line 166
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {p0, v2}, Lmiui/migard/IMiGard$Stub;->configPowerWhiteList(Ljava/lang/String;)V

    .line 169
    goto :goto_bd

    .line 158
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 159
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    invoke-virtual {p0, v2}, Lmiui/migard/IMiGard$Stub;->removeGameCleanUserProtectList(Ljava/util/List;)V

    .line 161
    goto :goto_bd

    .line 148
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 150
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 151
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {p0, v2, v3}, Lmiui/migard/IMiGard$Stub;->addGameCleanUserProtectList(Ljava/util/List;Z)V

    .line 153
    goto :goto_bd

    .line 140
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg1":Z
    :pswitch_79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, v2}, Lmiui/migard/IMiGard$Stub;->configTrace(Ljava/lang/String;)V

    .line 143
    goto :goto_bd

    .line 131
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_84
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 132
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 133
    invoke-virtual {p0, v2}, Lmiui/migard/IMiGard$Stub;->dumpTrace(Z)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    goto :goto_bd

    .line 122
    .end local v2    # "_arg0":Z
    :pswitch_92
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 123
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 124
    invoke-virtual {p0, v2}, Lmiui/migard/IMiGard$Stub;->stopTrace(Z)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    goto :goto_bd

    .line 111
    .end local v2    # "_arg0":Z
    :pswitch_a0
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 114
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 115
    invoke-virtual {p0, v2, v3}, Lmiui/migard/IMiGard$Stub;->startTrace([Ljava/lang/String;Z)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    goto :goto_bd

    .line 103
    .end local v2    # "_arg0":[Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 104
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 105
    invoke-virtual {p0, v2}, Lmiui/migard/IMiGard$Stub;->startDefaultTrace(Z)V

    .line 106
    nop

    .line 215
    .end local v2    # "_arg0":Z
    :goto_bd
    return v1

    :pswitch_data_be
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_c4
    .packed-switch 0x1
        :pswitch_b2
        :pswitch_a0
        :pswitch_92
        :pswitch_84
        :pswitch_79
        :pswitch_6a
        :pswitch_5f
        :pswitch_54
        :pswitch_49
        :pswitch_3d
        :pswitch_31
        :pswitch_21
        :pswitch_1c
    .end packed-switch
.end method
