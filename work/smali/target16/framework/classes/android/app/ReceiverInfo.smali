.class public Landroid/app/ReceiverInfo;
.super Ljava/lang/Object;
.source "ReceiverInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ReceiverInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist activityInfo:Landroid/content/pm/ActivityInfo;

.field public blacklist assumeDelivered:Z

.field public blacklist compatInfo:Landroid/content/res/CompatibilityInfo;

.field public blacklist data:Ljava/lang/String;

.field public blacklist extras:Landroid/os/Bundle;

.field public blacklist intent:Landroid/content/Intent;

.field public blacklist ordered:Z

.field public blacklist processState:I

.field public blacklist receiver:Landroid/content/IIntentReceiver;

.field public blacklist registered:Z

.field public blacklist resultCode:I

.field public blacklist sendingPackage:Ljava/lang/String;

.field public blacklist sendingUid:I

.field public blacklist sendingUser:I

.field public blacklist sticky:Z

.field public blacklist sync:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Landroid/app/ReceiverInfo$1;

    invoke-direct {v0}, Landroid/app/ReceiverInfo$1;-><init>()V

    sput-object v0, Landroid/app/ReceiverInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ReceiverInfo;->assumeDelivered:Z

    .line 22
    iput v0, p0, Landroid/app/ReceiverInfo;->sendingUser:I

    .line 23
    iput v0, p0, Landroid/app/ReceiverInfo;->processState:I

    .line 24
    iput v0, p0, Landroid/app/ReceiverInfo;->resultCode:I

    .line 25
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/ReceiverInfo;->sendingUid:I

    .line 31
    iput-boolean v0, p0, Landroid/app/ReceiverInfo;->registered:Z

    .line 34
    iput-boolean v0, p0, Landroid/app/ReceiverInfo;->ordered:Z

    .line 35
    iput-boolean v0, p0, Landroid/app/ReceiverInfo;->sticky:Z

    .line 39
    iput-boolean v0, p0, Landroid/app/ReceiverInfo;->sync:Z

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4

    .line 132
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 133
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_f

    .line 134
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 136
    :cond_f
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 124
    nop

    .line 125
    iget-object v0, p0, Landroid/app/ReceiverInfo;->intent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Landroid/app/ReceiverInfo;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 126
    iget-object v1, p0, Landroid/app/ReceiverInfo;->extras:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Landroid/app/ReceiverInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 127
    iget-object v1, p0, Landroid/app/ReceiverInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v1}, Landroid/app/ReceiverInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 128
    iget-object v1, p0, Landroid/app/ReceiverInfo;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-direct {p0, v1}, Landroid/app/ReceiverInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 129
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 82
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_1e5

    .line 83
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_1e3

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 116
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 119
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 83
    return-void

    .line 117
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_25
    :try_start_25
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iput-object v2, p0, Landroid/app/ReceiverInfo;->intent:Landroid/content/Intent;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_1e3

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_44

    .line 116
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3e

    .line 119
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 85
    return-void

    .line 117
    :cond_3e
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_44
    :try_start_44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ReceiverInfo;->data:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4e
    .catchall {:try_start_44 .. :try_end_4e} :catchall_1e3

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5f

    .line 116
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_59

    .line 119
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 87
    return-void

    .line 117
    :cond_59
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_5f
    :try_start_5f
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    iput-object v2, p0, Landroid/app/ReceiverInfo;->extras:Landroid/os/Bundle;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6d
    .catchall {:try_start_5f .. :try_end_6d} :catchall_1e3

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7e

    .line 116
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_78

    .line 119
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 89
    return-void

    .line 117
    :cond_78
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_7e
    :try_start_7e
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ReceiverInfo;->assumeDelivered:Z

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_88
    .catchall {:try_start_7e .. :try_end_88} :catchall_1e3

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_99

    .line 116
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_93

    .line 119
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 91
    return-void

    .line 117
    :cond_93
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_99
    :try_start_99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/ReceiverInfo;->sendingUser:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a3
    .catchall {:try_start_99 .. :try_end_a3} :catchall_1e3

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b4

    .line 116
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ae

    .line 119
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 93
    return-void

    .line 117
    :cond_ae
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 94
    :cond_b4
    :try_start_b4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/ReceiverInfo;->processState:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_be
    .catchall {:try_start_b4 .. :try_end_be} :catchall_1e3

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_cf

    .line 116
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c9

    .line 119
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 95
    return-void

    .line 117
    :cond_c9
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_cf
    :try_start_cf
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/ReceiverInfo;->resultCode:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d9
    .catchall {:try_start_cf .. :try_end_d9} :catchall_1e3

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ea

    .line 116
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e4

    .line 119
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 97
    return-void

    .line 117
    :cond_e4
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 98
    :cond_ea
    :try_start_ea
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/ReceiverInfo;->sendingUid:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f4
    .catchall {:try_start_ea .. :try_end_f4} :catchall_1e3

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_105

    .line 116
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ff

    .line 119
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 99
    return-void

    .line 117
    :cond_ff
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :cond_105
    :try_start_105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ReceiverInfo;->sendingPackage:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_10f
    .catchall {:try_start_105 .. :try_end_10f} :catchall_1e3

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_120

    .line 116
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_11a

    .line 119
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 101
    return-void

    .line 117
    :cond_11a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :cond_120
    :try_start_120
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ReceiverInfo;->registered:Z

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_12a
    .catchall {:try_start_120 .. :try_end_12a} :catchall_1e3

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_13b

    .line 116
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_135

    .line 119
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 103
    return-void

    .line 117
    :cond_135
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 104
    :cond_13b
    :try_start_13b
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ReceiverInfo;->receiver:Landroid/content/IIntentReceiver;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_149
    .catchall {:try_start_13b .. :try_end_149} :catchall_1e3

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_15a

    .line 116
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_154

    .line 119
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 105
    return-void

    .line 117
    :cond_154
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :cond_15a
    :try_start_15a
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ReceiverInfo;->ordered:Z

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_164
    .catchall {:try_start_15a .. :try_end_164} :catchall_1e3

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_175

    .line 116
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_16f

    .line 119
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 107
    return-void

    .line 117
    :cond_16f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 108
    :cond_175
    :try_start_175
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ReceiverInfo;->sticky:Z

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_17f
    .catchall {:try_start_175 .. :try_end_17f} :catchall_1e3

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_190

    .line 116
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_18a

    .line 119
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 109
    return-void

    .line 117
    :cond_18a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 110
    :cond_190
    :try_start_190
    sget-object v2, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ActivityInfo;

    iput-object v2, p0, Landroid/app/ReceiverInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_19e
    .catchall {:try_start_190 .. :try_end_19e} :catchall_1e3

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1af

    .line 116
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1a9

    .line 119
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 111
    return-void

    .line 117
    :cond_1a9
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_1af
    :try_start_1af
    sget-object v2, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/CompatibilityInfo;

    iput-object v2, p0, Landroid/app/ReceiverInfo;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1bd
    .catchall {:try_start_1af .. :try_end_1bd} :catchall_1e3

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1ce

    .line 116
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1c8

    .line 119
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 113
    return-void

    .line 117
    :cond_1c8
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 114
    :cond_1ce
    :try_start_1ce
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ReceiverInfo;->sync:Z
    :try_end_1d4
    .catchall {:try_start_1ce .. :try_end_1d4} :catchall_1e3

    .line 116
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1dd

    .line 119
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 120
    nop

    .line 121
    return-void

    .line 117
    :cond_1dd
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 116
    :catchall_1e3
    move-exception v2

    goto :goto_1ed

    .line 82
    :cond_1e5
    :try_start_1e5
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1ed
    .catchall {:try_start_1e5 .. :try_end_1ed} :catchall_1e3

    .line 116
    :goto_1ed
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_1f6

    .line 117
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_1f6
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 120
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 55
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget-object v1, p0, Landroid/app/ReceiverInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 57
    iget-object v1, p0, Landroid/app/ReceiverInfo;->data:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Landroid/app/ReceiverInfo;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 59
    iget-boolean v1, p0, Landroid/app/ReceiverInfo;->assumeDelivered:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 60
    iget v1, p0, Landroid/app/ReceiverInfo;->sendingUser:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget v1, p0, Landroid/app/ReceiverInfo;->processState:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget v1, p0, Landroid/app/ReceiverInfo;->resultCode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget v1, p0, Landroid/app/ReceiverInfo;->sendingUid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget-object v1, p0, Landroid/app/ReceiverInfo;->sendingPackage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-boolean v1, p0, Landroid/app/ReceiverInfo;->registered:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 66
    iget-object v1, p0, Landroid/app/ReceiverInfo;->receiver:Landroid/content/IIntentReceiver;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 67
    iget-boolean v1, p0, Landroid/app/ReceiverInfo;->ordered:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 68
    iget-boolean v1, p0, Landroid/app/ReceiverInfo;->sticky:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 69
    iget-object v1, p0, Landroid/app/ReceiverInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 70
    iget-object v1, p0, Landroid/app/ReceiverInfo;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 71
    iget-boolean p2, p0, Landroid/app/ReceiverInfo;->sync:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 73
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 76
    return-void
.end method
