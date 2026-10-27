.class public final Landroid/companion/virtual/computercontrol/ComputerControlSessionParams;
.super Ljava/lang/Object;
.source "ComputerControlSessionParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/computercontrol/ComputerControlSessionParams$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/virtual/computercontrol/ComputerControlSessionParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDisplayDpi:I

.field private final blacklist mDisplayHeightPx:I

.field private final blacklist mDisplaySurface:Landroid/view/Surface;

.field private final blacklist mDisplayWidthPx:I

.field private final blacklist mIsDisplayAlwaysUnlocked:Z

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mTargetPackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 127
    new-instance v0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams$1;

    invoke-direct {v0}, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams$1;-><init>()V

    sput-object v0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams;->mName:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams;->mTargetPackageNames:Ljava/util/List;

    .line 64
    iget-object v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams;->mTargetPackageNames:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams;->mDisplayWidthPx:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams;->mDisplayHeightPx:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams;->mDisplayDpi:I

    .line 68
    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    iput-object v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams;->mDisplaySurface:Landroid/view/Surface;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams;->mIsDisplayAlwaysUnlocked:Z

    .line 70
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/companion/virtual/computercontrol/ComputerControlSessionParams-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/util/List;IIILandroid/view/Surface;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;III",
            "Landroid/view/Surface;",
            "Z)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams;->mName:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams;->mTargetPackageNames:Ljava/util/List;

    .line 54
    iput p3, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams;->mDisplayWidthPx:I

    .line 55
    iput p4, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams;->mDisplayHeightPx:I

    .line 56
    iput p5, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams;->mDisplayDpi:I

    .line 57
    iput-object p6, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams;->mDisplaySurface:Landroid/view/Surface;

    .line 58
    iput-boolean p7, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams;->mIsDisplayAlwaysUnlocked:Z

    .line 59
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/util/List;IIILandroid/view/Surface;ZLandroid/companion/virtual/computercontrol/ComputerControlSessionParams-IA;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams;-><init>(Ljava/lang/String;Ljava/util/List;IIILandroid/view/Surface;Z)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDisplayDpi()I
    .registers 2

    .line 96
    iget v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams;->mDisplayDpi:I

    return v0
.end method

.method public blacklist getDisplayHeightPx()I
    .registers 2

    .line 91
    iget v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams;->mDisplayHeightPx:I

    return v0
.end method

.method public blacklist getDisplaySurface()Landroid/view/Surface;
    .registers 2

    .line 102
    iget-object v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams;->mDisplaySurface:Landroid/view/Surface;

    return-object v0
.end method

.method public blacklist getDisplayWidthPx()I
    .registers 2

    .line 86
    iget v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams;->mDisplayWidthPx:I

    return v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 75
    iget-object v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTargetPackageNames()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams;->mTargetPackageNames:Ljava/util/List;

    return-object v0
.end method

.method public blacklist isDisplayAlwaysUnlocked()Z
    .registers 2

    .line 107
    iget-boolean v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams;->mIsDisplayAlwaysUnlocked:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 117
    iget-object v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams;->mTargetPackageNames:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 119
    iget v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams;->mDisplayWidthPx:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams;->mDisplayHeightPx:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams;->mDisplayDpi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-object v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams;->mDisplaySurface:Landroid/view/Surface;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 123
    iget-boolean p2, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams;->mIsDisplayAlwaysUnlocked:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 124
    return-void
.end method
