.class public final Landroid/app/Vr2dDisplayProperties;
.super Ljava/lang/Object;
.source "Vr2dDisplayProperties.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Vr2dDisplayProperties$Builder;,
        Landroid/app/Vr2dDisplayProperties$Vr2dDisplayFlag;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/Vr2dDisplayProperties;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_VIRTUAL_DISPLAY_ENABLED:I = 0x1


# instance fields
.field private final greylist-max-o mAddedFlags:I

.field private final greylist-max-o mDpi:I

.field private final greylist-max-o mHeight:I

.field private final greylist-max-o mRemovedFlags:I

.field private final greylist-max-o mWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 118
    new-instance v0, Landroid/app/Vr2dDisplayProperties$1;

    invoke-direct {v0}, Landroid/app/Vr2dDisplayProperties$1;-><init>()V

    sput-object v0, Landroid/app/Vr2dDisplayProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(III)V
    .registers 10

    .line 59
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/app/Vr2dDisplayProperties;-><init>(IIIII)V

    .line 60
    return-void
.end method

.method private constructor greylist-max-o <init>(IIIII)V
    .registers 6

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Landroid/app/Vr2dDisplayProperties;->mWidth:I

    .line 64
    iput p2, p0, Landroid/app/Vr2dDisplayProperties;->mHeight:I

    .line 65
    iput p3, p0, Landroid/app/Vr2dDisplayProperties;->mDpi:I

    .line 66
    iput p4, p0, Landroid/app/Vr2dDisplayProperties;->mAddedFlags:I

    .line 67
    iput p5, p0, Landroid/app/Vr2dDisplayProperties;->mRemovedFlags:I

    .line 68
    return-void
.end method

.method synthetic constructor blacklist <init>(IIIIILandroid/app/Vr2dDisplayProperties-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/app/Vr2dDisplayProperties;-><init>(IIIII)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/Vr2dDisplayProperties;->mWidth:I

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/Vr2dDisplayProperties;->mHeight:I

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/Vr2dDisplayProperties;->mDpi:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/Vr2dDisplayProperties;->mAddedFlags:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/app/Vr2dDisplayProperties;->mRemovedFlags:I

    .line 137
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/Vr2dDisplayProperties-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/Vr2dDisplayProperties;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static greylist-max-o toReadableFlags(I)Ljava/lang/String;
    .registers 3

    .line 184
    nop

    .line 185
    const/4 v0, 0x1

    and-int/2addr p0, v0

    const-string/jumbo v1, "{"

    if-ne p0, v0, :cond_1b

    .line 186
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "enabled"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    :cond_1b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string/jumbo v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Landroid/app/Vr2dDisplayProperties;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 92
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 93
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_4d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_4d

    .line 95
    :cond_12
    check-cast p1, Landroid/app/Vr2dDisplayProperties;

    .line 97
    invoke-virtual {p0}, Landroid/app/Vr2dDisplayProperties;->getAddedFlags()I

    move-result v2

    invoke-virtual {p1}, Landroid/app/Vr2dDisplayProperties;->getAddedFlags()I

    move-result v3

    if-eq v2, v3, :cond_1f

    return v1

    .line 98
    :cond_1f
    invoke-virtual {p0}, Landroid/app/Vr2dDisplayProperties;->getRemovedFlags()I

    move-result v2

    invoke-virtual {p1}, Landroid/app/Vr2dDisplayProperties;->getRemovedFlags()I

    move-result v3

    if-eq v2, v3, :cond_2a

    return v1

    .line 99
    :cond_2a
    invoke-virtual {p0}, Landroid/app/Vr2dDisplayProperties;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/app/Vr2dDisplayProperties;->getWidth()I

    move-result v3

    if-eq v2, v3, :cond_35

    return v1

    .line 100
    :cond_35
    invoke-virtual {p0}, Landroid/app/Vr2dDisplayProperties;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/app/Vr2dDisplayProperties;->getHeight()I

    move-result v3

    if-eq v2, v3, :cond_40

    return v1

    .line 101
    :cond_40
    invoke-virtual {p0}, Landroid/app/Vr2dDisplayProperties;->getDpi()I

    move-result v2

    invoke-virtual {p1}, Landroid/app/Vr2dDisplayProperties;->getDpi()I

    move-result p1

    if-ne v2, p1, :cond_4b

    goto :goto_4c

    :cond_4b
    move v0, v1

    :goto_4c
    return v0

    .line 93
    :cond_4d
    :goto_4d
    return v1
.end method

.method public whitelist getAddedFlags()I
    .registers 2

    .line 172
    iget v0, p0, Landroid/app/Vr2dDisplayProperties;->mAddedFlags:I

    return v0
.end method

.method public whitelist getDpi()I
    .registers 2

    .line 164
    iget v0, p0, Landroid/app/Vr2dDisplayProperties;->mDpi:I

    return v0
.end method

.method public whitelist getHeight()I
    .registers 2

    .line 157
    iget v0, p0, Landroid/app/Vr2dDisplayProperties;->mHeight:I

    return v0
.end method

.method public whitelist getRemovedFlags()I
    .registers 2

    .line 180
    iget v0, p0, Landroid/app/Vr2dDisplayProperties;->mRemovedFlags:I

    return v0
.end method

.method public whitelist getWidth()I
    .registers 2

    .line 150
    iget v0, p0, Landroid/app/Vr2dDisplayProperties;->mWidth:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 72
    invoke-virtual {p0}, Landroid/app/Vr2dDisplayProperties;->getWidth()I

    move-result v0

    .line 73
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Landroid/app/Vr2dDisplayProperties;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 74
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Landroid/app/Vr2dDisplayProperties;->getDpi()I

    move-result v1

    add-int/2addr v0, v1

    .line 75
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vr2dDisplayProperties{mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/Vr2dDisplayProperties;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/Vr2dDisplayProperties;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/Vr2dDisplayProperties;->mDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/Vr2dDisplayProperties;->mAddedFlags:I

    .line 85
    invoke-static {v1}, Landroid/app/Vr2dDisplayProperties;->toReadableFlags(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", removed_flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/Vr2dDisplayProperties;->mRemovedFlags:I

    .line 86
    invoke-static {v1}, Landroid/app/Vr2dDisplayProperties;->toReadableFlags(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 111
    iget p2, p0, Landroid/app/Vr2dDisplayProperties;->mWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget p2, p0, Landroid/app/Vr2dDisplayProperties;->mHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget p2, p0, Landroid/app/Vr2dDisplayProperties;->mDpi:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget p2, p0, Landroid/app/Vr2dDisplayProperties;->mAddedFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget p2, p0, Landroid/app/Vr2dDisplayProperties;->mRemovedFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    return-void
.end method
