.class public Landroid/gui/BoxShadowSettings$BoxShadowParams;
.super Ljava/lang/Object;
.source "BoxShadowSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gui/BoxShadowSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BoxShadowParams"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/gui/BoxShadowSettings$BoxShadowParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist blurRadius:F

.field public blacklist color:I

.field public blacklist offsetX:F

.field public blacklist offsetY:F

.field public blacklist spreadRadius:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 79
    new-instance v0, Landroid/gui/BoxShadowSettings$BoxShadowParams$1;

    invoke-direct {v0}, Landroid/gui/BoxShadowSettings$BoxShadowParams$1;-><init>()V

    sput-object v0, Landroid/gui/BoxShadowSettings$BoxShadowParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Landroid/gui/BoxShadowSettings$BoxShadowParams;->blurRadius:F

    .line 74
    iput v0, p0, Landroid/gui/BoxShadowSettings$BoxShadowParams;->spreadRadius:F

    .line 76
    const/4 v1, 0x0

    iput v1, p0, Landroid/gui/BoxShadowSettings$BoxShadowParams;->color:I

    .line 77
    iput v0, p0, Landroid/gui/BoxShadowSettings$BoxShadowParams;->offsetX:F

    .line 78
    iput v0, p0, Landroid/gui/BoxShadowSettings$BoxShadowParams;->offsetY:F

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 130
    nop

    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 110
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_a8

    .line 111
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_a6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 122
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 125
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 111
    return-void

    .line 123
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/gui/BoxShadowSettings$BoxShadowParams;->blurRadius:F

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_a6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 122
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 125
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 113
    return-void

    .line 123
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 114
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/gui/BoxShadowSettings$BoxShadowParams;->spreadRadius:F

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_a6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 122
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 125
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 115
    return-void

    .line 123
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 116
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/gui/BoxShadowSettings$BoxShadowParams;->color:I

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_a6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_76

    .line 122
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_70

    .line 125
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 117
    return-void

    .line 123
    :cond_70
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 118
    :cond_76
    :try_start_76
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/gui/BoxShadowSettings$BoxShadowParams;->offsetX:F

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_80
    .catchall {:try_start_76 .. :try_end_80} :catchall_a6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_91

    .line 122
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8b

    .line 125
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 119
    return-void

    .line 123
    :cond_8b
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 120
    :cond_91
    :try_start_91
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/gui/BoxShadowSettings$BoxShadowParams;->offsetY:F
    :try_end_97
    .catchall {:try_start_91 .. :try_end_97} :catchall_a6

    .line 122
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a0

    .line 125
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 126
    nop

    .line 127
    return-void

    .line 123
    :cond_a0
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :catchall_a6
    move-exception v2

    goto :goto_b0

    .line 110
    :cond_a8
    :try_start_a8
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_b0
    .catchall {:try_start_a8 .. :try_end_b0} :catchall_a6

    .line 122
    :goto_b0
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_b9

    .line 123
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 125
    :cond_b9
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 126
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget v0, p0, Landroid/gui/BoxShadowSettings$BoxShadowParams;->blurRadius:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 96
    iget v0, p0, Landroid/gui/BoxShadowSettings$BoxShadowParams;->spreadRadius:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 97
    iget v0, p0, Landroid/gui/BoxShadowSettings$BoxShadowParams;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget v0, p0, Landroid/gui/BoxShadowSettings$BoxShadowParams;->offsetX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 99
    iget v0, p0, Landroid/gui/BoxShadowSettings$BoxShadowParams;->offsetY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 101
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 102
    sub-int p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 104
    return-void
.end method
