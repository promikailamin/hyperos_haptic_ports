.class public abstract Lvendor/lineage/livedisplay/IPictureAdjustment$Stub;
.super Landroid/os/Binder;
.source "IPictureAdjustment.java"

# interfaces
.implements Lvendor/lineage/livedisplay/IPictureAdjustment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/lineage/livedisplay/IPictureAdjustment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/lineage/livedisplay/IPictureAdjustment$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getContrastRange:I = 0x4

.field static final blacklist TRANSACTION_getDefaultPictureAdjustment:I = 0x7

.field static final blacklist TRANSACTION_getHueRange:I = 0x1

.field static final blacklist TRANSACTION_getIntensityRange:I = 0x3

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getPictureAdjustment:I = 0x6

.field static final blacklist TRANSACTION_getSaturationRange:I = 0x2

.field static final blacklist TRANSACTION_getSaturationThresholdRange:I = 0x5

.field static final blacklist TRANSACTION_setPictureAdjustment:I = 0x8


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 73
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 74
    invoke-virtual {p0}, Lvendor/lineage/livedisplay/IPictureAdjustment$Stub;->markVintfStability()V

    .line 75
    sget-object v0, Lvendor/lineage/livedisplay/IPictureAdjustment$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/lineage/livedisplay/IPictureAdjustment$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lvendor/lineage/livedisplay/IPictureAdjustment;
    .registers 3

    .line 83
    if-nez p0, :cond_4

    .line 84
    const/4 p0, 0x0

    return-object p0

    .line 86
    :cond_4
    sget-object v0, Lvendor/lineage/livedisplay/IPictureAdjustment$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_13

    instance-of v1, v0, Lvendor/lineage/livedisplay/IPictureAdjustment;

    if-eqz v1, :cond_13

    .line 88
    check-cast v0, Lvendor/lineage/livedisplay/IPictureAdjustment;

    return-object v0

    .line 90
    :cond_13
    new-instance v0, Lvendor/lineage/livedisplay/IPictureAdjustment$Stub$Proxy;

    invoke-direct {v0, p0}, Lvendor/lineage/livedisplay/IPictureAdjustment$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 94
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    sget-object v0, Lvendor/lineage/livedisplay/IPictureAdjustment$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 99
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 100
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 103
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    return v2

    .line 106
    :cond_16
    if-ne p1, v1, :cond_23

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p0}, Lvendor/lineage/livedisplay/IPictureAdjustment$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    return v2

    .line 111
    :cond_23
    const v0, 0xfffffe

    if-ne p1, v0, :cond_33

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p0}, Lvendor/lineage/livedisplay/IPictureAdjustment$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    return v2

    .line 116
    :cond_33
    packed-switch p1, :pswitch_data_9c

    .line 178
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 170
    :pswitch_3b
    sget-object p1, Lvendor/lineage/livedisplay/HSIC;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/lineage/livedisplay/HSIC;

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 172
    invoke-virtual {p0, p1}, Lvendor/lineage/livedisplay/IPictureAdjustment$Stub;->setPictureAdjustment(Lvendor/lineage/livedisplay/HSIC;)V

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    goto :goto_9a

    .line 162
    :pswitch_4d
    invoke-virtual {p0}, Lvendor/lineage/livedisplay/IPictureAdjustment$Stub;->getDefaultPictureAdjustment()Lvendor/lineage/livedisplay/HSIC;

    move-result-object p1

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 165
    goto :goto_9a

    .line 155
    :pswitch_58
    invoke-virtual {p0}, Lvendor/lineage/livedisplay/IPictureAdjustment$Stub;->getPictureAdjustment()Lvendor/lineage/livedisplay/HSIC;

    move-result-object p1

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 158
    goto :goto_9a

    .line 148
    :pswitch_63
    invoke-virtual {p0}, Lvendor/lineage/livedisplay/IPictureAdjustment$Stub;->getSaturationThresholdRange()Lvendor/lineage/livedisplay/FloatRange;

    move-result-object p1

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 151
    goto :goto_9a

    .line 141
    :pswitch_6e
    invoke-virtual {p0}, Lvendor/lineage/livedisplay/IPictureAdjustment$Stub;->getContrastRange()Lvendor/lineage/livedisplay/FloatRange;

    move-result-object p1

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 144
    goto :goto_9a

    .line 134
    :pswitch_79
    invoke-virtual {p0}, Lvendor/lineage/livedisplay/IPictureAdjustment$Stub;->getIntensityRange()Lvendor/lineage/livedisplay/FloatRange;

    move-result-object p1

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 137
    goto :goto_9a

    .line 127
    :pswitch_84
    invoke-virtual {p0}, Lvendor/lineage/livedisplay/IPictureAdjustment$Stub;->getSaturationRange()Lvendor/lineage/livedisplay/FloatRange;

    move-result-object p1

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 130
    goto :goto_9a

    .line 120
    :pswitch_8f
    invoke-virtual {p0}, Lvendor/lineage/livedisplay/IPictureAdjustment$Stub;->getHueRange()Lvendor/lineage/livedisplay/FloatRange;

    move-result-object p1

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 123
    nop

    .line 181
    :goto_9a
    return v2

    nop

    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_8f
        :pswitch_84
        :pswitch_79
        :pswitch_6e
        :pswitch_63
        :pswitch_58
        :pswitch_4d
        :pswitch_3b
    .end packed-switch
.end method
