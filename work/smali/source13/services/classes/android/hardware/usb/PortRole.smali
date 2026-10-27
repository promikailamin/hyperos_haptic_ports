.class public final Landroid/hardware/usb/PortRole;
.super Ljava/lang/Object;
.source "PortRole.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/PortRole$Tag;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/usb/PortRole;",
            ">;"
        }
    .end annotation
.end field

.field public static final dataRole:I = 0x1

.field public static final mode:I = 0x2

.field public static final powerRole:I


# instance fields
.field private _tag:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 83
    new-instance v0, Landroid/hardware/usb/PortRole$1;

    invoke-direct {v0}, Landroid/hardware/usb/PortRole$1;-><init>()V

    sput-object v0, Landroid/hardware/usb/PortRole;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    .line 16
    .local v0, "_value":B
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/usb/PortRole;->_tag:I

    .line 17
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/usb/PortRole;->_value:Ljava/lang/Object;

    .line 18
    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;)V
    .registers 3
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Landroid/hardware/usb/PortRole;->_tag:I

    .line 26
    iput-object p2, p0, Landroid/hardware/usb/PortRole;->_value:Ljava/lang/Object;

    .line 27
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p0, p1}, Landroid/hardware/usb/PortRole;->readFromParcel(Landroid/os/Parcel;)V

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/usb/PortRole-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/usb/PortRole;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .registers 5
    .param p1, "tag"    # I

    .line 142
    invoke-virtual {p0}, Landroid/hardware/usb/PortRole;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 145
    return-void

    .line 143
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/usb/PortRole;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/usb/PortRole;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/usb/PortRole;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private _set(ILjava/lang/Object;)V
    .registers 3
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 157
    iput p1, p0, Landroid/hardware/usb/PortRole;->_tag:I

    .line 158
    iput-object p2, p0, Landroid/hardware/usb/PortRole;->_value:Ljava/lang/Object;

    .line 159
    return-void
.end method

.method private _tagString(I)Ljava/lang/String;
    .registers 5
    .param p1, "_tag"    # I

    .line 148
    packed-switch p1, :pswitch_data_28

    .line 153
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :pswitch_1d
    const-string/jumbo v0, "mode"

    return-object v0

    .line 150
    :pswitch_21
    const-string v0, "dataRole"

    return-object v0

    .line 149
    :pswitch_24
    const-string/jumbo v0, "powerRole"

    return-object v0

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_24
        :pswitch_21
        :pswitch_1d
    .end packed-switch
.end method

.method public static dataRole(B)Landroid/hardware/usb/PortRole;
    .registers 4
    .param p0, "_value"    # B

    .line 51
    new-instance v0, Landroid/hardware/usb/PortRole;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/hardware/usb/PortRole;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static mode(B)Landroid/hardware/usb/PortRole;
    .registers 4
    .param p0, "_value"    # B

    .line 66
    new-instance v0, Landroid/hardware/usb/PortRole;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Landroid/hardware/usb/PortRole;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static powerRole(B)Landroid/hardware/usb/PortRole;
    .registers 4
    .param p0, "_value"    # B

    .line 36
    new-instance v0, Landroid/hardware/usb/PortRole;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/hardware/usb/PortRole;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/usb/PortRole;->getTag()I

    .line 138
    return v0
.end method

.method public getDataRole()B
    .registers 2

    .line 55
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/usb/PortRole;->_assertTag(I)V

    .line 56
    iget-object v0, p0, Landroid/hardware/usb/PortRole;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public getMode()B
    .registers 2

    .line 70
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/usb/PortRole;->_assertTag(I)V

    .line 71
    iget-object v0, p0, Landroid/hardware/usb/PortRole;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public getPowerRole()B
    .registers 2

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/usb/PortRole;->_assertTag(I)V

    .line 41
    iget-object v0, p0, Landroid/hardware/usb/PortRole;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public final getStability()I
    .registers 2

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public getTag()I
    .registers 2

    .line 30
    iget v0, p0, Landroid/hardware/usb/PortRole;->_tag:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 113
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_46

    .line 130
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "union: unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :pswitch_21
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 127
    .local v1, "_aidl_value":B
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/usb/PortRole;->_set(ILjava/lang/Object;)V

    .line 128
    return-void

    .line 121
    .end local v1    # "_aidl_value":B
    :pswitch_2d
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 122
    .restart local v1    # "_aidl_value":B
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/usb/PortRole;->_set(ILjava/lang/Object;)V

    .line 123
    return-void

    .line 116
    .end local v1    # "_aidl_value":B
    :pswitch_39
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 117
    .restart local v1    # "_aidl_value":B
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/usb/PortRole;->_set(ILjava/lang/Object;)V

    .line 118
    return-void

    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_39
        :pswitch_2d
        :pswitch_21
    .end packed-switch
.end method

.method public setDataRole(B)V
    .registers 4
    .param p1, "_value"    # B

    .line 60
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/hardware/usb/PortRole;->_set(ILjava/lang/Object;)V

    .line 61
    return-void
.end method

.method public setMode(B)V
    .registers 4
    .param p1, "_value"    # B

    .line 75
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Landroid/hardware/usb/PortRole;->_set(ILjava/lang/Object;)V

    .line 76
    return-void
.end method

.method public setPowerRole(B)V
    .registers 4
    .param p1, "_value"    # B

    .line 45
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/hardware/usb/PortRole;->_set(ILjava/lang/Object;)V

    .line 46
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 96
    iget v0, p0, Landroid/hardware/usb/PortRole;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget v0, p0, Landroid/hardware/usb/PortRole;->_tag:I

    packed-switch v0, :pswitch_data_24

    goto :goto_23

    .line 105
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/usb/PortRole;->getMode()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_23

    .line 102
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/usb/PortRole;->getDataRole()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 103
    goto :goto_23

    .line 99
    :pswitch_1b
    invoke-virtual {p0}, Landroid/hardware/usb/PortRole;->getPowerRole()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 100
    nop

    .line 108
    :goto_23
    return-void

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method
